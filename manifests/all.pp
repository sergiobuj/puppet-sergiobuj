# Include everything for sergiobuj

class sergiobuj::all {
  notice('Setting up sergiobuj')

  include sergiobuj::applications
  include sergiobuj::dotfiles
  include sergiobuj::preferences

}
