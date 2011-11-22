Veewee::Session.declare( {
  :cpu_count => '8', :memory_size=> '2048',
  :disk_size => '10140', :disk_format => 'VDI',:hostiocache => 'off',
  :os_type_id => 'Gentoo',
  :iso_file => "install-amd64-minimal-20111103.iso",
  :iso_src => "http://mirror.switch.ch/ftp/mirror/gentoo/releases/amd64/current-iso/install-amd64-minimal-20111103.iso",
  :iso_md5 => "3a08f6c41b7ba1a7574fed14629778c9",
  :iso_download_timeout => "1000",
  :boot_wait => "1",:boot_cmd_sequence => [
        '<Wait>'*2,
        'gentoo-nofb<Enter>',
        '<Wait>'*20,
        'net-setup eth0<Enter>',
        '<Wait><Enter>',
        '2<Enter>',
        '1<Enter>',
	'<Wait><Wait>ifconfig -a <Enter>',
	#'sleep 5 ;curl http://%IP%:%PORT%/stages.sh -o stages.sh &&',
	#'bash stages.sh &<Enter>',
        'passwd<Enter><Wait><Wait>',
	'vagrant<Enter><Wait>',
	'vagrant<Enter><Wait>',
        '/etc/init.d/sshd start<Enter>'
    ],
  :kickstart_port => "7122", :kickstart_timeout => "10000",:kickstart_file => "",
  :ssh_login_timeout => "10000",:ssh_user => "root", :ssh_password => "vagrant",:ssh_key => "",
  :ssh_host_port => "7222", :ssh_guest_port => "22",
  :sudo_cmd => "cat '%f'|su -",
  :shutdown_cmd => "shutdown -p now",
  :postinstall_files => [ "postinstall.sh"],:postinstall_timeout => "10000"
   }
)
