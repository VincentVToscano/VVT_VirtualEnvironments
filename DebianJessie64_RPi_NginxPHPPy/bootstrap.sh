#!/bin/bash
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ Run commands as the root user \x1B[0m"
sudo -s
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Shell initialization > System-wide configuration files
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED] Shell initialization > System-wide configuration files \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"

# >		Creates a file if it doesn't exist. If it exits, overwrites.
# >>	Appends to file if it exists else creates file.

# Fix Debian server and add dynamic motd.d just like in Ubuntu
# create directory
mkdir /etc/update-motd.d/
# change to new directory
cd /etc/update-motd.d/
# Create dynamic files
touch 00-header 01-personal-messages
# make files executable
chmod +x /etc/update-motd.d/*
# remove MOTD file
rm /etc/motd
# symlink dynamic MOTD file
ln -s /var/run/motd /etc/motd

# Add personal messages
echo "#!/bin/sh"  >> /etc/update-motd.d/01-personal-messages
echo 'echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"'  >> /etc/update-motd.d/01-personal-messages
echo 'echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"'  >> /etc/update-motd.d/01-personal-messages
echo 'echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"'  >> /etc/update-motd.d/01-personal-messages
echo 'echo -e "\x1B[01;95m ▒ If you have any issues, contact vincent@toolofna.com"'  >> /etc/update-motd.d/01-personal-messages
echo 'echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"'  >> /etc/update-motd.d/01-personal-messages
echo 'echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"'  >> /etc/update-motd.d/01-personal-messages
echo 'echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"'  >> /etc/update-motd.d/01-personal-messages

# non-Ubuntu /etc/bashrc
# Ubuntu /etc/bash.bashrc

echo -e "\x1B[01;90m ▒ /etc/bash.bashrc and /etc/environment > backup original \x1B[0m"
echo -e "\x1B[01;90m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
cp /etc/bash.bashrc /etc/bash.bashrc.bak
cp /etc/environment /etc/environment.bak

echo -e "\x1B[01;90m ▒ Set ENV vars - First set \x1B[0m"
echo -e "\x1B[01;90m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo "# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"  >> /etc/environment
echo "VHOST1='vhost1'"  >> /etc/environment
echo "VHOST2='vhost2'"  >> /etc/environment
echo "VHOST3='vhost3'"  >> /etc/environment
echo "PROJ1='projectA'"  >> /etc/environment
echo "PROJ2='projectB'"  >> /etc/environment
echo "PROJ3='projectC'"  >> /etc/environment
. /etc/environment

echo -e "\x1B[01;90m ▒ Set ENV vars - Second set \x1B[0m"
echo -e "\x1B[01;90m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo "# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"  >> /etc/environment
echo "NGINX_CONF=/etc/nginx/nginx.conf" >> /etc/environment
echo "VHOST1_CONF=/etc/nginx/sites-available/${VHOST1}_${PROJ1}.conf" >> /etc/environment
echo "VHOST2_CONF=/etc/nginx/sites-available/${VHOST2}_${PROJ2}.conf" >> /etc/environment
echo "VHOST3_CONF=/etc/nginx/sites-available/${VHOST3}_${PROJ3}.conf" >> /etc/environment
echo "PHP_INI=/etc/php5/fpm/php.ini" >> /etc/environment
# Edit: Removing /etc/bash.bashrc and switching to /etc/environment, great post http://unix.stackexchange.com/questions/117467/how-to-permanently-set-environmental-variables
. /etc/environment

echo -e "\x1B[01;90m ▒ Check vars\x1B[0m"
echo -e "\x1B[01;90m ▒ Are there values below? \x1B[0m"
echo -e "\x1B[01;90m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"

echo $NGINX_CONF
echo $VHOST1_CONF
echo $VHOST2_CONF
echo $VHOST3_CONF

echo -e "\x1B[01;90m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;90m ▒ END \x1B[0m"
#cat /etc/environment
#cat /etc/bash.bashrc

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] Shell initialization > System-wide configuration files \x1B[0m"

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Install build and main packages
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED: Disabled !!!!!!!!!!!!!!!!!] Install build and main packages \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# https://help.ubuntu.com/community/AptGet/Howto

# build-essential is available on Main repository for 14.04. So first enable repository. Didint use for RVM ruby
# sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe"

# Run this command periodically to make sure your source list is up-to-date
echo -e "\x1B[01;90m =========== Update source list =========== \x1B[0m"
#sudo apt-get update

#aptitude update
#aptitude -y upgrade

#sudo apt-get install -y git-core curl zlib1g-dev build-essential checkinstall python-software-properties
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] Install build and main packages \x1B[0m"

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ User setup
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED] User control \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
USER1="dev1"
USER2="dev2"
GROUP1="teamwww"

# Add group
echo -e "\x1B[01;90m =========== Add groups =========== \x1B[0m"
addgroup $GROUP1

# Add users
echo -e "\x1B[01;90m =========== Add users =========== \x1B[0m"

# Create user [pass: london5] quietly add a user without password
adduser $USER1 --quiet --disabled-password --shell /bin/bash --home /home/$USER1 --gecos "Developer One"
adduser $USER2 --quiet --disabled-password --shell /bin/bash --home /home/$USER2 --gecos "Developer Two"

# Set passwords
echo -e "\x1B[01;90m =========== Set passwords =========== \x1B[0m"
# Additonal usermod option -G SECONDARYGROUP1,SECONDARYGROUP2
usermod -G $GROUP1 -p $(openssl passwd -1 -salt shaker "london5") $USER1
usermod -G $GROUP1 -p $(openssl passwd -1 -salt shaker "london55") $USER2
#echo "dev1:london5" | chpasswd

# Providing SSH creds
echo -e "\x1B[01;90m =========== Providing SSH creds =========== \x1B[0m"
echo -e "\x1B[01;90m =========== ssh -p 2222 $USER1@localhost =========== \x1B[0m"
echo -e "\x1B[01;90m =========== ssh -p 2222 $USER2@localhost =========== \x1B[0m"

# Create www group and add dev1 to it [to undo: sudo deluser user group]
#usermod -a -G teamwww dev1

# Give team privages to user www-data, then check
echo -e "\x1B[01;90m =========== Add user www-data to teamwww, then check =========== \x1B[0m"
gpasswd -a www-data teamwww
groups www-data

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] User control \x1B[0m"

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Setup webspaces in preparation of server
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED] Setup webspaces in preparation of server \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"

# Remove bs down the line
echo -e "\x1B[01;90m =========== Remove bs down the line /var/www =========== \x1B[0m"
rm -rf /var/www

# Setup vhost directories
echo -e "\x1B[01;90m =========== Setup vhost directories =========== \x1B[0m"

# recursive mkdir for vhost1 / create any necessary parent directories
mkdir -p /var/www/{$VHOST1,$VHOST2,$VHOST3}
mkdir -p /var/www/$VHOST1/$PROJ1/www
mkdir -p /var/www/$VHOST2/$PROJ2/www
mkdir -p /var/www/$VHOST3/$PROJ3/www

# http://permissions-calculator.org/
# Own it all chown -R $USER:teamwww /var/www
chown -R dev1:teamwww /var/www/$VHOST1
chown -R dev1:teamwww /var/www/$VHOST2
chown -R dev2:teamwww /var/www/$VHOST3

#chmod -R 755 /var/www
# 2 = all files and directories newly created within it inherit the group from that directory
chmod -R 2775 /var/www/$VHOST1
chmod -R 2775 /var/www/$VHOST2
chmod -R 2775 /var/www/$VHOST3

# Set user or group ID on execution
chmod -R g+s /var/www/$VHOST1
chmod -R g+s /var/www/$VHOST2
chmod -R g+s /var/www/$VHOST3

# List directories
echo -e "\x1B[01;90m =========== List directories =========== \x1B[0m"
# '-print' arg is optional - it's default. also if a specific listing format is required it can be fed into xargs to run ls with any desired options, e.g. find /path/ -type d -print0 | xargs -0 -r ls -ld. Note the -print0 for NULL terminated output, and the matching -0 xargs arg
find /var/www/ -type d -print0 | xargs -0 -r ls -ld

# Check octal permissions on vhost1
echo -e "\x1B[01;90m =========== Check octal permissions on vhosts =========== \x1B[0m"
stat -c "%a %n" /var/www/$VHOST1
stat -c "%a %n" /var/www/$VHOST2
stat -c "%a %n" /var/www/$VHOST3

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] Setup webspaces in preparation of server \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Sync Vagrant home directory with /var/www
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED] Sync Vagrant home directory with /var/www \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"

ln -fs /vagrant/www /var/www
#ln -l /vagrant/www/ /var/www/pt80/

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Nginx
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED] Nginx install and setup \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"

#Start with downloading and installing PGP keys
wget -O key http://nginx.org/keys/nginx_signing.key && sudo apt-key add key && sudo rm -f key
echo "Nginx: Key installed"

echo "deb http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list
echo "deb-src http://nginx.org/packages/debian/ jessie nginx" >> /etc/apt/sources.list
echo "Nginx: Updated >> /etc/apt/sources.list"


apt-get update
echo "Updated apt lists"

#https://packages.debian.org/sid/nginx-extras
#apt-get install -y nginx
apt-get install -y nginx-extras

echo -e "\x1B[01;90m =========== Nginx: Installed version No =========== \x1B[0m"
nginx -v

echo -e "\x1B[01;90m =========== Nginx: Remove active default =========== \x1B[0m"
# Remove active default
rm /etc/nginx/sites-enabled/default

# Nginx: Backup default config/server block and create new vhost at 80
echo -e "\x1B[01;90m =========== Nginx: Backup default config =========== \x1B[0m"
cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak

# Nginx: mv default to my default page
echo -e "\x1B[01;90m =========== Nginx: Make their default = my default page =========== \x1B[0m"
mv /etc/nginx/sites-available/default ${VHOST1_CONF}
cp ${VHOST1_CONF} ${VHOST2_CONF}
cp ${VHOST1_CONF} ${VHOST3_CONF}


# Nginx: Replace default vhost root: /usr/share/nginx/html
echo -e "\x1B[01;90m =========== Nginx: Replace default vhost root =========== \x1B[0m"
# -i edit files in place (makes backup if extension supplied) -i[SUFFIX], --in-place[=SUFFIX] on OSX use extra blank sting in after -i
#sed -i "s:/usr/share/nginx/html:/var/www/$VHOST1/$PROJ1/www:" ${VHOST1_CONF} ${VHOST2_CONF} ${VHOST3_CONF}
sed -i "s:/var/www/html:/var/www/$VHOST1/$PROJ1/www:" ${VHOST1_CONF}
sed -i "s:/var/www/html:/var/www/$VHOST2/$PROJ2/www:" ${VHOST2_CONF}
sed -i "s:/var/www/html:/var/www/$VHOST3/$PROJ3/www:" ${VHOST3_CONF}

# Nginx: Change ports 8080
echo -e "\x1B[01;90m =========== Nginx: Change ports - 1 =========== \x1B[0m"
sed -i "s:listen 80:listen 8080:" ${VHOST2_CONF}
sed -i "s:listen 80:listen 8081:" ${VHOST3_CONF}

# Delete line containing pattern = listen [::]:80
echo -e "\x1B[01;90m =========== Nginx: Delete line containing pattern = listen [::]:80 =========== \x1B[0m"
sed -i '/:80/d' ${VHOST1_CONF} ${VHOST2_CONF} ${VHOST3_CONF}

# Nginx: Delete Default Server
echo -e "\x1B[01;90m =========== Nginx: Change ports - 1 =========== \x1B[0m"
sed -i "s: default_server::g" ${VHOST1_CONF} ${VHOST2_CONF} ${VHOST3_CONF}

echo -e "\x1B[01;90m =========== Nginx: Change ports - 2 =========== \x1B[0m"
#sed -i 's_:80_:3000_' /etc/nginx/sites-available/$VHOST1_CONF

echo -e "\x1B[01;90m =========== Nginx: Remove unnecessary example file towards bottom of conf =========== \x1B[0m"
# Delete lines starting from a pattern till the last line
sed -i '/# Virtual Host configuration for/,$d' ${VHOST1_CONF} ${VHOST2_CONF} ${VHOST3_CONF}
#sed -i '/# You should look at the following UR/,$d' ${VHOST1_CONF} ${VHOST2_CONF} ${VHOST3_CONF}

# Delete lines starting from a pattern till the last line
sed -i '/# pass the PHP scripts/,$d' ${VHOST2_CONF} ${VHOST3_CONF}

# Delete lines starting from a pattern till the last line
sed -i '/location \/ {/,$d' ${VHOST3_CONF}

STRING_WITH_SPACES="index.php index.html"
sed -i "s:index.html:$STRING_WITH_SPACES:" ${VHOST1_CONF} ${VHOST2_CONF} ${VHOST3_CONF}

echo -e "\x1B[01;90m =========== Nginx: symlink all new vhosts =========== \x1B[0m"
# Nginx: symbolic link symlink all new vhosts
sudo ln -s "$VHOST1_CONF" /etc/nginx/sites-enabled/
sudo ln -s "$VHOST2_CONF" /etc/nginx/sites-enabled/
sudo ln -s "$VHOST3_CONF" /etc/nginx/sites-enabled/

echo -e "\x1B[01;90m =========== Nginx: new server names =========== \x1B[0m"
SERVER_NAME1="server_name dev.vincent.com www.dev.vincent.com"
SERVER_NAME2="server_name stage.vincent.com www.stage.vincent.com"
SERVER_NAME3="server_name py.vincent.com www.py.vincent.com"
sed -i "s:server_name _:$SERVER_NAME1:" ${VHOST1_CONF}
sed -i "s:server_name _:$SERVER_NAME2:" ${VHOST2_CONF}
sed -i "s:server_name _:$SERVER_NAME3:" ${VHOST3_CONF}



# Nginx: Allow long domain names
echo -e "\x1B[01;90m =========== Nginx: Allow long domain names =========== \x1B[0m"
# -i edit files in place (makes backup if extension supplied) -i[SUFFIX], --in-place[=SUFFIX]
sed -i "s:# server_names_hash_bucket_size 64:server_names_hash_bucket_size 64:" ${NGINX_CONF}

# Do not advertise server version and real server type
sed -i "s[# server_tokens off;[server_tokens off;⋱more_set_headers 'Server: Mine';⋱add_header X-VVT-Built BK-1;[" ${NGINX_CONF}
#sed -i '' "s[# server_tokens off;[server_tokens off;⋱more_set_headers 'Server: Mine';⋱add_header X-VVT-Built BK-1;[" testSed.txt
#cat testSed.txt |tr 'VVV' '\012'
#tr '⋱' '\012' < testSed.txt |tee testSed.txt
#tr '⋱' '\012' < /etc/nginx/nginx.conf |tee /etc/nginx/nginx.conf
sed -i 's/⋱/\n/g' ${NGINX_CONF}


# Nginx: Store my default page inside variable heredoc then create index.html
# html-minifier --remove-comments --collapse-whitespace --minify-js --minify-css genericHTMLPage.html -o plainhtml.html
export EASY_WEB=$(cat <<END
<!DOCTYPE html><html lang="en-us"><head><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><meta charset="UTF-8"><meta name="description" content="Vincent V. Toscano website."><meta name="keywords" content="Vincent V. Toscano"><meta name="author" content="Vincent V. Toscano"><meta name="copyright" content="&copy;2015 Vincent V. Toscano"><title>ivhost1</title><link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine"><style>*{margin:0;border:0;padding:0}html,body{width:100%}img{position:absolute;width:100%}#fontCheck{position:absolute;width:100%;font-family:Tangerine,serif;font-size:48px}</style></head><body><img id="para_bkgd" src="https://farm3.staticflickr.com/2930/14623443214_e7ffba8e04_h.jpg"><div id="fontCheck">Wonderful</div></body></html>
END
);

# Add PHP support to vhost2
export EASY_PHP=$(cat <<END
<?php phpinfo();?>
END
);

export NGINX_PHP_BLOCK=$(cat <<'END_HEREDOC'
	location ~ .php$ {
		fastcgi_split_path_info ^(.+\.php)(/.+)$;
		expires        off;

		fastcgi_intercept_errors on;
		fastcgi_pass unix:/var/run/php5-fpm.sock;
		fastcgi_index  index.php;

		fastcgi_buffering on;

		fastcgi_buffer_size 32k;
		fastcgi_buffers 512 32k;
		fastcgi_busy_buffers_size 32k;
		fastcgi_read_timeout 120s;
		fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
		include        fastcgi_params;
	}
}
END_HEREDOC
);



#sed -i '/# pass the PHP scripts/,$d' ${VHOST2_CONF}
echo "$NGINX_PHP_BLOCK" >> ${VHOST2_CONF}

# Nginx: Restart
sudo nginx -t && service nginx restart
# /etc/init.d/nginx configtest && sudo /etc/init.d/nginx reload



# html: Create default page
#printf $EASY_WEB > /var/www/pt80/index.html
echo $EASY_WEB >> /var/www/$VHOST1/$PROJ1/www/index.html
echo $EASY_PHP >> /var/www/$VHOST2/$PROJ2/www/index.php

# Remove Nginx default vhost
echo -e "\x1B[01;90m =========== Remove Nginx default vhost =========== \x1B[0m"
rm -rf /var/www/{html,www}

export FORWARDED_PORTS=$(cat <<'END_HEREDOC'
config.vm.network :forwarded_port, host: 4444, guest: 80
config.vm.network :forwarded_port, host: 4445, guest: 8080
config.vm.network :forwarded_port, host: 4446, guest: 8081
END_HEREDOC
);
echo -e "\x1B[01;95m =========== http://localhost:80/ =========== \x1B[0m"
echo -e "\x1B[01;95m =========== http://localhost:4445/ =========== \x1B[0m"
echo -e "\x1B[01;95m =========== http://localhost:4446/ =========== \x1B[0m"
echo "$FORWARDED_PORTS"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] Nginx \x1B[0m"


echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ PHP
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED] PHP \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
apt-get install php5-fpm php5-cli php5-cgi php5-curl -y

TIME_ZONE="date.timezone = America/Los_Angeles"
EXPOSE_PHP="expose_php = Off"

echo -e "\x1B[01;90m =========== PHP: Set filepath for CGI scrits =========== \x1B[0m"
sed -i "s:;cgi.fix_pathinfo:cgi.fix_pathinfo:" ${PHP_INI}

echo -e "\x1B[01;90m =========== PHP: Set timezone =========== \x1B[0m"
sed -i "s:;date.timezone =:$TIME_ZONE:" ${PHP_INI}

echo -e "\x1B[01;90m =========== PHP: Do not advertise PHP is on the server through header =========== \x1B[0m"
sed -i "s:expose_php = On:$EXPOSE_PHP:" ${PHP_INI}

echo -e "\x1B[01;90m =========== PHP: Conf adjustments =========== \x1B[0m"
PHP_FPM_CONF="/etc/php5/fpm/php-fpm.conf"

emergency_restart_threshold="emergency_restart_threshold = 10"
emergency_restart_interval="emergency_restart_interval = 1"
process_control_timeout="process_control_timeout = 10"
sed -i "s:;emergency_restart_threshold = 0:$emergency_restart_threshold:" ${PHP_FPM_CONF}
sed -i "s:;emergency_restart_interval = 0:$emergency_restart_interval:" ${PHP_FPM_CONF}
sed -i "s:;process_control_timeout = 0:$process_control_timeout:" ${PHP_FPM_CONF}


#restart PHP-FPM and add it on system's start-up using
service php5-fpm restart
update-rc.d -f php5-fpm enable

# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] PHP \x1B[0m"

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Vim
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED] Vim \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"

#Remove shitty vim for good one
apt-get remove vim-tiny -y && apt-get install vim -y

# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] Vim \x1B[0m"



echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Python
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# PIP on osx http://www.leeladharan.com/installing-nginx-flask-uwsgi-on-mac-osx-yosemite
# PIP Linux instuctions also work after pip is installed on os x with easy_install pip; pip install virtualenv;
# https://www.digitalocean.com/community/tutorials/how-to-set-up-uwsgi-and-nginx-to-serve-python-apps-on-ubuntu-14-04
echo -e "\x1B[01;95m ▒ [STARTED] Python \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"

# Establish Python-related environment variables
echo -e "\x1B[01;90m =========== Python: Establish Python-related environment variables =========== \x1B[0m"
PYTHON_WSGI_APP_NAME=wsgiApp001
PYTHON_VIRTUALENV=myappenv
uWSGI_Config_INI=/var/www/${PYTHON_WSGI_APP_NAME}/${PYTHON_WSGI_APP_NAME}.ini
WSGI_Application=/var/www/${PYTHON_WSGI_APP_NAME}/wsgi.py

# Add user to sudoers file
echo -e "\x1B[01;90m =========== Python: Add $USER1 to sudoers file =========== \x1B[0m"
echo "$USER1 ALL=(ALL:ALL) ALL" | (EDITOR="tee -a" visudo)

#Install
apt-get install python-dev python-pip -y

# Create App Directory
echo -e "\x1B[01;90m =========== Python: Create App Directory =========== \x1B[0m"
mkdir -p /var/www/$PYTHON_WSGI_APP_NAME
chown -R dev1:teamwww /var/www/$PYTHON_WSGI_APP_NAME
cd /var/www/$PYTHON_WSGI_APP_NAME

# pip Python package manager. We can use this to install the virtualenv package, which we will use to isolate our application's Python environment from any others that may exist on the system:
echo -e "\x1B[01;90m =========== Python: Install the virtualenv package =========== \x1B[0m"
pip install virtualenv

# Install the uwsgi server
echo -e "\x1B[01;90m =========== Python: Install the uwsgi server =========== \x1B[0m"
pip install uwsgi

# Check octal permissions on vhost1
echo -e "\x1B[01;90m =========== Python: Check octal permissions on App Directory =========== \x1B[0m"
stat -c "%a %n" /var/www/$PYTHON_WSGI_APP_NAME

# Adjust default group of files that get created in a certain directory using ACLs or Access Control Lists
# -R Apply operations to all files and directories recursively. -m odifying the -d efault ACLs – those that will be applied to newly created items
echo -e "\x1B[01;90m =========== Python: ACL creation =========== \x1B[0m"
setfacl -Rdm g:teamwww:rwx /var/www/$PYTHON_WSGI_APP_NAME

# Enforce ACL
echo -e "\x1B[01;90m =========== Python: Enforce ACL =========== \x1B[0m"
chmod g+rwxs /var/www/$PYTHON_WSGI_APP_NAME

# Switch to dev1
echo -e "\x1B[01;90m =========== Python: [NIS] Switch to dev1 =========== \x1B[0m"
#su dev1

# Create a self-contained Virtual (Python) Environment
echo -e "\x1B[01;90m =========== Python: Create a self-contained Virtual (Python) Environment: $PYTHON_VIRTUALENV =========== \x1B[0m"
virtualenv $PYTHON_VIRTUALENV

export wsgiApp=$(cat <<'END_HEREDOC'
def application(environ, start_response):
	start_response('200 OK', [('Content-Type', 'text/html')])
	return ["<h1 style='color:blue'>Hello There!</h1>"]
END_HEREDOC
);

echo "$wsgiApp" >> ${WSGI_Application}


echo -e "\x1B[01;90m =========== Python: Create INI file by heredoc for that the uWSGI server can read  =========== \x1B[0m"


# create a directory under /run to place the socket file so that both uWSGI and Nginx can access it


export uWSGIConfigINI=$(cat <<END
[uwsgi]
module = wsgi:application

# master = [master process (true of false)]
master = true

# maximum number of worker processes = [number of processes]
processes = 5

uid = www-data
# socket = [addr:port] or [unix socket]
#socket = /run/uwsgi/$PYTHON_WSGI_APP_NAME.sock
socket = /var/www/$PYTHON_WSGI_APP_NAME/$PYTHON_WSGI_APP_NAME.sock
chown-socket = www-data:teamwww
# ... with appropriate permissions - may be needed
chmod-socket = 664

# clear environment on exit
vacuum = true

#die-on-term = true

# Process name
procname = VVT Web App 2 Py

#daemonize = /var/log/nginx/uwsgi.log
logto = /var/log/nginx/uwsgi.log
log-maxsize = 10000000

END
);

echo "$uWSGIConfigINI" >> ${uWSGI_Config_INI}


echo -e "\x1B[01;90m =========== Python: Update vhost3 =========== \x1B[0m"
export VHOST3_LOCATION=$(cat <<END
location / {
include         uwsgi_params;
uwsgi_pass      unix:/var/www/$PYTHON_WSGI_APP_NAME/$PYTHON_WSGI_APP_NAME.sock;
}
}
END
);
echo "$VHOST3_LOCATION" >> ${VHOST3_CONF}

echo -e "\x1B[01;90m =========== Python: Restart Nginx and test configs, should pass now =========== \x1B[0m"
sudo nginx -t && service nginx restart


# Run WSGI Application as dev1
#runuser


# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] Python \x1B[0m"

export TestHere=$(cat <<END
1 - $PYTHON_WSGI_APP_NAME
2 - \$PYTHON_WSGI_APP_NAME
3 - ${PYTHON_WSGI_APP_NAME}
4 - "$PYTHON_WSGI_APP_NAME"
END
);
echo "$TestHere" >> ~/aaaaaa_TestHere.txt

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Service Management Daemons > Init systems
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED] Version No \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"

# auto-start, add to runlevel.
# systemd


# place this in the /etc/systemd/system directory which is the best place for user-created unit files
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Runlevels
# ▒ In linux system telinit utility is used to change system runlevel among 6 possible values:
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
#0 System Halt
#1 Single user
#2 Full multi-user mode (Default)
#3 Full multi-user mode
#4 Full multi-user mode
#5 Full multi-user mode
#6 System Reboot
#/var/www/$PYTHON_WSGI_APP_NAME/$PYTHON_WSGI_APP_NAME.sock
#ExecStartPre=-/bin/bash -c 'mkdir -p /run/uwsgi; chown www-data /run/uwsgi'

echo -e "\x1B[01;90m =========== Python: UNIT FILE > Use this to start the uWSGI server, used by init/Upstart/**** systemctl ****/systemd script =========== \x1B[0m"
#
export PYTHON_WSGI_UNIT=$(cat <<END
[Unit]
Description=uWSGI instance to serve $PYTHON_WSGI_APP_NAME

[Service]
ExecStart=/bin/bash -c 'cd /var/www/$PYTHON_WSGI_APP_NAME; source $PYTHON_VIRTUALENV/bin/activate; uwsgi --ini $PYTHON_WSGI_APP_NAME.ini'

[Install]
WantedBy=multi-user.target
END
);

echo "$PYTHON_WSGI_UNIT" >> /etc/systemd/system/uwsgi.service

systemctl start uwsgi
systemctl enable uwsgi
systemctl status uwsgi
ls -la /etc/systemd/system/multi-user.target.wants/

# If there are no troubles for the status check on tht unit file, enable the service so that it starts at boot
# https://wiki.archlinux.org/index.php/Systemd
#sudo systemctl enable uwsgi
#sudo systemctl stop uwsgi

# http://unix.stackexchange.com/questions/106656/how-do-services-in-debian-work-and-how-can-i-manage-them
# https://wiki.ubuntu.com/SystemdForUpstartUsers
# Create an Upstart File to Manage the App
echo -e "\x1B[01;90m =========== Python: [NIS] Create an Upstart File to Manage the App =========== \x1B[0m"
export Upstart_File=$(cat <<'END_HEREDOC'
description "uWSGI instance to serve myapp"

start on runlevel [2345]
stop on runlevel [!2345]

setuid dev1
setgid www-data

script
cd /var/www/wsgiApp001
. myappenv/bin/activate
uwsgi --ini wsgiApp001.ini
end script
END_HEREDOC
);

echo "$Upstart_File" >> /etc/init/${PYTHON_WSGI_APP_NAME}.conf

exit 0

# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] Python \x1B[0m"

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Version
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒ [STARTED] Version No \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# Python: Version No
python --version

# Nginx: Version No
nginx -v

# jenkins: Version No
echo -n "$JENKINS_V"

# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] Version No\x1B[0m"
printf "\n\n"

# Ruby one-liner to print first 10 lines of file
echo -e "\x1B[01;90m =========== Nginx: First ten lines of $VHOST1.conf =========== \x1B[0m"
ruby -pe 'exit if $. > 10' < /etc/nginx/sites-available/$VHOST1_CONF
printf "\n\n"

echo -e "\x1B[01;90m =========== Jenkins: First ten lines of log =========== \x1B[0m"
ruby -pe 'exit if $. > 10' < /etc/default/jenkins
printf "\n\n"

# Get IP of instance
IP=$(/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo -e "\x1B[01;95m ======================================== \x1B[0m"
echo -e "\x1B[01;95mhttp://$IP \x1B[0m"

# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] EXITING BOOTSTRAP SCRIPT\x1B[0m"

exit 0
# DB restore from dump: mongorestore --drop -d db3--host mongodb1.example.net --port 27017 --username user --password pass /opt/backup/mongodump-2011-10-24
