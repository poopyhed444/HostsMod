 #/bin/bash
 #Check for root permission
 if [ "$EUID" -ne 0 ]
  then echo "Please type "sudo ./Revert-HostsMod.sh" instead."
  exit
fi && 
 #Replace edited hosts file with original cache
 sudo mv /etc/hosts.cache /etc/hosts &&
 #wait time to create illusion of progress + tell user it is successful
 sleep 3 && echo Successfully reverted changes.
