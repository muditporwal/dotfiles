#!/bin/bash

# Function to run commands with sudo
run_with_sudo() {
  command="$1"
  echo "Running: $command"
  sudo sh -c "$command"
  if [ $? -ne 0 ]; then
    echo "Error: Failed to run command with sudo."
    exit 1
  fi
}

# Create a systemd service unit for Festival TTS
run_with_sudo "cat <<EOL > /etc/systemd/system/festival.service
[Unit]
Description=Festival TTS Server

[Service]
ExecStart=/usr/bin/festival --server

[Install]
WantedBy=multi-user.target
EOL"

# Reload systemd
run_with_sudo "systemctl daemon-reload"

# Enable the festival service at startup
run_with_sudo "systemctl enable festival.service"

# Start the festival service
run_with_sudo "systemctl start festival.service"

# Check the status of the festival service
run_with_sudo "systemctl status festival.service"

echo "Festival TTS server setup completed."
