-- DB/Quest: Update: Spell_area for "See Invisibility" aura of Soo-gan
SET @SPELL   := 52217; -- Kartak and Sparktouched: See Invisibility

DELETE FROM `spell_area` WHERE `spell` = @SPELL AND `area` = 4306;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(@SPELL, 4306, 0, 0, 0, 0, 2, 1, 64, 11);
