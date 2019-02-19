# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include marsdb01::installmarsdb01
class marsdb01::installmarsdb01 {

  exec { 'Install MongoDB Server':
    command => 'yum -y install mongodb-org',
    path => ['/bin','/sbin','/usr/bin'],
    provider => shell,
    onlyif => '/usr/bin/test -e /etc/yum.repos.d/mongodb.repo',
  }
}
