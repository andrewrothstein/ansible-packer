[![CircleCI](https://circleci.com/gh/andrewrothstein/ansible-packer.svg?style=svg)](https://circleci.com/gh/andrewrothstein/ansible-packer)
andrewrothstein.terraform
===========================

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
