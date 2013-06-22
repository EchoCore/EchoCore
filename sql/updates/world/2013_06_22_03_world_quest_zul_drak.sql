-- DB/Quest: Update: Quest_template for Alchemist Finklestein (28205)
-- Troll Patrol: The Alchemist's Apprentice (Daily)
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `id` = 12541;
-- Lab Work
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `id` = 12557;
