-- DB/Flags: Fix: Cosmetic-drakkari-bat-ph | by malcrom
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=27490;
