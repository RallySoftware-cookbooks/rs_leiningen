name             'leiningen'
maintainer       'Rally Software Development Corp'
maintainer_email 'rallysoftware-cookbooks@rallydev.com'
license          'MIT'
description      'Installs/Configures leiningen'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'leiningen::default', 'Installs leiningen'

supports 'ubuntu'
supports 'centos'

depends 'java'
