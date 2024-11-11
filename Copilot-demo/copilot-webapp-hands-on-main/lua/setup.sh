#!/bin/bash
wget -O - https://openresty.org/package/pubkey.gpg | sudo apt-key add -
echo "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main" > openresty.list
sudo mv openresty.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install -y luarocks
sudo apt install -y --no-install-recommends openresty
sudo luarocks install lapis
	
