class cloudstack_cli ( 
  $user         = 'root',
  $group        = $user,
  $homedir      = "/home/${user}",
  $url          = '',
  $api_key      = '',
  $secret_key   = '',
  $environments = [],
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
