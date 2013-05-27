/*
 * Instance/DB: Fix: Vault of Archavon correct Emblems | by Torrad
 *
 * Fixes the loot of the Boss Toravon (http://wowdata.buffed.de/npc/Toravon-der-Eiswaechter-38433)
 * Error: The Boss dropped Emblem of Triumph.
 * Now: The Boss dropps Emblem of Frost.
 * 
 * Fixed in: 10/25
*/
UPDATE creature_loot_template SET item=49426 WHERE (entry=38433 OR entry=38462) AND item=47241;
