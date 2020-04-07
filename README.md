# vagrant-apache2-php7-mysql56
Vagrant setup for running and debugging PHP apps.

# Do this first

Install
- VirtualBox: https://www.virtualbox.org
- Vagrant: https://www.vagrantup.com


# Running

In command line type:
```
cd vagrant-apache2-php7-mysql56
vagrant up
```

# Usage

- HTML content is loaded directly from *./html* folder
- In browser type (http://192.168.33.11)
- MySQL:
  - has 2 accounts created 
    - User: root, Password: pass
    - User: wp_user, Password: wp_pass
  - has 1 database created (empty): wp_db
  - accepts remote connections (directly from hose)
- To access vagrant machine directly type ``vagrant ssh`` (from root folder 'vagrant-apache2-php7-mysql56')
