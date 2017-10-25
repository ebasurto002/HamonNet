CREATE DATABASE mailserver;

GRANT SELECT,INSERT,UPDATE,DELETE ON mailserver.* TO 'mailuser' IDENTIFIED BY '1234';

USE mailserver;
CREATE TABLE IF NOT EXISTS `virtual_domains` (
 `id` int(11) NOT NULL auto_increment,
 `name` varchar(50) NOT NULL,
 PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 USE mailserver;
CREATE TABLE IF NOT EXISTS `virtual_users` (
 `id` int(11) NOT NULL auto_increment,
 `domain_id` int(11) NOT NULL,
 `email` varchar(100) NOT NULL,
 `password` varchar(150) NOT NULL,
 PRIMARY KEY (`id`),
 UNIQUE KEY `email` (`email`),
 FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
 
USE mailserver;
CREATE TABLE IF NOT EXISTS `virtual_aliases` (
 `id` int(11) NOT NULL auto_increment,
 `domain_id` int(11) NOT NULL,
 `source` varchar(100) NOT NULL,
 `destination` varchar(100) NOT NULL,
 PRIMARY KEY (`id`),
 FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

REPLACE INTO `mailserver`.`virtual_domains` ( `id` , `name` ) VALUES ( '1', 'blackartdsgns.com' );
REPLACE INTO `mailserver`.`virtual_users` ( `id` , `domain_id` , `password` , `email` )
 VALUES ('2', '1', '{SHA256-CRYPT}$5$NwUllgWPfkG.9PmK$GB/hO73gkxikkZtSrqJSwyqp1//.KsV7/2X.kSW6yJ9' , 'jon@blackartdsgns.com');
REPLACE INTO `mailserver`.`virtual_aliases` (`id`,`domain_id`,`source`,`destination`)
 VALUES ('1', '1', 'jon2@blackartdsgns.com', 'jon@blackartdsgns.com');
REPLACE INTO `mailserver`.`virtual_users` ( `id` , `domain_id` , `password` , `email` )
 VALUES ('1', '1', '{SHA256-CRYPT}$5$xhh6pLQlou390dyV$QMFzgvFP4ymBDnIfOFu7QT4L84Nav6I5xP4m2JwXRQ2' , 'estrella@blackartdsgns.com'); 
