-- DB/Quest: Fix: Edit phaseMask of King Jokkum & Oloh / Add Fjorns Anvil & Njormeld | by FireEmerald

SET @KING       :=  30105; -- King Jokkum
SET @OLOH       :=  30456; -- Oloh
SET @ANVIL      := 192060; -- Fjorns Anvil
SET @NJORMELD   :=  30099; -- Njormeld

-- Spawn the Fjorns Anvil / GUID set by EchoCore
DELETE FROM `gameobject` WHERE id = @ANVIL;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(10000114, @ANVIL, 571, 1, 1, 7212.1, -3627.03, 820, 0.443109, 0, 0, 0.219746, 0.975557, 300, 0, 1);

-- Correct Phase 1 and 4 = 5 for King Jokkum & Oloh / GUID for @NJORMELD set by EchoCore
UPDATE `creature` SET `position_x` = 7320.533691, `position_y` = -2814.423340, `position_z` = 798.624451, `orientation` = 2.576375 WHERE `guid` = 106321;
UPDATE `creature` SET `phaseMask` = 5 WHERE `id` = @OLOH;
DELETE FROM `creature` WHERE `id` IN (@KING,@NJORMELD);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(207220, @KING, 571, 1, 5, 0, 1, 7345.9, -2812.95, 798.571, 1.5009, 120, 0, 0, 1, 0, 0, 0, 0, 0),
(142444, @NJORMELD, 571, 1, 1, 0, 1, 7183.295, -3519.859, 827.4118, 0.03490658, 120, 0, 0, 1, 0, 0, 0, 0, 0);

-- Set the Quest Hoor from 22k to 42k. Needed for The Sons of Hodir.
UPDATE `quest_template` SET `RewardFactionValueIdOverride1` = 4200000 WHERE `id` = 12915;
