# Applications for sergiobuj

class sergiobuj::applications {
  notice('Installing applications for sergiobuj')

  include vundle
  include flux

  package {
    [ 'tmux',
      'the_silver_searcher',
#      'editorconfig'
    ]:
    ensure => present
  }

}
