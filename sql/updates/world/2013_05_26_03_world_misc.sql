-- Only GMs can spectate arenafights. Enable this command for players if you want | by Torrad
UPDATE `command` SET `security` = 1 WHERE `name` LIKE "%spectate%";
