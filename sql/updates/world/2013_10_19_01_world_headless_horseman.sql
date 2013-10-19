-- DB/Script: Update: Implement Headless Horseman Script | by FireEmerald
SET @HORSEMAN       :=    23682; -- NPC: Headless Horseman
SET @HORSEMAN_GUID  :=  2023497; -- GUID: Headless Horseman / Set by EchoCore
SET @PUMPKIN        :=   186267; -- GO: Pumpkin Shrine
SET @PUMPKIN_GUID   := 10000122; -- GUID: Pumpkin Shrine / Set by EchoCore
SET @QUEST          :=    11405; -- Call the Headless Horseman

-- Headless Horseman (Spawntime: 1 day)
DELETE FROM `creature` WHERE `guid` = @HORSEMAN_GUID OR `id` = @HORSEMAN;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@HORSEMAN_GUID, @HORSEMAN, 189, 1, 1, 0, 0, 1748.93, 1348.23, 19.3712, 0.0190458, 86400, 0, 0, 126000, 3994, 0, 0, 0, 0);

-- Pumpkin Shrine
DELETE FROM `gameobject` WHERE `guid` = @PUMPKIN_GUID OR `id` = @PUMPKIN;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@PUMPKIN_GUID, @PUMPKIN, 189, 1, 1, 1776.27, 1348.74, 20.4116, 6.27281, 0, 0, 0.00518764, -0.999987, 25, 0, 1);

-- Implement Quest: Call the Headless Horseman - Pumpkin Shrine
DELETE FROM `gameobject_questrelation` WHERE `id` = @PUMPKIN OR `quest` = @QUEST;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(@PUMPKIN, @QUEST);

-- Seasonal creature and gameobject
DELETE FROM `game_event_creature` WHERE `guid` = @HORSEMAN_GUID;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(12, @HORSEMAN_GUID);

DELETE FROM `game_event_gameobject` WHERE `guid` = @PUMPKIN_GUID;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @PUMPKIN_GUID);
