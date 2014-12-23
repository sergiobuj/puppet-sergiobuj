# Dotfiles for sergiobuj

class sergiobuj::dotfiles {
  notice('Setting up dotfiles for sergiobuj')

  $home     = "/Users/${::boxen_user}"
  $src      = "${home}/src"
  $dotfiles = "${src}/dotfiles"

  file { $dotfiles:
    ensure => directory
  }

  repository { $dotfiles:
    source  => 'sergiobuj/dotfiles',
    require => File[$dotfiles]
  }

  exec { 'installing dotfiles':
    command => 'sh install.sh',
    cwd     => $dotfiles
  }

  exec { 'pull dotfiles master':
    command => 'git pull origin master',
    cwd     => $dotfiles
  }
}

