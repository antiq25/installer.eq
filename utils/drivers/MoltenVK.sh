#!/bin/bash

read -p "Do you want to run the ANTIQ MOLTENVK COMPILER? (YES/NO): " choice

if [[ $choice == "YES" ]]; then
    echo "Running ANTIQ MOLTENVK COMPILER..."

    # First command
    git clone https://github.com/KhronosGroup/MoltenVK

    # Check if the first command was successful
    if [ $? -eq 0 ]; then
        echo "Git clone was successful. Continuing with the next commands."

        # Move into the MoltenVK directory
        cd MoltenVK

        # Second command
       bash fetchDependencies --macos

        # Check if the second command was successful
        if [ $? -eq 0 ]; then
            echo "fetchdependancies command was successful. Starting 'make macos'."

            # Third command
            make macos MVK_CONFIG_LOG_LEVEL=1 MVK_CONFIG_USE_METAL_ARGUMENT_BUFFERS=1
            wait

            sudo rm /usr/local/lib/libMoltenVK.dylib
            wait

            sudo cp Package/Release/MoltenVK/dylib/macOS/libMoltenVK.dylib /usr/local/lib

            # Check if the third command was successful
            if [ $? -eq 0 ]; then
                echo "'make macos' was successful. Starting 'sudo make install'."

                # Fourth command
                sudo make install

                # Check if the fourth command was successful
                if [ $? -eq 0 ]; then
                    echo "'sudo make install' was successful. Exiting."
                else
                    echo "'sudo make install' failed. Exiting."
                fi
            else
                echo "'make macos' failed. Exiting."
            fi
        else
            echo "fetchdependancies command failed. Exiting."
        fi
    else
        echo "Git clone failed. Exiting."
    fi
elif [[ $choice == "NO" ]]; then
    echo "Exiting without running the ANTIQ MOLTENVK COMPILER."
else
    echo "Invalid choice. Please enter either YES or NO."
fi

