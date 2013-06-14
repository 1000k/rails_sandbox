#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2013, SENDA Keijiro

node.set['build_essential']['compiletime'] = true
include_recipe 'build-essential'

pkgs = %w{git vim}

case node['platform_family']
when 'rhel'
  pkgs.push('yum')
when 'debian'
  pkgs.push('apt')
end

pkgs.each do |pkg|
  package pkg
end
