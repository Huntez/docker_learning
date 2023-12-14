CREATE USER IF NOT EXISTS 'joomla'@'%' IDENTIFIED BY 'password';
CREATE USER IF NOT EXISTS 'opencart'@'%' IDENTIFIED BY 'password';

GRANT ALL ON joomla.* TO 'joomla'@'%';
GRANT ALL ON opencart.* TO 'opencart'@'%';