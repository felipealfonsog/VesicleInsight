
#!/bin/bash


#*************************************
# VesicleInsight: A program for detecting gallbladder cancer.
#*************************************
# Developed and engineered by 
# Felipe Alfonso Gonzalez <f.alfonso@res-ear.ch>
# Computer Science Engineer
# Chile
#*************************************
    
# Installer  v.1.0.2

echo "

▒█░░▒█ █▀▀ █▀▀ ░▀░ █▀▀ █░░ █▀▀ ▀█▀ █▀▀▄ █▀▀ ░▀░ █▀▀▀ █░░█ ▀▀█▀▀ 
░▒█▒█░ █▀▀ ▀▀█ ▀█▀ █░░ █░░ █▀▀ ▒█░ █░░█ ▀▀█ ▀█▀ █░▀█ █▀▀█ ░░█░░ 
░░▀▄▀░ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▄█▄ ▀░░▀ ▀▀▀ ▀▀▀ ▀▀▀▀ ▀░░▀ ░░▀░░


  ╔═══════════════════════════════════════╗
  ║                                       ║
  ║   ~ Term Notes ~                      ║
  ║   Developed with ❤️ by                 ║
  ║   Felipe Alfonso González L.          ║
  ║   Computer Science Engineer           ║
  ║   Chile                               ║
  ║                                       ║
  ║   Contact: f.alfonso@res-ear.ch       ║
  ║   Licensed under MIT                  ║
  ║   GitHub: github.com/felipealfonsog   ║
  ║   LinkedIn:                           ║
  ║   linkedin.com/in/felipealfonsog      ║
  ║                                       ║
  ╚═══════════════════════════════════════╝


"

# Welcome and program details
echo "Welcome to the VesicleInsight installer"
echo "======================================="
echo "Description: A program for detecting gallbladder cancer."
echo "Creator: Felipe Alfonso Gonzalez - github.com/felipealfonsog - f.alfonso@res-ear.ch"
echo "License: MIT (Restrictive)"

# User confirmation to proceed
read -p "Do you want to proceed with the installation? (y/n): " choice
if [ "$choice" != "y" ]; then
    echo "Installation canceled."
    exit 1
fi

# Install Homebrew if not installed
if [ ! -x "$(command -v brew)" ]; then
    read -p "Homebrew is not installed. Do you want to install Homebrew? (y/n): " brew_choice
    if [ "$brew_choice" == "y" ]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    else
        echo "Installation canceled. Homebrew is required for the installation."
        exit 1
    fi
fi

# Install pip, scikit-learn, and Python using Homebrew
brew install python
python3 -m ensurepip --default-pip
python3 -m pip install --upgrade pip
pip install scikit-learn

# Install PyInstaller if not installed
if ! command -v pyinstaller &> /dev/null; then
    read -p "PyInstaller is not installed. Do you want to install PyInstaller? (y/n): " pyinstaller_choice
    if [ "$pyinstaller_choice" == "y" ]; then
        python3 -m pip install pyinstaller
    else
        echo "Installation canceled. PyInstaller is required for the installation."
        exit 1
    fi
fi

# Compile Python code using PyInstaller in the installation directory
echo "Compiling Python code with PyInstaller..."
pyinstaller --onefile --hidden-import sklearn src/main.py

# Select the appropriate directory based on the operating system
if [ "$(uname)" == "Darwin" ]; then
    program_dir="/Applications"
    project_folder="$program_dir/VesicleInsight"
    
    # Create a folder with the project name on macOS
    mkdir -p "$project_folder"

    # Rename and move the PyInstaller output to the Programs directory
    mv dist/main "$project_folder/VesicleInsight"
else
    program_dir="/usr/local/bin"
    
    # Move the PyInstaller output to the Programs directory on other systems
    mv dist/main "$program_dir/VesicleInsight"
fi

echo "Installation has been completed. You can run the program by simply typing 'VesicleInsight' in the terminal."