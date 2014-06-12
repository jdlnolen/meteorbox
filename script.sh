#install script for node, meteor, mrt
sudo apt-get update
sudo apt-get -y -q install python-software-properties git software-properties-common python-pip python-dev make curl
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install python-software-properties python g++ make nodejs
curl https://install.meteor.com | /bin/sh
sudo -H npm install -g meteorite

#install lakia and its dependecies for testing

#install mongodb and libfontconfig
sudo apt-get -y install mongodb libfontconfig

#install phantomjs
cd tmp
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2
tar -xvf phantomjs-1.9.7-linux-x86_64.tar.bz2
sudo mv phantomjs-1.9.7-linux-x86_64 /usr/local/share
sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-x86_64/bin/phantomjs /usr/bin/phantomjs



#install laika
sudo npm install -g laika

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
assert mongod
assert phantomjs
assert laika