**0x0A-configuration_management**

**Install puppet**

    $ apt-get install -y ruby=1:2.7+1 --allow-downgrades
    $ apt-get install -y ruby-augeas
    $ apt-get install -y ruby-shadow
    $ apt-get install -y puppet

**Install puppet-lint**

    $ gem install puppet-lint

*Note!*
    You do not need to attempt to upgrade versions. 
    Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled.