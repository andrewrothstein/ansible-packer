andrewrothstein.packer
======================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-packer.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-packer)

Installs [Packer](https://www.packer.io/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
 - hosts: servers
   roles:
     - andrewrothstein.packer
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
