-- DB/Quest: Fix: Mistcaller Yngvar | by FireEmerald
-- DB/Quest: Fix: Nebelrufer Yngvar

-- Missing event script for mob spawn.
DELETE FROM `event_scripts` WHERE `id`=21997 AND `command`=10;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(21997,2,10,34965,120000,0,10181.96,1183.417,76.12115,5.934119);

-- Disable questitem if the npc is already summoned or the player has the quest completed, but not yet rewarded.
DELETE FROM conditions WHERE SourceTypeOrReferenceId=17 AND SourceEntry= 66621;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorType, comment ) VALUES
(17, 0, 66621, 0, 0, 29, 34965, 40, 0, 1, 0, "Cant use Mistcallers Charm within 40 yards of Yngvar"),
(17, 0, 66621, 0, 0, 28, 14102, 0, 0, 1, 0, "Cant use Mistcallers Charm, if player has quest objective completed, but not yet rewarded.");
