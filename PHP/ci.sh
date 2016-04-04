# Run PHPLint
find -L . -path ./vendor -prune -o -name '*.php' -print0 | xargs -0 -n 1 -P 4 php -l

#Run composer
composer install --prefer-source --no-interaction --no-progress

#Set compsoser timeout
export COMPOSER_PROCESS_TIMEOUT=2000

# Run PHPUnit
vendor/bin/phpunit --coverage-clover=./phpunit-clover.xml --coverage-html=./phpunit-coverage --log-junit=./phpunit-junit.xml

# Run teamcity Clover
vendor/bin/teamcity-clover ./phpunit-clover.xml

# Publish artifact zip to teamcity
echo "##teamcity[publishArtifacts 'phpunit-coverage => coverage.zip']"
