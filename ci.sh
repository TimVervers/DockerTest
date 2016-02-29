echo "Run PHP lint"
find -L . -path ./vendor -prune -o -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l

sleep 5h

echo "Run code sniffer"
./vendor/squizlabs/php_codesniffer/scripts/phpcs -h
