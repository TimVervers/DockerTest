# Run PHPLint
find -L . -path ./vendor -prune -o -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l

# Run code sniffer
./vendor/bin/phpcs ./src ./tests

# Run PHPUnit
./vendor/bin/phpunit --configuration phpunit.xml

# Go into sleep mode
# sleep 5h
