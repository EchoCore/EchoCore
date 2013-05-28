-- Update Halls of Reflection | by Aokromes

DELETE FROM `creature` WHERE `guid` IN (202308,202294,202301,202293);
-- extra spawned Uther -- 202294
-- extra LK spawn -- 202301
-- Loralen -- 202293
-- Lady Jaina Proudmoore -- 202308
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(202308,38112,668,3,1,0,0,5276.583,2037.45,709.4025,5.532694,604800,0,0,0,0,0,0,0,0),
(202294,38113,668,3,1,0,0,5342.232,1975.696,709.4025,2.391101,604800,0,0,0,0,0,0,0,0),
(202301,36723,668,3,2,0,0,5415.538,2117.842,707.7781,3.944444,604800,0,0,0,0,0,0,0,0);
-- Lady Jaina Proudmoore
UPDATE `creature_template` SET `ScriptName`='npc_jaina_or_sylvanas_hor' WHERE `entry`=37221;
-- Lady Sylvanas Windrunner
UPDATE `creature_template` SET `ScriptName`='npc_jaina_or_sylvanas_hor' WHERE `entry`=37223;
-- Frostmourne Altar Bunny (Quel'Delar)
UPDATE `creature_template` SET `InhabitType`=4,`flags_extra`=128 WHERE `entry`=37704;
-- Frostsworn General
UPDATE `creature_template` SET `ScriptName`='npc_frostworn_general' WHERE `entry`=36723;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry`=37720; -- for hc
-- Spiritual Reflection
UPDATE `creature_template` SET /*`modelid1`=57,*/`ScriptName`='npc_spiritual_reflection' WHERE `entry`=37068;
-- Falric and Marwyn bind players to instance on heroic
UPDATE `creature_template` SET `flags_extra`=1 WHERE `entry` IN (38599,38603);

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5697,5632);
INSERT INTO `areatrigger_scripts` VALUES
-- AreaTrigger for waves restarter
(5697,'at_hor_waves_restarter'),
-- AreaTrigger for intro start
(5632,'at_hor_intro_start');

DELETE FROM `creature_text` WHERE (`entry`=37226 AND `groupid` IN (3,4)) OR `entry`=36723 OR `entry`=36954 OR `entry`=36955 OR `entry`=37554 OR `entry`=30344 OR `entry`=30824;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
-- The Lich King (at start)
(37226,3,0,'Foolish girl. You seek that, which I killed long ago. He is nearly a ghost now. A fate ago in my mind.',14,0,100,0,0,17229,'Lich King SAY_LK_JAINA_INTRO_END'),
(37226,4,0,'I will not make the same mistake again. This time there will be no escape. You fail to serve me in undead. Now, all that remains for you is oblivion!',14,0,100,0,0,17228,'Lich King SAY_LK_SYLVANAS_INTRO_END'),
-- Frostsworn General
(36723,0,0,'You are not worthy to face the Lich King!',14,0,100,0,0,16921,'general SAY_AGGRO'),
(36723,1,0,'Master, I have failed...',14,0,100,0,0,16922,'general SAY_DEATH'),
-- The Lich King (at chase event)
(36954,0,0,'Your allies have arrived, Jaina, just as you promised. You will all become powerful agents of the Scourge.',14,0,100,0,0,17212, 'Lich King SAY_LICH_KING_AGGRO_A'),
(36954,1,0,'I will not make the same mistake again, Sylvanas. This time there will be no escape. You will all serve me in death!',14,0,100,0,0,17213,'Lich King SAY_LICH_KING_AGGRO_H'),
(36954,2,0,'Succumb to the chill of the grave.',14,0,100,0,0,17218,'Lich King SAY_LICH_KING_WALL_02'),
(36954,3,0,'Another dead end.',14,0,100,0,0,17219,'Lich King SAY_LICH_KING_WALL_03'),
(36954,4,0,'How long can you fight it?',14,0,100,0,0,17220,'Lich King SAY_LICH_KING_WALL_04'),
(36954,5,0,'There is no escape!', 14,0,100,0,0,17217,'Lich King SAY_LICH_KING_WALL_01'),
(36954,6,0,'Rise minions, do not left them us!',14,0,100,0,0,17216,'Lich King SAY_LICH_KING_GNOUL'),
(36954,7,0,'Minions sees them. Bring their corpses back to me!',14,0,100,0,0,17222,'Lich King SAY_LICH_KING_ABON'),
(36954,8,0,'Death''s cold embrace awaits.',14,0,100,0,0,17221,'Lich King SAY_LICH_KING_WINTER'),
(36954,9,0,'Nowhere to run! You''re mine now...',14,0,100,0,0,17223,'Lich King SAY_LICH_KING_END_DUN'),
(36954,10,0,'All is lost!',14,0,100,0,0,17215,'Lich King SAY_LICH_KING_WIN'),
-- Lady Jaina Proudmoore (at chase event)
(36955,0,0,'He is too powerful, we must leave this place at once! My magic will hold him in place for only a short time! Come quickly, heroes!',14,0,100,1,0,16644,'Jaina SAY_JAINA_AGGRO'),
(36955,1,0,'I will destroy this barrier. You must hold the undead back!',14,0,100,0,0,16607,'Jaina SAY_JAINA_WALL_01'),
(36955,2,0,'Another ice wall! Keep the undead from interrupting my incantation so that I may bring this wall down!',14,0,100,0,0,16608,'Jaina SAY_JAINA_WALL_02'),
(36955,3,0,'He is toying with us! I will show him what happens to ice when it meets fire!',14,0,100,0,0,16609,'Jaina SAY_JAINA_WALL_03'),
(36955,4,0,'Your barriers can''t hold us back much longer, monster. I will shatter them all!',14,0,100,0,0,16610,'Jaina SAY_JAINA_WALL_04'),
(36955,5,0,'There''s an opening up ahead. GO NOW!', 14,0,100,1,0,16645,'Jaina SAY_JAINA_ESCAPE_01'),
(36955,6,0,'We''re almost there... Don''t give up!',14,0,100,0,0,16646,'Jaina SAY_JAINA_ESCAPE_02'),
(36955,7,0,'It... It''s a dead end. We have no choice but to fight. Steel yourself heroes, for this is our last stand!',14,0,100,1,0,16647,'Jaina SAY_JAINA_TRAP'),
(36955,8,0,'Forgive me heroes, I should have listened to Uther. I ... I had to see for myself, to look into his eyes one last time ... I am sorry.',14,0,100,1,0,16648,'Jaina SAY_JAINA_FINAL_2'),
(36955,9,0,'We now know what must be done. I will deliver this news to King Varian and Highlord Fordring.',14,0,100,1,0,16649,'Jaina SAY_JAINA_FINAL_3'),
-- Lady Sylvanas Windrunner (at chase event)
(37554,0,0,'He''s too powerful! Heroes, quickly, come to me! We must leave this place immediately! I will do what I can do hold him in place while we flee.',14,0,100,0,0,17058,'Sylvanas SAY_SYLVANA_AGGRO'),
(37554,1,0,'No wall can hold the Banshee Queen! Keep the undead at bay, heroes! I will tear this barrier down!',14,0,100,0,0,17029,'Sylvanas SAY_SYLVANA_WALL_01'),
(37554,2,0,'Another barrier? Stand strong, champions! I will bring the wall down!',14,0,100,0,0,17030,'Sylvanas SAY_SYLVANA_WALL_02'),
(37554,3,0,'I grow tired of these games, Arthas! Your walls can\'t stop me!',14,0,100,0,0,17031,'Sylvanas SAY_SYLVANA_WALL_03'),
(37554,4,0,'You won''t impede our escape, fiend. Keep the undead off me while I bring this barrier down!',14,0,100,0,0,17032,'Sylvanas SAY_SYLVANA_WALL_04'),
(37554,5,0,'There''s an opening up ahead. GO NOW!',14,0,100,1,0,17059,'Sylvanas SAY_SYLVANA_ESCAPE_01'),
(37554,6,0,'We''re almost there! Don''t give up!',14,0,100,0,0,17060,'Sylvanas SAY_SYLVANA_ESCAPE_02'),
(37554,7,0,'BLASTED DEAD END! So this is how it ends. Prepare yourselves, heroes, for today we make our final stand!',14,0,100,5,0,17061,'Sylvanas SAY_SYLVANA_TRAP'),
(37554,8,0,'We are safe... for now. His strength has increased tenfold since our last battle. It will take a mighty army to destroy the Lich King. An army greater than even the Horde can rouse.',14,0,100,1,0,17062,'Sylvanas SAY_SYLVANA_FINAL_2'),
-- High Captain Justin Bartlett
(30344,0,0,'Fire, fire!',14,0,100,0,0,16721,'Bartlett SAY_BARTLETT_FIRE'),
(30344,1,0,'Quickly, climb aboard! We mustn''t tarry here. There''s no telling when this whole mountainside will collapse!',14,0,100,0,0,16722,'Bartlett SAY_BARTLETT_FINAL_1'),
-- Sky-Reaver Korm Blackscar
(30824,0,0,'FIRE! FIRE!',14,0,100,0,0,0,'Korm SAY_KORM_FIRE'),
(30824,1,0,'Quickly, climb aboard! We mustn''t tarry here. There''s no telling when this whole mountainside will collapse!',14,0,100,0,0,0,'Korm SAY_KORM_FINAL_1');

UPDATE `version` SET `db_version` = 'EDB 1.033' WHERE `core_version` = 'EchoCore';
