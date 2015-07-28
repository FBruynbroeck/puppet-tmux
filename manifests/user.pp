define tmux::user(
  $name = undef,
  $autostart = undef
  ) {
  if $name {
    if $autostart {
      tmux::autostart { $name: autostart => $autostart }
    }
  }
}
