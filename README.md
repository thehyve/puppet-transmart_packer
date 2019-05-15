Puppet module to install transmart packer.

# Prerequisites

	puppet module install puppetlabs-docker

# Install module

	git submodule add https://github.com/thehyve/puppet-transmart_packer.git transmart_packer

#Parameters

 - transmart_packer::transmart_url - transmart api url
 - transmart_packer::keycloak_server_url - keycloak server url that used for transmart, e.g. `https://keycloak.example.com/`.
 - transmart_packer::keycloak_realm - keycloak realm (default: `dev`).
 - transmart_packer::keycloak_client_id - keycloak client (default: `transmart`).
 - transmart_packer::docker_image_version - transmart packer docker image version (default: `latest`). It is located [in the docker hub](https://hub.docker.com/r/thehyve/transmart-packer/).
 - transmart_packer::client_origin_url - The cross origin header. It indicates whether the response can be shared with requesting code from the given origin (default: `*` that opens resource to anyone).
 
 ## License
 Copyright &copy; 2019 The Hyve B.V.
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU Affero General Public License as
 published by the Free Software Foundation, either version 3 of the
 License, or (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 GNU Affero General Public License for more details.
 
 You should have received a copy of the [GNU Affero General Public License](LICENSE)
 along with this program. If not, see https://www.gnu.org/licenses/.
