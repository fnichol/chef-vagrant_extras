maintainer       "Fletcher Nichol"
maintainer_email "fnichol@nichol.ca"
license          "Apache 2.0"
description      "Extra fixes and shims for running your recipes in a Vagrant VM."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.0"

supports "ubuntu"
supports "debian"
supports "suse"

recommends "sudo"

recipe "vagrant_extras",  "Default recipe"
