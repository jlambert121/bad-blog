require 'spec_helper'

# Ensuring the major compenents are all installed, but leaving the actual
# testing of them to individual cookbooks
describe 'bad-blog::default' do
  describe 'mysql' do
    describe port(3306) do
      it { should be_listening }
    end
  end

  describe 'nginx' do
    describe port(80) do
      it { should be_listening }
    end
  end

  describe 'hhvm' do
    describe port(9000) do
      it { should be_listening }
    end
  end

  # Make sure the app is up and returning valid data
  describe 'wordpress' do
    describe command('curl 127.0.0.1/wp-admin/install.php') do
      its(:exit_status) { should eq 0 }
      its(:stdout) { should match(/<title>WordPress &rsaquo; Installation<\/title>/) }
    end
  end
end
