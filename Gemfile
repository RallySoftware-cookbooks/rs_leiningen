source 'https://rubygems.org'

gem "rake", "~> 10.0.4"
gem "strainer", "~>2.0.0"
gem "foodcritic", "~> 2.1.0"
gem "chef", "~> 11.4.0"
gem "berkshelf", "~> 1.4.3"
gem "chefspec", "~> 1"
gem "jackchop", :git => "https://github.com/RallySoftware-cookbooks/jackchop"

# Workaround for json dependency for chef and berkshelf.  Chef
# wants <= 1.7.7 and berkshelf >= 1.5 but bundler tries to grab 1.8.0
# which violates chef's requirement.  Seems like a bundler bug.
gem "json", "1.7.7"


gem "kitchen-vagrant", :group => :integration
gem "minitest-chef-handler", :group => :integration
