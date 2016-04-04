echo "Running bundle"

# Run bundle install
bundle install --binstubs --path vendor/bundle 

# Run librarian install
bundle exec rake librarian:install

# Run tests
bundle exec rake spec_clean
bundle exec rake spec_prep
bundle exec rake spec_standalone

# Run puppet lint
bundle exec rake lint:puppet
