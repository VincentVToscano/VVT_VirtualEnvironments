#!/usr/bin/env bash

sudo -s

: '
#Reference Links:
https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-14-04
https://www.digitalocean.com/community/tutorials/how-to-use-vagrant-on-your-own-vps-running-ubuntu
http://wiki.nginx.org/Install
http://nginx.org/en/docs/http/server_names.html

#Nginx server block:
https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-14-04-lts
https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-14-04

#community boxes:
	http://www.vagrantbox.es/

#Node.js:
https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager#debian-and-ubuntu-based-linux-distributions

# Ruby:
https://gorails.com/deploy/ubuntu/14.04
http://www.centurylinklabs.com/tutorials/ubuntu/installing-ruby-2-1-2-on-rails-4-1-2-on-ubuntu-trusty-14-04/
https://www.digitalocean.com/community/tutorials/how-to-install-ruby-2-1-0-and-sinatra-on-ubuntu-13-with-rvm
http://leonid.shevtsov.me/en/making-rvm-play-nicely-with-system-scripts
http://rvm.io/rvm/install

# Ruby oneliners
http://reference.jumpingmonkey.org/programming_languages/ruby/ruby-one-liners.html

#vsftpd
https://www.digitalocean.com/community/tutorials/how-to-set-up-vsftpd-on-ubuntu-12-04
https://www.digitalocean.com/community/questions/var-www-to-home-user-public_html

#Server setup
https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04
https://www.digitalocean.com/community/tutorials/how-to-launch-your-site-on-a-new-ubuntu-12-04-server-with-lamp-sftp-and-dns
https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-12-04

# User control
https://www.digitalocean.com/community/tutorials/how-to-add-and-delete-users-on-an-ubuntu-14-04-vps
https://www.linode.com/docs/tools-reference/linux-users-and-groups


# Limit an FTP or SFTP linux
http://www.faqs.org/docs/securing/chap29sec295.html
http://ubuntuforums.org/showthread.php?t=1980933
http://stackoverflow.com/questions/24575033/restricting-sftp-user-to-home-directory
## best
https://survivalguides.wordpress.com/2011/05/20/chroot-sftp-connection/

vi /etc/ssh/sshd_config
Go to bottom
#Subsystem sftp /usr/lib/openssh/sftp-server
Subsystem sftp internal-sftp
Match group teamwww
ChrootDirectory /var/www
X11Forwarding no
AllowTcpForwarding no
ForceCommand internal-sftp

sudo service ssh restart

# Unix Permissions Calculator and check octal permissions
http://permissions-calculator.org/
http://askubuntu.com/questions/152001/how-can-i-get-octal-file-permissions-from-command-line

# IP
http://www.cyberciti.biz/faq/how-to-find-out-the-ip-address-assigned-to-eth0-and-display-ip-only/

#SED one-liners
http://sed.sourceforge.net/sed1line.txt
http://www.folkstalk.com/2013/03/sed-remove-lines-file-unix-examples.html
'



# Install build and main packages
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# https://help.ubuntu.com/community/AptGet/Howto
echo -e "\x1B[01;95m =========== Install build and main packages [STARTED]=========== \x1B[0m"

# build-essential is available on Main repository for 14.04. So first enable repository. Didint use for RVM ruby
# sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe"

# Run this command periodically to make sure your source list is up-to-date
echo -e "\x1B[01;90m =========== Update source list =========== \x1B[0m"
#sudo apt-get update

#aptitude update
#aptitude -y upgrade

#sudo apt-get install -y git-core curl zlib1g-dev build-essential checkinstall python-software-properties
echo -e "\x1B[01;95m =========== Install build and main packages [COMPLETE]=========== \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# Install build and main packages


# User setup
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ===========[STARTED] User setup =========== \x1B[0m"
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

echo -e "\x1B[01;95m ===========[COMPLETE] User setup =========== \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# User control





# Setup webspaces in preparation of server
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ===========[STARTED] Setup webspaces in preparation of server =========== \x1B[0m"

# Remove bs down the line
echo -e "\x1B[01;90m =========== Remove bs down the line /var/www =========== \x1B[0m"
rm -rf /var/www

# Setup vhost directories
echo -e "\x1B[01;90m =========== Setup vhost directories =========== \x1B[0m"
VHOST1="vhost1"
VHOST2="vhost2"
VHOST3="vhost3"

PROJ1="projectNameOrRepo"
PROJ2="projectNameOrRepo"
PROJ3="projectNameOrRepo"

# recursive mkdir for vhost1 / create any necessary parent directories
mkdir -p /var/www/{$VHOST1,$VHOST2,$VHOST3}/{$PROJ1,$PROJ2,$PROJ3}/www
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
echo -e "\x1B[01;90m =========== Check octal permissions on vhost1 =========== \x1B[0m"
stat -c "%a %n" /var/www/$VHOST1

echo -e "\x1B[01;95m ===========[COMPLETE] Setup webspaces in preparation of server =========== \x1B[0m"
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# Setup webspaces in preparation of server


# Synce Vagrant home directory with /var/www
echo -e "\x1B[01;90m =========== Synce Vagrant home directory with /var/www =========== \x1B[0m"
ln -fs /vagrant/www /var/www
#ln -l /vagrant/www/ /var/www/pt80/




# Nginx
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
echo -e "\x1B[01;95m ===========[STARTED] Nginx install and setup =========== \x1B[0m"
# use nginx=development for latest development version
nginx=stable
add-apt-repository ppa:nginx/$nginx
apt-get update

#https://packages.debian.org/sid/nginx-extras
#apt-get install -y nginx
apt-get install -y nginx-extras
nginx -v
echo -e "\x1B[01;90m =========== Nginx installed =========== \x1B[0m"



echo -e "\x1B[01;90m =========== Nginx: Remove active default =========== \x1B[0m"
# Remove active default
rm /etc/nginx/sites-enabled/default

# Nginx: Backup default config/server block and create new vhost at 80
echo -e "\x1B[01;90m =========== Nginx: Backup default config =========== \x1B[0m"
cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak

# Nginx: mv default to my default page
echo -e "\x1B[01;90m =========== Nginx: mv default to my default page =========== \x1B[0m"
mv /etc/nginx/sites-available/default /etc/nginx/sites-available/$VHOST1.conf

echo -e "\x1B[01;90m =========== Nginx: symlink all new vhosts =========== \x1B[0m"
# Nginx: symlink all new vhosts
sudo ln -s /etc/nginx/sites-available/$VHOST1.conf /etc/nginx/sites-enabled/

# Nginx: Replace default vhost root: /usr/share/nginx/html
echo -e "\x1B[01;90m =========== Nginx: Replace default vhost root =========== \x1B[0m"
# -i edit files in place (makes backup if extension supplied) -i[SUFFIX], --in-place[=SUFFIX]
sed -i "s:/usr/share/nginx/html:/var/www/$VHOST1/$PROJ1/www:" /etc/nginx/sites-available/$VHOST1.conf
sed -i "s:/var/www/html:/var/www/$VHOST1/$PROJ1/www:" /etc/nginx/sites-available/$VHOST1.conf


# Nginx: Change ports 3000, 3001, 3002
echo -e "\x1B[01;90m =========== Nginx: Change ports 3000 - 1 =========== \x1B[0m"
sed -i "s:listen 80:listen 3000:" /etc/nginx/sites-available/$VHOST1.conf

echo -e "\x1B[01;90m =========== Nginx: Change ports 3000 - 2 =========== \x1B[0m"
sed -i 's_:80_:3000_' /etc/nginx/sites-available/$VHOST1.conf

echo -e "\x1B[01;90m =========== Nginx: LUA Routing =========== \x1B[0m"
export ROUTING_LUA=$(cat <<END
location = / {
	rewrite_by_lua '
		for lang in (ngx.var.http_accept_language .. ","):gmatch("([^,]*),") do
			if string.sub(lang, 0, 2) == "en" then
				ngx.redirect("http://cnn.com")
			end
			if string.sub(lang, 0, 2) == "fr" then
				ngx.redirect("http://abc.com")
			end
			if string.sub(lang, 0, 2) == "es" then
				ngx.redirect("http://nbc.com")
			end
		end
		ngx.redirect("http://cnn.com")
	';
}
END
) ; echo $ROUTING_LUA

echo -e "\x1B[01;90m =========== Nginx: Remove unnecessary example file towards bottom of conf =========== \x1B[0m"
# Delete lines starting from a pattern till the last line
sed -i '/# Virtual Host configuration for/,$d' /etc/nginx/sites-available/vhost1.conf

#ESCAPED_LUA=$(echo "${ROUTING_LUA}" | sed 's/\([[$]\)/\\\1/g')
#sed -i "\/server_name/a \\nFFFFFFFF\n" /etc/nginx/sites-available/$VHOST1.conf
#awk '/Hello/ && !f {print $0 "\nNew line";f=1;next}1' file
#sed "/$(echo /"${ROUTING_LUA}/" | sed 's/\([[$]\)/\\\1/g')/d"
echo -e "\x1B[01;90m =========== Nginx: LUA Routing Injection =========== \x1B[0m"
awk '/server_name/ {print; print var; seen=1;next}1' var="$ROUTING_LUA" /etc/nginx/sites-available/$VHOST1.conf > /tmp/$VHOST1.conf && mv /tmp/$VHOST1.conf /etc/nginx/sites-available/$VHOST1.conf

# Nginx: Allow long domain names
echo -e "\x1B[01;90m =========== Nginx: Allow long domain names =========== \x1B[0m"
# -i edit files in place (makes backup if extension supplied) -i[SUFFIX], --in-place[=SUFFIX]
sed -i "s:# server_names_hash_bucket_size 64:server_names_hash_bucket_size 64:" /etc/nginx/nginx.conf

# Nginx: Restart
sudo nginx -t && service nginx restart
# /etc/init.d/nginx configtest && sudo /etc/init.d/nginx reload

# Nginx: Store my default page inside variable heredoc then create index.html
# html-minifier --remove-comments --collapse-whitespace --minify-js --minify-css genericHTMLPage.html -o plainhtml.html
export EASY_WEB=$(cat <<END
<!DOCTYPE html><html lang="en-us"><head><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><meta charset="UTF-8"><meta name="description" content="Vincent V. Toscano website."><meta name="keywords" content="Vincent V. Toscano"><meta name="author" content="Vincent V. Toscano"><meta name="copyright" content="&copy;2014 Vincent V. Toscano"><title>ivhost1</title><link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine"><style>*{margin:0;border:0;padding:0}html,body{width:100%}img{position:absolute;width:100%}#fontCheck{position:absolute;width:100%;font-family:Tangerine,serif;font-size:48px}</style></head><body><img id="para_bkgd" src="https://farm3.staticflickr.com/2930/14623443214_e7ffba8e04_h.jpg"><div id="fontCheck">Wonderful</div></body></html>
END
) ; echo $EASY_WEB


# html: Create default page
#printf $EASY_WEB > /var/www/pt80/index.html
echo $EASY_WEB >> /var/www/$VHOST1/$PROJ1/www/index.html


echo -e "\x1B[01;95m ===========[COMPLETE] Nginx install and setup =========== \x1B[0m"
echo -e "\x1B[01;95m =========== http://127.0.0.1:4444/ =========== \x1B[0m"

# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# Nginx

echo -e "\x1B[01;95m =========== EXITING BOOTSTRAP SCRIPT =========== \x1B[0m"
exit 0

# Node.js
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# Node.js: Download and pipe to bash, https://github.com/nodesource/distributions
curl -sL https://deb.nodesource.com/setup | sudo bash -

# Node.js: Then install with Ubuntu:
sudo apt-get install -y nodejs
# ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
# Nginx

# Delete lock file for the following error:
# E: Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)


echo -e "\x1B[01;95m \n\n\n\n======================================== \x1B[0m"
echo -e "\x1B[01;95m ======================================== \x1B[0m"
echo -e "\x1B[01;90m =========== Version No [STARTED]=========== \x1B[0m"
echo -e "\x1B[01;90m ======================================== \x1B[0m"
# Nginx: Version No
nginx -v

# Node.js: Version No
node --version

# Python: Version No
python --version

echo -e "\x1B[01;90m =========== Version No [COMPLETE]=========== \x1B[0m"
echo "\n\n\n\n"

# Ruby one-liner to print first 10 lines of file
ruby -pe 'exit if $. > 10' < /etc/nginx/sites-enabled/pt80


# htpasswd
sudo apt-get install apache2-utils
sudo htpasswd -c /etc/nginx/.htpasswd tool
vi /etc/nginx/sites-enabled/pt80
sudo /etc/init.d/nginx reload
# Nginx: To ensure that nginx will be up after reboots, it’s best to add it to the startup.
sudo apt-get purge apache2-utils

# recursive mkdir for vhost1 / create any necessary parent directories
mkdir -p /etc/nginx/sites-protected
cd /etc/nginx/sites-protected

# Password file
touch .pt80WebrootPasswd

# Manual operations
perl -le 'print crypt("car21train", "salt-hash")'
# vi .pt80WebrootPasswd

# Get IP of instance
IP=$(/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo -e "\x1B[01;95m ======================================== \x1B[0m"
echo -e "\x1B[01;95mhttp://$IP \x1B[0m"
