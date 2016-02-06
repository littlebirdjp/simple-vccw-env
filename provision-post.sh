#!/usr/bin/env bash

set -ex

/usr/local/bin/wp --path=/var/www/wordpress db import /vagrant/import.sql
