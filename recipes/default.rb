#
# Cookbook Name:: leiningen
# Recipe:: default
#
# Copyright (c) Rally Software Development Corp. 2013 (see https://github.com/RallySoftware-cookbooks/leiningen)

include_recipe 'java'

remote_file "#{node[:leiningen][:dir]}/lein" do
  source node[:leiningen][:install_script]
  owner node[:leiningen][:user]
  group node[:leiningen][:group]
  mode 0755
  checksum node[:leiningen][:checksum]
end
