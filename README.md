Puppet module to install transmart packer.

# Prerequisites

	puppet module install puppetlabs-docker

# Install module

	git submodule add https://github.com/thehyve/puppet-transmart_packer.git transmart_packer

#Parameters

 - transmart_packer::transmart_url - transmart api url
 - transmart_packer::keycloak_url - keycloak url that used for transmart.
