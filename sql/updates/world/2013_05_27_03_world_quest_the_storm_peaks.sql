-- DB/Quest: Hack: Into the Pit | by Vitasic
-- DB/Quest: Hack: In die Grube

UPDATE `creature_template` SET `npcflag` = 16777216, `rangeattacktime` = 2000, `unit_flags` = 8, `unit_flags2` = 0 WHERE `entry` = 30174;
UPDATE `creature_template` SET `rangeattacktime` = 2000, `unit_flags` = 33554944, `unit_flags2` = 0 WHERE `entry` = 30175;

UPDATE `creature_template` SET spell1 = 54459, spell2 = 54458, spell3 = 54460, spell4 = 0, spell5 = 0, spell6 = 0 WHERE entry = 29918;
