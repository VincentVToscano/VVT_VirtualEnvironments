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
echo "PROJ1='jenkins80'"  >> /etc/environment
echo "PROJ2='jenkins443'"  >> /etc/environment
echo "PROJ3='projectNameOrRepo'"  >> /etc/environment
. /etc/environment

echo -e "\x1B[01;90m ▒ Set ENV vars - Second set \x1B[0m"
echo -e "\x1B[01;90m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo "# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"  >> /etc/environment
echo "NGINX_CONF=/etc/nginx/nginx.conf" >> /etc/environment
echo "VHOST1_CONF=/etc/nginx/sites-available/${VHOST1}_${PROJ1}.conf" >> /etc/environment
echo "VHOST2_CONF=/etc/nginx/sites-available/${VHOST2}_${PROJ2}.conf" >> /etc/environment
echo "VHOST3_CONF=/etc/nginx/sites-available/${VHOST3}_${PROJ3}.conf" >> /etc/environment
echo "JENKINS_CONF=etc/default/jenkins" >> /etc/environment
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
chmod -R 2774 /var/www/$VHOST1
chmod -R 2774 /var/www/$VHOST2
chmod -R 2774 /var/www/$VHOST3

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
echo -e "\x1B[01;95m ▒ [COMPLETE] Sync Vagrant home directory with /var/www \x1B[0m"

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

# use nginx=development for latest development version
nginx=stable
add-apt-repository ppa:nginx/$nginx
apt-get update

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

echo -e "\x1B[01;90m =========== Nginx: symlink all new vhosts =========== \x1B[0m"
# Nginx: symbolic link symlink all new vhosts
sudo ln -s "$VHOST1_CONF" /etc/nginx/sites-enabled/

# Nginx: Replace default vhost root: /usr/share/nginx/html
echo -e "\x1B[01;90m =========== Nginx: Replace default vhost root =========== \x1B[0m"
# -i edit files in place (makes backup if extension supplied) -i[SUFFIX], --in-place[=SUFFIX] on OSX use extra blank sting in after -i
sed -i "s:/usr/share/nginx/html:/var/www/$VHOST1/$PROJ1/www:" ${VHOST1_CONF}
sed -i "s:/var/www/html:/var/www/$VHOST1/$PROJ1/www:" ${VHOST1_CONF}


# Nginx: Change ports 8080
echo -e "\x1B[01;90m =========== Nginx: Change ports - 1 =========== \x1B[0m"
#sed -i "s:listen 80:listen 8080:" /etc/nginx/sites-available/$VHOST1_CONF

echo -e "\x1B[01;90m =========== Nginx: Change ports - 2 =========== \x1B[0m"
#sed -i 's_:80_:3000_' /etc/nginx/sites-available/$VHOST1_CONF

echo -e "\x1B[01;90m =========== Nginx: Remove unnecessary example file towards bottom of conf =========== \x1B[0m"
# Delete lines starting from a pattern till the last line
sed -i '/# Virtual Host configuration for/,$d' ${VHOST1_CONF}

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

# Nginx: Restart
sudo nginx -t && service nginx restart
# /etc/init.d/nginx configtest && sudo /etc/init.d/nginx reload

# Nginx: Store my default page inside variable heredoc then create index.html
# html-minifier --remove-comments --collapse-whitespace --minify-js --minify-css genericHTMLPage.html -o plainhtml.html
export EASY_WEB=$(cat <<END
<!DOCTYPE html><html lang="en-us"><head><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><meta charset="UTF-8"><meta name="description" content="Vincent V. Toscano website."><meta name="keywords" content="Vincent V. Toscano"><meta name="author" content="Vincent V. Toscano"><meta name="copyright" content="&copy;2015 Vincent V. Toscano"><title>ivhost1</title><link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine"><style>*{margin:0;border:0;padding:0}html,body{width:100%}img{position:absolute;width:100%}#fontCheck{position:absolute;width:100%;font-family:Tangerine,serif;font-size:48px}</style></head><body><img id="para_bkgd" src="https://farm3.staticflickr.com/2930/14623443214_e7ffba8e04_h.jpg"><div id="fontCheck">Wonderful</div></body></html>
END
) ; echo $EASY_WEB


# html: Create default page
#printf $EASY_WEB > /var/www/pt80/index.html
echo $EASY_WEB >> /var/www/$VHOST1/$PROJ1/www/index.html

echo -e "\x1B[01;95m =========== http://127.0.0.1:4444/ =========== \x1B[0m"
echo -e "\x1B[01;95m =========== http://127.0.0.1:4445/ =========== \x1B[0m"

# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒ [COMPLETE] Nginx \x1B[0m"

exit 0

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Jenkins
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
#
#	https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-with-ssl-as-a-reverse-proxy-for-jenkins
#	https://www.digitalocean.com/community/tutorials/how-to-install-and-use-jenkins-on-ubuntu-12-04
#	http://pkg.jenkins-ci.org/debian/
#	https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu
#	https://wiki.jenkins-ci.org/display/JENKINS/Starting+and+Accessing+Jenkins
#	https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu
echo -e "\x1B[01;95m ▒[STARTED] Jenkins install and setup =========== \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;90m =========== Jenkins: Set conf var: /etc/default/jenkins =========== \x1B[0m"

# Jenkins: Install key
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -

# Jenkins: Generate a file with the Jenkins repository url
echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list


# Jenkins: Update local repos
sudo apt-get update

# Jenkins: Install
apt-get install -y jenkins

# Jenkins: Check it
ps -ef | grep jenkins

echo -e "\x1B[01;90m =========== Jenkins: Backup default config =========== \x1B[0m"
cp /etc/default/jenkins /etc/default/jenkins.bak

echo -e "\x1B[01;90m =========== Jenkins: Change home =========== \x1B[0m"
sed -i "s:JENKINS_HOME=/var/lib/jenkins:JENKINS_HOME=/home/jenkins:" $JENKINS_CONF

mkdir -p /home/jenkins
chown -R jenkins:jenkins /home/jenkins

# /etc/default/jenkins
echo -e "\x1B[01;90m =========== Jenkins: Change port [disabled] =========== \x1B[0m"
#sed -i "s:#port = 27017:port = 27017:" /etc/mongod.conf

echo -e "\x1B[01;90m =========== Jenkins: Listen on all interfaces 0.0.0.0 [disabled] =========== \x1B[0m"
#sed -i "s:bind_ip:#bind_ip:" /etc/mongod.conf

#sudo service mongod restart
# /etc/default/jenkins

# Jenkins: Remove old JENKINS_ARGS
# JENKINS_ARGS="--webroot=/var/cache/jenkins/war --httpPort=$HTTP_PORT --ajp13Port=$AJP_PORT --prefix=/jenkins"
# JENKINS_ARGS="--webroot=/var/cache/jenkins/war --httpListenAddress=127.0.0.1 --httpPort=$HTTP_PORT -ajp13Port=$AJP_PORT"
sed -i "/JENKINS_ARGS=/d" $JENKINS_CONF
echo 'JENKINS_ARGS="--webroot=/var/cache/jenkins/war --httpListenAddress=127.0.0.1 --httpPort=$HTTP_PORT -ajp13Port=$AJP_PORT"' >> $JENKINS_CONF

# jenkins: Version No
JENKINS_V=$(apt-cache policy jenkins)
#JENKINS_CMD=/usr/bin/java -- -jar /home/jenkins/jenkins.war


echo -e "\x1B[01;90m =========== Jenkins: startup: /etc/init.d/jenkins =========== \x1B[0m"
/etc/init.d/jenkins start
sudo service jenkins restart
sudo service nginx restart
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒[COMPLETE] Jenkins $JENKINS_V \x1B[0m"

# Delete lock file for the following error:
# E: Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)

echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
echo -e "\x1B[01;95m ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# ▒ Nginx
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
