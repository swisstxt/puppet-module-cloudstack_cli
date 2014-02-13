class cloudstack_cli ( 
  $url          = '',
  $api_key      = '',
  $secret_key   = '',
  $environments = [],
  $user         = 'root',
  $group        = $user,
  $homedir      = "/home/${user}",
) {
  package { 'cloudstack-cli':
    provider => 'gem',
  } ->
  file { "${homedir}/.cloudstack-cli.yml":
    content => template('cloudstack_cli/cloudstack-cli.yml'),
    mode    => '0400',
    owner   => $user,
    group   => $group,
  }
}
