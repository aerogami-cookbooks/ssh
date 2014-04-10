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
cookbook 'nodejs', git: 'aerogami-cookbooks/nodejs'
````

Install the cookbook.

````
berks install
````

Add to your chef kitchen and use as desired.

# Attributes

# Author

Mohamad El-Husseini

www.aerogami.com.br
