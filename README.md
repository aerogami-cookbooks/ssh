# security cookbook

This cookbook configures basic security settings for a new server.

1. It disables root access.
2. It disables password authentication.
3. It disables PAM.

# Requirements

This cookbook is only tested on Ubuntu.

# Usage

Include this cookbook in your `Berksfile`.

````
cookbook 'ssh', git: 'aerogami-cookbooks/ssh'
````

Install the cookbook.

````
berks install
````

Add to your chef kitchen and use as desired.

# Attributes

### SSH Port
Change the SSH port especially if you are not using something like fail2ban; be warned that security by obscurity is not security.

````
default[:ssh][:port] = '22'
````

### Root Login
You should disable root login.

````
default[:ssh][:permit_root_login] = 'no'
````

### Password Login
You should also disable password login.

````
default[:ssh][:password_authentication] = 'no'
````

### PAM and Challenge Response Authentication

````
default[:ssh][:use_pam] = 'no'
default[:ssh][:challenge_response_authentication] = 'no'
````

### Empty Passwords
This is probably default behaviour on most distros.

````
default[:ssh][:permit_empty_passwords] = 'no'
````

# Author

Mohamad El-Husseini

www.aerogami.com.br
