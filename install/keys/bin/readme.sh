#!/bin/bash 

print_banner() {
echo "${CYAN} 
██████╗ ███████╗███████╗ █████╗ ██╗   ██╗██╗  ████████╗███████╗
██╔══██╗██╔════╝██╔════╝██╔══██╗██║   ██║██║  ╚══██╔══╝██╔════╝
██║  ██║█████╗  █████╗  ███████║██║   ██║██║     ██║   ███████╗
██║  ██║██╔══╝  ██╔══╝  ██╔══██║██║   ██║██║     ██║   ╚════██║
██████╔╝███████╗██║     ██║  ██║╚██████╔╝███████╗██║   ███████║
╚═════╝ ╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚══════╝
${RESET}"
}
print_banner

lolcat $HOME/installer.eq/install/keys/bin/readme 

read -p "Are you sure you want to continue? (yes/no): " choice

if [[ "$choice" == "yes" || "$choice" == "YES" || "$choice" == "y" || "$choice" == "Y" ]]; then
  echo "You chose to continue."
  sh "$HOME/installer.eq/install/keys/bin/execdefaults.sh"
elif [[ "$choice" == "no" || "$choice" == "NO" || "$choice" == "n" || "$choice" == "N" ]]; then
  echo "You chose to cancel."
  exit 0
else
  echo "Invalid choice. Please choose 'yes' or 'no'."
fi



