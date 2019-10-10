define tmux::user(
  $username = undef,
  $autostart = undef
  ) {
  if $username {
    if $autostart {
      tmux::autostart { $username: autostart => $autostart }
    }
  }
}
