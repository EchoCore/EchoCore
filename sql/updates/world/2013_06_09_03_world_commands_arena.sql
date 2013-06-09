-- DB/Arena: Update: Permission structures for arena commands | by Torrad
UPDATE `command` SET `security` = 4 WHERE name LIKE "arena disband";
UPDATE `command` SET `security` = 1 WHERE name LIKE "arena info";
UPDATE `command` SET `security` = 1 WHERE name LIKE "arena lookup";
