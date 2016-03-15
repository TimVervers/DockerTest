#Add github to known hosts
ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts

#Install and run composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && composer install --prefer-source --no-interaction

# Run PHPLint
find -L . -path ./vendor -prune -o -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l

# Run code sniffer
./vendor/bin/phpcs ./src ./tests

# Run PHPUnit
./vendor/bin/phpunit --configuration phpunit.xml

# Create artifact
cat /proc/self/cgroup | grep 'docker' | sed 's/^.*\///' | tail -n1 > docker_containerId.txt
