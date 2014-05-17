#install script for node, meteor, mrt
sudo apt-get update
sudo apt-get -y -q install python-software-properties git software-properties-common python-pip python-dev make curl
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install python-software-properties python g++ make nodejs
curl https://install.meteor.com | /bin/sh
sudo -H npm install -g meteorite

#tests for successful install

#assert function for testing
assert()
{
	if hash $1 2>/dev/null; then
        	echo $1  "installed"
	else
        	echo $1 "not installed"
	fi
}

assert node
assert meteor
assert mrt
