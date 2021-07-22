#/bin/bash
# Check for root permission
if [ "$EUID" -ne 0 ]; then
  echo "Please prepend $(tput setaf 3)\"sudo\"$(tput sgr0) to this command."
  exit 1
fi
# Fail entire script if one command fails'
set -e
# Back up the old hosts file
cp /etc/hosts /etc/hosts.bak
# Download the remote domains file
curl -sL https://github.com/GardeningTool/HostsMod/raw/main/domains.txt > /etc/domains.txt
# Add localhost onto the domains, append to hosts file
awk '{print "127.0.0.1 "$0}' /etc/domains.txt >> /etc/hosts
# Notify user the script has successfully added domains, using lines variable
echo "Successfully added "$(cat /etc/domains.txt | wc -l)" domains to hosts file."
# Clean Up
rm /etc/domains.txt
