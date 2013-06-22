-- DB/Misc: Update: Delete not needed emotes asigned on creature_template_addon // Restore lost data | by Aokromes
-- Cleaning db, those mobs already have emote asigned on creature_template_addon
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE `id` = 33236) AND `emote`=27;

-- Restore Lost Data
DELETE FROM `creature_addon` WHERE `guid` IN (14448,14449,14456,14458,14459);
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES 
(14448,144480,1,0, '22766'),
(14449,144490,1,0, '22766'),
(14456,144560,1,0, '22766'),
(14458,144580,1,0, '22766'),
(14459,144590,1,0, '22766');

DELETE FROM `creature_template_addon` WHERE `entry`=3457;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`bytes2`,`mount`,`auras`) VALUES
(3457,0,1,0, '22766');
