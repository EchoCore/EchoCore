/*
 * DB/NPC: Fix: Elite NPCs in Northend | by Torrad
 * Fix all the elite pet-mobs in Northend. Place them at the correct position,
 * and fix the spawntime of the pets.
*/
SET @LOQUENAHAK   := 32517; -- http://de.wowhead.com/npc=32517/loquenahak
SET @SKOLL        := 35189; -- http://de.wowhead.com/npc=35189/skoll
SET @GONDRIA      := 33776; -- http://de.wowhead.com/npc=33776/gondria
SET @ARCTURIS     := 38453; -- http://de.wowhead.com/npc=38453/arcturis

DELETE FROM `creature` WHERE `id` IN (@LOQUENAHAK, @SKOLL, @GONDRIA, @ARCTURIS);
INSERT INTO `creature`(guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType,npcflag,unit_flags,dynamicflags) VALUES
('200139', @LOQUENAHAK, '571', '1', '1', '0', '0', '4936.6', '4021.25', '-18.33', '4.68883', '480', '10', '0', '16502', '0', '1', '0', '0', '0'),
('42159', @SKOLL, '571', '1', '1', '0', '0', '7178.03', '-1550.96', '931.00', '0.178631', '39600', '0', '0', '1', '0', '0', '0', '0', '0'),
('200131', @GONDRIA, '571', '1', '1', '0', '0', '6359.04', '-3777.58', '459.06', '5.37384', '14400', '5', '0', '17068', '0', '1', '0', '0', '0'),
('42158', @ARCTURIS, '571', '1', '1', '0', '0', '3390.91', '-2647.57', '50.715', '0', '39600', '0', '0', '1', '0', '0', '0', '0', '0');
