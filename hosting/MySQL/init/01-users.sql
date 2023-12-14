CREATE USER IF NOT EXISTS 'joomla'@'%' IDENTIFIED BY 'password';
GRANT ALL ON joomla.* TO 'joomla'@'%';

CREATE USER IF NOT EXISTS 'opencart'@'%' IDENTIFIED BY 'password';
GRANT ALL ON opencart.* TO 'opencart'@'%';

CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED BY 'password';
GRANT ALL ON wordpress.* TO 'wordpress'@'%';