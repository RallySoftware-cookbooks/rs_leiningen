source 'https://rubygems.org'

gem "rake", "~> 10.0.4"

gem "chef", "= 11.4.4"
gem "berkshelf", "~> 2.0"
gem "cookbook-development", :git => "https://github.com/RallySoftware-cookbooks/cookbook-development"

gem "chefspec", "~> 1.3"
gem "foodcritic", "~> 2.2"

# Workaround for json dependency for chef and berkshelf.  Chef
# wants <= 1.7.7 and berkshelf >= 1.5 but bundler tries to grab 1.8.0
# which violates chef's requirement.  Seems like a bundler bug.
gem "json", "1.7.7"


group :integration do
  gem 'test-kitchen', '1.0.0.beta.1'
  gem 'kitchen-vagrant'
end

