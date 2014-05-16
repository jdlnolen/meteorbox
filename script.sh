sudo apt-get update
sudo apt-get -y -q install python-software-properties git software-properties-common python-pip python-dev make curl
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install python-software-properties python g++ make nodejs
curl https://install.meteor.com | /bin/sh
sudo -H npm install -g meteorite
