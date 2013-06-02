-- Fixes some elite NPCs in Outland for the achievement:  | by Torrad
-- "Bloody Rare" (1312)

-- Spawntime for Marticar
UPDATE creature SET spawntimesecs = 28800 WHERE id = 18680;

-- Spawntime for Coilfang Emissary
UPDATE creature SET spawntimesecs = 86400 WHERE id = 18681;

-- Spawntime for Morcrush
UPDATE creature SET spawntimesecs = 11640 WHERE id = 18690;

UPDATE `version` SET `db_version` = 'EDB 1.045' WHERE `core_version` = 'EchoCore';
