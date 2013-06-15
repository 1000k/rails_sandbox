#
# Cookbook Name:: rails_sandbox
# Recipe:: default
#
# Copyright 2013, SENDA Keijiro

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

execute 'gem update --system'

gem_package 'rails' do
  options '--force'
end

execute '/opt/rbenv/bin/rbenv rehash'
