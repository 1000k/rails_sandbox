name             'base'
maintainer       'SENDA Keijiro'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures base'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{build-essential vim git apt yum rbenv}.each do |pkg|
  depends pkg
end
