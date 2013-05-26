-- Only GMs can spectate arenafights. Enable this command for players if you want.
UPDATE `command` SET `security` = 1 WHERE `name` LIKE "%spectate%";
