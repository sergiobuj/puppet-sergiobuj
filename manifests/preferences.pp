# Preferences for sergiobuj
class sergiobuj::preferences {
  notice('Setting up gitconfig for sergiobuj')

  include boxen
  include git
  include osx

  git::config::global {
    'user.name':  value => 'Sergio Botero';
    'user.email': value => 'sergio@ride.com';

    'color.ui': value => '1';
    'color.branch': value => 'auto';
    'color.status': value => 'auto';

    'alias.ci': value => 'commit';
    'alias.co': value => 'checkout';
    'alias.st': value => 'status -sb';
    'alias.cii':  value => 'commit --interactive';
    'alias.logo': value => 'log --graph --decorate --abbrev-commit --all --pretty=oneline';

    'help.autocorrect': value => '20';
    'merge.tool': value => 'opendiff';
    'github.user':  value => 'sergiobuj';
  }

  notice('Setting up osx preferences for sergiobuj')
  boxen::osx_defaults { '1 min delay for password dialog on screensaver':
    ensure => present,
    domain => 'com.apple.screensaver',
    key    => 'askForPasswordDelay',
    value  => 60,
    user   => $::luser
  }

  include osx::dock::position
  include osx::dock::autohide
  include osx::global::disable_autocorrect
  include osx::global::disable_key_press_and_hold
  include osx::finder::unhide_library
  include osx::no_network_dsstores
  include osx::software_update
  include osx::keyboard::capslock_to_control
}

