include_recipe 'nginx'
include_recipe 'hhvm'

nginx_site 'default' do
  enable false
end
