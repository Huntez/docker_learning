#!bin/bash

# copy unpacked files to root directory
mkdir /opencart
cp -rp /opt/opencart/upload /opencart

if [ -z "$OPENCART_DB_USERNAME" ]; then
    echo "SET A USER FOR OPENCART - OPENCART_DB_USERNAME"
    exit 1
fi

if [ -z "$OPENCART_DB_PASSWORD" ]; then
    echo "SET A PASSWORD FOR OPENCART - OPENCART_DB_PASSWORD"
    exit 1
fi

connection_test=$(php /post-init.d/check-connection.php)

if [ "$connection_test" -eq 1 ]; then
    php /opencart/upload/install/cli_install.php install --username "${OPENCART_USERNAME:-admin}" \
                                --email       "${OPENCART_EMAIL:-email@example.com}" \
                                --password    "${OPENCART_PASSWORD:-password}" \
                                --http_server "${OPENCART_HTTP_SERVER:-http://localhost/}" \
                                --db_driver   mysqli \
                                --db_hostname "${OPENCART_HOSTNAME:-mysql}" \
                                --db_username "${OPENCART_DB_USERNAME}" \
                                --db_password "${OPENCART_DB_PASSWORD}" \
                                --db_database "${OPENCART_DATABASE:-opencart}" \
                                --db_port     "${OPENCART_PORT:-3306}" \
                                --db_prefix   "${OPENCART_PREFIX:-oc_}"
fi