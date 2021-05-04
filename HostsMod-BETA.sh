#/bin/bash
# Check for root permission
if [ "$EUID" -ne 0 ]; then
  echo "Please prepend $(tput setaf 3)\"sudo\"$(tput sgr0) to this command."
  exit 1
fi
# Fail entire script if one command fails
set -e
# Give user options
echo "Select an Option by typing the corresponding number and pressing enter"
echo "1) Install HostsMod"
echo "2) Uninstall HostsMod"

read INPUT_NUMBER
case $INPUT_NUMBER in

# Change Hosts file, will happen if user types 1
    1)
    # Clears all text on command line
    clear
    # Back up the old hosts file
    cp /etc/hosts /etc/hosts.bak
    # Append the remote domains file to the /etc/hosts file
    curl -sL https://raw.githubusercontent.com/HackingMC/HostsMod/main/domains >> /etc/hosts
    # Notify user the script has successfully added domains
    echo "Successfully added domains to hosts file."
  ;;

  # Revert changes, will start if option 2 was selected by user.
    2)
    # Clears all text on command line
    clear
    # Replace edited hosts file with the backup
    mv /etc/hosts.bak /etc/hosts
    # Tell user it is successful
    echo Successfully reverted changes.
  ;;

esac

