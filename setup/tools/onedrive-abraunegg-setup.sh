#!bin/bash
echo "Configuring One Drive"
echo "Enter the login user on this machine for who we are setting up onedrive :"
read username
sudo -u $username onedrive
echo "Completed configuring One Drive"
sudo -u $username onedrive --display-config

echo -e "\n\nConfiguring OneDrive as a Service"
sudo -u $username systemctl --user enable onedrive 
sudo -u $username systemctl --user start onedrive
sudo -u $username systemctl --user status onedrive
echo -e "Completed configuring OneDrive as a Service"
echo -e "Completed configuring OneDrive"