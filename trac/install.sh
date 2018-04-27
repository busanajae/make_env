#!/bin/bash

# pip 는 python-pip 패키지에 들어잇다.
sudo apt-get install python-pip

sudo -H pip install --upgrade pip
sudo -H pip install Trac==1.0.15
#sudo -H pip install Genshi // Automatically install when Trac 1.0.15 is installed
sudo -H pip install TracAccountManager
sudo -H pip install Pygments
sudo -H pip install Babel

#sudo -H pip install --upgrade pillow
#sudo -H pip install dnspython
#sudo -H pip install spambayes
#sudo -H pip install oauth2
#sudo -H pip install TracTags
#sudo -H pip install TracSpamFilter
#sudo -H pip install TracVote

sudo mkdir -p /var/www/trac
sudo mkdir -p /var/www/trac/git

sudo trac-admin /var/www/trac/LocalProjects initenv
sudo trac-admin /var/www/trac/LocalProjects permission add admin TRAC_ADMIN
sudo bash -c "python ./trac-digest.py -u admin -p 14321 -r LocalProects > /var/www/trac/LocalProjects/users.htdigest"

sudo chown -R 775 /var/www/trac

sudo rm -rf /var/www/trac/LocalProjects/conf/trac.ini
sudo cp trac.ini /var/www/trac/LocalProjects/conf/

#sudo cp trac.service /lib/systemd/system/
#sudo ln -s /lib/systemd/system/trac.service /etc/systemd/system/trac.service
#sudo cp tracd /etc/default/

#sudo systemctl enable tracd
#sudo systemctl start tracd

echo 'Execute trac with: tracd --port 9000 /var/www/trac/LocalProjects'
echo 'Test with Mini browser: apt install lynx'

