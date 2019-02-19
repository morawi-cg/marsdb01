# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include marsdb01::servicemarsdb01
class marsdb01::servicemarsdb01 {

  exec {'Enable Mongo db server service':
  command => 'systemctl enable mongod.service',
  path => ['/bin','/sbin','/usr/sbin'],
  provider => shell,
  onlyif => '/usr/bin/test -e /etc/yum.repos.d/mongodb.repo',
  }

  exec {'Start Mongodb Server service':
  command => 'systemctl start mongod.service',
  path=> ['/bin','/sbin','/usr/sbin'],
  provider => shell,
  onlyif => '/usr/bin/test -e /etc/yum.repos.d/mongodb.repo',
  }


}
