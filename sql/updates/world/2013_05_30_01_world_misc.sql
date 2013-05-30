-- DB/Misc: Fix: Prevent chat/spell flood, Prevent summon spells from overwriting.
SET @SUMMONER      :=  2358; -- Dalaran Summoner
SET @SCOUT         :=  4064; -- Blackrock Scout
SET @SHADOWCASTER  :=   436; -- Blackrock Shadowcaster
SET @HUNTER        :=  4462; -- Blackrock Hunter
SET @MAGE          := 24683; -- Sunblade Mage Guard

-- Prevent chat/spell flood
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @SUMMONER AND `source_type` = 0 AND `id` = 9 AND `link` = 10;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @SUMMONER AND `source_type` = 0 AND `id` = 10 AND `link` = 0;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @SUMMONER AND `source_type` = 0 AND `id` = 11 AND `link` = 12;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @SUMMONER AND `source_type` = 0 AND `id` = 12 AND `link` = 0;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @SCOUT AND `source_type` = 0 AND `id` = 17 AND `link` = 0;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @SCOUT AND `source_type` = 0 AND `id` = 16 AND `link` = 17;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @SHADOWCASTER AND `source_type` = 0 AND `id` = 18 AND `link` = 0;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @SHADOWCASTER AND `source_type` = 0 AND `id` = 17 AND `link` = 18;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @HUNTER AND `source_type` = 0 AND `id` = 17 AND `link` = 18;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @HUNTER AND `source_type` = 0 AND `id` = 18 AND `link` = 0;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @MAGE AND `source_type` = 0 AND `id` = 19 AND `link` = 20;
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = @MAGE AND `source_type` = 0 AND `id` = 20 AND `link` = 0;

-- Prevent summon spells from overwriting each other's cast time, earlier script had wrong timers..
UPDATE `smart_scripts` SET `event_param1` = 9100, `event_param2` = 14900 WHERE `entryorguid` = @SUMMONER AND `source_type` = 0 AND `id` = 9 AND `link` = 10;
UPDATE `smart_scripts` SET `event_param1` = 4700, `event_param2` = 11100 WHERE `entryorguid` = @SUMMONER AND `source_type` = 0 AND `id` = 11 AND `link` = 12;

-- Custom prevent chat flood
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2245 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Syndicate Saboteur - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2245 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Syndicate Saboteur - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2272 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Dalaran Theurgist - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2272 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Dalaran Theurgist - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2306 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Baron Vardus - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2306 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Baron Vardus - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2415 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Warden Belamoore - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2415 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Warden Belamoore - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2543 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Archmage Ansirem Runeweaver - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2543 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Archmage Ansirem Runeweaver - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2553 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Witherbark Shadowcaster - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2553 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Witherbark Shadowcaster - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2554 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Witherbark Axe Thrower - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2554 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Witherbark Axe Thrower - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2567 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Boulderfist Magus - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2567 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Boulderfist Magus - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2573 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Drywhisker Surveyor - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2573 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Drywhisker Surveyor - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2577 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Dark Iron Shadowcaster - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2577 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Dark Iron Shadowcaster - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 430 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Redridge Mystic - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 429 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Shadowhide Darkweaver - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 429 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Shadowhide Darkweaver - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 424 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Redridge Poacher - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 453 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Riverpaw Mystic - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 453 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Riverpaw Mystic - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 500 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Riverpaw Scout - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 500 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Riverpaw Scout - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1009 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Mosshide Mistweaver - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1013 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Mosshide Mystic - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1065 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Riverpaw Shaman - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1065 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Riverpaw Shaman - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1123 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Frostmane Headhunter - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1123 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Frostmane Headhunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1124 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Frostmane Shadowcaster - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1124 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Frostmane Shadowcaster - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1397 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Frostmane Seer - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1397 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Frostmane Seer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6221 AND `source_type` = 0 AND `id` = 18 AND `link` = 19; -- Addled Leper - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6221 AND `source_type` = 0 AND `id` = 19 AND `link` = 20; -- Addled Leper - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 7843 AND `source_type` = 0 AND `id` = 18 AND `link` = 19; -- Gnomeregan Evacuee - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 7843 AND `source_type` = 0 AND `id` = 19 AND `link` = 0; -- Gnomeregan Evacuee - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8503 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Gibblewilt - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8503 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Gibblewilt - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 12996 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Mounted Ironforge Mountaineer - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 12996 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Mounted Ironforge Mountaineer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2587 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Syndicate Pathstalker - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2587 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Syndicate Pathstalker - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2590 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Syndicate Conjuror - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2590 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Syndicate Conjuror - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2591 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Syndicate Magus - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2591 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Syndicate Magus - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2596 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Daggerspine Sorceress - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2596 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Daggerspine Sorceress - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2598 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Darbel Montrose - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2598 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Darbel Montrose - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2609 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Geomancer Flintdagger - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2609 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Geomancer Flintdagger - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4063 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Feeboz - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4063 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Feeboz - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2740 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Shadowforge Darkweaver - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2740 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Shadowforge Darkweaver - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2892 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Stonevault Seer - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2892 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Stonevault Seer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4844 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Shadowforge Surveyor - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4844 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Shadowforge Surveyor - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4856 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Stonevault Cave Hunter - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4856 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Stonevault Cave Hunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 5997 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Nethergarde Engineer - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 5997 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Nethergarde Engineer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6002 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Nethergarde Riftwatcher - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6002 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Nethergarde Riftwatcher - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6004 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Shadowsworn Cultist - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6004 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Shadowsworn Cultist - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6008 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Shadowsworn Warlock - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6008 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Shadowsworn Warlock - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 910 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Defias Enchanter - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 910 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Defias Enchanter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8550 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Shadowmage - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8550 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Shadowmage - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8551 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Dark Summoner - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8551 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Dark Summoner - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8561 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Mossflayer Shadowhunter - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8561 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Mossflayer Shadowhunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8564 AND `source_type` = 0 AND `id` = 18 AND `link` = 19; -- Ranger - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8564 AND `source_type` = 0 AND `id` = 19 AND `link` = 0; -- Ranger - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9449 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Scarlet Cleric - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9449 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Scarlet Cleric - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9450 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Scarlet Curate - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9450 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Scarlet Curate - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9451 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Scarlet Archmage - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9451 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Scarlet Archmage - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 10817 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Duggan Wildhammer - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 10817 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Duggan Wildhammer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 10824 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Ranger Lord Hawkspear - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 10824 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Ranger Lord Hawkspear - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 12322 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Quel\'Lithien Protector - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 12322 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Quel\'Lithien Protector - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 31096 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Scourge Necromancer - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 31096 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Scourge Necromancer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15281 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Lanthan Perilon - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15281 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Lanthan Perilon - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15401 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Ley-Keeper Velania - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15401 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Ley-Keeper Velania - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15405 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Ley-Keeper Caidanis - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15405 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Ley-Keeper Caidanis - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15417 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Velan Brightoak - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15417 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Velan Brightoak - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15418 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Magister Jaronis - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15418 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Magister Jaronis - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15938 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Eversong Ranger - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15938 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Eversong Ranger - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15945 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Apprentice Meledor - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15945 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Apprentice Meledor - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15970 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Instructor Antheol - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15970 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Instructor Antheol - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15971 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Silvermoon Apprentice - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15971 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Silvermoon Apprentice - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16294 AND `source_type` = 0 AND `id` = 11 AND `link` = 12; -- Aldaron the Reckless - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16294 AND `source_type` = 0 AND `id` = 12 AND `link` = 0; -- Aldaron the Reckless - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16362 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Runewarden Deryan - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16362 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Runewarden Deryan - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16397 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Ardeyn Riverwind - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16397 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Ardeyn Riverwind - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16204 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Magister Idonis - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16204 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Magister Idonis - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16249 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Masophet the Black - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16249 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Masophet the Black - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16317 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Deatholme Necromancer - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16317 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Deatholme Necromancer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16318 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Deatholme Darkmage - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16318 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Deatholme Darkmage - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16332 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Darnassian Huntress - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16332 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Darnassian Huntress - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16337 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Blackpaw Shaman - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16337 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Blackpaw Shaman - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16344 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Shadowpine Headhunter - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16344 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Shadowpine Headhunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16403 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Withered Grimscale - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16403 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Withered Grimscale - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2244 AND `source_type` = 0 AND `id` = 12 AND `link` = 0; -- Syndicate Shadow Mage - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2276 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Magistrate Henry Maleb - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2276 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Magistrate Henry Maleb - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2335 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Magistrate Burnside - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2335 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Magistrate Burnside - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2369 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Daggerspine Shorehunter - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2369 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Daggerspine Shorehunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2371 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Daggerspine Siren - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2371 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Daggerspine Siren - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2373 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Mudsnout Shaman - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2373 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Mudsnout Shaman - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2375 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Torn Fin Coastrunner - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2375 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Torn Fin Coastrunner - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2376 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Torn Fin Oracle - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2376 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Torn Fin Oracle - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2387 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Hillsbrad Councilman - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2387 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Hillsbrad Councilman - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2428 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Jailor Marlgen - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2428 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Jailor Marlgen - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 7075 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Writhing Mage - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 7075 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Writhing Mage - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 25073 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Darkspine Siren - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 25073 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Darkspine Siren - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1162 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Stonesplinter Scout - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1162 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Stonesplinter Scout - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1166 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Stonesplinter Seer - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1166 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Stonesplinter Seer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1173 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Tunnel Rat Scout - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1173 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Tunnel Rat Scout - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 436 AND `source_type` = 0 AND `id` = 17 AND `link` = 18; -- Blackrock Shadowcaster - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 436 AND `source_type` = 0 AND `id` = 18 AND `link` = 0; -- Blackrock Shadowcaster - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 548 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Murloc Minor Tidecaller - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 548 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Murloc Minor Tidecaller - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4064 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Blackrock Scout - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4064 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Blackrock Scout - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4462 AND `source_type` = 0 AND `id` = 17 AND `link` = 18; -- Blackrock Hunter - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4462 AND `source_type` = 0 AND `id` = 18 AND `link` = 0; -- Blackrock Hunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4463 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Blackrock Summoner - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4463 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Blackrock Summoner - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 5839 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Dark Iron Geologist - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 5839 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Dark Iron Geologist - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8566 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Dark Iron Lookout - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8566 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Dark Iron Lookout - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1867 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Dalaran Apprentice - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1867 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Dalaran Apprentice - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1889 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Dalaran Wizard - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1889 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Dalaran Wizard - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1914 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Dalaran Mage - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1914 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Dalaran Mage - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1915 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Dalaran Conjuror - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1915 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Dalaran Conjuror - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1920 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Dalaran Spellscribe - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 1920 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Dalaran Spellscribe - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2120 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Archmage Ataeric - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2120 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Archmage Ataeric - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 11319 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Ragefire Shaman - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 11319 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Ragefire Shaman - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 11324 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Searing Blade Warlock - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 11324 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Searing Blade Warlock - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 24683 AND `source_type` = 0 AND `id` = 19 AND `link` = 20; -- Sunblade Mage Guard - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 24683 AND `source_type` = 0 AND `id` = 20 AND `link` = 0; -- Sunblade Mage Guard - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 17694 AND `source_type` = 0 AND `id` = 17 AND `link` = 18; -- Shadowmoon Darkcaster - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 17694 AND `source_type` = 0 AND `id` = 18 AND `link` = 0; -- Shadowmoon Darkcaster - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 7246 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Sandfury Shadowhunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 5648 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Sandfury Shadowcaster - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 28368 AND `source_type` = 0 AND `id` = 18 AND `link` = 0; -- Ymirjar Necromancer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 26670 AND `source_type` = 0 AND `id` = 27 AND `link` = 0; -- Ymirjar Flesh Hunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 578 AND `source_type` = 0 AND `id` = 12 AND `link` = 0; -- Murloc Scout - Flee For Assist

UPDATE `version` SET `db_version` = 'EDB 1.040' WHERE `core_version` = 'EchoCore';
