define tmux::autostart(
  $autostart = true,
  $user = $name
) {
  if $user == 'root' { $home = '/root' } else { $home = "${tmux::params::home}/${user}" }
  if $user {
    file_line { "${user}-autoupdate":
      path    => "${home}/.zshrc",
      line    => "export ZSH_TMUX_AUTOSTART=${autostart}",
      match   => 'export ZSH_TMUX_AUTOSTART='
    }
  }
}
