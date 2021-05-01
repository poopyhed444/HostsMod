 #/bin/bash
 #Check for root permission
 if [ "$EUID" -ne 0 ]
  then echo "Please type "sudo ./HostsMod.sh" instead."
  exit
fi &&
 #Temporarily move hosts file to unused file name
 cd /etc && mv /etc/hosts /etc/hosts.cache && 
 #download domains, updated as much as possible to include all original pushes
 wget https://raw.githubusercontent.com/hackingmc/HostsMod/main/domains -P /etc && 
 #Recreate hosts file with added domains on the end, redirects all domains to localhost
 cat /etc/hosts.cache /etc/domains > /etc/hosts &&
 #Cleanup unnecessary domains file, leaves hosts.cache in case you want to revert the changes.
 rm /etc/domains &&
 #Tell user the edit was successful. If any command fails, it's not possible for the script to make it to this line. 
 echo Successfully added domains to hosts file. 

