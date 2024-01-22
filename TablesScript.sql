DROP SCHEMA IF EXISTS `mydb` ;

CREATE SCHEMA IF NOT EXISTS `mydb`;
USE `mydb` ;

DROP TABLE IF EXISTS `mydb`.`tblCity` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblCity` (
  `ctyCode` INT NOT NULL AUTO_INCREMENT,
  `ctyName` VARCHAR(15) NULL,
  PRIMARY KEY (`ctyCode`));

DROP TABLE IF EXISTS `mydb`.`tblCoach` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblCoach` (
  `cohId` VARCHAR(9) NOT NULL,
  `cohFName` VARCHAR(15) NOT NULL,
  `cohLName` VARCHAR(10) NOT NULL,
  `cohCity` INT NOT NULL,
  `cohBDate` DATE NULL,
  `cohGender` TINYINT NOT NULL,
  `cohEmail` VARCHAR(30) NULL,
  `cohPhoneNo` VARCHAR(10) NULL,
  `cohDateStart` DATE NULL,
  `cohIsActive` TINYINT NULL,
  PRIMARY KEY (`cohId`, `cohCity`),
    FOREIGN KEY (`cohCity`)
    REFERENCES `mydb`.`tblCity` (`ctyCode`)
    ON DELETE CASCADE);

DROP TABLE IF EXISTS `mydb`.`tblLevelAbility` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblLevelAbility` (
  `lvlCode` INT NOT NULL AUTO_INCREMENT,
  `lvlDescription` VARCHAR(45) NULL,
  PRIMARY KEY (`lvlCode`));

DROP TABLE IF EXISTS `mydb`.`tblRout` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblRout` (
  `routCode` INT NOT NULL AUTO_INCREMENT,
  `routName` VARCHAR(30) NOT NULL,
  `routDescription` VARCHAR(45) NULL,
  `routMinlvlAbility` INT NOT NULL,
  `routRemark` VARCHAR(45) NULL,
  `routActive` TINYINT NULL,
  PRIMARY KEY (`routCode`, `routMinlvlAbility`),
    FOREIGN KEY (`routMinlvlAbility`)
    REFERENCES `mydb`.`tblLevelAbility` (`lvlCode`)
    ON DELETE CASCADE);

DROP TABLE IF EXISTS `mydb`.`tblTrainee` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblTrainee` (
  `trnId` VARCHAR(9) NOT NULL,
  `trnLastName` VARCHAR(15) NOT NULL,
  `trnFirstName` VARCHAR(10) NOT NULL,
  `trnCityCode` INT NOT NULL,
  `trnBirthDate` DATE NULL,
  `trnGender` TINYINT NULL,
  `trnPhoneNum` VARCHAR(10) NULL,
  `trnEmail` VARCHAR(30) NULL,
  `trnDateStart` DATE NULL,
  `trnLevelAbility` INT NOT NULL,
  `trnRemark` VARCHAR(50) NULL,
  `trnIsActive` TINYINT NULL,
  PRIMARY KEY (`trnId`, `trnCityCode`, `trnLevelAbility`),
    FOREIGN KEY (`trnCityCode`)
    REFERENCES `mydb`.`tblCity` (`ctyCode`)
    ON DELETE CASCADE,
    FOREIGN KEY (`trnLevelAbility`)
    REFERENCES `mydb`.`tblLevelAbility` (`lvlCode`)
    ON DELETE CASCADE);

DROP TABLE IF EXISTS `mydb`.`tblTrainieRout` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblTrainieRout` (
  `trnId` VARCHAR(9) NOT NULL,
  `rnCode` INT NOT NULL,
  `rnDateTime` DATETIME NULL,
  `timeRun` TIME NULL,
  PRIMARY KEY (`trnId`, `rnCode`),
  CONSTRAINT `ID`
    FOREIGN KEY (`trnId`)
    REFERENCES `mydb`.`tblTrainee` (`trnId`)
    ON DELETE CASCADE,
    FOREIGN KEY (`rnCode`)
    REFERENCES `mydb`.`tblRout` (`routCode`)
    ON DELETE CASCADE);

DROP TABLE IF EXISTS `mydb`.`tblDestanation` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblDestanation` (
  `dstCode` INT NOT NULL AUTO_INCREMENT,
  `dstDescription` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`dstCode`));

DROP TABLE IF EXISTS `mydb`.`tblLandMarks` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblLandMarks` (
  `lmCode` INT NOT NULL AUTO_INCREMENT,
  `landMark` VARCHAR(20) NULL,
  `ctyCode` INT NOT NULL,
  PRIMARY KEY (`lmCode`, `ctyCode`),
    FOREIGN KEY (`ctyCode`)
    REFERENCES `mydb`.`tblCity` (`ctyCode`)
    ON DELETE CASCADE);

DROP TABLE IF EXISTS `mydb`.`tblGroup` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblGroup` (
  `grpCode` INT NOT NULL,
  `grpName` VARCHAR(30) NOT NULL,
  `grpCodeDest` INT NOT NULL,
  `grpMinLvlAbility` INT NOT NULL,
  `cohId` VARCHAR(9) NOT NULL,
  `lmCodeMeeting` INT NOT NULL,
  `grpMaxCapacity` INT NULL,
  `grplsActive` TINYINT NULL,
  PRIMARY KEY (`grpCode`, `grpCodeDest`, `cohId`, `lmCodeMeeting`, `grpMinLvlAbility`),
    FOREIGN KEY (`grpCodeDest`)
    REFERENCES `mydb`.`tblDestanation` (`dstCode`)
    ON DELETE CASCADE,
    FOREIGN KEY (`grpMinLvlAbility`)
    REFERENCES `mydb`.`tblLevelAbility` (`lvlCode`)
    ON DELETE CASCADE,
    FOREIGN KEY (`cohId`)
    REFERENCES `mydb`.`tblCoach` (`cohId`)
    ON DELETE CASCADE,
    FOREIGN KEY (`lmCodeMeeting`)
    REFERENCES `mydb`.`tblLandMarks` (`lmCode`)
    ON DELETE CASCADE);

DROP TABLE IF EXISTS `mydb`.`tblTrainieGroup` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblTrainieGroup` (
  `grpCode` INT NOT NULL,
  `trnId` VARCHAR(9) NOT NULL,
  `trnIsActive` TINYINT NULL,
  PRIMARY KEY (`grpCode`, `trnId`),
    FOREIGN KEY (`grpCode`)
    REFERENCES `mydb`.`tblGroup` (`grpCode`)
    ON DELETE CASCADE,
    FOREIGN KEY (`trnId`)
    REFERENCES `mydb`.`tblTrainee` (`trnId`)
    ON DELETE CASCADE);

DROP TABLE IF EXISTS `mydb`.`tblLandMarkRout` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblLandMarkRout` (
  `routCode` INT NOT NULL,
  `lmCode` INT NOT NULL,
  `lmlocation` INT NOT NULL,
  PRIMARY KEY (`routCode`, `lmCode`, `lmlocation`),
    FOREIGN KEY (`routCode`)
    REFERENCES `mydb`.`tblRout` (`routCode`)
    ON DELETE CASCADE,
    FOREIGN KEY (`lmCode`)
    REFERENCES `mydb`.`tblLandMarks` (`lmCode`)
    ON DELETE CASCADE);

DROP TABLE IF EXISTS `mydb`.`tblDaysGroups` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tblDaysGroups` (
  `grpCode` INT NOT NULL,
  `grpDay` VARCHAR(10) NOT NULL,
  `grpStartHour` TIME NULL,
  `grpEndHour` TIME NULL,
  `GrpIsActive` TINYINT NULL,
  PRIMARY KEY (`grpCode`),
    FOREIGN KEY (`grpCode`)
    REFERENCES `mydb`.`tblGroup` (`grpCode`)
    ON DELETE CASCADE);



