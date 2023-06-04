  sudo -k # Invalidate previous sudo timestamp
    sudo -v # Ask for sudo password again

sudo -v # Ask for sudo password upfront

# Check if sudo command succeeded (i.e., user entered correct password)
if [[ $? -eq 0 ]]; then

    read -p "Installer complete. Change Apple config? (Yes/No): " choice

    if [[ $choice == "Yes" || $choice == "yes" ]]; then
        sudo sh $HOME/installer.eq/install/defaults.sh
    elif [[ $choice == "No" || $choice == "no" ]]; then
        echo "Closing window"
    else
        echo "Invalid choice"
    fi

    read -p "Inject dotfiles + load fonts? (Yes/No): " choice

    if [[ $choice == "Yes" || $choice == "yes" ]]; then
        sudo sh $HOME/installer.eq/install/font.sh
    elif [[ $choice == "No" || $choice == "no" ]]; then
        echo "Closing window"
    else
        echo "Invalid choice"
    fi

else
    echo "Incorrect sudo password. Please enter sudo password again."

    sudo -k # Invalidate previous sudo timestamp
    sudo -v # Ask for sudo password again

    if [[ $? -eq 0 ]]; then
        # Prompt for installation options
        read -p "Installer complete. Change Apple config? (Yes/No): " choice

        if [[ $choice == "Yes" || $choice == "yes" ]]; then
            sudo sh $HOME/installer.eq/install/defaults.sh
        elif [[ $choice == "No" || $choice == "no" ]]; then
            echo "Closing window"
        else
            echo "Invalid choice"
        fi

        read -p "Inject dotfiles + load fonts? (Yes/No): " choice

        if [[ $choice == "Yes" || $choice == "yes" ]]; then
            sudo sh $HOME/installer.eq/install/font.sh
        elif [[ $choice == "No" || $choice == "no" ]]; then
            echo "Closing window"
        else
            echo "Invalid choice"
        fi
    else
        echo "Incorrect sudo password. Exiting..."
    fi

fi
