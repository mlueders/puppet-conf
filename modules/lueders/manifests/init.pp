
class lueders {

  $user="mike"
  $homedir="/home/$user"

  package { ["tree", "emacs23"]:
    ensure => present
  }

  file { "$homedir/bin":
    ensure  => directory,
    owner   => "$user",
    group   => "$user",
    mode    => 755,
    recurse => true,
    source  => "puppet:///modules/${module_name}/scripts",
  }  

}
