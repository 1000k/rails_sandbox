Rails Sandbox
==============
Quickly set up the Ruby on Rails environment using Vagrant.


Usage
-----
1. Install [Vagrant](http://downloads.vagrantup.com/) >= 1.2.
1. `vagrant plugin install vagrant-berkshelf`
1. `git clone git@github.com:1000k/rails_sandbox.git`
1. `cp Vagrantfile.default Vagrantfile`
1. Edit variables in Vagrantfile.
1. `vagrant up`

Now you have the VM. Create RoR app with the following code:

`$ rbenv exec rails new path/to/app`