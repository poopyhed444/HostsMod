 #/bin/bash
# Check for root permission
if [ "$EUID" -ne 0 ]; then
  echo "Please prepend $(tput setaf 3)\"sudo\"$(tput sgr0) to this command."
  exit 1
fi
# Fail entire script if one command fails'
set -e
# Find difference between old and new hosts file, to determine how many lines were added
backuplines=$(cat /etc/hosts.bak | wc -l)
currentlines=$(cat /etc/hosts | wc -l)
revertlines=$((currentlines-backuplines))
# Remove unnecessary variables
unset backuplines
unset currentlines
# Replace edited hosts file with the backup
mv /etc/hosts.bak /etc/hosts
# Tell user it is successful
echo Successfully removed $revertlines domains from the hosts file
# Remove last variable
unset revertlines
