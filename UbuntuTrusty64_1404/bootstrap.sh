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
'



aptitude update
aptitude -y upgrade



# User control
# Create user [pass: london5]
adduser dev1

# Add group
addgroup teamwww

# Create www group and add dev1 to it [to undo: sudo deluser user group]
usermod -a -G teamwww dev1

# Give team privages to user www-data, then check
gpasswd -a www-data teamwww
groups www-data



# use nginx=development for latest development version
nginx=stable
add-apt-repository ppa:nginx/$nginx
apt-get update 
apt-get install -y nginx
nginx -v

# Remove bs down the line
rm -rf /var/www

# recursive mkdir for vhost1 / create any necessary parent directories
mkdir -p /var/www/pt80

# http://permissions-calculator.org/
# Own it all chown -R $USER:teamwww /var/www
chown -R dev1:teamwww /var/www
#chmod -R 755 /var/www
chmod -R 2774 /var/www

# Set user or group ID on execution
chmod -R g+s /var/www

# Check octal permissions
stat -c "%a %n" /var/www/pt80/

# Synced home folder
ln -fs /vagrant/www /var/www/pt80
#ln -l /vagrant/www/ /var/www/pt80/

# Remove active default
rm /etc/nginx/sites-enabled/default

# Nginx: Backup default config/server block and create new vhost at 80
cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak

# Nginx: mv default to my default page
mv /etc/nginx/sites-available/default /etc/nginx/sites-available/pt80

# Nginx: symlink all new vhosts
sudo ln -s /etc/nginx/sites-available/pt80 /etc/nginx/sites-enabled/

# Nginx: Replace default vhost root: /usr/share/nginx/html
# -i edit files in place (makes backup if extension supplied) -i[SUFFIX], --in-place[=SUFFIX]
sed -i "s:/usr/share/nginx/html:/var/www/pt80:" /etc/nginx/sites-available/pt80
sed -i "s:/var/www/html:/var/www/pt80:" /etc/nginx/sites-available/pt80

# Nginx: Allow long domain names
# -i edit files in place (makes backup if extension supplied) -i[SUFFIX], --in-place[=SUFFIX]
sed -i "s:# server_names_hash_bucket_size 64:server_names_hash_bucket_size 64:" /etc/nginx/nginx.conf

# Nginx: Restart
service nginx restart

# Nginx: Store my default page inside variable heredoc then create index.html
# html-minifier --remove-comments --collapse-whitespace --minify-js --minify-css genericHTMLPage.html -o plainhtml.html
export EASY_WEB=$(cat <<END
<!DOCTYPE html><html lang="en-us"><head><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0"><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><meta charset="UTF-8"><meta name="description" content="Vincent V. Toscano website."><meta name="keywords" content="Vincent V. Toscano"><meta name="author" content="Vincent V. Toscano"><meta name="copyright" content="&copy;2014 Vincent V. Toscano"><title>ivhost1</title><link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Tangerine"><style>*{margin:0;border:0;padding:0}html,body{width:100%}img{position:absolute;width:100%}#fontCheck{position:absolute;width:100%;font-family:Tangerine,serif;font-size:48px}</style></head><body><img id="para_bkgd" src="https://farm3.staticflickr.com/2930/14623443214_e7ffba8e04_h.jpg"><div id="fontCheck">Wonderful</div></body></html>
END
) ; echo $EASY_WEB


# html: Create default page
#printf $EASY_WEB > /var/www/pt80/index.html
echo $EASY_WEB >> /var/www/pt80/index.html

# Installing Node.js via package manager

# Node.js: Download and pipe to bash
curl -sL https://deb.nodesource.com/setup | sudo bash -

# Node.js: install with Ubuntu:
sudo apt-get install -y nodejs


# Delete lock file for the following error:
# E: Could not get lock /var/lib/dpkg/lock - open (11: Resource temporarily unavailable)

# Update Ruby version to 2.1.2
# Ruby: install some dependencies for Ruby.
echo -e "\x1B[01;95m =========== Main Repo Added [STARTED]=========== \x1B[0m"

# build-essential is available on Main repository for 14.04. So first enable repository. Didint use for RVM ruby
# sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe"

sudo apt-get update
echo -e "\x1B[01;95m =========== Main Repo Added [MID]=========== \x1B[0m"
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties
echo -e "\x1B[01;95m =========== Main Repo Added [COMPLETE]=========== \x1B[0m"

command curl -sSL https://rvm.io/mpapis.asc | sudo gpg --import -
# OR: gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
# Ruby: use rbenv as it one of the most popular install systems
curl -L get.rvm.io | bash -s stable

# Ruby: create a system environment using RVM shell script
source /etc/profile.d/rvm.sh


# Ruby: Install
echo -e "\x1B[01;90m =========== Ruby: Install 2.1.2 =========== \x1B[0m"
rvm reload
rvm install 2.1.2


: '
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.1.2
rbenv global 2.1.2
ruby -v
#The last step is to tell Rubygems not to install the documentation for each package locally
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
'

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

# Ruby: Version No
ruby --version

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
