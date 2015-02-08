exec { "apt-get update":
  path => "/usr/bin",
}

class { 'python' :
  version    => 'system',
  pip        => true,
  dev        => true,
  virtualenv => true,
  gunicorn   => true,
}

python::pip { 'django' :
  pkgname  => 'django',
  ensure => present
}