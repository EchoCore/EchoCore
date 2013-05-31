-- DB/Misc: Fix: Prevent chat/spell flood, Prevent summon spells from overwriting.

-- Prevent chat/spell flood
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2358 AND `source_type`=0 AND `id`=9 AND `link`=10;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2358 AND `source_type`=0 AND `id`=10 AND `link`=0;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2358 AND `source_type`=0 AND `id`=11 AND `link`=12;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2358 AND `source_type`=0 AND `id`=12 AND `link`=0;

-- Prevent chat flood / ..run away in fear! / Manually checked one by one! (64 NPC's)
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2245 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Syndicate Saboteur - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2245 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Syndicate Saboteur - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2554 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Witherbark Axe Thrower - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2554 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Witherbark Axe Thrower - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 429 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Shadowhide Darkweaver - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 429 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Shadowhide Darkweaver - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 453 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Riverpaw Mystic - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 453 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Riverpaw Mystic - Flee For Assist
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
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4063 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Feeboz - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 4063 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Feeboz - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6008 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Shadowsworn Warlock - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 6008 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Shadowsworn Warlock - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8550 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Shadowmage - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8550 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Shadowmage - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8564 AND `source_type` = 0 AND `id` = 18 AND `link` = 19; -- Ranger - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 8564 AND `source_type` = 0 AND `id` = 19 AND `link` = 0; -- Ranger - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9449 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Scarlet Cleric - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9449 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Scarlet Cleric - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9450 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Scarlet Curate - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9450 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Scarlet Curate - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9451 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Scarlet Archmage - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 9451 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Scarlet Archmage - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 10824 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Ranger Lord Hawkspear - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 10824 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Ranger Lord Hawkspear - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 12322 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Quel\'Lithien Protector - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 12322 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Quel\'Lithien Protector - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15281 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Lanthan Perilon - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15281 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Lanthan Perilon - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15401 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Ley-Keeper Velania - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15401 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Ley-Keeper Velania - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15417 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Velan Brightoak - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15417 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Velan Brightoak - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15938 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Eversong Ranger - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15938 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Eversong Ranger - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15945 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Apprentice Meledor - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15945 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Apprentice Meledor - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15970 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Instructor Antheol - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15970 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Instructor Antheol - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15971 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Silvermoon Apprentice - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 15971 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Silvermoon Apprentice - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16204 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Magister Idonis - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16204 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Magister Idonis - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16249 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Masophet the Black - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16249 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Masophet the Black - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16317 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Deatholme Necromancer - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16317 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Deatholme Necromancer - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16318 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Deatholme Darkmage - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16318 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Deatholme Darkmage - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16337 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Blackpaw Shaman - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16337 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Blackpaw Shaman - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16344 AND `source_type` = 0 AND `id` = 14 AND `link` = 15; -- Shadowpine Headhunter - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16344 AND `source_type` = 0 AND `id` = 15 AND `link` = 0; -- Shadowpine Headhunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16403 AND `source_type` = 0 AND `id` = 15 AND `link` = 16; -- Withered Grimscale - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 16403 AND `source_type` = 0 AND `id` = 16 AND `link` = 0; -- Withered Grimscale - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2276 AND `source_type` = 0 AND `id` = 16 AND `link` = 17; -- Magistrate Henry Maleb - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2276 AND `source_type` = 0 AND `id` = 17 AND `link` = 0; -- Magistrate Henry Maleb - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2369 AND `source_type` = 0 AND `id` = 12 AND `link` = 13; -- Daggerspine Shorehunter - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2369 AND `source_type` = 0 AND `id` = 13 AND `link` = 0; -- Daggerspine Shorehunter - Flee For Assist
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2371 AND `source_type` = 0 AND `id` = 13 AND `link` = 14; -- Daggerspine Siren - Allow Combat Movement
UPDATE `smart_scripts` SET `event_flags` = 1 WHERE `entryorguid` = 2371 AND `source_type` = 0 AND `id` = 14 AND `link` = 0; -- Daggerspine Siren - Flee For Assist
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

-- Prevent summon spells from overwriting each other's cast time, earlier script had wrong timers..
UPDATE `smart_scripts` SET `link`=15 WHERE  `entryorguid`=1124 AND `source_type`=0 AND `id`=14 AND `link`=01;

UPDATE `smart_scripts` SET `event_type`=61, `event_flags`=1 WHERE  `entryorguid`=1124 AND `source_type`=0 AND `id`=15 AND `link`=0;

UPDATE `smart_scripts` SET `event_param1`=9100, `event_param2`=14900 WHERE  `entryorguid`=2358 AND `source_type`=0 AND `id`=9 AND `link`=10;
UPDATE `smart_scripts` SET `event_param1`=4700, `event_param2`=11100 WHERE  `entryorguid`=2358 AND `source_type`=0 AND `id`=11 AND `link`=12;

UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=429 AND `source_type`=0 AND `id`=12 AND `link`=13;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=453 AND `source_type`=0 AND `id`=12 AND `link`=13;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=1009 AND `source_type`=0 AND `id`=13 AND `link`=14;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=1009 AND `source_type`=0 AND `id`=14 AND `link`=15;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=1009 AND `source_type`=0 AND `id`=15 AND `link`=16;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=1013 AND `source_type`=0 AND `id`=15 AND `link`=16;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=1065 AND `source_type`=0 AND `id`=13 AND `link`=14;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=1123 AND `source_type`=0 AND `id`=15 AND `link`=16;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=1397 AND `source_type`=0 AND `id`=13 AND `link`=14;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2245 AND `source_type`=0 AND `id`=15 AND `link`=16;
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2554 AND `source_type`=0 AND `id`=15 AND `link`=16;

UPDATE `version` SET `db_version` = 'EDB 1.040' WHERE `core_version` = 'EchoCore';
