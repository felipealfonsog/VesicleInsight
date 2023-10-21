
#!/bin/bash


#*************************************
# VesicleInsight: A program for detecting gallbladder cancer.
#*************************************
# Developed and engineered by 
# Felipe Alfonso Gonzalez <f.alfonso@res-ear.ch>
# Computer Science Engineer
# Chile
#*************************************


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
echo "***************************************************************************"

# User confirmation to proceed
read -p "Do you want to proceed with the installation? (y/N): " choice
if [ "$choice" != "y" ]; then
    echo "Installation canceled."
    exit 1
fi

# Install Homebrew if not installed
if [ ! -x "$(command -v brew)" ]; then
    read -p "Homebrew is not installed. Do you want to install Homebrew? (y/N): " brew_choice
    if [ "$brew_choice" == "y" ]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    else
        echo "***************************************************************************"
        echo "Installation canceled. Homebrew is required for the installation."
        exit 1
    fi
fi

# Install pip, scikit-learn, and Python using Homebrew
brew install python
python3 -m ensurepip --default-pip
python3 -m pip install --upgrade pip
pip install scikit-learn
pip install Pillow
pip install PyQt5

# Install PyInstaller if not installed
if ! command -v pyinstaller &> /dev/null; then
    read -p "PyInstaller is not installed. Do you want to install PyInstaller? (y/N): " pyinstaller_choice
    if [ "$pyinstaller_choice" == "y" ]; then
        python3 -m pip install pyinstaller
    else
        echo "***************************************************************************"
        echo "Installation canceled. PyInstaller is required for the installation."
        exit 1
    fi
fi

# Download the main.py file from GitHub
echo "==========================================================================="
echo "Downloading source code from GitHub to compile the program..."
curl -o main.py https://raw.githubusercontent.com/felipealfonsog/VesicleInsight/development/src/main.py

# Compile Python code using PyInstaller in the installation directory
echo "==========================================================================="
echo "Compiling Python code with PyInstaller..."
echo "-----------------------------------------"
pyinstaller --onefile --hidden-import sklearn main.py


# Select the appropriate directory based on the operating system
if [ "$(uname)" == "Darwin" ]; then
    program_dir="/Applications"
    project_folder="$program_dir/VesicleInsight"
    
    # Create a folder with the project name on macOS
    mkdir -p "$project_folder"

    # Rename and move the PyInstaller output to the Programs directory
    mv dist/main "$project_folder/VesicleInsight"

    # Mover el ejecutable a la carpeta de aplicaciones
    if [ -d "/Applications/VesicleInsight" ]; then
        mv dist/main "/Applications/VesicleInsight/VesicleInsight"
    else
        echo "The folder /Applications/VesicleInsight is not there. Check the structure of the installation."
    fi

else
    program_dir="/usr/local/bin"
    
    # Move the PyInstaller output to the Programs directory on other systems
    echo "==========================================================================="
    echo "Please input the root password to ensure proper permissions during the program installation..."
    sudo mv dist/main "$program_dir/VesicleInsight"
fi

echo "==========================================================================="
# Cleanup unnecessary files
echo "Cleaning up unnecessary files..."
rm -rf build dist
rm -f main.py
rm -f *.sh
rm -f *.spec

echo "==========================================================================="
echo "Installation has been completed."
echo "You can run the program by simply typing 'VesicleInsight' in the terminal."
echo "In macOS go to Applications and find the folder 'VesicleInsight'"
echo "==========================================================================="

