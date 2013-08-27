node.default['nodejs']['install_method'] = node['rails_sandbox']['nodejs']['install_method']
node.default['nodejs']['version'] = node['rails_sandbox']['nodejs']['version']

include_recipe 'nodejs'