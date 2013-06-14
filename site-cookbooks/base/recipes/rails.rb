#
# Cookbook Name:: base
# Recipe:: rails
#
# Copyright 2013, SENDA Keijiro
include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

ruby_version = '2.0.0-p195'

rbenv_ruby ruby_version do 
  global true
end

%w{bundle rails}.each do |pkg|
  rbenv_gem pkg do
    ruby_version ruby_version
  end
end
