# Run bundle install
bundle install --binstubs --path vendor/bundle 

# Run librarian install
bundle exec rake librarian:clean_install

# Run tests
bundle exec rake spec_unit

# Run puppet lint
bundle exec rake lint:puppet
