-- Disable the invisible walls in Trial of the Crusaders | by Torrad
DELETE FROM `disables` WHERE sourceType = 7 AND entry = 649;
INSERT INTO `disables` (`sourceType`,`entry`,`flags`,`comment`) VALUES
(7,649,0, 'MMaps - Trial of the Crusader');
