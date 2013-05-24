/*
 * DB/Instance: Fix: Trial of the Champion
 * Fixxed nearly the Event of trial of the Champion including the first Boss.
 * Uses: Uses Hack to delete the MMaps
 *
 * Bugfix der Instanz PDC NHC / HC
 * Uses Hack to delete the MMaps - Invisible Wall
 */

INSERT IGNORE INTO `disables` (`sourceType`,`entry`,`flags`,`comment`) VALUES
(7,650,0, 'Invisible Wall PDC');

UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=0 WHERE `modelid`=29255; -- Colosos' Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.525,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=9991; -- Jaelyne Evensong's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=2,`gender`=0 WHERE `modelid`=2787; -- Lana Stouthammer's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=29879; -- Mokra the Skullcrusher's Mount
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=2 WHERE `modelid`=28607; -- Eressea Dawnsinger's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.34,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=29880; -- Runok Wildmane's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=10718; -- Deathstalker Visceri's Mount

-- Eadric the Pure interrupt immunity
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` | 33554432 WHERE `entry` IN (35119, 35518);

-- 35004 is horde
-- 35005 is alliance
UPDATE creature SET id = 35004 WHERE map = 650 AND guid=230961;
