#SET FOREIGN_KEY_CHECKS=0;

USE fifthch_kebap;

DROP TABLE IF EXISTS tUser;
CREATE TABLE tUser
(
  `usrID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usrName` VARCHAR(30) NOT NULL UNIQUE,
  `usrPassword` VARCHAR(32) NOT NULL,
  `usrSalt` VARCHAR(32) NOT NULL,
  `usrEmail` VARCHAR(30) NOT NULL UNIQUE,
  `usrType` VARCHAR(10) NOT NULL DEFAULT 'user',
  `usrActivationkey` VARCHAR(32) UNIQUE,
  `usrActivationkeysent` TINYINT NOT NULL,
  `usrActiv` BOOLEAN NOT NULL DEFAULT FALSE,
  `usrIP` VARCHAR(39),
  `usrCreated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usrLastLogin` TIMESTAMP,
  `usrSessionID` VARCHAR(16),
  PRIMARY KEY (`usrID`),
  INDEX (`usrID`)
) ENGINE=INNODB;


#SET FOREIGN_KEY_CHECKS=1;