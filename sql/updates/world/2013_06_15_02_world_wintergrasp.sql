-- DB/Battleground: Fix: Set correct phases / Positions for factorys in Wintergrasp | by Torrad

-- Fabriken
UPDATE `gameobject` SET `phaseMask` = 48 WHERE `id` IN (192031, 192033, 192032, 192030);
-- Flaggen
UPDATE `gameobject` SET `phaseMask` = 48 WHERE `id` IN (194962, 190487, 190475, 194959);
-- Geisterheiler
UPDATE `creature` SET `phaseMask` = 1 WHERE `guid` IN (88310, 88311, 88312, 88315, 88313, 88317, 88316, 88321, 88318, 88319);

-- Werkstatt des versunkenen Rings
UPDATE `creature` SET `position_x` = 4942.67, `position_y` = 2389.76, `position_z` = 324.04, `orientation` = 0.153 WHERE `guid` IN (88323,88329);

-- Werkstatt Ostfunk
UPDATE `creature` SET `position_x` = 4357.76, `position_y`=2354.50, `position_z`=379.89, `orientation` = 4.963 WHERE `guid` IN (88330,88324);

-- Werkstatt Westfunk
UPDATE `creature` SET `position_x` = 4354.12, `position_y`=3309.03, `position_z`=375.94, `orientation` = 4.48 WHERE `guid` IN (88331,88325);

-- Werkstatt zerbrochenen Tempel
UPDATE `creature` SET `position_x` = 4961.28, `position_y`=3383.06, `position_z`=380.80, `orientation` = 2.753 WHERE `guid` IN (88322,88328);
