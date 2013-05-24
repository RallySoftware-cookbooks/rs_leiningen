# require_relative 'spec_helper'
require 'chefspec'

describe 'leiningen::default' do
  let (:user) { 'username' }
  let (:group) { 'groupname' }
  let (:location) { '/opt/bin' }

  let(:chef_run) do
    ChefSpec::ChefRunner.new do |node|
      node.automatic_attrs[:platform_family] = 'rhel'
      node.set[:leiningen][:version] = '2.1.2'
      node.set[:leiningen][:install_script] = "https://raw.github.com/technomancy/leiningen/#{node[:leiningen][:version]}/bin/lein"
      node.set[:leiningen][:user] = user
      node.set[:leiningen][:group] = group
      node.set[:leiningen][:dir] = location
    end
  end

  let(:lein_file) { "#{location}/lein" }

  before do
    chef_run.converge 'leiningen::default'
    @shell_file = chef_run.remote_file(lein_file)
  end

  it 'creates leiningen file in correct location' do
    expect(chef_run).to create_remote_file lein_file
  end

  it 'creates leiningen file with correct ownership' do
    expect(@shell_file).to be_owned_by(user, group)
  end

  it 'creates leiningen file with correct permissions' do
    expect(@shell_file.mode).to eq(0755)
  end
end
