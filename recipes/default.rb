#
# Cookbook Name:: security
# Recipe:: default
#
# Copyright (C) 2014 Mohamad El-Husseini
#
# Based on https://github.com/gchef/ssh-cookbook.git
#
# Apache 2.0
#

service "ssh"

ssh_config "Port" do
  string "Port #{node[:ssh][:port]}"
end

ssh_config "PermitRootLogin" do
  string "PermitRootLogin #{node[:ssh][:permit_root_login]}"
end

ssh_config "PasswordAuthentication" do
  string "PasswordAuthentication #{node[:ssh][:password_authentication]}"
end

ssh_config "PermitEmptyPasswords" do
  string "PermitEmptyPasswords #{node[:ssh][:permit_empty_passwords]}"
end

ssh_config "ChallengeResponseAuthentication" do
  string "ChallengeResponseAuthentication #{node[:ssh][:challenge_response_authentication]}"
end

ssh_config "UsePAM" do
  string "UsePAM #{node[:ssh][:use_pam]}"
end
