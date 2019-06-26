class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDCe9lj+oUmxMAZWgcf5YUhNBP9ROYu6vo2MpOGuJfeimfBB2kjjNaGuAyr9RWO980189g+YFUDRN6GRet3aMTijWooIECPjHUUllfpiqOEh+79QjDdZjJOZp6A9El2Kbx6l++6RKLM2F4UfIl/IFJAWGOYJGIblhWqWxwQ9NXA92PFW6RuXIGY8L7oQCLbr/OOy8O5ak7C1aeARCcFH5Pl/W6DO2tQRWu8t6vP5jEE7CsBq7lQHjHoGT9eJ4GwimAoDYG4pmNg+sTnpZ92jxzZI6hLXioS5ELA6e3b/+89pZsq/33tMYDjgtie1zwkTfBHOS6OlEk4OLCpy1h/GNb/',
	}  
}
