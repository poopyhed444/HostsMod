 #/bin/bash
# Check for root permission
if [ "$EUID" -ne 0 ]; then
  echo "Please prepend $(tput setaf 3)\"sudo\"$(tput sgr0) to this command."
  exit 1
fi
# Fail entire script if one command fails'
set -e
# Replace edited hosts file with the backup
mv /etc/hosts.cache /etc/hosts
# Tell user it is successful
echo Successfully reverted changes.
