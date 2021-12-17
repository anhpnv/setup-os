#!/bin/sh

# Clone vscode
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

# Docker setup
sudo apt-get update
 
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $USER

# Install network-tools
sudo apt install net-tools

# Install git
sudo apt install git -y

# Install Telegram
sudo snap install telegram-desktop

# Install IntelliJ
sudo snap install intellij-idea-community --classic

# Install Shutter
sudo add-apt-repository -y ppa:linuxuprising/shutter
sudo apt install shutter -y

# Install Skype
sudo snap install skype --classic

# Install Terminator
sudo apt install terminator -y

###################REMOTE APP############################
# Install Teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ./teamviewer_amd64.deb
# Install Anydesk
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk
##########################################################
# Setup python enviroment
sudo apt install python3-venv build-essential libssl-dev libffi-dev python3-dev -y

# Setup Unikey
sudo apt install ibus-unikey -y
ibus restart

# Update package again
# sudo apt update
# sudo apt upgrade
