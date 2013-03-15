#
# Cookbook Name:: rs-rabbitmq
# Recipe:: default
#
# Copyright RightScale, Inc. All rights reserved. All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.


rightscale_marker :begin
include_recipe "rabbitmq::default"

rightscale_marker :end
