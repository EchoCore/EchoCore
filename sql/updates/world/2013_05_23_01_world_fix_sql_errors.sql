-- Fixing Creature Template Table - Unrecognized equiment_ids
UPDATE creature SET equipment_id = 0 WHERE id IN(2477, 2478, 24484);

-- Fixing Creature_Addon Delete all Creature_Addons without GUID
DELETE FROM creature_addon WHERE guid IN(136274, 136490, 136555, 137619);

-- Fixxing Quests, deleting unused mails
UPDATE quest_template SET RewardMailTemplateId = 0 WHERE id IN(12420, 12421);

-- Fixing creature_loot_template
UPDATE creature_template SET lootid = 0 WHERE lootid = 100002;

-- Fixing Reference Loot Template
DELETE FROM reference_loot_template WHERE entry IN(35091, 35092);

-- Fixing Creature Formations
DELETE FROM creature_formations WHERE memberGUID IN(137491, 137490);
