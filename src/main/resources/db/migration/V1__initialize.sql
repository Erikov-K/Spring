#
# TABLE STRUCTURE FOR: products
# http://filldb.info/
#

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `products` (`id`, `title`, `cost`) VALUES (1, 'Violet', '164.60');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (2, 'Olive', '814.40');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (3, 'Gold', '969.93');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (4, 'DarkGray', '356.48');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (5, 'Aqua', '273.07');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (6, 'Aquamarine', '747.03');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (7, 'Indigo ', '329.54');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (8, 'LightGreen', '675.36');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (9, 'DarkViolet', '537.04');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (10, 'Teal', '431.95');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (11, 'DarkSeaGreen', '732.31');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (12, 'OrangeRed', '591.68');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (13, 'DarkCyan', '299.79');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (14, 'Linen', '23.61');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (15, 'Wheat', '318.42');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (16, 'DimGrey', '128.23');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (17, 'PaleGoldenRod', '652.66');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (18, 'Cornsilk', '283.55');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (19, 'MediumOrchid', '931.37');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (20, 'WhiteSmoke', '729.94');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (21, 'MediumBlue', '844.49');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (22, 'DarkSlateGray', '608.41');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (23, 'DeepPink', '793.28');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (24, 'MediumPurple', '256.49');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (25, 'BurlyWood', '800.58');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (26, 'DarkSlateBlue', '376.38');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (27, 'MediumTurquoise', '626.22');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (28, 'DarkKhaki', '503.35');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (29, 'CornflowerBlue', '186.16');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (30, 'Cyan', '856.76');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (31, 'DarkSalmon', '668.36');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (32, 'SkyBlue', '413.31');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (33, 'Green', '517.08');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (34, 'DarkBlue', '577.37');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (35, 'Yellow', '895.69');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (36, 'Black', '818.82');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (37, 'MintCream', '287.77');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (38, 'LightSkyBlue', '136.20');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (39, 'LightSalmon', '368.99');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (40, 'Darkorange', '435.47');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (41, 'SeaGreen', '770.33');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (42, 'Fuchsia', '108.54');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (43, 'RosyBrown', '130.68');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (44, 'LawnGreen', '314.42');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (45, 'Ivory', '539.83');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (46, 'ForestGreen', '246.46');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (47, 'Silver', '499.50');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (48, 'Moccasin', '323.37');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (49, 'MidnightBlue', '619.81');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (50, 'SeaShell', '374.36');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (51, 'Gainsboro', '747.73');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (52, 'Bisque', '152.83');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (53, 'DarkTurquoise', '140.36');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (54, 'LightSlateGray', '736.92');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (55, 'DeepSkyBlue', '830.22');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (56, 'Tan', '93.93');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (57, 'Tomato', '506.71');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (58, 'Magenta', '884.65');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (59, 'Lime', '814.82');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (60, 'LightYellow', '427.58');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (61, 'LightCoral', '838.65');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (62, 'Maroon', '947.00');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (63, 'DarkMagenta', '52.72');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (64, 'Thistle', '115.41');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (65, 'SaddleBrown', '955.82');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (66, 'BlanchedAlmond', '408.33');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (67, 'LightPink', '991.17');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (68, 'Chocolate', '71.33');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (69, 'AntiqueWhite', '295.34');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (70, 'FloralWhite', '954.28');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (71, 'AliceBlue', '989.52');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (72, 'GoldenRod', '754.55');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (73, 'FireBrick', '763.39');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (74, 'Lavender', '399.92');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (75, 'DodgerBlue', '980.30');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (76, 'OliveDrab', '5.42');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (77, 'BlueViolet', '575.73');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (78, 'Crimson', '676.07');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (79, 'PaleGreen', '775.51');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (80, 'MediumSlateBlue', '547.26');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (81, 'Plum', '692.00');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (82, 'MediumAquaMarine', '418.65');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (83, 'Peru', '762.07');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (84, 'DarkOliveGreen', '169.27');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (85, 'Purple', '260.30');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (86, 'LemonChiffon', '511.80');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (87, 'Gray', '55.36');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (88, 'DarkGoldenRod', '696.98');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (89, 'DarkGreen', '686.87');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (90, 'LavenderBlush', '343.28');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (91, 'DarkRed', '305.29');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (92, 'GhostWhite', '659.23');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (93, 'Turquoise', '968.65');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (94, 'YellowGreen', '530.71');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (95, 'PowderBlue', '89.52');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (96, 'SlateBlue', '89.98');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (97, 'LimeGreen', '646.93');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (98, 'PaleTurquoise', '107.89');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (99, 'LightGoldenRodYellow', '56.85');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (100, 'DimGray', '260.63');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (101, 'Bisque', '326.05');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (102, 'DarkKhaki', '82.84');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (103, 'Coral', '85.84');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (104, 'OliveDrab', '78.92');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (105, 'Maroon', '353.36');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (106, 'WhiteSmoke', '350.78');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (107, 'Brown', '119.14');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (108, 'RoyalBlue', '360.08');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (109, 'Red', '385.11');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (110, 'Azure', '955.65');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (111, 'SteelBlue', '834.69');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (112, 'Blue', '368.12');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (113, 'Purple', '216.31');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (114, 'Black', '883.51');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (115, 'LightSteelBlue', '705.54');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (116, 'Tan', '291.94');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (117, 'NavajoWhite', '939.77');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (118, 'Gray', '440.60');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (119, 'MintCream', '96.57');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (120, 'BlanchedAlmond', '811.32');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (121, 'ForestGreen', '986.72');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (122, 'DarkSlateGray', '26.60');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (123, 'PaleVioletRed', '97.59');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (124, 'DarkRed', '784.23');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (125, 'OrangeRed', '678.21');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (126, 'Cornsilk', '688.88');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (127, 'LavenderBlush', '688.81');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (128, 'Khaki', '425.68');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (129, 'Gold', '698.01');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (130, 'PaleGreen', '760.66');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (131, 'Green', '178.90');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (132, 'PaleTurquoise', '93.17');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (133, 'Tomato', '361.49');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (134, 'MediumAquaMarine', '899.34');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (135, 'DarkCyan', '708.87');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (136, 'PowderBlue', '605.69');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (137, 'SlateGray', '509.46');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (138, 'LemonChiffon', '411.47');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (139, 'SaddleBrown', '230.04');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (140, 'Lime', '804.35');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (141, 'LightYellow', '860.07');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (142, 'DarkGreen', '57.77');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (143, 'DarkMagenta', '77.31');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (144, 'Lavender', '380.00');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (145, 'SandyBrown', '95.90');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (146, 'MistyRose', '370.30');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (147, 'Beige', '92.67');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (148, 'RosyBrown', '583.98');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (149, 'LawnGreen', '831.61');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (150, 'Moccasin', '328.75');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (151, 'CadetBlue', '709.21');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (152, 'MediumSeaGreen', '856.64');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (153, 'DarkGoldenRod', '76.82');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (154, 'DarkSeaGreen', '854.30');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (155, 'LightGray', '896.96');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (156, 'Violet', '979.62');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (157, 'MidnightBlue', '944.71');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (158, 'LightSalmon', '676.28');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (159, 'SeaShell', '851.84');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (160, 'GreenYellow', '764.22');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (161, 'Orange', '141.95');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (162, 'LightGoldenRodYellow', '386.53');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (163, 'DarkSlateBlue', '487.08');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (164, 'MediumSlateBlue', '445.65');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (165, 'OldLace', '979.22');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (166, 'Chocolate', '517.78');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (167, 'Aqua', '822.61');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (168, 'LightCyan', '448.05');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (169, 'Wheat', '776.15');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (170, 'Cyan', '28.24');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (171, 'Ivory', '391.74');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (172, 'DeepSkyBlue', '75.12');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (173, 'PaleGoldenRod', '652.54');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (174, 'Turquoise', '264.37');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (175, 'DimGray', '980.65');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (176, 'Navy', '932.32');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (177, 'Magenta', '292.56');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (178, 'LightSeaGreen', '201.05');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (179, 'DodgerBlue', '608.72');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (180, 'HotPink', '580.79');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (181, 'SeaGreen', '516.05');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (182, 'DimGrey', '246.13');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (183, 'FloralWhite', '199.80');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (184, 'SpringGreen', '389.25');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (185, 'Crimson', '599.52');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (186, 'Olive', '626.77');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (187, 'Pink', '162.45');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (188, 'LightSkyBlue', '628.20');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (189, 'DarkBlue', '210.65');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (190, 'DarkViolet', '675.95');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (191, 'White', '610.39');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (192, 'MediumPurple', '246.88');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (193, 'MediumSpringGreen', '663.99');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (194, 'Fuchsia', '761.00');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (195, 'Linen', '374.60');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (196, 'DarkSalmon', '235.96');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (197, 'YellowGreen', '296.81');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (198, 'MediumTurquoise', '549.57');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (199, 'GoldenRod', '582.73');
INSERT INTO `products` (`id`, `title`, `cost`) VALUES (200, 'Plum', '412.56');


