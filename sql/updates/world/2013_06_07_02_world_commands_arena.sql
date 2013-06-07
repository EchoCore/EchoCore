-- Insert new commands in the command table. Its only for GM Level 2/3 or higher. | by Bezo and Torrad
DELETE FROM `command` WHERE `name` LIKE 'arena%';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('arena create', 3, 'Syntax: .arena create $name \"arena name\" #type\n\nErstellt ein neues Arena Team ingame. #type  = [2/3/5]'),
('arena disband', 3, 'Syntax: .arena disband #TeamID\n\nLöscht ein bereits existierendes Arenateam.'),
('arena rename', 3, 'Syntax: .arena rename \"oldname\" \"newname\"\n\nAendert den Namen des bestehenden Arenateams.'),
('arena captain', 3, 'Syntax: .arena captain #TeamID $name\n\nAendert den Arenateamleiter. $name muss im Team sein.'),
('arena info', 2, 'Syntax: .arena info #TeamID\n\nGibt Informationen uebers Arenateam'),
('arena lookup', 2, 'Syntax: .arena lookup $name\n\nListet alle Arenateams mit den entsprechenden Namen auf. $name');

DELETE FROM `trinity_string` WHERE `entry` BETWEEN 857 AND 870;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(857, 'Arena team [%u] nicht gefunden'),
(858, 'Es existiert bereits ein Arenateam mit dem Namen \"%s\"'),
(859, '%s ist bereits ein Arenateam dieser groesse.'),
(860, 'Arena Team ist infight'),
(861, 'Arenateam mit Namen: \"%s\" oder aehnlich nicht gefunden'),
(862, '[%s] ist kein Mitglied des Teams \"%s\"'),
(863, '[%s] ist bereits Captain des Teams \"%s\"'),
(864, 'Neues Arenateam erstellt [Name: \"%s\"][Id: %u][Typ: %u][Captain GUID: %u]'),
(865, 'Arena Team Name: \"%s\"[Id: %u] geloescht'),
(866, 'Arena team [Id: %u] geaendert von \"%s\" zu \"%s\"'),
(867, 'Arena team Name: \"%s\"[Id: %u] Caption geaendert von from[%s] zu [%s]'),
(868, 'Arena team: \"%s\"[%u] - Rating: %u - Typ: %ux%u'),
(869, 'Name:\"%s\"[guid:%u] - PR: %u - %s'),
(870, '|\"%s\"[ID:%u](%ux%u)|');

UPDATE `version` SET `db_version` = 'EDB 1.046' WHERE `core_version` = 'EchoCore';
