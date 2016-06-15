# Run bundle install
bundle install --binstubs --path vendor/bundle 

# Run librarian install
bundle exec rake librarian:clean_install

# publish version number and zipped files
