#!/bin/bash
# set -x
# Check if the first argument is "download"
if [[ "$1" == "download" ]]; then
    # Execute the download command with the provided arguments
  output=$(/usr/bin/exercism "$@")

  # Extract the downloaded folder path from the output
  folder=$(echo "$output" | tail -1)

  # Change directory to the downloaded folder
  cd "$folder"

  # Optional: Print the current directory to verify the change
  echo "Current directory: $(pwd)"
  code . &
else
  # Call the exercism executable directly with the provided arguments
  /usr/bin/exercism "$@"
fi
