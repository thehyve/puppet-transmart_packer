class transmart_packer::params (
    String $transmart_url = lookup('transmart_packer::transmart_url', String, first, ''),
    String $keycloak_url = lookup('transmart_packer::keycloak_url', String, first, ''),
    String $docker_compose_file_path = lookup('transmart_packer::docker_compose_file_path', String, first, 'tmp'),
    String $docker_image_version = lookup('transmart_packer::docker_image_version', String, first, 'latest'),
    String $client_origin_url = lookup('transmart_packer::client_origin_url', String, first, '*'),
    String $redis_version = lookup('transmart_packer::redis_version', String, first, 'alpine'),
    String $keycloak_client_id = lookup('transmart_packer::keycloak_client_id', String, first, 'transmart'),
) {
	if $transmart_url == '' {
        fail('No transmart url specified. Please configure transmart_packer::transmart_url')
    }

    if $keycloak_url == '' {
        fail('No keycloak url specified. Please configure transmart_packer::keycloak_url')
    }

}
