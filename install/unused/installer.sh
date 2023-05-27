# Path to the Command Line Tools package
PKG_PATH="$HOME/installer/install/Command Line Tools.pkg"

# Check if the Command Line Tools are already installed
if xcode-select --print-path &> /dev/null; then
  echo "Command Line Tools are already installed"
else
  # Install the Command Line Tools package and show progress
  sudo installer -pkg "$PKG_PATH" -target / | tee /tmp/install.log &
  PID=$!
  
  # Run a command with a progress bar
  command_with_progress_bar() {
    local duration=$1
    local resolution=10
    local progress=0
    local progress_char='#'
    local empty_char='-'
    local i=0
    while kill -0 $PID 2> /dev/null; do
      ((i=i%resolution+1))
      ((progress=i*100/resolution))
      printf "\r[%-${resolution}s] %d%%" "${progress_char:0:i}${empty_char:i:resolution-i}" $progress
      sleep $duration
    done
    printf "\n"
  }

  command_with_progress_bar 0.1

  wait $PID
  
  echo "Command Line Tools installation completed"
fi

# Confirm that the Command Line Tools are installed
if xcode-select --print-path &> /dev/null; then
  echo "Command Line Tools are installed"
else
  echo "Command Line Tools are not installed"
fi 


# Run another shell script after installation is complete
echo "Running another shell script..."
 ~/installer/install/installbrew.sh