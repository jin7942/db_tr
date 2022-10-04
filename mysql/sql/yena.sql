use ohmygirl;

CREATE TABLE IF NOT EXISTS `ohmygirl`.`memberProfileUpload` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `type` TINYINT NULL,
  `defaultNY` INT NULL,
  `sort` TINYINT NULL,
  `orginalName` VARCHAR(45) NULL,
  `uuidName` VARCHAR(45) NULL,
  `ext` VARCHAR(45) NULL,
  `size` INT NULL,
  `delNY` TINYINT NOT NULL,
  `pseq` INT NOT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `ohmygirl`.`itemUpload` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `type` TINYINT NULL,
  `defaultNY` INT NULL,
  `sort` TINYINT NULL,
  `orginalName` VARCHAR(45) NULL,
  `uuidName` VARCHAR(45) NULL,
  `ext` VARCHAR(45) NULL,
  `size` INT NULL,
  `delNY` TINYINT NOT NULL,
  `pseq` INT NOT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

select * from memberProfileUpload;

select * from itemUpload;

use ohmygirl;

select * from codeGroup;

delete from codeGroup where seq = 9;

select * from code;

ALTER TABLE code MODIFY CodeGroup_seq INT NULL;

