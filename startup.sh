#!/bin/sh
set -e

# Wait for the database
while ! mysqladmin ping -h${DB_HOST} --silent; do

    echo "MariaDB container might not be ready yet... sleeping..."
    sleep 10
done

php /var/www/seat/artisan horizon
