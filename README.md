# Instructions for setting up your environment

## Setting up Manjaro XFCE
### Switch to non UI Boot screen to view grub logs. 
1. **Open a Terminal**: You'll need to open a terminal on your Linux system.

2. **Edit the GRUB Configuration File**: Use a text editor with root privileges to edit the GRUB configuration file. The file is typically located at `/etc/default/grub`. You can open it with a command like:

   ```bash
   sudo nano /etc/default/grub
   ```

3. **Edit GRUB_CMDLINE_LINUX_DEFAULT**: In the opened file, look for the line that starts with `GRUB_CMDLINE_LINUX_DEFAULT` and add the `quiet splash` parameters, if they are present, remove them. This line controls the boot options for the default kernel. It should look something like this:

   Before editing:
   ```plaintext
   GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
   ```

   After editing (remove "quiet splash"):
   ```plaintext
   GRUB_CMDLINE_LINUX_DEFAULT=""
   ```

   Removing "quiet splash" will prevent the splash screen from appearing during boot and will display kernel and boot logs.

4. **Save and Exit**: Save the changes and exit the text editor. In Nano, you can do this by pressing `Ctrl + O` to save and `Ctrl + X` to exit.

5. **Update GRUB**: After modifying the GRUB configuration, you need to update GRUB's configuration file with the changes you made. Run the following command:

   ```bash
   sudo update-grub
   ```

6. **Reboot**: Finally, reboot your computer to see the changes take effect.

### Change UPower Configuration for LidDown
- Since the xfce power manager uses UPower in the background, setting this should suffice
- Update the Ignore lid to true `IgnoreLid=true`  in `/etc/UPower/UPower.conf`

### Setup Automatic Time (To avoid issues with Certificate Validation)
- Click start-> Manjaro Settings Manager -> Time and Date -> Set Time and Date automatically

## Clean Installation
- Download `chezmoi` on your machine.
- Run `chezmoi init muditporwal` to setup.


## Setting up Git in VSCode
- Check if the SSH agent is running by using the `ssh-add -l` command. 
- If it's not running, you can start it with `ssh-agent` and add your SSH key using `ssh-add`.