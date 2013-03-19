#!/bin/bash
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ apt
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ block_device
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ build-essential
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ collectd
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ cron
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ erlang
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ git
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ rabbitmq
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ rightscale
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ rs-rabbitmq
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ runit
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ system
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ update-metadata.sh
/home/azilber/.gem/ruby/1.9.1/bin/knife cookbook metadata -o ./ yum

exit 0
