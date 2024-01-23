file { '/etc/ssh/ssh_config':
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
}

file_line { 'IdentityFile':
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/school',
}

file_line { 'PasswordAuthentication no':
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
}
