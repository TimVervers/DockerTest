echo "Run Composer"
php composer.phar install

echo "Run PHP lint"
find -L . -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l
