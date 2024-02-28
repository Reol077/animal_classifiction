/*
 Navicat Premium Data Transfer

 Source Server         : REOL
 Source Server Type    : MySQL
 Source Server Version : 50738
 Source Host           : localhost:3306
 Source Schema         : animal_database

 Target Server Type    : MySQL
 Target Server Version : 50738
 File Encoding         : 65001

 Date: 28/02/2024 10:05:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for animals
-- ----------------------------
DROP TABLE IF EXISTS `animals`;
CREATE TABLE `animals`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `english_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinese_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bilibili` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wiki` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animals
-- ----------------------------
INSERT INTO `animals` VALUES (1, 'antelope', '羚羊', '//player.bilibili.com/player.html?aid=447361150&bvid=BV1Uj411B7Na&cid=1235222654&p=1', 'https://zh.wikipedia.org/wiki/羚羊');
INSERT INTO `animals` VALUES (2, 'badger', '獾', '//player.bilibili.com/player.html?aid=891725272&bvid=BV1XP4y157p3&cid=440726242&p=1', 'https://zh.wikipedia.org/wiki/獾');
INSERT INTO `animals` VALUES (3, 'bat', '蝙蝠', '//player.bilibili.com/player.html?aid=314813193&bvid=BV1EP411z7Rs&cid=1162773102&p=1', 'https://zh.wikipedia.org/wiki/蝙蝠');
INSERT INTO `animals` VALUES (4, 'bear', '熊', '//player.bilibili.com/player.html?aid=494997587&bvid=BV1oK411b74r&cid=1385180374&p=1', 'https://zh.wikipedia.org/wiki/熊');
INSERT INTO `animals` VALUES (5, 'bee', '蜜蜂', '//player.bilibili.com/player.html?aid=961913011&bvid=BV1cH4y1o7Sb&cid=1293967151&p=1', 'https://zh.wikipedia.org/wiki/蜜蜂');
INSERT INTO `animals` VALUES (6, 'beetle', '甲虫', '//player.bilibili.com/player.html?aid=268210116&bvid=BV1qY411B7YT&cid=1046550878&p=1', 'https://zh.wikipedia.org/wiki/甲虫');
INSERT INTO `animals` VALUES (7, 'bison', '野牛', '//player.bilibili.com/player.html?aid=207142020&bvid=BV1mh411q7WD&cid=384157908&p=1', 'https://zh.wikipedia.org/wiki/野牛属');
INSERT INTO `animals` VALUES (8, 'boar', '野猪', '//player.bilibili.com/player.html?aid=987010325&bvid=BV1qt4y1T7sz&cid=874484803&p=1', 'https://zh.wikipedia.org/wiki/野猪');
INSERT INTO `animals` VALUES (9, 'butterfly', '蝴蝶', '//player.bilibili.com/player.html?aid=236167169&bvid=BV1ov411c7US&cid=1340671041&p=1', 'https://zh.wikipedia.org/wiki/蝴蝶');
INSERT INTO `animals` VALUES (10, 'cat', '猫', '//player.bilibili.com/player.html?aid=300547698&bvid=BV1gf4y1Z7mB&cid=763169369&p=1', 'https://zh.wikipedia.org/wiki/猫');
INSERT INTO `animals` VALUES (11, 'caterpillar', '毛毛虫', '//player.bilibili.com/player.html?aid=99492876&bvid=BV1d7411C7Tu&cid=169818724&p=1', 'https://zh.wikipedia.org/wiki/毛毛虫');
INSERT INTO `animals` VALUES (12, 'chimpanzee', '黑猩猩', '//player.bilibili.com/player.html?aid=475974680&bvid=BV1gK41197xD&cid=914901457&p=1', 'https://zh.wikipedia.org/wiki/黑猩猩');
INSERT INTO `animals` VALUES (13, 'cockroach', '蟑螂', '//player.bilibili.com/player.html?aid=626690723&bvid=BV1Rt4y1D7qq&cid=223702210&p=1', 'https://zh.wikipedia.org/wiki/蟑螂');
INSERT INTO `animals` VALUES (14, 'cow', '奶牛', '//player.bilibili.com/player.html?aid=253151957&bvid=BV1uY411h7EK&cid=483554349&p=1', 'https://zh.wikipedia.org/wiki/奶牛');
INSERT INTO `animals` VALUES (15, 'coyote', '郊狼', '//player.bilibili.com/player.html?aid=608935419&bvid=BV1X84y1578w&cid=997048675&p=1', 'https://zh.wikipedia.org/wiki/郊狼');
INSERT INTO `animals` VALUES (16, 'crab', '螃蟹', '//player.bilibili.com/player.html?aid=410237586&bvid=BV19G411k7HL&cid=1377684755&p=1', 'https://zh.wikipedia.org/wiki/螃蟹');
INSERT INTO `animals` VALUES (17, 'crow', '乌鸦', '//player.bilibili.com/player.html?aid=973325653&bvid=BV1F44y1k7ub&cid=345742921&p=1', 'https://zh.wikipedia.org/wiki/乌鸦');
INSERT INTO `animals` VALUES (18, 'deer', '鹿', '//player.bilibili.com/player.html?aid=968207606&bvid=BV1yp4y1Q7ot&cid=190254057&p=1', 'https://zh.wikipedia.org/wiki/鹿科');
INSERT INTO `animals` VALUES (19, 'dog', '狗', '//player.bilibili.com/player.html?aid=700711361&bvid=BV19m4y1776G&cid=1189751023&p=1', 'https://zh.wikipedia.org/wiki/狗');
INSERT INTO `animals` VALUES (20, 'dolphin', '海豚', '//player.bilibili.com/player.html?aid=327970525&bvid=BV1aA41147gz&cid=183969534&p=1', 'https://zh.wikipedia.org/wiki/海豚');
INSERT INTO `animals` VALUES (21, 'donkey', '驴', '//player.bilibili.com/player.html?aid=976377683&bvid=BV1M44y1i7iw&cid=436805277&p=1', 'https://zh.wikipedia.org/wiki/驴');
INSERT INTO `animals` VALUES (22, 'dragonfly', '蜻蜓', '//player.bilibili.com/player.html?aid=421748386&bvid=BV1C341187QN&cid=441470288&p=1', 'https://zh.wikipedia.org/wiki/蜻蜓');
INSERT INTO `animals` VALUES (23, 'duck', '鸭子', '//player.bilibili.com/player.html?aid=457090172&bvid=BV1F541187uR&cid=234900131&p=1', 'https://zh.wikipedia.org/wiki/鸭子');
INSERT INTO `animals` VALUES (24, 'eagle', '鹰', '//player.bilibili.com/player.html?aid=756572051&bvid=BV1sr4y1P7KG&cid=295214617&p=1', 'https://zh.wikipedia.org/wiki/鹰');
INSERT INTO `animals` VALUES (25, 'elephant', '大象', '//player.bilibili.com/player.html?aid=791812279&bvid=BV1NC4y1R7cd&cid=1405133328&p=1', 'https://zh.wikipedia.org/wiki/大象');
INSERT INTO `animals` VALUES (26, 'flamingo', '火烈鸟', '//player.bilibili.com/player.html?aid=456612182&bvid=BV1y5411a7xa&cid=217684120&p=1', 'https://zh.wikipedia.org/wiki/火烈鸟');
INSERT INTO `animals` VALUES (27, 'fly', '苍蝇', '//player.bilibili.com/player.html?aid=891864013&bvid=BV1yP4y1G7Br&cid=445688088&p=1', 'https://zh.wikipedia.org/wiki/苍蝇');
INSERT INTO `animals` VALUES (28, 'fox', '狐狸', '//player.bilibili.com/player.html?aid=502419833&bvid=BV1JK411w7qh&cid=321022743&p=1', 'https://zh.wikipedia.org/wiki/狐狸');
INSERT INTO `animals` VALUES (29, 'goat', '山羊', '//player.bilibili.com/player.html?aid=741929669&bvid=BV1Qk4y1H7Zm&cid=1151468881&p=1', 'https://zh.wikipedia.org/wiki/山羊');
INSERT INTO `animals` VALUES (30, 'goldfish', '金鱼', '//player.bilibili.com/player.html?aid=259100255&bvid=BV1Fa411f7Tp&cid=791959092&p=1', 'https://zh.wikipedia.org/wiki/金鱼');
INSERT INTO `animals` VALUES (31, 'goose', '鹅', '//player.bilibili.com/player.html?aid=743436870&bvid=BV1sk4y1N7sH&cid=1196644249&p=1', 'https://zh.wikipedia.org/wiki/鹅');
INSERT INTO `animals` VALUES (32, 'gorilla', '大猩猩', '//player.bilibili.com/player.html?aid=905287537&bvid=BV1WP4y1k7WS&cid=967374180&p=1', 'https://zh.wikipedia.org/wiki/大猩猩');
INSERT INTO `animals` VALUES (33, 'grasshopper', '蚱蜢', '//player.bilibili.com/player.html?aid=721664705&bvid=BV1oS4y1d7B1&cid=440814752&p=1', 'https://zh.wikipedia.org/wiki/蚱蜢');
INSERT INTO `animals` VALUES (34, 'hamster', '仓鼠', '//player.bilibili.com/player.html?aid=807383190&bvid=BV1q34y197FV&cid=463453983&p=1', 'https://zh.wikipedia.org/wiki/仓鼠');
INSERT INTO `animals` VALUES (35, 'hare', '野兔', '//player.bilibili.com/player.html?aid=693019341&bvid=BV1K24y1a7WF&cid=971362027&p=1', 'https://zh.wikipedia.org/wiki/野兔');
INSERT INTO `animals` VALUES (36, 'hedgehog', '刺猬', '//player.bilibili.com/player.html?aid=245260446&bvid=BV1Jv411r7aX&cid=256805179&p=1', 'https://zh.wikipedia.org/wiki/刺猬');
INSERT INTO `animals` VALUES (37, 'hippopotamus', '河马', '//player.bilibili.com/player.html?aid=954742674&bvid=BV1AW4y1Q7qH&cid=1161730468&p=1', 'https://zh.wikipedia.org/wiki/河马');
INSERT INTO `animals` VALUES (38, 'hornbill', '犀鸟', '//player.bilibili.com/player.html?aid=516100357&bvid=BV1Ng411v7a9&cid=847424448&p=1', 'https://zh.wikipedia.org/wiki/犀鸟');
INSERT INTO `animals` VALUES (39, 'horse', '马', '//player.bilibili.com/player.html?aid=785288234&bvid=BV1A14y1m7Ee&cid=1178614197&p=1', 'https://zh.wikipedia.org/wiki/马');
INSERT INTO `animals` VALUES (40, 'hummingbird', '蜂鸟', '//player.bilibili.com/player.html?aid=18793946&bvid=BV1aW411e7fi&cid=30652193&p=1', 'https://zh.wikipedia.org/wiki/蜂鸟');
INSERT INTO `animals` VALUES (41, 'hyena', '鬣狗', '//player.bilibili.com/player.html?aid=238388354&bvid=BV1Me411U7yJ&cid=1396689345&p=1', 'https://zh.wikipedia.org/wiki/鬣狗');
INSERT INTO `animals` VALUES (42, 'jellyfish', '水母', '//player.bilibili.com/player.html?aid=412569062&bvid=BV1tV411f7z8&cid=169907755&p=1', 'https://zh.wikipedia.org/wiki/水母');
INSERT INTO `animals` VALUES (43, 'kangaroo', '袋鼠', '//player.bilibili.com/player.html?aid=775049856&bvid=BV1F14y1W73B&cid=890149282&p=1', 'https://zh.wikipedia.org/wiki/袋鼠');
INSERT INTO `animals` VALUES (44, 'koala', '考拉', '//player.bilibili.com/player.html?aid=771931491&bvid=BV1B14y1b7f4&cid=801569269&p=1', 'https://zh.wikipedia.org/wiki/考拉');
INSERT INTO `animals` VALUES (45, 'ladybugs', '瓢虫', '//player.bilibili.com/player.html?aid=728689289&bvid=BV15S4y1E7NM&cid=781376006&p=1', 'https://zh.wikipedia.org/wiki/瓢虫');
INSERT INTO `animals` VALUES (46, 'leopard', '豹', '//player.bilibili.com/player.html?aid=397471907&bvid=BV1xo4y187X5&cid=1095469777&p=1', 'https://zh.wikipedia.org/wiki/豹');
INSERT INTO `animals` VALUES (47, 'lion', '狮子', '//player.bilibili.com/player.html?aid=340094383&bvid=BV1T94y1f7iw&cid=559091034&p=1', 'https://zh.wikipedia.org/wiki/狮子');
INSERT INTO `animals` VALUES (48, 'lizard', '蜥蜴', '//player.bilibili.com/player.html?aid=14441486&bvid=BV13x411s7fL&cid=23560168&p=1', 'https://zh.wikipedia.org/wiki/蜥蜴');
INSERT INTO `animals` VALUES (49, 'lobster', '龙虾', '//player.bilibili.com/player.html?aid=64955365&bvid=BV1E4411R79K&cid=112746415&p=1', 'https://zh.wikipedia.org/wiki/龙虾');
INSERT INTO `animals` VALUES (50, 'mosquito', '蚊子', '//player.bilibili.com/player.html?aid=932360413&bvid=BV1nM4y1L7Pp&cid=387367065&p=1', 'https://zh.wikipedia.org/wiki/蚊子');
INSERT INTO `animals` VALUES (51, 'moth', '蛾子', '//player.bilibili.com/player.html?aid=896250555&bvid=BV1WA4y1Q7yK&cid=711963188&p=1', 'https://zh.wikipedia.org/wiki/蛾子');
INSERT INTO `animals` VALUES (52, 'mouse', '老鼠', '//player.bilibili.com/player.html?aid=547382480&bvid=BV1wq4y1M7Gy&cid=392605511&p=1', 'https://zh.wikipedia.org/wiki/老鼠');
INSERT INTO `animals` VALUES (53, 'octopus', '章鱼', '//player.bilibili.com/player.html?aid=261385550&bvid=BV1ne41157Jo&cid=858726187&p=1', 'https://zh.wikipedia.org/wiki/章鱼');
INSERT INTO `animals` VALUES (54, 'okapi', '㺢㹢狓', '//player.bilibili.com/player.html?aid=566958181&bvid=BV16v4y1x7h5&cid=1009827493&p=1', 'https://zh.wikipedia.org/wiki/㺢㹢狓');
INSERT INTO `animals` VALUES (55, 'orangutan', '红毛猩猩', '//player.bilibili.com/player.html?aid=874469750&bvid=BV1HN4y1Z7ER&cid=1293196896&p=1', 'https://zh.wikipedia.org/wiki/红毛猩猩');
INSERT INTO `animals` VALUES (56, 'otter', '水獭', '//player.bilibili.com/player.html?aid=528720113&bvid=BV12u411t7RG&cid=1132147748&p=1', 'https://zh.wikipedia.org/wiki/水獭');
INSERT INTO `animals` VALUES (57, 'owl', '猫头鹰', '//player.bilibili.com/player.html?aid=336677856&bvid=BV1ER4y1t7A8&cid=442174117&p=1', 'https://zh.wikipedia.org/wiki/猫头鹰');
INSERT INTO `animals` VALUES (58, 'ox', '牛', '//player.bilibili.com/player.html?aid=233235346&bvid=BV1i8411B7v7&cid=1405692533&p=1', 'https://zh.wikipedia.org/wiki/牛');
INSERT INTO `animals` VALUES (59, 'oyster', '牡蛎', '//player.bilibili.com/player.html?aid=900560991&bvid=BV1iP4y1d7oE&cid=831904810&p=1', 'https://zh.wikipedia.org/wiki/牡蛎');
INSERT INTO `animals` VALUES (60, 'panda', '熊猫', '//player.bilibili.com/player.html?aid=287717382&bvid=BV1jf4y1q76o&cid=254082309&p=1', 'https://zh.wikipedia.org/wiki/熊猫');
INSERT INTO `animals` VALUES (61, 'parrot', '鹦鹉', '//player.bilibili.com/player.html?aid=338691153&bvid=BV1ER4y1j7Mw&cid=498489409&p=1', 'https://zh.wikipedia.org/wiki/鹦鹉');
INSERT INTO `animals` VALUES (62, 'pelecaniformes', '鹈鹕', '//player.bilibili.com/player.html?aid=554123383&bvid=BV1xv4y1N7Mj&cid=720166637&p=1', 'https://zh.wikipedia.org/wiki/鹈鹕');
INSERT INTO `animals` VALUES (63, 'penguin', '企鹅', '//player.bilibili.com/player.html?aid=869870762&bvid=BV1eV4y117GN&cid=1166063732&p=1', 'https://zh.wikipedia.org/wiki/企鹅');
INSERT INTO `animals` VALUES (64, 'pig', '猪', '//player.bilibili.com/player.html?aid=529798569&bvid=BV1qu411h7NF&cid=1163679873&p=1', 'https://zh.wikipedia.org/wiki/猪属');
INSERT INTO `animals` VALUES (65, 'pigeon', '鸽子', '//player.bilibili.com/player.html?aid=646541685&bvid=BV1be4y1E7JS&cid=861915525&p=1', 'https://zh.wikipedia.org/wiki/鸽子');
INSERT INTO `animals` VALUES (66, 'porcupine', '豪猪', '//player.bilibili.com/player.html?aid=698308722&bvid=BV1cm4y1y7bR&cid=1119017905&p=1', 'https://zh.wikipedia.org/wiki/豪猪');
INSERT INTO `animals` VALUES (67, 'possum', '负鼠', '//player.bilibili.com/player.html?aid=299509484&bvid=BV1aF41157X8&cid=733553833&p=1', 'https://zh.wikipedia.org/wiki/负鼠');
INSERT INTO `animals` VALUES (68, 'raccoon', '浣熊', '//player.bilibili.com/player.html?aid=824948908&bvid=BV1Sg4y1u7dJ&cid=1093757877&p=1', 'https://zh.wikipedia.org/wiki/浣熊');
INSERT INTO `animals` VALUES (69, 'rat', '大鼠', '//player.bilibili.com/player.html?aid=996822835&bvid=BV1es4y1i7Mb&cid=1150365642&p=1', 'https://zh.wikipedia.org/wiki/大鼠');
INSERT INTO `animals` VALUES (70, 'reindeer', '驯鹿', '//player.bilibili.com/player.html?aid=348225894&bvid=BV1rR4y1y7jH&cid=908571396&p=1', 'https://zh.wikipedia.org/wiki/驯鹿');
INSERT INTO `animals` VALUES (71, 'rhinoceros', '犀牛', '//player.bilibili.com/player.html?aid=952538416&bvid=BV1os4y1P7Tx&cid=1097966564&p=1', 'https://zh.wikipedia.org/wiki/犀牛');
INSERT INTO `animals` VALUES (72, 'sandpiper', '滨鹬', '//player.bilibili.com/player.html?aid=905555354&bvid=BV1AP4y1r792&cid=971643474&p=1', 'https://zh.wikipedia.org/wiki/滨鹬');
INSERT INTO `animals` VALUES (73, 'seahorse', '海马', '//player.bilibili.com/player.html?aid=952029110&bvid=BV1Ls4y1E7mR&cid=1084099505&p=1', 'https://zh.wikipedia.org/wiki/海马');
INSERT INTO `animals` VALUES (74, 'seal', '海豹', '//player.bilibili.com/player.html?aid=799418196&bvid=BV1py4y1a7mi&cid=303973127&p=1', 'https://zh.wikipedia.org/wiki/海豹');
INSERT INTO `animals` VALUES (75, 'shark', '鲨鱼', '//player.bilibili.com/player.html?aid=388013451&bvid=BV1Kd4y167Tg&cid=833537354&p=1', 'https://zh.wikipedia.org/wiki/鲨鱼');
INSERT INTO `animals` VALUES (76, 'sheep', '绵羊', '//player.bilibili.com/player.html?aid=463471795&bvid=BV11L41137CG&cid=421845583&p=1', 'https://zh.wikipedia.org/wiki/绵羊');
INSERT INTO `animals` VALUES (77, 'snake', '蛇', '//player.bilibili.com/player.html?aid=458233766&bvid=BV1s5411H7SH&cid=266852319&p=1', 'https://zh.wikipedia.org/wiki/蛇');
INSERT INTO `animals` VALUES (78, 'sparrow', '麻雀', '//player.bilibili.com/player.html?aid=614810659&bvid=BV1wh4y137js&cid=1164265737&p=1', 'https://zh.wikipedia.org/wiki/麻雀');
INSERT INTO `animals` VALUES (79, 'squid', '鱿鱼', '//player.bilibili.com/player.html?aid=521405713&bvid=BV1iM411275C&cid=929718168&p=1', 'https://zh.wikipedia.org/wiki/鱿鱼');
INSERT INTO `animals` VALUES (80, 'squirrel', '松鼠', '//player.bilibili.com/player.html?aid=638356790&bvid=BV1fY4y1a7nk&cid=577961448&p=1', 'https://zh.wikipedia.org/wiki/松鼠');
INSERT INTO `animals` VALUES (81, 'starfish', '海星', '//player.bilibili.com/player.html?aid=704822674&bvid=BV1iQ4y1s7PR&cid=1303045252&p=1', 'https://zh.wikipedia.org/wiki/海星');
INSERT INTO `animals` VALUES (82, 'swan', '天鹅', '//player.bilibili.com/player.html?aid=81575738&bvid=BV1YJ411b7Mc&cid=139588696&p=1', 'https://zh.wikipedia.org/wiki/天鹅');
INSERT INTO `animals` VALUES (83, 'tiger', '老虎', '//player.bilibili.com/player.html?aid=851229082&bvid=BV1UL4y1W7UW&cid=499648935&p=1', 'https://zh.wikipedia.org/wiki/老虎');
INSERT INTO `animals` VALUES (84, 'turkey', '火鸡', '//player.bilibili.com/player.html?aid=691610462&bvid=BV1P24y1S7ED&cid=931449705&p=1', 'https://zh.wikipedia.org/wiki/火鸡');
INSERT INTO `animals` VALUES (85, 'turtle', '乌龟', '//player.bilibili.com/player.html?aid=657138875&bvid=BV1bh4y1R7GS&cid=1161288191&p=1', 'https://zh.wikipedia.org/wiki/乌龟');
INSERT INTO `animals` VALUES (86, 'whale', '鲸鱼', '//player.bilibili.com/player.html?aid=552936308&bvid=BV1Fi4y1D7Kt&cid=570068488&p=1', 'https://zh.wikipedia.org/wiki/鲸鱼');
INSERT INTO `animals` VALUES (87, 'wolf', '狼', '//player.bilibili.com/player.html?aid=51494392&bvid=BV1n4411i72u&cid=90131659&p=1', 'https://zh.wikipedia.org/wiki/狼');
INSERT INTO `animals` VALUES (88, 'wombat', '袋熊', '//player.bilibili.com/player.html?aid=544585495&bvid=BV13i4y1K7TC&cid=309205605&p=1', 'https://zh.wikipedia.org/wiki/袋熊');
INSERT INTO `animals` VALUES (89, 'woodpecker', '啄木鸟', '//player.bilibili.com/player.html?aid=615633742&bvid=BV1oh4y177HU&cid=1190708331&p=1', 'https://zh.wikipedia.org/wiki/啄木鸟');
INSERT INTO `animals` VALUES (90, 'zebra', '斑马', '//player.bilibili.com/player.html?aid=347656815&bvid=BV1CR4y1Z7bP&cid=894367771&p=1', 'https://zh.wikipedia.org/wiki/斑马');

SET FOREIGN_KEY_CHECKS = 1;
