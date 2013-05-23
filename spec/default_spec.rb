require_relative 'spec_helper'

describe 'leiningen::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'leiningen::default' }

  before do
    Fauxhai.mock(platform: 'centos', version: 6.3) do |node|
      node[:leiningen] = {}
      node[:leiningen][:version] = '2.1.2'
      node[:leiningen][:install_script] = "https://raw.github.com/technomancy/leiningen/#{node[:leiningen][:version]}/bin/lein"
    end
    @shell_file = chef_run.remote_file(lein_file)
  end

  let (:lein_file) { '/usr/local/bin/lein' }

  it 'creates leiningen file in /usr/local/bin' do
    expect(chef_run).to create_remote_file lein_file
  end

  it 'creates leiningen file with correct ownership' do
    expect(@shell_file).to be_owned_by('root', 'root')
  end

  it 'creates leiningen file with correct permissions' do
    expect(@shell_file.mode).to eq(0755)
  end
end
