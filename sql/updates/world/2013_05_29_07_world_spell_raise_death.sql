-- DB/Spell: Fix: "Raise Death" of the Death knight Class | by Torrad
DELETE FROM `spell_script_names` WHERE `spell_id` = -46584;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-46584, "spell_dk_raise_dead");

UPDATE `version` SET `db_version` = 'EDB 1.038' WHERE `core_version` = 'EchoCore';
