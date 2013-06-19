# leiningen cookbook
Cookbook for installing leiningen (https://github.com/technomancy/leiningen).

## Support
This cookbook is written to be operating system independent, however, we only provide tests around centos-6.4-x86_64.

## Attributes 

### Leiningen -- defaults
```ruby
default[:leiningen][:version] = "2.1.2"
default[:leiningen][:install_script] = "https://raw.github.com/technomancy/leiningen/#{leiningen[:version]}/bin/lein"
default[:leiningen][:checksum] = "5d3ba695b3e4309f82c27cc05eb5dc71e776b5b092515469a15090446cd811a5"
default[:leiningen][:user] = "root"
default[:leiningen][:group] = "root"
default[:leiningen][:dir] = "/usr/local/bin"
```

## Tests
Chefspec and Serverspec tests are provided and are run against centos-6.4-x86_64.

## Dependencies
This cookbook depends on the following cookbooks:

* java cookbook (https://github.com/opscode-cookbooks/java) *

# License
Copyright (c) Rally Software Development Corp. 2013
Distributed under the MIT License.
