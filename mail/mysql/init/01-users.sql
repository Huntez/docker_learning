CREATE USER IF NOT EXISTS 'roundcube'@'%' IDENTIFIED BY 'password';
GRANT ALL ON roundcube.* TO 'roundcube'@'%';

CREATE USER IF NOT EXISTS 'postfix'@'%' IDENTIFIED BY 'password';
GRANT ALL ON postfix.* TO 'postfix'@'%';