-- Code Style for the 2 new custom NPCs.
-- DB/NPC: Add: Teleporter and Top 5 Killers | by Torrad & Garyfisher

SET @CUSTOMENTRY    := 500012; -- Custom Entry. Set by EchoCore.

UPDATE `creature_template` SET `name` = "Top 5 PvP Spieler", `subname` = "PvP Meister" WHERE `entry` = @CUSTOMENTRY;
UPDATE `creature_template` SET `name` = "Teleportmeister", `subname` = "Teleporter" WHERE `entry` = @CUSTOMENTRY+1;
