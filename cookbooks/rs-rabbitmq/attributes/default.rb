# being nil, the rabbitmq sets will be used
set['rabbitmq']['nodename']  = nil
set['rabbitmq']['address']  = nil
set['rabbitmq']['port']  = nil
set['rabbitmq']['config'] = nil
set['rabbitmq']['logdir'] = nil
set['rabbitmq']['mnesiadir'] = nil

set['rabbitmq']['service_name'] = 'rabbitmq-server'

# RabbitMQ version to install for "redhat", "centos", "scientific", and "amazon".
set['rabbitmq']['version'] = '3.1'
# Override this if you have a yum repo with rabbitmq available.
if node[:platform] == 'centos'
  set['rabbitmq']['use_yum'] = false
end
# Override this if you do not want to use an apt repo
if node[:platform] == 'ubuntu''
  set['rabbitmq']['use_apt'] = true
end
# The distro versions may be more stable and have back-ported patches
set['rabbitmq']['use_distro_version'] = false

# config file location
# http://www.rabbitmq.com/configure.html#define-environment-variables
# "The .config extension is automatically appended by the Erlang runtime."
set['rabbitmq']['config_root'] = "/etc/rabbitmq"
set['rabbitmq']['config'] = "/etc/rabbitmq/rabbitmq"
set['rabbitmq']['erlang_cookie_path'] = '/var/lib/rabbitmq/.erlang.cookie'

# rabbitmq.config sets
set['rabbitmq']['set_user'] = 'guest'
set['rabbitmq']['set_pass'] = 'guest'

#clustering
set['rabbitmq']['cluster'] = false
set['rabbitmq']['cluster_disk_nodes'] = []
set['rabbitmq']['erlang_cookie'] = 'AnyAlphaNumericStringWillDo'

# resource usage
set['rabbitmq']['disk_free_limit_relative'] = nil
set['rabbitmq']['vm_memory_high_watermark'] = nil

#ssl
set['rabbitmq']['ssl'] = false
set['rabbitmq']['ssl_port'] = 5671
set['rabbitmq']['ssl_cacert'] = '/etc/rabbitmq/certs/cacert.pem'
set['rabbitmq']['ssl_cert'] = '/etc/rabbitmq/certs/cert.pem'
set['rabbitmq']['ssl_key'] = '/etc/rabbitmq/certs/key.pem'
set['rabbitmq']['ssl_verify'] = 'verify_none'
set['rabbitmq']['ssl_fail_if_no_peer_cert'] = false

#virtualhosts
set['rabbitmq']['virtualhosts'] = []

#plugins
set['rabbitmq']['enabled_plugins'] = ['rabbitmq_management_agent']
set['rabbitmq']['disabled_plugins'] = []

# SmartOS-specific sets
if node[:platform] == 'smartos'
  set['rabbitmq']['service_name'] = 'rabbitmq'
  set['rabbitmq']['config_root'] = '/opt/local/etc/rabbitmq'
  set['rabbitmq']['config'] = '/opt/local/etc/rabbitmq/rabbitmq'
  set['rabbitmq']['erlang_cookie_path'] = '/var/db/rabbitmq/.erlang.cookie'
end
