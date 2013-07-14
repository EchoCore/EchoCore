SET @MAILBOX        := 195528; -- Mailbox
SET @ID_VETERAN     :=  30431; -- ID / Veteran Crusader Aliocha Segard
SET @GUID_VETERAN   := 124442; -- GUID / Veteran Crusader Aliocha Segard
SET @ID_MYNX        :=  32538; -- ID / Duchess Mynx
SET @GUID_MYNX      := 121136; -- GUID / Duchess Mynx
SET @FLIGHTMASTER   :=  29488; -- ID / Scourge Gryphon
SET @GLOW           := 191555; -- ID / Scourge Gryphon Roost Glow
SET @ROOST          := 191554; -- ID / Skeletal Gryphon Roost
SET @SPIRITHEALER   :=  29259; -- ID / Spirit Healer

-- DB/GO: Add: Mailbox on the Gm-Island.
DELETE FROM `gameobject` WHERE `id` = @MAILBOX AND `spawntimesecs` = 300;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@MAILBOX, 1, 1, 1, 16220, 16271.7, 12.9828, 1.59117, 0, 0, 0.714272, 0.699868, 300, 0, 1);

-- DB/NPC: Add: Custom NPC's Veteran Crusader Aliocha Segard (30431) and Duchess Mynx (32538).
-- Already set:
DELETE FROM `creature` WHERE `guid` IN (@GUID_VETERAN,@GUID_MYNX);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID_VETERAN, @ID_VETERAN, 571, 1, 131, 27020, 1, 6266.74, -44.569, 421.498, 3.83972, 300, 0, 0, 23310, 11982, 0, 0, 0, 0),
(@GUID_MYNX, @ID_MYNX, 571, 1, 1, 28039, 0, 8566.71, 2722.85, 652.437, 4.4855, 300, 0, 0, 10080, 8814, 0, 0, 0, 0);

-- New in Dalaran:
DELETE FROM `creature` WHERE `id` IN (@ID_VETERAN,@ID_MYNX);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@ID_VETERAN, 571, 1, 1, 0, 1, 5824.17, 644.679, 647.85, 3.08513, 300, 0, 0, 23310, 11982, 0, 0, 0, 0),
(@ID_MYNX, 571, 1, 1, 0, 0, 5823.91, 640.924, 647.885, 3.10084, 300, 0, 0, 10080, 8814, 0, 0, 0, 0);

-- DB/NPC: Add: Custom Flight Master in Acherus.
DELETE FROM `creature` WHERE `id` = @FLIGHTMASTER AND `phaseMask` = 128;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@FLIGHTMASTER, 609, 1, 128, 0, 0, 2321.65, -5661.79, 427.217, 3.67169, 300, 0, 0, 5066, 0, 0, 0, 0, 0);

DELETE FROM `gameobject` WHERE `id` IN (@GLOW,@ROOST) AND `phaseMask` = 128;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GLOW, 609, 1, 128, 2321.65, -5661.79, 426.029, 3.82009, 0, 0, 0.943006, -0.332777, 300, 0, 1),
(@ROOST, 609, 1, 128, 2321.65, -5661.79, 426.031, 3.67949, 0, 0, 0.96405, -0.265719, 300, 0, 1);

-- DB/NPC Add: Custom Spirit Healer in Acherus.
DELETE FROM `creature` WHERE `id` = @SPIRITHEALER AND `phaseMask` IN (1,128);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@SPIRITHEALER, 609, 1, 128, 0, 0, 2351.93, -5667.18, 427.477, 0.584242, 300, 0, 0, 7212, 0, 0, 0, 0, 0),
(@SPIRITHEALER, 0, 1, 1, 0, 0, 2347.87, -5670.21, 427.779, 0.622185, 300, 0, 0, 7212, 0, 0, 0, 0, 0);
