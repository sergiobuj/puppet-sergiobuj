# Dotfiles for sergiobuj

class sergiobuj::dotfiles {
  notice('Setting up dotfiles for sergiobuj')

  # This is just a test
  file { 'myvimrc':
    path => "/Users/${::boxen_user}/Desktop/",
  }
}

