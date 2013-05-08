#
# Cookbook Name:: rightscale
#
# Copyright RightScale, Inc. All rights reserved.  All access and use subject to the
# RightScale Terms of Service available at http://www.rightscale.com/terms.php and,
# if applicable, other agreements such as a RightScale Master Subscription Agreement.

rightscale_marker :begin

if "#{node[:rightscale][:security_updates]}" == "enable"

  log "  Enabling security updates."
  case node[:platform]
  when "ubuntu"
    bash "Unfreeze Ubuntu security repositories" do
      flags "-ex"
      code <<-EOH
        # Set all Ubuntu security repos to latest
        sed -i "s%ubuntu_daily/.* $(lsb_release -cs)-security%ubuntu_daily/latest $(lsb_release -cs)-security%" /etc/apt/sources.list.d/rightscale.sources.list
      EOH
    end
  when "centos", "redhat"
    ruby_block "Unfreeze CentOS repositories" do
      block do
        # Set all repos to latest
        files = Dir.glob("/etc/yum.repos.d/*.repo")

        repo_regex = /\/archive\/20[0-9]{6}$/
        latest = "/archive/latest"

        files.each do |file_name|
          # Skip non-upstream repositories
          next if file_name =~ /RightScale/
          text = File.read(file_name)
          text.gsub!(repo_regex, latest)
          File.open(file_name, "w") { |file| file.puts text }
        end
      end
    end
  end

else

  log "  Security updates disabled.  Skipping setup!"

end

rightscale_marker :end
