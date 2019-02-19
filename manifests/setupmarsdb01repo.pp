class marsdb01::setupmarsdb01repo {

    file { '../files/mongodb.repo':
        ensure => 'file',
        source => '../files/mongodb.repo ',
        target => '/etc/yum.repos.d',
    }

}
