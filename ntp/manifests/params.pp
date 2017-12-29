class	ifro_ntp::params {
	$config_ntp_file = "/etc/ntp.conf"
	$server_ntp_1 = "ntp.cais.rnp.br"
	$server_ntp_2 = "a.st1.ntp.br"
	$config_ntp_template = ""
	case $::operatingsystem {
		centos, redhat: { $service_ntp = "ntpd" }
		debian, ubuntu: { $service_ntp = "ntp" }
		default: { fail("sistema operacional desconhecido") }
	}
}
