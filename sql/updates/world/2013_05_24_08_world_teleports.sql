-- Delete old ports / Add new one.
DELETE FROM `game_tele` WHERE `name` LIKE 'icc%' OR `name` LIKE 'hdz%' OR `name` LIKE 'tdm%' OR `name` LIKE 'rubi%' OR `name` LIKE 'Agmondkuppe' OR `name` LIKE 'tw' OR `name` LIKE 'Schergrat' OR `name` LIKE 'QuelDanas' OR `name` LIKE 'tw' OR `name` LIKE 'twintern';
INSERT INTO `game_tele` (`position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`)
 -- ICC Intern
 VALUES (5792.87, 2072.71, 636.064, 3.57051, 571, 'icc'),
 ( -387.61, 2211.73, 41.9933, 3.19285, 631, 'icclord'),
 ( -628.372, 2211.38, 51.8551, 3.11823, 631, 'icclady'),
 ( -492.685, 2211.17, 541.114, 0.00806498, 631, 'iccsaurfang'),
 ( 4244.06, 2769.23, 350.963, 0.0196295, 631, 'iccbastion'),
 ( 4268.4, 3127.38, 360.386, 1.58709, 631, 'iccfauldarm'),
 ( 4445.11, 3128.04, 360.386, 1.53996, 631, 'iccmodermiene'),
 ( 4356.64, 3232.69, 389.399, 1.56116, 631, 'iccprof'),
 ( 4660.2, 2769.18, 361.556, 0.0555513, 631, 'iccrat'),
 ( 4595.78, 2769.31, 400.137, 0.0178521, 631, 'iccbq'),
 ( 4263.85, 2484.39, 364.869, 3.17516, 631, 'iccvali'),
 ( 4374.71, 2484.56, 203.382, 6.28033, 631, 'iccsindra'),
 ( 521.531, -2124.76, 840.857, 3.0901, 631, 'icclk'),
 -- HDZ
 ( -8498.62, -4526.97, -211.701, 1.55035, 1, 'hdz'),
 ( -8382.06, -4060.49, -208.567, 0.13111, 1, 'hdz1'),
 ( -8755.75, -4199.89, -209.5, 1.9768, 1, 'hdz2'),
 -- TDM
 ( 12887.2, -7331.4, 65.4872, 4.2756, 530, 'tdm'),
 -- Quel'Danas
 ( 12770.7, -6941.97, 12.7642, 2.4142, 530, 'QuelDanas'),
 -- Rubi
 ( 3600.83, 196.627, -113.761, 5.34799, 571, 'rubi'),
 ( 3176.37, 532.357, 72.8892, 3.14036, 724, 'rubihalion'),
 -- Schergrat
 ( 2770.71, 6101.31, -10.3389, 5.04937, 530, 'Schergrat'),
 -- 1k
 ( 5386.22, 2841.31, 418.676, 3.13052, 571, 'tw'),
 ( 5413.47, 2840.93, 418.675, 3.16356, 571, 'twintern');
