-- DB/Instance: Update: Delete all non attackable npc's in Drak'Tharon Keep | by Torrad
DELETE FROM `creature` WHERE `guid` IN (127446, 127448, 127590, 127589, 127580, 127582, 127591, 127579, 127578);
