#!/bin/bash

# Define the registries you want to add
registries=("docker.io" "quay.io" "example.com")

# Path to the registries.conf file
registries_conf="/etc/containers/registries.conf"

# Check if the file exists
if [ -f "$registries_conf" ]; then
  # Check if the registry entry already exists
  if ! grep -q "registries =" "$registries_conf"; then
    echo -e "\n[registries.search]\nregistries = [" | sudo tee -a "$registries_conf"
  fi

  # Add registries to registries.conf
  for registry in "${registries[@]}"; do
    grep -q "\"$registry\"" "$registries_conf" || echo "  \"$registry\"," | sudo tee -a "$registries_conf"
  done

  echo "Podman configuration has been updated."
  # Refresh the Podman image cache
  echo "Refreshing Podman image cache..."
  sudo podman system reset
  echo "Podman configuration has been updated."
else
  echo "Error: $registries_conf not found. Please make sure Podman is installed."
  exit 1
fi
