-- Fixing `creature_template` table / Unrecognized `equiment_ids` | by Torrad
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` IN (2477, 2478, 24484);

-- Fixing `creature_addon` delete all `creature_addons` without GUID.
DELETE FROM `creature_addon` WHERE `guid` IN (136274, 136490, 136555, 137619);

-- Fixxing quests, deleting unused mails.
UPDATE `quest_template` SET `RewardMailTemplateId` = 0 WHERE `id` IN (12420, 12421);

-- Fixing `creature_loot_template`.
UPDATE `creature_template` SET `lootid` = 0 WHERE `lootid` = 100002;

-- Fixing `reference_loot_template`.
DELETE FROM `reference_loot_template` WHERE `entry` IN (35091, 35092);

-- Fixing `creature_formations`.
DELETE FROM `creature_formations` WHERE `memberGUID` IN (137491, 137490);
