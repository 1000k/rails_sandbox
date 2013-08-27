Ruby on Rails cookbook
======================

Requirements
------------
### Cookbooks
-[build-essential](https://github.com/opscode-cookbooks/build-essential)
-[vim](https://github.com/opscode-cookbooks/vim)
-[git](https://github.com/opscode-cookbooks/git)
-[apt](https://github.com/opscode-cookbooks/apt)
-[yum](https://github.com/opscode-cookbooks/yum)
-[rbenv](https://github.com/RiotGames/rbenv-cookbook)


Supports
--------
- CentOS 6.x


Usage
-----
Just include `rails_sandbox::default` recipe.


Attributes
----------
- `rails_sandbox['ruby_version']`
- `rails_sandbox['update_gem']`
  - Whether update gem or not
- `rails_sandbox['rails_version']`
- `rails_sandbox['rails_options']`
  - Options passed to `gem install rails` command


Recipes
--------
### default


Author
------
Author:: SENDA Keijiro (senda.keijiro@gmail.com)
