-- DB/Quest: Hack: The Frost Wyrm and its Master
-- DB/Quest: Hack: Der Frostwyrm und sein Meister

SET @WyrmcallerVile := 24029;
SET @Glacion := 24019;
SET @GOPlatform := 300161; -- TEMP The Wyrmlord's Platform
SET @SummonSpell := 42817;
SET @QuestA := 11238;
SET @QuestH := 11267;

DELETE FROM `creature` WHERE id IN (@WyrmcallerVile, @Glacion);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@WyrmcallerVile, 571, 1, 1, 0, 127, 2816.98, -3607.67, 246.053, 3.77733, 300, 0, 0, 9291, 3231, 0, 0, 0, 0);

DELETE FROM `gameobject` WHERE id = @GOPlatform;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GOPlatform, 571, 1, 1, 2818.71, -3619.43, 247.504, 1.72037, 0, 0, 0.757965, 0.652295, 300, 0, 1),
(@GOPlatform, 571, 1, 1, 2804.32, -3601.11, 247.686, 0.68679, 0, 0, 0.336686, 0.941617, 300, 0, 1),
(@GOPlatform, 571, 1, 1, 2805.15, -3613.83, 247.795, 3.90142, 0, 0, 0.928696, -0.370841, 300, 0, 1),
(@GOPlatform, 571, 1, 1, 2816.61, -3607.82, 246.088, 0.583118, 0, 0, 0.287446, 0.957797, 300, 0, 1);

DELETE FROM `conditions` WHERE SourceEntry = @SummonSpell;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ScriptName`, `Comment`) VALUES
(17, 0, @SummonSpell, 0, 0, 29, 0, @Glacion, 100, 0, 1, '', "Do not summon Glacion, if he is already spawned (100 Yards)"),
(17, 0, @SummonSpell, 0, 0, 28, 0, @QuestH, 0, 0, 1, '', "Do not summon Glacion, if player has quest objective completed, but not yet rewarded. (Horde)"),
(17, 0, @SummonSpell, 0, 0, 28, 0, @QuestA, 0, 0, 1, '', "Do not summon Glacion, if player has quest objective completed, but not yet rewarded. (Alliance)");
