INSERT INTO `mydb`.`tblCity` (`ctyName`)
values ("Petah Tiqwa");
INSERT INTO `mydb`.`tblCity`(`ctyName`)
values ("Tel Aviv");
INSERT INTO `mydb`.`tblCity`(`ctyName`)
values ("Jerusalem");
INSERT INTO `mydb`.`tblCity`(`ctyName`)
values ("Haifa");

INSERT INTO `mydb`.`tblCoach` (`cohId`, `cohFName`, `cohLName`, `cohCity`, `cohBDate`, `cohGender`, `cohEmail`, `cohPhoneNo`, `cohDateStart`, `cohIsActive`)
values ("214201611", "Shaul", "Cohen", 1, '1978-01-01', 0, "SCohen@hotmail.com", "0522467928", "2000-03-10", 1);
INSERT INTO `mydb`.`tblCoach` (`cohId`, `cohFName`, `cohLName`, `cohCity`, `cohBDate`, `cohGender`, `cohEmail`, `cohPhoneNo`, `cohDateStart`, `cohIsActive`)
values ("014201522", "Jenny", "Mcgwire", 3, '1953-05-26', 1, "BMC@walla.co.il", "0728163444", "2010-10-3", 0);
INSERT INTO `mydb`.`tblCoach` (`cohId`, `cohFName`, `cohLName`, `cohCity`, `cohBDate`, `cohGender`, `cohEmail`, `cohPhoneNo`, `cohDateStart`, `cohIsActive`)
values ("325310711", "Joe", "Obama", 2, '2001-11-09', 0, "ObamaGamin@gmail.com", "0503558837", "2022-01-01", 1);
INSERT INTO `mydb`.`tblCoach` (`cohId`, `cohFName`, `cohLName`, `cohCity`, `cohBDate`, `cohGender`, `cohEmail`, `cohPhoneNo`, `cohDateStart`, `cohIsActive`)
values("213312522", "John", "Smith", 4, '1969-07-08', 0, "SOS@gmail.com", "0587469985", "2002-04-02", 1);

INSERT INTO `mydb`.`tblLevelAbility` (`lvlDescription`)
values ("Easy");
INSERT INTO `mydb`.`tblLevelAbility` (`lvlDescription`)
values ("Medium");
INSERT INTO `mydb`.`tblLevelAbility` (`lvlDescription`)
values("Hard");
INSERT INTO `mydb`.`tblLevelAbility` (`lvlDescription`)
values ("Extreme");

INSERT INTO `mydb`.`tblRout` (`routName`, `routDescription`, `routMinlvlAbility`, `routRemark`, `routActive`)
values("Shvil Dror", "A beautiful rout in a park", 3, "Might be a little harder than a hard rout", 1);
INSERT INTO `mydb`.`tblRout` (`routName`, `routDescription`, `routMinlvlAbility`, `routRemark`, `routActive`)
values ("Shvil Yarkon", "A rout around the Yarkon river", 2, "Closed due to literring problems", 0);
INSERT INTO `mydb`.`tblRout` (`routName`, `routDescription`, `routMinlvlAbility`, `routRemark`, `routActive`)
values ("Family Road", "A track meant for families", 1, "Ages 10+", 1);
INSERT INTO `mydb`.`tblRout` (`routName`, `routDescription`, `routMinlvlAbility`, `routRemark`, `routActive`)
values ("Marthon Tel Aviv", "A marathon in Tel Aviv", 4, "There will be refreshment stations throughout", 1);

INSERT INTO `mydb`.`tblTrainee` (`trnId`, `trnLastName`, `trnFirstName`, `trnCityCode`, `trnBirthDate`, `trnGender`, `trnPhoneNum`, `trnEmail`, `trnDateStart`, `trnlevelAbility`, `trnRemark`, `trnisActive`)
values("214568952", "Milelr", "Jenine", 2, '2003-05-18', 1, "854252358", "Bobiller@hotmail.com", '2020-04-18', 1, "Not very athletic", 1);
INSERT INTO `mydb`.`tblTrainee` (`trnId`, `trnLastName`, `trnFirstName`, `trnCityCode`, `trnBirthDate`, `trnGender`, `trnPhoneNum`, `trnEmail`, `trnDateStart`, `trnlevelAbility`, `trnRemark`, `trnisActive`)
values("213568975", "Ron", "Avi", 1, '1988-08-17', 0, "0584948876", "Aviron@walla.co.il", '2008-09-05', 3, "he once ran 180km", 1);
INSERT INTO `mydb`.`tblTrainee` (`trnId`, `trnLastName`, `trnFirstName`, `trnCityCode`, `trnBirthDate`, `trnGender`, `trnPhoneNum`, `trnEmail`, `trnDateStart`, `trnlevelAbility`, `trnRemark`, `trnisActive`)
values("21431174", "Jet", "Stream", 4, '1994-05-26', 0, "058481796", "WindsOfDestruction@gmail.com", '2012-08-19', 4, "He knows how to use a sword.", 0);
INSERT INTO `mydb`.`tblTrainee` (`trnId`, `trnLastName`, `trnFirstName`, `trnCityCode`, `trnBirthDate`, `trnGender`, `trnPhoneNum`, `trnEmail`, `trnDateStart`, `trnlevelAbility`, `trnRemark`, `trnisActive`)
values("32465989", "BinLaden", "Osama-Bush", 3, '1969-07-13', 0, "0509111193", "IDid911@hotmail.com", '2001-09-11', 4, "I didnt do 9/11", 1);

INSERT INTO `mydb`.`tblTrainieRout` (`trnId`,`rnCode`,`rnDateTime`, `timeRun`)
values ("214568952", 3, '2022-05-28 19:53:00', '00:50:00');
INSERT INTO `mydb`.`tblTrainieRout` (`trnId`,`rnCode`,`rnDateTime`, `timeRun`)
values ("213568975", 1, '2021-06-20 7:40:00', '02:50:00');
INSERT INTO `mydb`.`tblTrainieRout` (`trnId`,`rnCode`,`rnDateTime`, `timeRun`)
values ("21431174", 2, '2019-01-10 9:30:00', '01:00:00');
INSERT INTO `mydb`.`tblTrainieRout` (`trnId`,`rnCode`,`rnDateTime`, `timeRun`)
values ("32465989", 4, '2020-05-28 06:00:00', '04:20:00');

INSERT INTO `mydb`.`tblDestanation` (`dstDescription`)
values("Yarkon bank");
INSERT INTO `mydb`.`tblDestanation` (`dstDescription`)
values ("The park's enterance");
INSERT INTO `mydb`.`tblDestanation` (`dstDescription`)
values ("The big mall");
INSERT INTO `mydb`.`tblDestanation` (`dstDescription`)
values ("Rokach Boulevard");

INSERT INTO `mydb`.`tblLandMarks`(`landMark`, `ctyCode`) 
values ("Yarkon River", 2); 
INSERT INTO `mydb`.`tblLandMarks`(`landMark`, `ctyCode`) 
values("A horse statue", 1); 
INSERT INTO `mydb`. `tblLandMarks` ( `landMark`, `ctyCode`) 
values("The park entrance", 3);
INSERT INTO `mydb`.`tblLandMarks` (`landMark`, `ctyCode`)
values ("Azriely Towers", 2);

INSERT INTO `mydb`.`tblGroup`(`grpCode`, `grpName`, `grpCodeDest`, `grpMinLvlAbility`, `cohId`, `lmCodeMeeting`, `grpMaxCapacity` , `grplsActive`) 
values(5246, "Nigh Run", 4, 4, "325310711", 4, 50, 1); 
INSERT INTO `mydb`.`tblGroup` (`grpCode`, `grpName`, `grpCodeDest`, `grpMinLvlAbility`, `cohId`, `lmCodeMeeting`, `grpMaxCapacity`, `grplsActive`) 
values (2356, "Park Jog", 3, 2, "214201611", 2, 30, 1); 
INSERT INTO `mydb`. `tblGroup` (`grpCode`, `grpName`, `grpCodeDest`, `grpMinLvlAbility`, `cohId`, `lmCodeMeeting`, `grpMaxCapacity`, `grplsActive`) 
values (1120, "Running with Kids", 2, 1, "214201611", 3, 100, 1); 
INSERT INTO `mydb`.`tblGroup` (`grpCode`, `grpName`, `grpCodeDest`, `grpMinLvlAbility`, `cohId`, `lmcodeMeeting`, `grpMaxCapacity`, `grplsActive`)
values (8974, "Running in Jerusalem", 2, 3, "014201522", 3, 30, 0);

INSERT INTO `mydb`.`tblTrainieGroup`(`grpCode`, `trnId`, `trnIsActive`) 
values(5246, "214568952", 1); 
INSERT INTO `mydb`.`tblTrainieGroup` (`grpCode`, `trnId`, `trnIsActive`) 
values (2356, "213568975", 1); 
INSERT INTO `mydb`.`tblTrainieGroup` (`grpCode`, `trnId`, `trnIsActive`) 
values(1120, "21431174", 0); 
INSERT INTO `mydb`.`tblTrainieGroup` (`grpCode`, `trnId`, `trnIsActive`) 
values(8974, "32465989", 0);

INSERT INTO `mydb`.`tblLandMarkRout`(`routCode`, `lmCode`, `lmlocation`)
values(1, 3, 1);
INSERT INTO `mydb`.`tblLandmarkRout`(`routcode`, `lmCode`, `lmlocation`)
values(2, 1, 2);
INSERT INTO `mydb`.`tblLandmarkRout`(`routCode`, `lmCode`, `lmlocation`)
values(3, 2, 1);
INSERT INTO `mydb`.`tblLandMarkRout`(`routCode`, `lmCode`, `lmlocation`) 
values (4, 4, 3);

INSERT INTO `mydb`.`tblDaysGroups`(`grpCode`, `grpDay`, `grpStartHour`, `grpEndHour`, `GrpIsActive`) 
values(5246, "Sunday", '19:00:00', '21:00:00', 1);
INSERT INTO `mydb`.`tblDaysGroups`(`grpCode`, `grpDay`, `grpStartHour`, `grpEndHour`, `GrpIsActive`)
values (2356, "Monday", '16:30:00', '17:30:00', 1);
INSERT INTO `mydb`.`tblDaysGroups`(`grpCode`, `grpDay`, `grpStartHour`, `grpEndHour`, `GrpisActive`) 
values(1120, "Saturday", '10:00:00', '10:30:00', 1); 
INSERT INTO `mydb`.`tblDaysGroups`(`grpCode`, `grpDay`, `grpStartHour`, `grpendHour`, `GrpIsActive`) 
values (8974, "Tuesday", '06:00:00', '7:00:00', 0);