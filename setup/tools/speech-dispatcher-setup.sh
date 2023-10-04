#!/bin/bash

echo "This speech dispatcher configuration depends on FESTIVAL"
sleep 10

# Function to create an override.conf file
create_override_conf() {
  conf_file="/etc/systemd/system/speech-dispatcherd.service.d/override.conf"
  echo "Creating $conf_file..."
  cat <<EOL | sudo tee "$conf_file" >/dev/null
[Unit]
After=festival.service
EOL
  if [ $? -ne 0 ]; then
    echo "Error: Failed to create $conf_file."
    exit 1
  fi
}

# Create the override.conf file
create_override_conf

echo "Override configuration for speech-dispatcherd.service created."

sudo systemctl daemon-reload

sudo systemctl restart festival speech-dispatcherd

#spd-conf
#Linking user configuration instead to the git repo
current_dir=$(pwd)
mkdir -p "$HOME/.config/speech-dispatcher"
ln -sf "$current_dir/tools/conf/speechd.conf" "$HOME/.config/speech-dispatcher/speechd.conf"