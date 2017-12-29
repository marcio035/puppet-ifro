class ntp::ntp {
	include ntp::params
exec { "apt-update":
	command => "/usr/bin/apt-get update"
}
package	{ 'ntp':
	ensure	=>	installed,
	require => Exec["apt-update"],
}

service	{	'ntp':
	ensure => running,
	enable => true,
	require	=>	[Package['ntp']]
}
}
