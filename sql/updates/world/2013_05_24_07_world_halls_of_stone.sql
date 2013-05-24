/*
 * DB/Instance: Fix: Emblems of bosses, Halls of Stone.
 * Fix all bosses in Halls of Stone.
 * Before: They droppted Emblem of Heroes
 * Now: They drop Embleme of Triomph
 *
 * Fixed mode: 5 Man Heroic (Non-Herioc was allready fixed)
*/
DELETE FROM `creature_loot_template` WHERE entry IN (27978, 27977, 27975, 31381, 31386, 31384) AND item IN (40752, 47241);

INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(31381,47241,100,1,0,2,2),
(31386,47241,100,1,0,2,2),
(31384,47241,100,1,0,2,2);

DELETE FROM `gameobject_loot_template` WHERE entry IN (24661, 26260) AND item IN (40752, 47241);
 
INSERT IGNORE INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(26260,47241,100,1,0,1,1);
