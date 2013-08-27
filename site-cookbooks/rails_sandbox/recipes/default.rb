node.set['build_essential']['compiletime'] = true
include_recipe 'build-essential'

pkgs = %w{openssl-devel sqlite-devel ruby-devel}

pkgs.each do |pkg|
  package pkg
end

include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

ruby_version = node['rails_sandbox']['ruby_version']

rbenv_ruby ruby_version do 
  global true
end

execute 'gem update --system' if node['rails_sandbox']['update_gem']

gem_package 'rails' do
  version node['rails_sandbox']['rails_version']
  options node['rails_sandbox']['rails_options']
end

execute '/opt/rbenv/bin/rbenv rehash'
