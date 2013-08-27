name             'rails_sandbox'
maintainer       'SENDA Keijiro'
maintainer_email 'senda.keijiro@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures base'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.0'

%w{build-essential vim git apt yum rbenv nodejs}.each do |pkg|
  depends pkg
end
