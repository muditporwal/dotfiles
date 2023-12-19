#!/bin/bash

# Define the registries you want to add
registries=("docker.io" "quay.io")

# Path to the registries.conf file
registries_conf="/etc/containers/registries.conf"


# Check if the file exists
if [ -f "$registries_conf" ]; then
 if grep -wq "registries:" "$registries_conf"; then
  echo "Please add registries manually at the location $registries_conf"
  echo "Once added run 'sudo podman system reset'"
  sleep 5;
 else
  # Create the registries.conf file with the [registries.search] section and the registries entry
  combined_registries=$(printf " '%s' ," "${registries[@]}")
  combined_registries="${combined_registries%,}"
  combined_registries="registries= [$combined_registries]"
  echo -e "[registries.search]\n$combined_registries" | sudo tee -a "$registries_conf"
  echo "Podman configuration has been created and updated."
  # Refresh the Podman image cache
  echo "Refreshing Podman image cache..."
  sudo podman system reset
  echo "Completed refreshing Podman image cache..."
 fi
else
 echo "Error: $registries_conf not found. Please make sure Podman is installed."
 exit 1
fi
