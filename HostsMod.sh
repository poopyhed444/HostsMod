 #/bin/bash
 sudo true && cd /etc && sudo mv hosts hosts.cache && sudo wget https://raw.githubusercontent.com/hackingmc/HostsMod/main/domains && sudo cat hosts.cache domains > hosts
