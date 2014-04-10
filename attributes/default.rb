# SSH port; Change this if you are not using something like fail2ban, which you should.
default[:ssh][:port] = '22'

# Disable root login
default[:ssh][:permit_root_login] = 'no'

# Disable password login
default[:ssh][:password_authentication] = 'no'

# Disable PAM
default[:ssh][:use_pam] = 'no'

# Disable challenge response
default[:ssh][:challenge_response_authentication] = 'no'

# Disable empty passwords
default[:ssh][:permit_empty_passwords] = 'no'
