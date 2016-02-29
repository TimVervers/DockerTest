echo "Get PHP Codesniffer"
composer global require "squizlabs/php_codesniffer=*"

echo "Install composer in project"
composer update
# temp update for codesnifffer

echo "Run PHP lint"
find -L . -path ./vendor -prune -o -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l
