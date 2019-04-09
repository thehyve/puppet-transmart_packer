class transmart_packer inherits transmart_packer::params {

    include 'docker'

    class { 'docker::compose':
        ensure => present,
    }

    file { "/${docker_compose_file_path}/docker-compose.yml":
        ensure => file,
        content => template('transmart_packer/docker-compose.yml.erb'),
    } ~> docker_compose { "$docker_compose_file_path":
        compose_files => [ "/${docker_compose_file_path}/docker-compose.yml" ],
        ensure  => present,
    }
}
