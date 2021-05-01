 #/bin/bash
 #Check for root permission
 if [ "$EUID" -ne 0 ]
  then echo "Please type "sudo ./Revert-HostsMod.sh" instead."
  exit
fi && 
 sudo mv /etc/hosts.cache /etc/hosts
