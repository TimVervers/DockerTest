echo "Run PHP lint"
find -L . -path ./vendor -prune -o -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l

#echo "Run code sniffer"
./vendor/bin/phpcs ./src ./tests

echo "Run PHPUnit"
./vendor/bin/phpunit --configuration phpunit.xml
