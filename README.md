[![Build Status](https://travis-ci.org/RallySoftware-cookbooks/leiningen.png?branch=master)](https://travis-ci.org/RallySoftware-cookbooks/leiningen)

Description
===========
Installs the leiningen script - 2.1.2 by default.

Requirements
============

Platform
--------
Tested on CentOS 6.4 and Ubuntu 12.04.

Other
-----

Attributes
==========
See `attributes/default.rb` for default values

* `node[:leiningen][:version]` - version of leiningen to install
* `node[:leiningen][:install_script]` - where to find the install script (url)
* `node[:leiningen][:checksum]` = md5 checksum of the file being downloaded
* `node[:leiningen][:user]` - who should own the directory
* `node[:leiningen][:group]` - which group the directory should belong to
* `node[:leiningen][:dir]` - where to place lein file

Recipes
=======

default
-------

Installs the leiningen script.

License
=======
Copyright (c) Rally Software Development Corp. 2013
Distributed under the MIT License.

