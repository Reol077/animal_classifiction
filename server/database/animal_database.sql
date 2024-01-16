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

 Date: 16/01/2024 22:10:18
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animals
-- ----------------------------
INSERT INTO `animals` VALUES (1, 'antelope', '羚羊');
INSERT INTO `animals` VALUES (2, 'badger', '獾');
INSERT INTO `animals` VALUES (3, 'bat', '蝙蝠');
INSERT INTO `animals` VALUES (4, 'bear', '熊');
INSERT INTO `animals` VALUES (5, 'bee', '蜜蜂');
INSERT INTO `animals` VALUES (6, 'beetle', '甲虫');
INSERT INTO `animals` VALUES (7, 'bison', '野牛');
INSERT INTO `animals` VALUES (8, 'boar', '野猪');
INSERT INTO `animals` VALUES (9, 'butterfly', '蝴蝶');
INSERT INTO `animals` VALUES (10, 'cat', '猫');
INSERT INTO `animals` VALUES (11, 'caterpillar', '毛毛虫');
INSERT INTO `animals` VALUES (12, 'chimpanzee', '黑猩猩');
INSERT INTO `animals` VALUES (13, 'cockroach', '蟑螂');
INSERT INTO `animals` VALUES (14, 'cow', '奶牛');
INSERT INTO `animals` VALUES (15, 'coyote', '郊狼');
INSERT INTO `animals` VALUES (16, 'crab', '螃蟹');
INSERT INTO `animals` VALUES (17, 'crow', '乌鸦');
INSERT INTO `animals` VALUES (18, 'deer', '鹿');
INSERT INTO `animals` VALUES (19, 'dog', '狗');
INSERT INTO `animals` VALUES (20, 'dolphin', '海豚');
INSERT INTO `animals` VALUES (21, 'donkey', '驴');
INSERT INTO `animals` VALUES (22, 'dragonfly', '蜻蜓');
INSERT INTO `animals` VALUES (23, 'duck', '鸭子');
INSERT INTO `animals` VALUES (24, 'eagle', '鹰');
INSERT INTO `animals` VALUES (25, 'elephant', '大象');
INSERT INTO `animals` VALUES (26, 'flamingo', '火烈鸟');
INSERT INTO `animals` VALUES (27, 'fly', '苍蝇');
INSERT INTO `animals` VALUES (28, 'fox', '狐狸');
INSERT INTO `animals` VALUES (29, 'goat', '山羊');
INSERT INTO `animals` VALUES (30, 'goldfish', '金鱼');
INSERT INTO `animals` VALUES (31, 'goose', '鹅');
INSERT INTO `animals` VALUES (32, 'gorilla', '大猩猩');
INSERT INTO `animals` VALUES (33, 'grasshopper', '蚱蜢');
INSERT INTO `animals` VALUES (34, 'hamster', '仓鼠');
INSERT INTO `animals` VALUES (35, 'hare', '野兔');
INSERT INTO `animals` VALUES (36, 'hedgehog', '刺猬');
INSERT INTO `animals` VALUES (37, 'hippopotamus', '河马');
INSERT INTO `animals` VALUES (38, 'hornbill', '犀鸟');
INSERT INTO `animals` VALUES (39, 'horse', '马');
INSERT INTO `animals` VALUES (40, 'hummingbird', '蜂鸟');
INSERT INTO `animals` VALUES (41, 'hyena', '鬣狗');
INSERT INTO `animals` VALUES (42, 'jellyfish', '水母');
INSERT INTO `animals` VALUES (43, 'kangaroo', '袋鼠');
INSERT INTO `animals` VALUES (44, 'koala', '考拉');
INSERT INTO `animals` VALUES (45, 'ladybugs', '瓢虫');
INSERT INTO `animals` VALUES (46, 'leopard', '豹');
INSERT INTO `animals` VALUES (47, 'lion', '狮子');
INSERT INTO `animals` VALUES (48, 'lizard', '蜥蜴');
INSERT INTO `animals` VALUES (49, 'lobster', '龙虾');
INSERT INTO `animals` VALUES (50, 'mosquito', '蚊子');
INSERT INTO `animals` VALUES (51, 'moth', '蛾子');
INSERT INTO `animals` VALUES (52, 'mouse', '老鼠');
INSERT INTO `animals` VALUES (53, 'octopus', '章鱼');
INSERT INTO `animals` VALUES (54, 'okapi', '河马');
INSERT INTO `animals` VALUES (55, 'orangutan', '猩猩');
INSERT INTO `animals` VALUES (56, 'otter', '水獭');
INSERT INTO `animals` VALUES (57, 'owl', '猫头鹰');
INSERT INTO `animals` VALUES (58, 'ox', '牛');
INSERT INTO `animals` VALUES (59, 'oyster', '牡蛎');
INSERT INTO `animals` VALUES (60, 'panda', '熊猫');
INSERT INTO `animals` VALUES (61, 'parrot', '鹦鹉');
INSERT INTO `animals` VALUES (62, 'pelecaniformes', '鹈鹕');
INSERT INTO `animals` VALUES (63, 'penguin', '企鹅');
INSERT INTO `animals` VALUES (64, 'pig', '猪');
INSERT INTO `animals` VALUES (65, 'pigeon', '鸽子');
INSERT INTO `animals` VALUES (66, 'porcupine', '豪猪');
INSERT INTO `animals` VALUES (67, 'possum', '负鼠');
INSERT INTO `animals` VALUES (68, 'raccoon', '浣熊');
INSERT INTO `animals` VALUES (69, 'rat', '老鼠');
INSERT INTO `animals` VALUES (70, 'reindeer', '驯鹿');
INSERT INTO `animals` VALUES (71, 'rhinoceros', '犀牛');
INSERT INTO `animals` VALUES (72, 'sandpiper', '滨鹬');
INSERT INTO `animals` VALUES (73, 'seahorse', '海马');
INSERT INTO `animals` VALUES (74, 'seal', '海豹');
INSERT INTO `animals` VALUES (75, 'shark', '鲨鱼');
INSERT INTO `animals` VALUES (76, 'sheep', '绵羊');
INSERT INTO `animals` VALUES (77, 'snake', '蛇');
INSERT INTO `animals` VALUES (78, 'sparrow', '麻雀');
INSERT INTO `animals` VALUES (79, 'squid', '鱿鱼');
INSERT INTO `animals` VALUES (80, 'squirrel', '松鼠');
INSERT INTO `animals` VALUES (81, 'starfish', '海星');
INSERT INTO `animals` VALUES (82, 'swan', '天鹅');
INSERT INTO `animals` VALUES (83, 'tiger', '老虎');
INSERT INTO `animals` VALUES (84, 'turkey', '火鸡');
INSERT INTO `animals` VALUES (85, 'turtle', '乌龟');
INSERT INTO `animals` VALUES (86, 'whale', '鲸鱼');
INSERT INTO `animals` VALUES (87, 'wolf', '狼');
INSERT INTO `animals` VALUES (88, 'wombat', '袋熊');
INSERT INTO `animals` VALUES (89, 'woodpecker', '啄木鸟');
INSERT INTO `animals` VALUES (90, 'zebra', '斑马');

SET FOREIGN_KEY_CHECKS = 1;
