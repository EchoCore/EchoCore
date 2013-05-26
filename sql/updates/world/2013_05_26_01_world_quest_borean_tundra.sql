-- DB/Quest: Fix: Foolish Endeavors | by dr-j
-- DB/Quest: Fix: Törichtes Unterfangen

SET @Getry := 25729;  -- Shadowstalker Getry
SET @Varidus := 25618;  -- Varidus the Flenser
SET @Necrolord := 25730;  -- En'kilah Necrolord
SET @Saurfang := 25751;  -- High Overlord Saurfang
SET @Prisoner := 25624;  -- Infested Prisoner
SET @Aberration := 25625;  -- Warsong Aberration

SET @quest := 11705;  -- Foolish Endeavors

SET @guid := 300010;  -- Needs 42 for missing spawns of infested prisoner (300010, is custom by EchoCore)

UPDATE `creature_template` SET `minlevel`=65, `maxlevel`=70, `exp`=2, `faction_A`=14, `faction_H`=14, `unit_flags`=33554688,`AIName`= 'SmartAI' WHERE  `entry`=@Prisoner;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='',`unit_flags`= 0 WHERE `entry`IN(@Getry,@Varidus,@Necrolord,@Saurfang,@Aberration);
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `exp`=2,`mindmg`=474, `maxdmg`=574 WHERE  `entry`=@Saurfang;
UPDATE `creature_template` SET `unit_flags`=32768 WHERE  `entry`=@Getry;

DELETE FROM `creature` WHERE `id`=@Prisoner;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(@guid, @Prisoner, 571, 1, 1, 0, 0, 3092.136, 6516.039, 82.06012, 5.183628, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+1, @Prisoner, 571, 1, 1, 0, 0, 3089.2, 6526.226, 81.77282, 1.902409, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+2, @Prisoner, 571, 1, 1, 0, 0, 3096.962, 6510.87, 82.08541, 0.5585054, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+3, @Prisoner, 571, 1, 1, 0, 0, 3093.876, 6522.219, 81.79565, 0.01745329, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+4, @Prisoner, 571, 1, 1, 0, 0, 3098.928, 6517.495, 81.77497, 3.001966, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+5, @Prisoner, 571, 1, 1, 0, 0, 3103.036, 6504.89, 82.04672, 3.944444, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+6, @Prisoner, 571, 1, 1, 0, 0, 3104.042, 6511.731, 81.80676, 3.455752, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+7, @Prisoner, 571, 1, 1, 0, 0, 3093.038, 6547.074, 80.75952, 5.899213, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+8, @Prisoner, 571, 1, 1, 0, 0, 3096.117, 6544.481, 80.7102, 1.605703, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+9, @Prisoner, 571, 1, 1, 0, 0, 3099.3, 6541.367, 80.77256, 4.799655, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+10, @Prisoner, 571, 1, 1, 0, 0, 3090.39, 6541.875, 81.06445, 3.054326, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+11, @Prisoner, 571, 1, 1, 0, 0, 3102.454, 6538.238, 80.83416, 1.58825, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+12, @Prisoner, 571, 1, 1, 0, 0, 3093.245, 6538.743, 81.06524, 3.455752, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+13, @Prisoner, 571, 1, 1, 0, 0, 3105.601, 6534.979, 80.85965, 0.1570796, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+14, @Prisoner, 571, 1, 1, 0, 0, 3096.462, 6535.528, 81.13345, 4.921828, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+15, @Prisoner, 571, 1, 1, 0, 0, 3087.603, 6536.683, 81.36699, 4.18879, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+16, @Prisoner, 571, 1, 1, 0, 0, 3108.599, 6531.898, 80.8754, 5.462881, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+17, @Prisoner, 571, 1, 1, 0, 0, 3100.571, 6532.094, 81.16553, 6.230825, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+18, @Prisoner, 571, 1, 1, 0, 0, 3122.098, 6518.814, 80.70912, 1.815142, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+19, @Prisoner, 571, 1, 1, 0, 0, 3116.981, 6515.013, 81.07998, 5.899213, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+20, @Prisoner, 571, 1, 1, 0, 0, 3126.142, 6514.962, 80.68482, 1.954769, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+21, @Prisoner, 571, 1, 1, 0, 0, 3112.065, 6511.906, 81.3951, 5.148721, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+22, @Prisoner, 571, 1, 1, 0, 0, 3129.413, 6511.592, 80.7066, 2.722714, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+23, @Prisoner, 571, 1, 1, 0, 0, 3122.214, 6510.255, 81.00794, 2.86234, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+24, @Prisoner, 571, 1, 1, 0, 0, 3116.414, 6507.338, 81.34387, 5.811946, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+25, @Prisoner, 571, 1, 1, 0, 0, 3109.384, 6506.753, 81.68826, 6.038839, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+26, @Prisoner, 571, 1, 1, 0, 0, 3126.804, 6505.612, 81.01304, 3.909538, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+27, @Prisoner, 571, 1, 1, 0, 0, 3120.997, 6502.847, 81.33372, 3.228859, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+28, @Prisoner, 571, 1, 1, 0, 0, 3114.636, 6501.495, 81.61775, 0.3490658, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+29, @Prisoner, 571, 1, 1, 0, 0, 3109.11, 6498.783, 81.92492, 2.635447, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+30, @Prisoner, 571, 1, 1, 0, 0, 3126.413, 6498.179, 81.30205, 6.248279, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+31, @Prisoner, 571, 1, 1, 0, 0, 3120.758, 6495.855, 81.59259, 2.495821, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+32, @Prisoner, 571, 1, 1, 0, 0, 3115.22, 6492.261, 81.93079, 5.5676, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+33, @Prisoner, 571, 1, 1, 0, 0, 3126.15, 6489.568, 81.65459, 2.146755, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+34, @Prisoner, 571, 1, 1, 0, 0, 3120.454, 6486.966, 81.9426, 1.902409, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+35, @Prisoner, 571, 1, 1, 0, 0, 3095.756, 6528.297, 81.4939, 4.433136, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+36, @Prisoner, 571, 1, 1, 0, 0, 3091.309, 6532.723, 81.41476, 4.502949, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+37, @Prisoner, 571, 1, 1, 0, 0, 3104.285, 6519.577, 81.50758, 6.178465, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+38, @Prisoner, 571, 1, 1, 0, 0, 3112.36, 6527.987, 80.87508, 3.630285, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+39, @Prisoner, 571, 1, 1, 0, 0, 3104.28, 6528.084, 81.18883, 3.420845, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+40, @Prisoner, 571, 1, 1, 0, 0, 3116.763, 6524.073, 80.84852, 6.021386, 120, 0, 0, 1848, 0, 0, 0, 0, 0),
(@guid+41, @Prisoner, 571, 1, 1, 0, 0, 3099.789, 6524.306, 81.51059, 3.368485, 120, 0, 0, 1848, 0, 0, 0, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(@Getry,@Varidus,@Necrolord,@Saurfang,@Prisoner,@Aberration,@Prisoner*100,@Varidus*100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@Getry, 0, 0 ,1,19, 0, 100, 0, @quest, 0, 0,0,81,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - On Quest Accept - Set Npc Flags'),
(@Getry, 0, 1 ,2,61, 0, 100, 0, 0, 0, 0,0,12,@Varidus,1,300000,0,0,0,8,0,0,0,3138.213867,6513.904785,80.220337,2.407976, 'Shadowstalker Getry - Linked with Previous Event - Spawn Varidus the Flenser'),
(@Getry, 0, 2 ,46,61, 0, 100, 0, 0, 0, 0,0,1,0,3000,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Say'),
(@Getry, 0, 3 ,4,52, 0, 100, 0, 0, @Getry, 0,0,1,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 4 ,0,61, 0, 100, 0, 0, 0, 0,0,53,0,@Getry,0,0,0,1,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Start WP'),
(@Getry, 0, 5 ,0,11, 0, 100, 0, 0, 0, 0,0,81,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - On Reset - Set NPC Flags'),
(@Getry, 0, 6 ,0,40, 0, 100, 1, 8, @Getry, 0,0,11,34189,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - On reached WP8 - Cast Stealth'),
(@Getry, 0, 7 ,8,40, 0, 100, 0, 10, @Getry, 0,0,11,45922,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - On reached WP10 - Cast Shadow Prison'),
(@Getry, 0, 8 ,9,61, 0, 100, 0, 10, 0, 0,0,85,45922,0,0,0,0,0,7,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Cast Shadow Prison'),
(@Getry, 0, 9 ,10,61, 0, 100, 0, 10, 0, 0,0,101,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Set Home Position'),
(@Getry, 0, 10 ,17,61, 0, 100, 0, 10, 0, 0,0,1,0,5000,0,0,0,0,9,@Varidus,0,100,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Say'),
(@Getry, 0, 11 ,18,52, 0, 100, 0, 0, @Varidus, 0,0,1,1,5000,0,0,0,0,9,@Varidus,0,100,0, 0, 0, 0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 12 ,0,52, 0, 100, 0, 1, @Varidus, 0,0,1,2,5000,0,0,0,0,9,@Varidus,0,100,0, 0, 0, 0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 13 ,0,52, 0, 100, 0, 2, @Varidus, 0,0,1,3,5000,0,0,0,0,9,@Varidus,0,100,0, 0, 0, 0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 14 ,0,52, 0, 100, 0, 3, @Varidus, 0,0,1,4,5000,0,0,0,0,9,@Varidus,0,100,0, 0, 0, 0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 15 ,0,52, 0, 100, 0, 4, @Varidus, 0,0,1,5,5000,0,0,0,0,9,@Varidus,0,100,0, 0, 0, 0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 16 ,19,52, 0, 100, 0, 5, @Varidus, 0,0,1,6,5000,0,0,0,0,9,@Varidus,0,100,0, 0, 0, 0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 17 ,30,61, 0, 100, 0, 0, 0, 0,0,28,34189,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Remove Stealth'),
(@Getry, 0, 18 ,0,61, 0, 100, 0, 0, 0, 0,0,12,@Necrolord,1,300000,0,0,0,8,0,0,0,3143.825195,6510.083008,80.234024,2.289084, 'Shadowstalker Getry - Linked with Previous Event - Spawn En''kilah Necrolord'),
(@Getry, 0, 19 ,0,61, 0, 100, 0, 0, 0, 0,0,45,1,1,0,0,0,0,9,@Necrolord,0,200,0,0,0,0, 'Shadowstalker Getry - Linked with Previous Event - Spawn Varidus the Flenser'),
(@Getry, 0, 20 ,0,52, 0, 100, 0, 6, @Varidus, 0,0,1,0,5000,0,0,0,0,9,@Saurfang,0,200,0,0,0,0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 21 ,0,52, 0, 100, 0, 0, @Saurfang, 0,0,1,7,5000,0,0,0,0,9,@Varidus,0,200,0,0,0,0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 22 ,0,52, 0, 100, 0, 7, @Varidus, 0,0,1,1,5000,0,0,0,0,9,@Saurfang,0,200,0,0,0,0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 23 ,0,52, 0, 100, 0, 1, @Saurfang, 0,0,1,7,5000,0,0,0,0,9,@Saurfang,0,200,0,0,0,0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 24 ,0,52, 0, 100, 0, 2, @Saurfang, 0,0,1,8,5000,0,0,0,0,9,@Varidus,0,200,0,0,0,0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 25 ,0,52, 0, 100, 0, 8, @Varidus, 0,0,1,3,5000,0,0,0,0,9,@Saurfang,0,200,0,0,0,0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 26 ,0,52, 0, 100, 0, 3, @Saurfang, 0,0,1,9,5000,0,0,0,0,9,@Varidus,0,200,0,0,0,0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 27 ,0,52, 0, 100, 0, 9, @Varidus, 0,0,1,10,2000,0,0,0,0,9,@Varidus,0,200,0,0,0,0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 28 ,29,52, 0, 100, 0, 10, @Varidus, 0,0,28,45922,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On Text Over - Remove Shadow Prison'),
(@Getry, 0, 29 ,31,61, 0, 100, 0, 0, 0, 0,0,28,45922,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Shadowstalker Getry - Linked with Previous Event - Remove Shadow Prison'),
(@Getry, 0, 30 ,0,61, 0, 100, 0, 0, 0, 0,0,45,1,1,0,0,0,0,9,@Varidus,0,200,0,0,0,0, 'Shadowstalker Getry - Linked with Previous Event - Set Data'),
(@Getry, 0, 31 ,0,61, 0, 100, 0, 0, 0, 0,0,45,1,2,0,0,0,0,9,@Varidus,0,200,0,0,0,0, 'Shadowstalker Getry - Linked with Previous Event - Set Data'),
(@Getry, 0, 33 ,34,38, 0, 100, 0, 1, 4, 0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - Linked with Previous Event - Set Data'),
(@Getry, 0, 34 ,0,61, 0, 100, 0, 0, 0, 0,0,49,0,0,0,0,0,0,19,@Varidus,200,0,0,0,0,0, 'Shadowstalker Getry - Linked with Previous Event - Set Data'),
(@Getry, 0, 35 ,0,52, 0, 100, 0, 7, @Saurfang, 0,0,1,2,5000,0,0,0,0,9,@Saurfang,0,200,0,0,0,0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 36 ,0,38, 0, 100, 0, 1, 3, 0,0,1,2,5000,0,0,0,0,1,0,0,0,0,0,0,0, 'Shadowstalker Getry - On Data Set - Say'),
(@Getry, 0, 37 ,38,52, 0, 100, 0, 2, @Getry, 0,0,1,3,5000,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 38 ,47,61, 0, 100, 0, 0, 0, 0,0,15,@quest,0,0,0,0,0,7,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Quest Credit'),
(@Getry, 0, 39 ,0,52, 0, 100, 0, 3, @Getry, 0,0,1,4,5000,0,0,0,0,9,@Saurfang,0,200,0, 0, 0, 0, 'Shadowstalker Getry - On Text Over - Say'),
(@Getry, 0, 40 ,41,52, 0, 100, 0, 4, @Saurfang, 0,0,45,1,3,0,0,0,0,9,@Saurfang,0,200,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Set Data'),
(@Getry, 0, 41 ,0,61, 0, 100, 0, 0, 0, 0,0,53,0,@Getry*100,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Start WP'),
(@Getry, 0, 42 ,43,40, 0, 100, 0, 10, @Getry*100, 0,0,81,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - On reached WP10 (Return)- Set NPC Flags'),
(@Getry, 0, 43 ,44,61, 0, 100, 0, 0, 0, 0,0,18,756,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Set Unit Flags'),
(@Getry, 0, 44 ,45,61, 0, 100, 0, 0, 0, 0,0,101,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Set Home Position'),
(@Getry, 0, 45 ,49,61, 0, 100, 0, 0, 0, 0,0,22,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Set Phase 1'),
(@Getry, 0, 46 ,48,61, 0, 100, 0, 0, 0, 0,0,11,45924,0,0,0,0,0,7,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Cast on Getrys Quest'),
(@Getry, 0, 47 ,0,61, 0, 100, 0, 0, 0, 0,0,15,@quest,0,0,0,0,0,21,100,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Quest Credit'),
(@Getry, 0, 48 ,0,61, 0, 100, 0, 0, 0, 0,0,22,2,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Set Phase 2'),
(@Getry, 0, 49 ,0,61, 0, 100, 0, 0, 0, 0,0,70,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Shadowstalker Getry - Linked with Previous Event - Respawn'),

(@Varidus, 0, 0 ,1,11, 0, 100, 0, 0, 0, 0,0,2,1982,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - On Spawn - Set Faction'),
(@Varidus, 0, 1 ,2,61, 0, 100, 0, 0, 0, 0,0,18,768,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - Linked with Previous Event - Set Unit Flags'),
(@Varidus, 0, 2 ,0,61, 0, 100, 0, 0, 0, 0,0,53,0,@Varidus,0,0,0,1,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - Linked with Previous Event - Start WP'),
(@Varidus, 0, 3 ,0,38, 0, 100, 0, 1, 1, 0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.5, 'Varidus the Flenser - On Data Set - Set Orientation'),
(@Varidus, 0, 4 ,11,38, 0, 100, 0, 1, 2, 0,0,19,768,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - On Data Set - Set Unit Flags'),
(@Varidus, 0, 5 ,0,40, 0, 100, 0, 2, 0, 0,0,101,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - On Data Set - Set Unit Flags'),
(@Varidus, 0, 6 ,0,9, 0, 100, 0, 0, 10, 5000,8000,11,32711,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - IC - Cast Shadow Nova'),
(@Varidus, 0, 7 ,0,0, 0, 100, 0, 10000, 12000, 10000,15000,11,50329,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - IC - Cast Shied of Suffering'),
(@Varidus, 0, 8 ,0,6, 0, 100, 0, 0, 0, 0,0,45,1,3,0,0,0,0,9,@Getry,0,200,0, 0, 0, 0, 'Varidus the Flenser - On Death - Set Data'),
(@Varidus, 0, 9 ,10,4, 0, 100, 0, 0, 0, 0,0,45,1,4,0,0,0,0,9,@Getry,0,200,0, 0, 0, 0, 'Varidus the Flenser - On Agro - Set Data'),
(@Varidus, 0, 10 ,0,61, 0, 100, 0, 0, 0, 0,0,45,1,2,0,0,0,0,9,@Saurfang,0,200,0, 0, 0, 0, 'Varidus the Flenser - Linked with Previous Event - Set Data'),
(@Varidus, 0, 11 ,13,61, 0, 100, 0, 0, 0, 0,0,11,45805,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - Linked with Previous Event - Cast Release Aberration'),
(@Varidus, 0, 12 ,0,40, 0, 100, 0, 1, 0, 0,0,1,11,7000,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - Linked with Previous Event - Say'),
(@Varidus, 0, 13 ,14,61, 0, 100, 0, 0, 0, 0,0,28,45908,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - Linked with Previous Event - Remove Shield of Suffering'),
(@Varidus, 0, 14 ,0,61, 0, 100, 0, 0, 0, 0,0,80,@Varidus*100,2,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Varidus the Flenser - Linked with Previous Event - Run Script'),
(@Varidus*100, 9, 0 ,0,0, 0, 100, 0, 2000, 2000, 0,0,45,1,1,0,0,0,0,9,@Aberration,0,200,0, 0, 0, 0, 'Varidus the Flenser - Timed Script - Set Data'),
(@Necrolord, 0, 0 ,1,11, 0, 100, 0, 0, 0, 0,0,2,1982,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'En''kilah Necrolord - On Spawn - Set Faction'),
(@Necrolord, 0, 1 ,2,61, 0, 100, 0, 0, 0, 0,0,18,768,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'En''kilah Necrolord - Linked with Previous Event - Set Unit Flags'),
(@Necrolord, 0, 2 ,0,61, 0, 100, 0, 0, 0, 0,0,53,0,@Necrolord,0,0,0,1,1,0,0,0,0, 0, 0, 0, 'En''kilah Necrolord - Linked with Previous Event - Start WP'),
(@Necrolord, 0, 3 ,0,40, 0, 100, 0, 2, 0, 0,0,101,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'En''kilah Necrolord - On reached WP1 - Set Home Position'),
(@Necrolord, 0, 4 ,5,38, 0, 100, 0, 1, 1, 0,0,36,@Saurfang,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'En''kilah Necrolord - On Data Set- Set Entry'),
(@Necrolord, 0, 5 ,6,61, 0, 100, 0, 0, 0, 0,0,66,0,0,0,0,0,0,8,0,0,0,0, 0, 0, 4.5, 'En''kilah Necrolord - Linked with Previous Event - Set Orientation'),
(@Necrolord, 0, 6 ,0,61, 0, 100, 0, 0, 0, 0,0,2,1981  ,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - On Data Set - Set Unit Flags'),
(@Necrolord, 0, 7 ,0,38, 0, 100, 0, 1, 2, 0,0,19,768,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - On Data Set - Set Unit Flags'),
(@Necrolord, 0, 9 ,0,38, 0, 100, 0, 1, 3, 0,0,41,3000,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - On Data Set - Despawn'),
(@Necrolord, 0, 10 ,0,9, 0, 100, 0, 0, 5, 33000,38000,11,41097,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - On Range - Cast Whirlwind'),
(@Necrolord, 0, 11 ,0,0, 0, 100, 0, 3000, 7000, 3000,8000,11,16044,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - IC - Cast Cleave'),
(@Necrolord, 0, 12 ,0,0, 0, 100, 0, 2000, 7000, 5000,7000,11,24573,0,0,0,0,0,2,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - IC - Cast Mortal Strike'),
(@Necrolord, 0, 13 ,0,9, 0, 100, 0, 8, 25, 5000,5000,11,15749,0,0,0,0,0,2,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - On Range - Cast Shield Charge'),
(@Necrolord, 0, 14 ,15,4, 0, 100, 0, 0, 0, 0,0,11,45950,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - On Agro - Cast Saurfangs Rage'),
(@Necrolord, 0, 15 ,16,61, 0, 100, 0, 0, 0, 0,0,11,45950,0,0,0,0,0,9,@Getry,0,200,0, 0, 0, 0, 'High Overlord Saurfang - Linked with Previous Event - Cast Saurfangs Rage'),
(@Necrolord, 0, 16 ,17,61, 0, 100, 0, 0, 0, 0,0,11,45950,0,0,0,0,0,21,100,0,0,0, 0, 0, 0, 'High Overlord Saurfang - Linked with Previous Event - Cast Saurfangs Rage'),
(@Necrolord, 0, 17 ,20,61, 0, 100, 0, 0, 0, 0,0,1,5,1000,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - Linked with Previous Event - Say'),
(@Necrolord, 0, 18 ,0,52, 0, 100, 0, 5, @Saurfang, 0,0,1,6,1000,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - On Text Over - Say'),
(@Necrolord, 0, 20 ,0,61, 0, 100, 0, 0, 0, 0,0,21,1,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'High Overlord Saurfang - Linked with Previous Event - Interupt Whirlwind'),
(@Prisoner, 0, 0 ,0,6, 0, 100, 0, 0, 0, 0,0,11,45802,2,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Infested Prisoner - On Death - Cast Summoned Aberration'),
(@Aberration, 0, 0 ,0,11, 0, 100, 0, 0, 0, 0,0,2,1982,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Warsong Aberration - On Spawn - Set Faction'),
(@Aberration, 0, 1 ,0,38, 0, 100, 0, 1, 1, 0,0,53,1,@Aberration,0,0,0,2,1,0,0,0,0, 0, 0, 0, 'Warsong Aberration - Linked with Previous Event - Start WP'),
(@Aberration, 0, 2 ,3,40, 0, 100, 0, 1, 0, 0,0,101,0,0,0,0,0,0,1,0,0,0,0, 0, 0, 0, 'Warsong Aberration - On Reached WP1 - Set Home Position'),
(@Aberration, 0, 3 ,0,61, 0, 100, 0, 0, 0, 0,0,49,0,0,0,0,0,0,19,@Necrolord,500,0,0, 0, 0, 0, 'Warsong Aberration - Linked with Previous Event - Attack'),
(@Aberration, 0, 4 ,0,9, 0, 100, 0, 0, 5, 990,3000,11,50306,2,0,0,0,0,7,0,0,0,0, 0, 0, 0, 'Warsong Aberration - IC - Cast Thrash Kick');

DELETE FROM `creature_text` WHERE `entry` IN(@Getry,@Varidus,@Saurfang);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Getry,0,0,'This is it, $N. The start of the end of the world. And you''re here to see it off...',12,1,100,1,0,0,'Shadowstalker Getry'),
(@Getry,1,0,'Let''s go...',12,1,100,25,0,0,'Shadowstalker Getry'),
(@Getry,2,0,'I... I can''t believe it... Saurfang... I... I am honored... honored to have fought along side you, sir.',12,1,100,0,0,0,'Shadowstalker Getry'),
(@Getry,3,0,'You should return to Warsong Hold now, friend. Hellscream will surely want to hear of what just happened here... of Saurfang...',12,0,100,0,0,0,'Shadowstalker Getry'),
(@Varidus,0,0,'Is this it? Is this all the mighty Horde could muster?',12,0,100,6,0,0,'Varidus the Flenser'),
(@Varidus,1,0,'Pathetic.',12,0,100,11,0,0,'Varidus the Flenser'),
(@Varidus,2,0,'I''ve never understood your type. The hero...',12,0,100,1,0,0,'Varidus the Flenser'),
(@Varidus,3,0,'Why won''t you just let go? Why do you fight the inevitable?',12,0,100,6,0,0,'Varidus the Flenser'),
(@Varidus,4,0,'The Lich King cannot be stopped. Accept it.',12,0,100,274,0,0,'Varidus the Flenser'),
(@Varidus,5,0,'This world is coming to an end. Let. It. Burn.',12,0,100,397,0,0,'Varidus the Flenser'),
(@Varidus,6,0,'Take $g him:her; away and prepare $g him:her; for reanimation.',12,0,100,1,0,0,'Varidus the Flenser'),
(@Varidus,7,0,'What''s this now?',12,0,100,1,0,0,'Varidus the Flenser'),
(@Varidus,8,0,'Then you are a fool.',12,0,100,25,0,0,'Varidus the Flenser'),
(@Varidus,9,0,'You? A lone orc? Against me and...',12,0,100,397,0,0,'Varidus the Flenser'),
(@Varidus,10,0,'RISE!',14,0,100,0,0,0,'Varidus the Flenser'),
(@Varidus,11,0,'I will reanimate them all as servants of the Lich King! Bring them here...',14,0,100,0,0,0,'Varidus the Flenser'),
(@Saurfang,0,0,'I''ll rip your shriveled heart out with my bare hands before any harm comes to $N, necromancer.',12,1,100,5,0,0,'En''kilah Necrolord'),
(@Saurfang,1,0,'You were never alone, $N.',12,1,100,1,0,0,'Varidus the Flenser'),
(@Saurfang,2,0,'We will fight you with every fiber of our being - until we are nothing more than dust and debris. We will fight until the end.',12,1,100,1,0,0,'En''kilah Necrolord'),
(@Saurfang,3,0,'A fool who is about to end you, necrolord. There will be nothing left of you for the Lich King to reanimate!',12,1,100,397,0,0,'En''kilah Necrolord'),
(@Saurfang,4,0,'You''ll make no mention of me. Either of you!',12,1,100,0,0,0,'En''kilah Necrolord'),
(@Saurfang,5,0,'%s''s eyes glow red for a brief moment.',16,0,100,0,0,0,'En''kilah Necrolord'),
(@Saurfang,6,0,'Is that the best you can do?',12,1,100,0,0,0,'En''kilah Necrolord'),
(@Saurfang,7,0,'This world that you seek to destroy is our home.',12,1,100,1,0,0,'En''kilah Necrolord');

DELETE FROM `waypoints` WHERE `entry`IN(@Getry,@Varidus,@Necrolord,@Getry*100,@Aberration);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(@Getry, 1, 3109.214111,6587.148438,91.369102, 'Shadowstalker Getry'),
(@Getry, 2, 3115.414062,6595.680176,91.362068, 'Shadowstalker Getry'),
(@Getry, 3, 3125.109863,6590.983887,91.378548, 'Shadowstalker Getry'),
(@Getry, 4, 3123.863281,6582.144043,88.786133, 'Shadowstalker Getry'),
(@Getry, 5, 3117.805664,6583.018555,86.219604, 'Shadowstalker Getry'),
(@Getry, 6, 3118.874512,6590.157715,83.402168, 'Shadowstalker Getry'),
(@Getry, 7, 3127.298340,6589.030273,79.707741, 'Shadowstalker Getry'),
(@Getry, 8, 3126.639404,6584.798828,77.656845, 'Shadowstalker Getry'), -- Stealth
(@Getry, 9, 3123.355957,6575.417969,78.330284, 'Shadowstalker Getry'), 
(@Getry, 10,  3121.773926,6538.688477,80.066902, 'Shadowstalker Getry'), -- Event
(@Varidus, 1, 3123.657227,6522.142090,80.486023, 'Varidus the Flenser'),
(@Varidus, 2, 3115.540283,6530.901367,80.566826, 'Varidus the Flenser'),
(@Necrolord, 1, 3116.012451,6532.729492,80.472694, 'En''kilah Necrolord'),
(@Necrolord, 2, 3118.596191,6535.331055,80.281487, 'En''kilah Necrolord'),
(@Getry*100, 1, 3123.355957,6575.417969,78.330284, 'Shadowstalker Getry'), 
(@Getry*100, 2, 3126.639404,6584.798828,77.656845, 'Shadowstalker Getry'), 
(@Getry*100, 3, 3127.298340,6589.030273,79.707741, 'Shadowstalker Getry'),
(@Getry*100, 4, 3118.874512,6590.157715,83.402168, 'Shadowstalker Getry'),
(@Getry*100, 5, 3117.805664,6583.018555,86.219604, 'Shadowstalker Getry'),
(@Getry*100, 6, 3123.863281,6582.144043,88.786133, 'Shadowstalker Getry'),
(@Getry*100, 7, 3125.109863,6590.983887,91.378548, 'Shadowstalker Getry'),
(@Getry*100, 8, 3115.414062,6595.680176,91.362068, 'Shadowstalker Getry'),
(@Getry*100, 9, 3109.214111,6587.148438,91.369102, 'Shadowstalker Getry'),
(@Getry*100, 10, 3113.419922,6576.810059,97.090698, 'Shadowstalker Getry'),
(@Aberration, 1, 3113.419922,6576.810059,97.090698, 'Warsong Aberration');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@Getry;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 37, @Getry, 0, 0, 36, 1, 0, 0, 0, 0, 0, '','Only execute SAI if Shadowstalker Getry alive');

DELETE FROM `creature_equip_template` WHERE `entry`=@Saurfang;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(@Saurfang, 1, 21580, 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=45805;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 45805, 0, 0, 31, 0, 3, @Prisoner, 0, 0, 0, '','Release Aberration Targets Infested Prisoner');

DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=45805;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(0, 45805, 64, '', '', 'Ignore LOS on Release Aberration');

DELETE FROM `creature_template_addon` WHERE `entry` IN(@Getry,@Prisoner,@Varidus);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@Varidus, 0, 0, 0x0, 0x1, 0, '45908'),
(@Prisoner, 0, 0, 0x0, 0x1, 0, ''),
(@Getry, 0, 0, 0x0, 0x101, 0, '');
