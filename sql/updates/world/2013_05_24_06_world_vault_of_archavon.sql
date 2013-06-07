/* Instance/DB: Fix: Vault of Archavon correct Emblems | by Torrad
 *
 * Fixes the loot of the Boss Toravon (38433)
 * Fail: The Boss dropped Emblem of Triumph.
 * Now: The Boss dropps Emblem of Frost.
 */
SET @NHC10      := 38433; -- 10
SET @NHC25      := 38462; -- 25
SET @FROST      := 49426; -- Emblem of Frost
SET @TRIUMPH    := 47241; -- Emblem of Triumph
 
UPDATE `creature_loot_template` SET `item` = @FROST WHERE `entry` IN (@NHC10, @NHC25) AND `item` = @TRIUMPH;
