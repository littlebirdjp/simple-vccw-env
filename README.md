# simple-vccw-env

A simple environment for [VCCW](https://github.com/vccw-team/vccw).  
You can share whole WordPress environment with this data set.

[日本語版の説明はこちら](README-ja.md)

## Install

### 1. clone VCCW to your root directory.

```
sudo git clone https://github.com/vccw-team/vccw.git /vccw
```

### 2. clone simple-vccw-env to your projects folder.

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
