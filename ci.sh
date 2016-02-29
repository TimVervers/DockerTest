echo "Step 1 : Composer"

echo "Download Composer"
php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php
php -r "if (hash('SHA384', file_get_contents('composer-setup.php')) === 'fd26ce67e3b237fffd5e5544b45b0d92c41a4afe3e3f778e942e43ce6be197b9cdc7c251dcde6e2a52297ea269370680') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); }"
php composer-setup.php
php -r "unlink('composer-setup.php');"

echo "Run Composer"
php /usr/src/myapp/composer.phar install --no-dev --no-interaction --no-progress --optimize-autoloader

echo "Run PHP lint"
/bin/find -L . -name '*.php' -print0 | /usr/bin/xargs -0 -n 1 -P 4 /usr/bin/php -l
