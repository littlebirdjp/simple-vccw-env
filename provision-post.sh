#!/usr/bin/env bash

set -ex

/usr/local/bin/wp --path=/var/www/wordpress db import /vagrant/import.sql
/usr/local/bin/wp --path=/var/www/wordpress plugin install wordpress-importer --activate
