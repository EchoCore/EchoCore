-- MSG: Table `creature` have creature (Entry: 24029) with equipment_id 127 not found in table `creature_equip_template`, set to no equipment.
-- Source: Wyrmcaller Vile / Howling Fjord | by FireEmerald
UPDATE `creature_equip_template` SET `id` = 127 WHERE `entry` = 24029;

-- MSG: Creature (GUID: XXXXXX) does not exist but has a record in `creature_addon`.
-- Source: DB/Instance: Update: Delete all non attackable npc's in Drak'Tharon Keep | by Torrad
DELETE FROM `creature_addon` WHERE `guid` IN (127578, 127579, 127580, 127582, 127589, 127590, 127591, 115879);

-- MSG: `pool_creature` has a non existing creature spawn (GUID: XXXXXX) defined for pool id (6000X), skipped.
-- SOURCE: DB/NPC: Fix: Elite NPCs in Northend | by Torrad

-- DB/Creature: Update: Correct spawnchance of some rare NPC's in Northend | by FireEmerald
SET @LOQUENAHAK :=  32517; -- Loquenahak / Respawn: 11h + RND
SET @GONDRIA    :=  33776; -- Gondria / Respawn: 11h + RND
SET @SKOLL      :=  35189; -- Skoll / Respawn: 11h
SET @ARCTURIS   :=  38453; -- Arcturis / Respawn: 11h

SET @2GUID      :=  42158; -- 2 GUID's
SET @14GUID     := 200126; -- 14 GUID's, Loquenahak & Gondria

DELETE FROM `creature` WHERE `id` IN (@LOQUENAHAK, @SKOLL, @GONDRIA, @ARCTURIS);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@2GUID, @ARCTURIS, 571, 1, 1, 0, 0, 3561.82, -2736.37, 136.032, 0, 39600, 0, 0, 1, 0, 0, 0, 0, 0),
(@2GUID+1, @SKOLL, 571, 1, 1, 0, 0, 7101.85, -1443.73, 924.261, 0.178631, 39600, 0, 0, 1, 0, 0, 0, 0, 0),
(@14GUID, @GONDRIA, 571, 1, 1, 0, 0, 6067.13, -4072.1, 364.241, 1.54501, 39600, 5, 0, 17068, 0, 1, 0, 0, 0),
(@14GUID+1, @GONDRIA, 571, 1, 1, 0, 0, 5602.61, -3723.99, 364.693, 1.07771, 39600, 5, 0, 17068, 0, 1, 0, 0, 0),
(@14GUID+2, @GONDRIA, 571, 1, 1, 0, 0, 6231.12, -4475.94, 450.531, 1.16409, 39600, 5, 0, 17068, 0, 1, 0, 0, 0),
(@14GUID+3, @GONDRIA, 571, 1, 1, 0, 0, 6235.65, -3735.12, 369.672, 3.0137, 39600, 5, 0, 17068, 0, 1, 0, 0, 0),
(@14GUID+4, @GONDRIA, 571, 1, 1, 0, 0, 5330.5, -4509.53, 413.508, 1.01879, 39600, 5, 0, 17068, 0, 1, 0, 0, 0),
(@14GUID+5, @GONDRIA, 571, 1, 1, 0, 0, 5062.35, -3945.4, 358.951, 5.37384, 39600, 5, 0, 17068, 0, 1, 0, 0, 0),
(@14GUID+6, @LOQUENAHAK, 571, 1, 1, 0, 0, 4920.73, 4710.52, -85.4683, 3.42826, 39600, 10, 0, 16502, 0, 1, 0, 0, 0),
(@14GUID+7, @LOQUENAHAK, 571, 1, 1, 0, 0, 6438.43, 5332.94, -39.5639, 3.95842, 39600, 10, 0, 16502, 0, 1, 0, 0, 0),
(@14GUID+8, @LOQUENAHAK, 571, 1, 1, 0, 0, 5361.44, 5572.48, -91.8951, 3.39685, 39600, 10, 0, 16502, 0, 1, 0, 0, 0),
(@14GUID+9, @LOQUENAHAK, 571, 1, 1, 0, 0, 6662.57, 4394.09, 24.8115, 3.60501, 39600, 10, 0, 16502, 0, 1, 0, 0, 0),
(@14GUID+10, @LOQUENAHAK, 571, 1, 1, 0, 0, 5904.17, 5639.43, -70.035, 3.41255, 39600, 10, 0, 16502, 0, 1, 0, 0, 0),
(@14GUID+11, @LOQUENAHAK, 571, 1, 1, 0, 0, 5195.11, 3817.65, -22.7813, 0.31808, 39600, 10, 0, 16502, 0, 1, 0, 0, 0),
(@14GUID+12, @LOQUENAHAK, 571, 1, 1, 0, 0, 4995.29, 4033.78, -28.1527, 3.00021, 39600, 10, 0, 16502, 0, 1, 0, 0, 0),
(@14GUID+13, @LOQUENAHAK, 571, 1, 1, 0, 0, 5250.6, 5966.69, -49.7509, 4.68883, 39600, 10, 0, 16502, 0, 1, 0, 0, 0);

-- Loquenahak & Gondria spawnchance / 0 != 0 Chance
UPDATE `pool_creature` SET `chance` = 0 WHERE `guid` IN (@14GUID,@14GUID+1,@14GUID+2,@14GUID+3,@14GUID+4,@14GUID+5,@14GUID+6,@14GUID+7,@14GUID+8,@14GUID+9,@14GUID+10,@14GUID+11,@14GUID+12,@14GUID+13);

-- MSG: Table 'creature_loot_template' entry 26260 isn't creature entry and not referenced from loot, and then useless.
-- SOURCE: DB/Instance: Fix: Emblems of bosses, Halls of Stone | by Torrad

-- DB/Instance: Update: Corrected Emblems of Heroism & Triumph in Halls of Stone | by FireEmerald
SET @BRONZEBEARD    := 26260; -- Tribunal Chest / Entry HC: 193996 / NHC: 190586
SET @TRIUMPH        := 47241; -- Emblem of Triumph

-- Gameobject / Brann Bronzebeard
DELETE FROM `creature_loot_template` WHERE `entry` = @BRONZEBEARD;
DELETE FROM `gameobject_loot_template` WHERE `entry` = @BRONZEBEARD AND `item` = @TRIUMPH;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(@BRONZEBEARD, @TRIUMPH, 100, 1, 0, 1, 1);

-- DB/Battleground: Fix: Buff Honorable Defender in Arathi Basin, Eye of the Storm and Isle of Conquest when you defeat a Base | by Torrad
SET @HONORDEFENDER1   := 66157; -- Honorable Defender / Honor gained from kills increased by 50%.
SET @HONORDEFENDER2   := 68652; -- Honorable Defender / Honor gained from kills increased by 50%.

DELETE FROM `spell_script_names` WHERE `spell_id` IN (@HONORDEFENDER1, @HONORDEFENDER2);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(@HONORDEFENDER1, 'spell_gen_av_honorable_defender'),
(@HONORDEFENDER2, 'spell_gen_av_honorable_defender');

-- DB/NPC: Add: Arena MMR Master (resett) and Top 5 Killers | by Torrad
SET @CUSTOMENTRY    := 500012; -- Custom Entry. Set by EchoCore.

DELETE FROM `creature_template` WHERE `entry` IN (@CUSTOMENTRY, @CUSTOMENTRY+1);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(@CUSTOMENTRY, '0', '0', '0', '0', '0', '27164', '0', '0', '0', 'Top 5 Killers', '', '', '0', '59', '61', '0', '35', '35', '1', '1.48', '1.14286', '0.0', '0', '655.0', '663.0', '0', '158', '1.0', '1500', '1900', '1', '0', '0', '0', '0', '0', '0', '0', '0.0', '0.0', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1', '3', '1.0', '1.0', '1.0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', 'top5_killers', '1'),
(@CUSTOMENTRY+1, '0', '0', '0', '0', '0', '27164', '0', '0', '0', 'MMR Master', '', '', '0', '59', '61', '0', '35', '35', '1', '1.48', '1.14286', '0.0', '0', '655.0', '663.0', '0', '158', '1.0', '1500', '1900', '1', '0', '0', '0', '0', '0', '0', '0', '0.0', '0.0', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1', '3', '1.0', '1.0', '1.0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', 'npc_maniek', '1');
