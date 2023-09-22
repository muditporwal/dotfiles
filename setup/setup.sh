#!/bin/bash
sudo su -
echo "Ranking server list for optimal performance"
pacman-mirrors --fasttrack
echo "Completed ranking server list for optimal performance"
echo "-----------------------------------------------------------------------------"
echo "Updating packages before install"
pacman -Syyu
echo "Completed updating packages before install"
echo "-----------------------------------------------------------------------------"

pacman -Sy --noconfirm yay
_update="yay -S --noconfirm";

# Function to install a package and check for success
install_package() {
    local package="$1"
    echo "-- installing $package"
    if $_update "$package"; then
        return 0  # Success
    else
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
                echo "---- configuring $x"
                sh "./tools/$x-setup.sh"
            fi
        else
            echo "#### ERROR Installing $x"
            # You can choose to continue or exit on error, depending on your preference.
            # Example: To continue installing other packages even if one fails:
             continue
            # Example: To exit the script immediately on the first failure:
            # exit 1
        fi
    fi
done

echo "Completed installating the tools in the basic and programming list files"
echo "-----------------------------------------------------------------------------"
sleep 1

# Setup Bare Git Repo with alias for dotfiles
sh ./tools/dotfiles-setup.sh

# Downloads Zprezto and uses the .zprezto config present in the repo
sh ./tools/zprezto-setup.sh

# Setup Work Tools
sh ./work/setup-work.sh
