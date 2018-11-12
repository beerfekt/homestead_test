#!/bin/bash

#mkdir test
#cd test

#touch test.md



#echo "testscript"
#mkdir test
#echo "bin im test"
#ls
#echo "cu"

echo " ####### Installing The Homestead Vagrant Box ###### "
echo ""
echo "Removing old laravel/homestead boxes:"
echo ""

vagrant box remove laravel/homestead --all
echo "DONE"
echo ""
echo "Installing The Homestead Vagrant Box..."
echo ""

vagrant box add laravel/homestead
echo "updating vagrant laravel/homestead - box ..."
vagrant box update
echo "DONE"


echo "DONE"
echo ""
echo "Installing Homestead: Downloading Repo ... "

git clone https://github.com/laravel/homestead.git Homestead
cd Homestead
echo "DONE"

echo "Clone the desired release.."
git checkout v7.18.0
echo "DONE"

#echo "Creating Homestead.yml ..."
#bash init.sh

echo "moving Homestead.yaml into Homestead Folder..."
mv ../Homestead.yaml Homestead.yaml
echo "moving projekte into Homestead Folder..."
mv ../projekte projekte
echo "DONE"

echo ""

echo "starting Vagrant box: "
vagrant up
echo "DONE"

echo ""
echo ""

#testen
echo "host einträge setzen ... "
sudo -- sh -c -e "echo '192.168.10.10 symfony-tutorial.test' >> /etc/hosts"
sudo -- sh -c -e "echo '192.168.10.10 angular-tutorial.test' >> /etc/hosts"
sudo -- sh -c -e "echo '192.168.10.10 homestead.info' >> /etc/hosts"
echo "DONE"

echo ""

#echo "192.168.10.10 symfony-tutorial.test" >> /etc/hosts
#echo -i "192.168.10.10 angular-tutorial.test" >> /etc/hosts
#echo -i "192.168.10.10 homestead.info" >> /etc/hosts

echo "Your Page is available at this address: "
echo "  PHP Infos:                ----> homestead.info "
echo "  Symfony tutorial project: ----> symfony-tutorial.test "


##1. make your file executable : 
##    sudo chmod +x <path>
##2. start up the whole project:
##    install.sh
##Please insert your mail-configuration into .env!