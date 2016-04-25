# simple-vccw-env

A simple environment for [VCCW](https://github.com/vccw-team/vccw).  
You can share whole WordPress environment with this data set.

[日本語版の説明はこちら](README-ja.md)

## Install

### 1. Clone VCCW to your root directory.

```
sudo git clone https://github.com/vccw-team/vccw.git /vccw
```

### 2. Clone simple-vccw-env to your projects folder.

```
git clone https://github.com/littlebirdjp/simple-vccw-env.git ~/prj/simple-vccw-env
cd ~/prj/simple-vccw-env
vagrant up
```

You can replace `/prj/` to any other name.

### 3. Visit WordPress on the Vagrant in your browser.

Visit [http://simple-vccw-env.local/](http://simple-vccw-env.local/) or [http://192.168.33.99/](http://192.168.33.99/)

## Usage

If there are any changes in `import.sql` on remote repository, run the below commands.

```
vagrant ssh
wp --path=/var/www/wordpress db import /vagrant/import.sql
exit
```

If you make any changes in WodrPress DB, run the below commands.

```
vagrant ssh
wp --path=/var/www/wordpress db export /vagrant/import.sql
exit
```
## Customizing

Original variables for the site are written in `site.yml`.  
If you want change original setting, put custom variables in this file.

```
chef_cookbook_path: /vccw/provision
hostname: simple-vccw-env.local
ip: 192.168.33.99
lang: ja
linked_clone: true
```

If you want change default setting along with whole sites, Put `~/.vccw~/config.yml` and put global variables there.

### Customizable variables

See [provision/default.yml](https://github.com/vccw-team/vccw/blob/master/provision/default.yml).
