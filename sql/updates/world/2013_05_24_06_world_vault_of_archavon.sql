/*
 * Instance/DB: Fix: Vault of Archavon correct Emblems
 * Fixxes the loot of the Boss Toravon (http://wowdata.buffed.de/npc/Toravon-der-Eiswaechter-38433)
 * Error: The Boss dropped Embleme of Triomph
 * Bugfix: The Boss now dropps Embleme of Frost
 * 
 * Fixxed in: 10/25 Man Mode
*/
UPDATE creature_loot_template SET item=49426 WHERE (entry=38433 OR entry=38462) AND item=47241;
