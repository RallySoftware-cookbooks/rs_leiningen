require_relative 'spec_helper'

describe 'rs_leiningen::default' do
  let(:user) { 'username' }
  let(:group) { 'groupname' }
  let(:location) { '/opt/bin' }

  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      node.automatic_attrs[:platform_family] = 'rhel'
      node.set[:leiningen][:version] = '2.1.2'
      node.set[:leiningen][:install_script] = "https://raw.github.com/technomancy/leiningen/#{node[:leiningen][:version]}/bin/lein"
      node.set[:leiningen][:user] = user
      node.set[:leiningen][:group] = group
      node.set[:leiningen][:dir] = location
    end.converge described_recipe
  end

  subject { chef_run }

  let(:lein_file) { "#{location}/lein" }
  it { should create_remote_file lein_file }

  describe 'leiningen file' do
    subject { chef_run.remote_file(lein_file) }
    its(:owner) { should be_eql user }
    its(:group) { should be_eql group }
    its(:mode) { should be_eql 0755 }
  end
end
