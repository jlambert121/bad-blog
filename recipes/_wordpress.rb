node.default['wordpress']['db']['user'] = 'wordpress'
node.default['wordpress']['db']['mysql_version'] = '5.6'

include_recipe 'wordpress::nginx'
