class transmart_packer inherits transmart_packer::params {

    include 'docker'

    class { 'docker::compose':
        ensure => present,
        version => '1.22.0'
    }

    file { $docker_compose_file_path:
        ensure => file,
        content => template('transmart_packer/docker-compose.yml.erb'),
    } 
    -> docker_compose { 'packer_compose':
        compose_files => [ $docker_compose_file_path ],
        ensure  => present,
    }
}