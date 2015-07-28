class tmux::users (
    $users_hash = {},
  ){

  validate_hash ( $users_hash )
  # NOTE: hiera_hash does not work as expected in a parameterized class
  #   definition; so we call it here.
  #
  # http://docs.puppetlabs.com/hiera/1/puppet.html#limitations
  #
  $users = hiera_hash('tmux::users', $users_hash)

  if !empty($users) {
    create_resources('tmux::user', $users)
  }

}
