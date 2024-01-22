USE `mydb`;

# View
CREATE OR REPLACE VIEW viewAgesTrainiees AS(
SELECT  coh.cohId AS "ID",  CONCAT(coh.cohFName, " ", coh.cohLName) AS "Name", 
coh.cohGender AS "Gender", DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),coh.cohBDate)), '%Y')+0 AS "Age",
grp.grpMinLvlAbility AS "Level Code", lvl.lvlDescription AS "Level Description"
FROM `mydb`.`tblCoach` AS coh, `mydb`.`tblGroup` AS grp, `mydb`.`tblLevelAbility` AS lvl
WHERE (coh.cohId = grp.cohId) AND (grp.grpMinLvlAbility = lvl.lvlCode) AND (coh.cohIsActive = 1)
ORDER BY CONCAT(coh.cohFName, " ", coh.cohLName) ASC
);
/*
SELECT * 
FROM viewAgesTrainiees;

# Query 1
SELECT grp.grpName as "Group Name", (grp.grpMaxCapacity - COUNT(trgp.trnId)) as "Free Spots", grp.grpMinLvlAbility as "Level" 
FROM `mydb`.`tblGroup` AS grp, `mydb`.`tblTrainieGroup` AS trgp
WHERE grp.grpCode = trgp.grpCode AND grplsActive = 1 AND trgp.trnIsActive = 1
GROUP BY grp.grpName
ORDER BY (grp.grpMaxCapacity - COUNT(trgp.trnId)) DESC; 


# Query 2
SELECT coh.cohId AS "ID", CONCAT(coh.cohFName, " ", coh.cohLName) AS "Name", 
COUNT(trgp.`trnId`) AS "Number of Trainees" 
FROM `mydb`.`tblTrainieGroup` AS trgp, `mydb`.`tblGroup` AS grp, `mydb`.`tblCoach` AS coh
WHERE (grp.grpCode = trgp.grpCode) AND (coh.cohId = grp.cohId)
GROUP BY coh.cohId
HAVING COUNT(trgp.trnId) > (SELECT COUNT(trgp2.trnId)/COUNT(coh2.cohId) 
							FROM `mydb`.`tblTrainieGroup` AS trgp2, `mydb`.`tblCoach` AS coh2);

# Query 3.1
SELECT * 
FROM `mydb`.`tblGroup`;

UPDATE `mydb`.`tblGroup` AS grp
SET grp.lmCodeMeeting = 3
WHERE grp.lmCodeMeeting = 4;

SELECT * 
FROM `mydb`.`tblGroup`;


# Query 3.2
SELECT * 
FROM `mydb`.`tblRout`;

UPDATE `mydb`.`tblRout` AS rt
SET rt.routActive = 0
WHERE rt.routCode = (SELECT lmrt.routCode FROM `mydb`.`tblLandMarkRout` AS lmrt
					 WHERE lmrt.lmCode = 4);

SELECT * FROM `mydb`.`tblRout`;

# Query 4
DELETE FROM `mydb`.`tblLandMarks` AS lm  
WHERE lm.lmCode = 2;

SELECT * 
FROM `mydb`.`tblLandMarks`;

SELECT * 
FROM `mydb`.`tblLandMarks`;
*/
# Query 5
SELECT  coh.ID AS "ID", coh.`Name` AS "Name", 	SEC_TO_TIME(AVG(TIME_TO_SEC(trnrt.timeRun))) AS "Average"
FROM `mydb`.`viewAgesTrainiees` AS coh, `mydb`.`tblGroup` AS grp, `mydb`.`tblTrainieRout` AS trnrt, `mydb`.`tblTrainee` AS trn, `mydb`.`tblTrainieGroup` AS trgp
WHERE (coh.ID = grp.cohId) AND (grp.grpCode = trgp.grpCode) AND (trn.trnId = trgp.trnId) AND (trn.trnId = trnrt.trnId)
GROUP BY coh.ID
HAVING SEC_TO_TIME(AVG(TIME_TO_SEC(trnrt.timeRun)))  > (SELECT SEC_TO_TIME(AVG(TIME_TO_SEC(trnrt2.timeRun)))
														FROM `mydb`.`viewAgesTrainiees` AS coh2, `mydb`.`tblGroup` AS grp2, `mydb`.`tblTrainieRout`
                                                        AS trnrt2, `mydb`.`tblTrainee` AS trn2, `mydb`.`tblTrainieGroup` AS trgp2
														WHERE (coh2.ID = grp2.cohId) AND (grp2.grpCode = trgp2.grpCode) 
                                                        AND (trn2.trnId = trgp2.trnId) AND (trn2.trnId = trnrt2.trnId));


                             