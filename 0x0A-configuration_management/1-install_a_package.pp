#!/usr/bin/pup
# installing a specific version of flask 2.1.0
# 1-install_a_package.pp
class python_setup {
  package { 'python3-pip':
    ensure => installed,
  }
}

class flask_install {
  package { 'Flask':
    ensure   => '2.1.0',
    provider => 'pip3',
    require  => Class['python_setup'],  # Ensure pip3 is installed first
  }
}

include python_setup
include flask_install
