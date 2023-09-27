#!/bin/bash

# Define the registries you want to add
registries=("docker.io" "quay.io")

# Path to the registries.conf file
registries_conf="/etc/containers/registries.conf"

# Check if the file exists
if [ -f "$registries_conf" ]; then
  # Check if the [registries.search] section exists
  if grep -q "\[registries.search\]" "$registries_conf"; then
    # Check if the 'registries =' entry exists
    if grep -q "registries = " "$registries_conf"; then
      # Combine the specified registries with the existing ones
      for registry in "${registries[@]}"; do
        if ! grep -q "\"$registry\"" "$registries_conf"; then
          sudo sed -i "/registries =/ s/\"$/\", \"$registry\"/" "$registries_conf"
          echo "$registry has been added to the registries."
        fi
      done
    else
      # 'registries =' entry doesn't exist, create it with the specified registries
      combined_registries="registries = [\"${registries[*]}\"]"
      sudo sed -i "/\[registries.search\]/a $combined_registries" "$registries_conf"
      echo "Podman configuration has been updated."
    fi
  else
    # [registries.search] section doesn't exist, create it with the specified registries
    combined_registries="registries = [\"${registries[*]}\"]"
    echo -e "[registries.search]\n$combined_registries" | sudo tee -a "$registries_conf"
    echo "Podman configuration has been updated."
  fi
else
  echo "Error: $registries_conf not found. Please make sure Podman is installed."
  exit 1
fi

# Refresh the Podman image cache
echo "Refreshing Podman image cache..."
sudo podman system reset
echo "Completed refreshing Podman image cache..."
