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
# Append the remote domains file to the /etc/hosts file
curl -sL https://raw.githubusercontent.com/HackingMC/HostsMod/main/domains >> /etc/hosts
# Notify user the script has successfully added domains
echo "Successfully added "$(curl -sL https://raw.githubusercontent.com/HackingMC/HostsMod/main/domains | cat | wc -l)" domains to hosts file."
# Create prompt for if user would like adblocking support
PS3='Would you like to also add advertising and malware blocking? This MAY break some websites. (Yes/No)'
# Check which option the user inputted
        options=(Yes, No)
        select option in "$options[@]}; do
        case $option in
# If the user chose Yes, add domains to hosts file. 
        "Yes")
          curl -sL https://raw.githubusercontent.com/StevenBlack/hosts/master/data/StevenBlack/hosts >> /etc/hosts
          lines=$(curl -sL https://raw.githubusercontent.com/StevenBlack/hosts/master/data/StevenBlack/hosts | wc -l)
# Notify user the script has successfully added domains, using new lines variable.
          echo 'Successfully added $lines advertising domains to the hosts file. This number may appear to be quite high, but this is the expected outcome. Domains used are StevenBlack's hosts.'
# Remove lines variable
          unset lines
          break
          ;;
        "No")
          exit
          ;;
        *) echo "That is not a valid option.";;
    esac
