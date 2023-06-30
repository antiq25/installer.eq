#!bin/bash

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

lolcat $HOME/installer.eq/install/keys/readme 


read -p "Are you sure you want to continue? (yes/no): " choice

if [[ "$choice" == "yes" || "$choice" == "YES" || "$choice" == "y" || "$choice" == "Y" ]]; then
  echo "You chose to continue."
  # Add your desired actions here
elif [[ "$choice" == "no" || "$choice" == "NO" || "$choice" == "n" || "$choice" == "N" ]]; then
  echo "You chose to cancel."
  # Add your desired actions here or exit the script
else
  echo "Invalid choice. Please choose 'yes' or 'no'."
fi



