class apache {
	case $::os_family {
		"Debian":{
			$web="apache2"
		}
		"RedHat":{
			$web="httpd"
		}
	}
	package{$web:
		ensure => present
	}
	service{$web:
		ensure => running,
		enable => true
	}
	file{
	}
}
