-- DB/Quest: Fix: Rallying the Troops
-- DB/Quest: Fix: Neue Kraft für die Truppen

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE entry = 26261;
-- Grant quest credit, after spell used on npc.
DELETE FROM `smart_scripts` WHERE entryorguid = 26261;
INSERT INTO `smart_scripts` VALUES (26261, 0, 0, 0, 8, 0, 100, 0, 47394, 0, 0, 0, 33, 26261, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Spellhit call Killcredit for Q 12070');
