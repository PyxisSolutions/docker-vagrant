# Docker Vagrant

This is a repository for testing a full distributed service architecture using
docker, vagrant, and some service discovery magic.

### Notes

    $ vagrant plugin install vagrant-vbguest
    $ vagrant init http://files.vagrantup.com/precise64.box
    $ vagrant up
    $ vagrant ssh

Docker instances will be on the `172.17.0.0/16` network. Adding a route to your
host will help.

    $ sudo route add -net 172.17.0.0/16 192.168.10.10
