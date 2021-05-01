#/bin/bash
# Check for root permission
if [ "$EUID" -ne 0 ]; then
  echo "Please prepend $(tput setaf 3)\"sudo\"$(tput sgr0) to this command."
  exit 1
fi
# Fail entire script if one command fails'
set -e
# Back up the old hosts file
mv /etc/hosts /etc/hosts.bak
# Append the remote domains file to the /etc/hosts file
curl -sL https://raw.githubusercontent.com/hackingmc/HostsMod/main/domains 
echo "Successfully added domains to hosts file."

