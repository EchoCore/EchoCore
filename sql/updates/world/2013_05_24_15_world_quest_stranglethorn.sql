-- DB/Quest: Update: Arena Grandmaster
-- DB/Quest: Update: Gro�meister der Arena

-- Update SpecialFlags, NOT repeatable.
UPDATE `quest_template` SET SpecialFlags = 0 WHERE `Id` = 7838;
