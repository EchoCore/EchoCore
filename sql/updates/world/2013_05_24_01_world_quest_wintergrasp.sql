/* 
 * DB/Quest: Fix: Quests in Wintergrasp | by Torrad
 * Marks all quests in Wintergrasp as raid quests, so that they will work also during Wintergrasp.
 *
 * German:
 * Fixt alle Quests in Tausendwinter, sodass sie auch in Schlachtzügen machtbar sind. Dadurch könne möglicherweise einige Quests gefixxt werden, da sie bisher nicht
 * als abgeschlossen markiert werden, wenn man sich in der Tausendwinter Schlachtgruppe befindet. z.B. das Zerstören des Turms im Süden ist nur möglich, wenn man
 * in der Schlachtgruppe ist. Somit war diese Quest unmachbar bisher, da man in einer Schlachtgruppe die Quest nicht abgeschlossen bekommt.
 */
UPDATE `quest_template` SET `type` = 62 WHERE `id` IN (13181,13183,13223,13222,13153,13198,13202,13192,13156,13195,13195,13539,13179,13177,13201,13194,13199,13154,13196,13538,13186,13185,13181,13180,13178,13200,13197,13191,236);
