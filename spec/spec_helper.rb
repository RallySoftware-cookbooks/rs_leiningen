require 'chefspec'
require 'berkshelf'
require 'tmpdir'
require 'fileutils'

# TOPDIR = File.expand_path(File.join(File.dirname(__FILE__), ".."))
# $: << File.expand_path(File.dirname(__FILE__))

# berks = Berkshelf::Berksfile.from_file(File.join(TOPDIR, "Berksfile"))
# vendor_dir = File.join(TOPDIR, "vendor")
# berks_install_path = File.join(vendor_dir, "cookbooks")

# berks.install(path: berks_install_path)
# COOKBOOK_PATH = berks_install_path

# RSpec.configure do |c|
#   c.filter_run :focus => true
#   c.run_all_when_everything_filtered = true
#   c.after(:all) do
#      FileUtils.rm_rf(vendor_dir)
#   end
# end
