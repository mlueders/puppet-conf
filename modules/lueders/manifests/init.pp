
class lueders {

  $user="mike"
  $homedir="/home/$user"

  package { "tree":
    ensure => present
  }

  file { "$homedir/bin":
    ensure  => directory,
    owner   => "$user",
    group   => "$user",
    source  => "puppet:///modules/${module_name}/scripts",
    recurse => true,
  }  

}
