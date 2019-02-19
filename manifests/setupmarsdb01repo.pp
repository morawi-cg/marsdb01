# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include marsdb01::setupmarsdb01repo
class marsdb01::setupmarsdb01repo {
  file {'../files/mongodb.repo':
    ensure => 'file',
    source => '../files/mongodb.repo',
    target => '/etc/yum.repos.d',
  }

}
