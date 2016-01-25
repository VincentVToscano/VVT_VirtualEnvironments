#!/usr/bin/env bash

sudo -s
#
# Backported Debian 7 Wheezy version
# docker-1.1.1 on backports Debian 7.5
: '
Reference Links:
https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-14-04
https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-14-04-lts
https://www.digitalocean.com/community/tutorials/how-to-use-vagrant-on-your-own-vps-running-ubuntu
http://wiki.nginx.org/Install
http://nginx.org/en/docs/http/server_names.html
community boxes:
	http://www.vagrantbox.es/
'

# use nginx=development for latest development version
#nginx=stable

#Start with downloading and installing PGP keys
wget -O key http://nginx.org/keys/nginx_signing.key && sudo apt-key add key && sudo rm -f key


echo "Nginx: Key installed"

# alt: wheezy-backports
echo "deb http://nginx.org/packages/debian/ wheezy nginx" >> /etc/apt/sources.list
echo "deb-src http://nginx.org/packages/debian/ wheezy nginx" >> /etc/apt/sources.list

echo "Nginx: Updated >> /etc/apt/sources.list"

# Update apt lists
apt-get update

echo "Updated apt lists"

# Installpdate apt lists
apt-get install -y nginx

echo "Nginx: Installed"

nginx -v

# Remove bs down the line
rm -rf /var/www

# recursive mkdir for vhost1 / create any necessary parent directories
mkdir -p /var/www/pt80

# Own it all
chown -R $USER:$USER /var/www
chmod -R 755 /var/www

# Synced home folder
ln -fs /vagrant/www /var/www/pt80
#ln -l /vagrant/www/ /var/www/pt80/

# Remove active defafault (custom install: directory does not exist)
#rm /etc/nginx/sites-enabled/default

# Nginx: Backup default config/server block and create new vhost at 80
cp /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.bak

# Nginx: mv default to my default page
mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/pt80.conf

# Nginx: symlink all new vhosts (custom install: directory does not exist)
#sudo ln -s /etc/nginx/sites-available/pt80 /etc/nginx/sites-enabled/

# Nginx: Replace default vhost root: /usr/share/nginx/html
# -i edit files in place (makes backup if extension supplied) -i[SUFFIX], --in-place[=SUFFIX]
sed -i "s:/usr/share/nginx/html:/var/www/pt80:" /etc/nginx/conf.d/pt80.conf

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
