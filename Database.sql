-- Creates the user table
CREATE TABLE `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(30) NOT NULL,
  `lastname` VARCHAR(30) NOT NULL,
  `postalcode` INT(5) NOT NULL,
  `location` VARCHAR(100) NOT NULL,
  `street` VARCHAR(50) NOT NULL,
  `housenumber` VARCHAR(10) NOT NULL,
  `telephone` VARCHAR(30),
  `email` VARCHAR(69),
  `rfidcode` VARCHAR(10) UNIQUE,
  `autodeleteaccount` BOOLEAN NOT NULL,
  `createdate` DATE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB;

ALTER TABLE `user`
  ADD UNIQUE KEY `uq_name` (`firstname`,`lastname`);

-- Creates the time spent table
CREATE TABLE `timespent` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `start` DATETIME NOT NULL ,
  `stop` DATETIME NULL DEFAULT NULL ,
  `enddisconnect` BOOLEAN NOT NULL ,
  `userid` INT NOT NULL ,
  PRIMARY KEY (`id`)) ENGINE = InnoDB;

-- Creates the admin table
CREATE TABLE `planmeldung`.`admin` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` TEXT NOT NULL ,
  `authcode` SMALLINT(4) ,
  `authcodetimeout` DATETIME NOT NULL ,
  `isfrozen` BOOLEAN NOT NULL ,
  `telegramchatid` INT NOT NULL ,
  `clientrsapublic` JSON NOT NULL ,
  `permissions` INT NOT NULL,
  PRIMARY KEY (`id`)) ENGINE = InnoDB;
