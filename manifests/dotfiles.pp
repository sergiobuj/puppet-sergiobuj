# Dotfiles for sergiobuj

class sergiobuj::dotfiles {
  notice('Setting up dotfiles for sergiobuj')

  # This is just a test
  file { 'vimrc':
    path => '~/Desktop/dotvimrc',
    ensure => present
  }
}

