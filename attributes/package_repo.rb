#
# Cookbook:: percona
# Attributes:: package_repo
#

default['percona']['use_percona_repos'] = true

arch = node['kernel']['machine'] == 'x86_64' ? 'x86_64' : 'i386'

default['percona']['apt']['key'] = '8507EFA5'
default['percona']['apt']['keyserver'] = 'hkp://keys.gnupg.net:80'
default['percona']['apt']['uri'] = 'http://repo.percona.com/apt'

default['percona']['yum']['description'] = 'Percona Packages'
default['percona']['yum']['baseurl'] = "http://repo.percona.com/centos/#{node['platform_version'].to_i}/os/#{arch}/"
default['percona']['yum']['gpgkey'] = [
  'https://repo.percona.com/yum/PERCONA-PACKAGING-KEY',
  'https://repo.percona.com/yum/RPM-GPG-KEY-Percona',
]
default['percona']['yum']['gpgcheck'] = true
default['percona']['yum']['sslverify'] = true
