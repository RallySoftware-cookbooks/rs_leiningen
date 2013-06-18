source 'https://rubygems.org'

gem "rake", "~> 10.0.4"
gem "strainer", "~>2.1.0"
gem "foodcritic", "~> 2.1.0"
gem "chef", "~> 11.4.0"
gem "berkshelf", "~> 1.4.3"
gem "chefspec", "~> 1.2.0"
gem "cookbook-development", :git => "https://github.com/RallySoftware-cookbooks/cookbook-development"

# Workaround for json dependency for chef and berkshelf.  Chef
# wants <= 1.7.7 and berkshelf >= 1.5 but bundler tries to grab 1.8.0
# which violates chef's requirement.  Seems like a bundler bug.
gem "json", "1.7.7"


gem 'test-kitchen', :git => 'https://github.com/RallySoftware-cookbooks/test-kitchen', :branch => 'KITCHEN-75'
gem 'kitchen-vagrant', :group => :integration
