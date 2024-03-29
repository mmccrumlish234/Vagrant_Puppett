:set ff=unix

#!/bin/bash

apt-get update && apt-get install -y wget

cd /tmp
wget -nc -nv http://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs*.deb

apt-get update && apt-get install -y puppet-common

cp -Rv /Vagrant_Puppett/puppet_src/* /etc/puppet/
#cp -Rv /Vagrant_Puppett/hieradata/vagrant /etc/puppet/hieradata

puppet apply /etc/puppet/manifests/site.pp

