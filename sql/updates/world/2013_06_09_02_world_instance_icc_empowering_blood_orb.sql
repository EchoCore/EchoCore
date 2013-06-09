-- DB/Instance: Fix: Empowering Blood Orb in ICC - Makes it clickable | by Torrad
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 201741;
