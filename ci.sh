echo "Download GIT + unzip for composer"
apt-get update
apt-get -y install git-all
apt-get -y install unzip

echo "Download composer"
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === 'fd26ce67e3b237fffd5e5544b45b0d92c41a4afe3e3f778e942e43ce6be197b9cdc7c251dcde6e2a52297ea269370680') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); }"
php composer-setup.php --install-dir=bin --filename=composer
php -r "unlink('composer-setup.php');"

echo "Run Composer"
php composer.phar install

echo "Run PHP lint"
find -L . -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l
