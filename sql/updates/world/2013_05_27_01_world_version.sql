-- Insert version info for EDB | by FireEmerald
DELETE FROM `version` WHERE `core_version` = 'EchoCore';
INSERT INTO `version` (`core_version`, `core_revision`, `db_version`, `cache_id`) VALUES
('EchoCore', '2013-05-27-01', 'EDB 1.000', 0);
