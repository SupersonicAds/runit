name 'runit'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs runit and provides runit_service definition'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.7.50' # a dirty trick to avoid breaking dependencies

recipe 'runit', 'Installs and configures runit'

%w(ubuntu debian centos redhat amazon scientific oracle enterpriseenterprise zlinux).each do |os|
  supports os
end

depends 'packagecloud'
depends 'yum-epel'

source_url 'https://github.com/chef-cookbooks/runit'
issues_url 'https://github.com/chef-cookbooks/runit/issues'

chef_version '>= 12.1'
