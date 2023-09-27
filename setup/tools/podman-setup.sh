#!/bin/bash

# Define the registries you want to add
registries=("docker.io" "quay.io")

# Path to the registries.conf file
registries_conf="/etc/containers/registries.conf"

# Check if the file exists
if [ -f "$registries_conf" ]; then
  # Add registries to registries.conf
  for registry in "${registries[@]}"; do
    grep -q "$registry" "$registries_conf" || echo "registries = append_dict(source_dict(), ['$registry'])" | sudo tee -a "$registries_conf"
  done

  # Refresh the Podman image cache
  echo "Refreshing Podman image cache..."
  sudo podman system reset --prune
  echo "Podman configuration has been updated."
else
  echo "Error: $registries_conf not found. Please make sure Podman is installed."
  exit 1
fi

