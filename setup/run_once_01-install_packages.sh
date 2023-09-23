#!/bin/bash
# echo "Ranking server list for optimal performance"
# pacman-mirrors --fasttrack
# echo "Completed ranking server list for optimal performance"
# echo "-----------------------------------------------------------------------------"
echo "Updating packages before install"
sudo pacman -Syyu 1>/dev/null 2>&1
echo "Completed updating packages before install"
echo "-----------------------------------------------------------------------------"

sudo pacman -Sy --noconfirm yay 1>/dev/null 2>&1;
_update="yay -S --needed --noconfirm";

# Function to install a package and check for success
install_package() {
    local package="$1"
    if $_update "$package"; then
    	echo "Installed $package"
        return 0  
    else
    	echo "Failed Installing $package"
        return 1  # Failure
    fi
}



echo "Installating the tools in the basic and programming list files"
for x in $(cat ./basic.lst) $(cat ./prog.lst); do
    # Check if the line starts with "#" and skip it if it does
    if [[ "$x" != \#* ]]; then
        if install_package "$x"; then
            # Check if there is a corresponding setup script and run it after installation of the tool
            if [[ -f "./tools/$x-setup.sh" ]]; then
                echo "Configuring $x"
                sh "./tools/$x-setup.sh"
            fi
        else
            # You can choose to continue or exit on error, depending on your preference.
            # Example: To continue installing other packages even if one fails:
             continue
            # Example: To exit the script immediately on the first failure:
            # exit 1
        fi
    else
    echo "Skipping $x"
    fi
done

echo "Completed installating the tools in the basic and programming list files"
echo "-----------------------------------------------------------------------------"
sleep 1