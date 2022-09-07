use yena;

select count(*) from member;

select * from member;

CREATE TABLE IF NOT EXISTS `yena`.`infrCommonCode` (
  `ifccSeq` INT NOT NULL AUTO_INCREMENT,
  `ifccNameEng` VARCHAR(45) NULL,
  `ifccNameKor` VARCHAR(45) NULL,
  `ifccUseNY` TINYINT NULL,
  `ifccDelNY` TINYINT NULL,
  `ifccDescription` VARCHAR(45) NULL,
  `infrCodeGroup_ifcgSeq` INT NOT NULL,
  PRIMARY KEY (`ifccSeq`),
  INDEX `fk_infrCommonCode_infrCodeGroup1_idx` (`infrCodeGroup_ifcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCommonCode_infrCodeGroup1`
    FOREIGN KEY (`infrCodeGroup_ifcgSeq`)
    REFERENCES `yena`.`infrCodeGroup` (`ifcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;