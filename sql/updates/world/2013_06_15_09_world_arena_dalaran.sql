-- DB/CPP: Fix: Enable Arena Sewer Dalaran | by Torrad
DELETE FROM `disables` WHERE `entry` = 10 AND `sourceType` = 3;

UPDATE `version` SET `db_version` = 'EDB 1.053' WHERE `core_version` = 'EchoCore';
