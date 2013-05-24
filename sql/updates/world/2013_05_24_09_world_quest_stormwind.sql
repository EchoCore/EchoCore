-- DB/Quest: Hack: Investigate the Blue Recluse
-- DB/Quest: Hack: Untersuchungen im Blauen Eremiten

SET @ENTRY = 6492;
-- Add spawns for NPC Rift Spawn
DELETE FROM `creature` WHERE id = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(@ENTRY, 0, 1, 1, 0, 0, -9107.86, 832.569, 105.421, 0.753009, 300, 0, 0, 356, 0, 0, 0, 0, 0),
(@ENTRY, 0, 1, 1, 0, 0, -9096.52, 839.324, 97.629, 4.02503, 300, 0, 0, 356, 0, 0, 0, 0, 0),
(@ENTRY, 0, 1, 1, 0, 0, -9110.89, 828.068, 97.6299, 1.25651, 300, 0, 0, 356, 0, 0, 0, 0, 0);
