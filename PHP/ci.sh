# Run PHPLint
find -L . -path ./vendor -prune -o -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l

#Run composer
composer install --prefer-source --no-interaction --no-progress

#Set compsoser timeout
export COMPOSER_PROCESS_TIMEOUT=5000

# Run PHPUnit
vendor/bin/phpunit --coverage-clover=./coverage/phpunit-clover.xml --coverage-html=phpunit-coverage --log-junit=./coverage/phpunit-junit.xml
