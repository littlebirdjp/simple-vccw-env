# simple-vccw-env

A simple environment for [VCCW](https://github.com/vccw-team/vccw).  
You can share whole WordPress environment with this data set.

## Install

1. clone vccw to your root directory.
```
cd /
sudo git clone https://github.com/vccw-team/vccw.git
```
2. clone simple-vccw-env to your projects folder.
```
cd ~/prj(Your projects folder)
git clone https://github.com/littlebirdjp/simple-vccw-env.git
cd simple-vccw-env
vagrant up
```

## Usage

1. If there are any changes in `import.sql` on remote repository, run the below commands.
```
vagrant ssh
wp --path=/var/www/wordpress db import /vagrant/import.sql
```
2. If you make any changes in WodrPress DB, run the below commands.
```
vagrant ssh
wp --path=/var/www/wordpress db export /vagrant/import.sql
```
