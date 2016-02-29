echo "Check if composer is installed"
composer

echo "Update composer"
composer update

echo "Run PHP lint"
find -L . -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l
