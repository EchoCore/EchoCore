-- DB/Quest: Update: German texts for Troll Patrol: The Alchemist's Apprentice (12541) | by FireEmerald
SET @ALCHI := 28205;

SET NAMES 'utf8';
-- Add german texts for Alchemist Finklestein
-- Events 1,2,3
UPDATE `creature_text` SET `text` = 'Schnell, hole mir etwas...' WHERE `entry` = @ALCHI AND `groupid` = 0 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Ich denke es bräuchte etwas...' WHERE `entry` = @ALCHI AND `groupid` = 0 AND `id` = 1;
UPDATE `creature_text` SET `text` = 'Suche mir etwas...' WHERE `entry` = @ALCHI AND `groupid` = 0 AND `id` = 2;
UPDATE `creature_text` SET `text` = 'Es benötigt einfach etwas...' WHERE `entry` = @ALCHI AND `groupid` = 0 AND `id` = 3;
UPDATE `creature_text` SET `text` = 'Wir brauchen etwas...' WHERE `entry` = @ALCHI AND `groupid` = 0 AND `id` = 4;
UPDATE `creature_text` SET `text` = 'Es benötigt einfach etwas...' WHERE `entry` = @ALCHI AND `groupid` = 0 AND `id` = 5;
-- Event 4
UPDATE `creature_text` SET `text` = 'Ich denke es ist Zeit für...' WHERE `entry` = @ALCHI AND `groupid` = 1 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Als nächsten brauchen wir...' WHERE `entry` = @ALCHI AND `groupid` = 1 AND `id` = 1;
UPDATE `creature_text` SET `text` = 'Schmeckt als bräuchten wir mehr....' WHERE `entry` = @ALCHI AND `groupid` = 1 AND `id` = 2;
UPDATE `creature_text` SET `text` = 'In Ordnung, jetzt suche etwas...' WHERE `entry` = @ALCHI AND `groupid` = 1 AND `id` = 3;
-- Event 5
UPDATE `creature_text` SET `text` = 'Wir kommen gut voran, aber es braucht noch etwas...' WHERE `entry` = @ALCHI AND `groupid` = 2 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Bevor es verdickt, brauchen wir...' WHERE `entry` = @ALCHI AND `groupid` = 2 AND `id` = 1;
-- Event 6
UPDATE `creature_text` SET `text` = 'Bevor es überkocht, brauche ich...' WHERE `entry` = @ALCHI AND `groupid` = 3 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Es verdickt! Schnell, hole mir etwas...' WHERE `entry` = @ALCHI AND `groupid` = 3 AND `id` = 1;
-- Fail
UPDATE `creature_text` SET `text` = 'Du bist zu spät. Ich muss wieder von neuem beginnen....' WHERE `entry` = @ALCHI AND `groupid` = 4 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Nein! Das Serum ist ruiniert!' WHERE `entry` = @ALCHI AND `groupid` = 4 AND `id` = 1;
-- Item request
UPDATE `creature_text` SET `text` = 'Knotwurz!' WHERE `entry` = @ALCHI AND `groupid` = 5 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Adler-Solei!' WHERE `entry` = @ALCHI AND `groupid` = 6 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Getüpfelter Guano!' WHERE `entry` = @ALCHI AND `groupid` = 7 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Getrockneter Fledermausflügel!' WHERE `entry` = @ALCHI AND `groupid` = 8 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Komisches Karussellstöffsche!' WHERE `entry` = @ALCHI AND `groupid` = 9 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Pulverisierte Gargoylezähne!' WHERE `entry` = @ALCHI AND `groupid` = 10 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Schlammige Moormaden!' WHERE `entry` = @ALCHI AND `groupid` = 11 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Stacheliges Spinnenei!' WHERE `entry` = @ALCHI AND `groupid` = 12 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Haariger Heringskopf!' WHERE `entry` = @ALCHI AND `groupid` = 13 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Stinkiger Piratenschweiß!' WHERE `entry` = @ALCHI AND `groupid` = 14 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Trinkwasser von der Eiskrone!' WHERE `entry` = @ALCHI AND `groupid` = 15 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Wespenflügel!' WHERE `entry` = @ALCHI AND `groupid` = 16 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Prismatisches Mojo!' WHERE `entry` = @ALCHI AND `groupid` = 17 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Raptorenklaue!' WHERE `entry` = @ALCHI AND `groupid` = 18 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Bernsteinsamen!' WHERE `entry` = @ALCHI AND `groupid` = 19 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Geschrumpfte Drachenklaue!' WHERE `entry` = @ALCHI AND `groupid` = 20 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Gekühlter Schlangenschleim!' WHERE `entry` = @ALCHI AND `groupid` = 21 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Kristallisierte Wildschweinschnauze!' WHERE `entry` = @ALCHI AND `groupid` = 22 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Zerstoßene Basiliskenkristalle!' WHERE `entry` = @ALCHI AND `groupid` = 23 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Trollbann!' WHERE `entry` = @ALCHI AND `groupid` = 24 AND `id` = 0;
UPDATE `creature_text` SET `text` = 'Gefrorenes Spinnensekret!' WHERE `entry` = @ALCHI AND `groupid` = 25 AND `id` = 0;
