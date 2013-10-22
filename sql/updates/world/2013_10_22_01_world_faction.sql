-- DB/Faction: Update: Correct factions for NPC's in Astranaar. | by FireEmerald
SET @FACTION_79   :=   79;
SET @FACTION_80   :=   80;
SET @FACTION_124  :=  124;
SET @FACTION_1638 := 1638;

UPDATE `creature_template` SET `faction_A`=@FACTION_79, `faction_H`=@FACTION_79 WHERE `entry`=6087;
UPDATE `creature_template` SET `faction_A`=@FACTION_80, `faction_H`=@FACTION_80 WHERE `entry` IN (3845,3888,3915,3952,3953,3954,3958,3959,3961,3962,3967,3969,3970,3996,4079,4267,6738,10052,11137);
UPDATE `creature_template` SET `faction_A`=@FACTION_124, `faction_H`=@FACTION_124 WHERE `entry` IN (3691,3894);
UPDATE `creature_template` SET `faction_A`=@FACTION_1638, `faction_H`=@FACTION_1638 WHERE `entry`=17106;
