class transmart_packer::params (
    String $transart_url = lookup('transmart_packer::transmart_url', String, first, ''),
    String $keycloak_url = lookup('transmart_packer::keycloak_url', String, first, ''),
    String $docker_compose_file_path = lookup('transmart_packer::docker_compose_file_path', String, first, '/tmp/docker-compose.yml'),
) {
	if $transart_url == '' {
        fail('No transmart url specified. Please configure transmart_packer::transmart_url')
    }

    if $keycloak_url == '' {
        fail('No keycloak url specified. Please configure transmart_packer::keycloak_url')
    }

}