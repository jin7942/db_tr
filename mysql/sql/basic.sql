use ohmygirl;

CREATE TABLE IF NOT EXISTS `ohmygirl`.`member2` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(45) NULL,
  `pw` INT NULL,
  `name` VARCHAR(45) NULL,
  `eamil` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
COMMENT = '			'
;