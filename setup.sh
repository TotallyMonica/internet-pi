sudo apt update
sudo apt upgrade -y
sudo apt-get install -y python3-pip nano apt-transport-https
pip3 install ansible
wget -O - https://raw.githubusercontent.com/OpenMediaVault-Plugin-Developers/installScript/master/install | sudo bash
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
sudo apt update
sudo apt install plexmediaserver
ansible-galaxy collection install -r requirements.yml
cp example.inventory.ini inventory.ini
nano inventory.ini
cp example.config.yml config.yml
nano config.yml
ansible-playbook main.yml
