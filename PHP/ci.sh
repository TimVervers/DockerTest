# Run PHPLint
find -L . -path ./vendor -prune -o -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l

#Install and run composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && composer install --prefer-source --no-interaction --no-progress

# Run PHPUnit
composer test -vvv
#vendor/bin/phpunit --coverage-clover=./coverage/phpunit-clover.xml --coverage-html=phpunit-coverage --log-junit=./coverage/phpunit-junit.xml
