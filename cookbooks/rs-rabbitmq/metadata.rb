name             'rs-rabbitmq'
maintainer       'Rightscale, Inc.'
maintainer_email 'alexey@rightscale.com'
license          'All rights reserved'
description      'Installs/Configures rs-rabbitmq'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "rabbitmq", ">= 1.8.1"

recipe            "rs-rabbitmq::default", "Install and configure RS-RabbitMQ"
#recipe            "rs-rabbitmq::cluster", "Set up RabbitMQ clustering."
#recipe            "rs-rabbitmq::plugin_management", "Manage plugins with node attributes"
#recipe            "rs-rabbitmq::virtualhost_management", "Manage virtualhost with node attributes"
#recipe            "rs-rabbitmq::user_management", "Manage users with node attributes"

