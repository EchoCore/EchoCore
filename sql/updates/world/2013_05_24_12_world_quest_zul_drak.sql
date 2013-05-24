-- DB/Quest: Fix: In Search Of Answers
-- DB/Quest: Fix: Auf der Suche nach Antworten

-- Activate GO for players.
UPDATE `gameobject_template` SET flags = 32 WHERE entry = 191766;
