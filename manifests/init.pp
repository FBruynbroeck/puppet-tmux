class tmux(
  $zsh = $tmux::params::zsh,
  $home = $tmux::params::home
) inherits tmux::params {


  if(!defined(Package['zsh'])) {
    package { 'zsh':
      ensure => present,
    }
  }
  if(!defined(Package['tmux'])) {
    package { 'tmux':
      ensure => present,
    }
  }
  if (versioncmp($::puppetversion, '3') != -1) {
    include 'tmux::users'
  }

}
