# Run bundle install
bundle install --binstubs --path vendor/bundle 

# Generate documentation
bundle exec rake documentation:generate_ip

# Publish documentation - DISABLED, i don't want to change to documentation from my local POC. 
# Enable this if the POC gets into prod
# bundle exec rake documentation:publish
