require File.expand_path('../support/helpers', __FILE__)

describe 'leiningen::default' do

  include Helpers::Leiningen

  # Example spec tests can be found at http://git.io/Fahwsw
  it 'should create /usr/local/bin/lein' do
    assert_file '/usr/local/bin/lein', 'root', 'root', 0755
  end
end
