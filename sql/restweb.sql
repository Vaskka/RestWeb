/*
Navicat MySQL Data Transfer

Source Server         : learn
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : restweb

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-23 07:14:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `business`
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `headImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES ('1', '兰州拉面', 'static\\assets\\images\\兰州拉面\\logo\\lanzhoulamian.jpg');
INSERT INTO `business` VALUES ('10', '老马家资格烤羊肉', 'static\\assets\\images\\老马家资格烤羊肉\\logo\\kaoyang.jpg');
INSERT INTO `business` VALUES ('11', '三顾冒菜', 'static\\assets\\images\\三顾冒菜\\logo.jpg');
INSERT INTO `business` VALUES ('12', '麦当劳', 'static\\assets\\images\\麦当劳\\logo.jpg');
INSERT INTO `business` VALUES ('13', '小龙坎火锅', 'static\\assets\\images\\小龙坎\\小龙坎.jpg');
INSERT INTO `business` VALUES ('14', '德克士', 'static\\assets\\images\\德克士\\logo.png');
INSERT INTO `business` VALUES ('15', '叫了只鸡', 'static\\assets\\images\\叫了只鸡\\logo.png');
INSERT INTO `business` VALUES ('16', '川味人家', 'static\\assets\\images\\川味人家\\logo.jpg');
INSERT INTO `business` VALUES ('17', '梁记烤鸭', 'static\\assets\\images\\梁记烤鸭\\梁记鲜北京烤鸭.jpg');
INSERT INTO `business` VALUES ('18', '三米粥铺', 'static\\assets\\images\\三米粥铺\\logo.jpg');
INSERT INTO `business` VALUES ('19', '重庆鸡公煲', 'static\\assets\\images\\重庆鸡公煲\\logo.jpg');
INSERT INTO `business` VALUES ('2', 'CoCo', 'static\\assets\\images\\CoCo\\logo\\coco.jpg');
INSERT INTO `business` VALUES ('20', 's-pizza', 'static\\assets\\images\\披萨\\s-pizza.jpg');
INSERT INTO `business` VALUES ('3', '倔强翘脚牛肉', 'static\\assets\\images\\倔强翘脚牛肉\\logo\\qiaojiaoniurou.jpg');
INSERT INTO `business` VALUES ('4', '山东水饺', 'static\\assets\\images\\山东水饺\\logo\\shuijiao.jpg');
INSERT INTO `business` VALUES ('5', '粤香烧鹅', 'static\\assets\\images\\粤香烧鹅\\logo\\shaoe.jpg');
INSERT INTO `business` VALUES ('6', '食野', 'static\\assets\\images\\食野\\logo\\shiye.jpg');
INSERT INTO `business` VALUES ('7', '八番屋日韩简餐', 'static\\assets\\images\\八番屋日韩简餐\\logo\\rihan.jpg');
INSERT INTO `business` VALUES ('8', '全味烤鱼', 'static\\assets\\images\\全味烤鱼\\logo\\kaoyu.jpg');
INSERT INTO `business` VALUES ('9', '煎商', 'static\\assets\\images\\煎商\\logo\\jianshang.jpg');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `businessId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_user_id_fk` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('29c7a5226e0817e1263ef57a01733253', '4a7b531c1e18fd0179fc0ae1e771ad47', '1');
INSERT INTO `cart` VALUES ('7519882797feb56312d5f47698e4b0d9', '4a7b531c1e18fd0179fc0ae1e771ad47', '20');
INSERT INTO `cart` VALUES ('98198fecf51a7b96072556f7b9dda5dd', '4a7b531c1e18fd0179fc0ae1e771ad47', '12');
INSERT INTO `cart` VALUES ('9e08a8af696b73b431a6f2abec9c7c5c', '4a7b531c1e18fd0179fc0ae1e771ad47', '13');
INSERT INTO `cart` VALUES ('d86d3b5b42900f4fd02c00da3349362c', '4a7b531c1e18fd0179fc0ae1e771ad47', '17');
INSERT INTO `cart` VALUES ('e955ac6cf41bb6e3e4da605b513efc3c', '4a7b531c1e18fd0179fc0ae1e771ad47', '14');

-- ----------------------------
-- Table structure for `cartitem`
-- ----------------------------
DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE `cartitem` (
  `id` varchar(255) NOT NULL,
  `cartid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `itemid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartitem
-- ----------------------------
INSERT INTO `cartitem` VALUES ('227e58a5d43ccdfd25483f8892287972', '7519882797feb56312d5f47698e4b0d9', '158');
INSERT INTO `cartitem` VALUES ('23d264997b2be4b66b0374069a532117', 'd86d3b5b42900f4fd02c00da3349362c', '132');
INSERT INTO `cartitem` VALUES ('2d34e3b38ea5c4b4f4e87de0d5cc1ab4', 'e955ac6cf41bb6e3e4da605b513efc3c', '105');
INSERT INTO `cartitem` VALUES ('35af4e22425b72055594ce3f707ca1b', 'd86d3b5b42900f4fd02c00da3349362c', '132');
INSERT INTO `cartitem` VALUES ('35f69375f9a816c6998b7089c55a0179', 'e955ac6cf41bb6e3e4da605b513efc3c', '105');
INSERT INTO `cartitem` VALUES ('360b4861667d47fd8f2646ada83a11e1', '98198fecf51a7b96072556f7b9dda5dd', '89');
INSERT INTO `cartitem` VALUES ('3ef0604f71830c8f339494681d4dc4bf', '29c7a5226e0817e1263ef57a01733253', '1');
INSERT INTO `cartitem` VALUES ('401df041ffd60a3332d2001c66dcce08', '7519882797feb56312d5f47698e4b0d9', '158');
INSERT INTO `cartitem` VALUES ('427dbbc270c59fb6e85bceaf8a01fd5d', 'e955ac6cf41bb6e3e4da605b513efc3c', '105');
INSERT INTO `cartitem` VALUES ('472644fc2c4cb2299fe626a5ff3aadae', '9e08a8af696b73b431a6f2abec9c7c5c', '100');
INSERT INTO `cartitem` VALUES ('55c6fb954b7fe0748faed9af21ad424a', '7519882797feb56312d5f47698e4b0d9', '158');
INSERT INTO `cartitem` VALUES ('61fa9832c7970da05d30fdb61a1f482c', '29c7a5226e0817e1263ef57a01733253', '3');
INSERT INTO `cartitem` VALUES ('70e72624ee7599549228950370ba99d6', 'd86d3b5b42900f4fd02c00da3349362c', '132');
INSERT INTO `cartitem` VALUES ('760b61354cd718ee7f1e665827dad634', '29c7a5226e0817e1263ef57a01733253', '1');
INSERT INTO `cartitem` VALUES ('7a6f45bcd71ca764b166fc2e8cb3a547', '29c7a5226e0817e1263ef57a01733253', '1');
INSERT INTO `cartitem` VALUES ('8d7f4da4e88eb64cd0a319eb5a04c522', '29c7a5226e0817e1263ef57a01733253', '3');
INSERT INTO `cartitem` VALUES ('9a0c2cfd673410d87be36fc77272e322', 'e955ac6cf41bb6e3e4da605b513efc3c', '110');
INSERT INTO `cartitem` VALUES ('9c039a076d592395efa998feb4187b7f', '9e08a8af696b73b431a6f2abec9c7c5c', '100');
INSERT INTO `cartitem` VALUES ('b0146a0783b3379c82886e9ec5550d3', 'e955ac6cf41bb6e3e4da605b513efc3c', '110');
INSERT INTO `cartitem` VALUES ('be4388b14fe431d25eec5d368437ab2c', '29c7a5226e0817e1263ef57a01733253', '3');
INSERT INTO `cartitem` VALUES ('d8a631ffc1bef678971a7b9d85e34aba', '29c7a5226e0817e1263ef57a01733253', '1');
INSERT INTO `cartitem` VALUES ('ec70c212c631b0247bb4f2709904d0e7', '7519882797feb56312d5f47698e4b0d9', '159');
INSERT INTO `cartitem` VALUES ('ecbb5b6f442cb52d27ab80a0e0195851', 'e955ac6cf41bb6e3e4da605b513efc3c', '110');
INSERT INTO `cartitem` VALUES ('f56ee5a1dcc55e080882a516cb71fe25', 'e955ac6cf41bb6e3e4da605b513efc3c', '105');
INSERT INTO `cartitem` VALUES ('f8b405cd26b152931b723a520525ed18', '29c7a5226e0817e1263ef57a01733253', '3');
INSERT INTO `cartitem` VALUES ('fbb77b4b0166cb83c2110a87d46c040d', '7519882797feb56312d5f47698e4b0d9', '158');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `orderid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('25946d96a64fd8d81c69183996739ab2', 'ssda', '2019-07-23 06:11:55', '4a7b531c1e18fd0179fc0ae1e771ad47', '5d34b30e157bc70fe8844ba932b36c7f');
INSERT INTO `comment` VALUES ('2c3bd4a5fc3c9c809e643fa1cb03e242', 'asdad', '2019-07-23 06:04:11', '4a7b531c1e18fd0179fc0ae1e771ad47', '6792bbf66a5104349ed7ff9589d8c9f2');
INSERT INTO `comment` VALUES ('3cd727328c77faae566f9e002a62771b', 'asdddd', '2019-07-23 05:40:53', '4a7b531c1e18fd0179fc0ae1e771ad47', '6792bbf66a5104349ed7ff9589d8c9f2');
INSERT INTO `comment` VALUES ('571304814c94f73d6142cac11702fe12', 'ssdaasda', '2019-07-23 06:12:14', '4a7b531c1e18fd0179fc0ae1e771ad47', '5d34b30e157bc70fe8844ba932b36c7f');
INSERT INTO `comment` VALUES ('8430f3111d2758774b76457ff2da9d4e', 'sss', '2019-07-23 06:10:14', '4a7b531c1e18fd0179fc0ae1e771ad47', '6792bbf66a5104349ed7ff9589d8c9f2');
INSERT INTO `comment` VALUES ('9094f6f9543993afbe509ae9ce045aba', 'df', '2019-07-23 06:45:28', '4a7b531c1e18fd0179fc0ae1e771ad47', 'e5893bdb43232bc62089993ebce1a1d9');
INSERT INTO `comment` VALUES ('a3303f5e632aa50d14074e15230f4f7e', 'asddddddd', '2019-07-23 05:40:55', '4a7b531c1e18fd0179fc0ae1e771ad47', '6792bbf66a5104349ed7ff9589d8c9f2');
INSERT INTO `comment` VALUES ('a5d745ec9914ea0915e14f1ed2b35e03', 'fafweewdsf', '2019-07-23 06:38:31', '4a7b531c1e18fd0179fc0ae1e771ad47', 'e5893bdb43232bc62089993ebce1a1d9');
INSERT INTO `comment` VALUES ('beb53b9eec188f488f051d79756b6ae', 'ghjktk', '2019-07-23 06:45:31', '4a7b531c1e18fd0179fc0ae1e771ad47', 'e5893bdb43232bc62089993ebce1a1d9');
INSERT INTO `comment` VALUES ('bf7153d41cf18a1893370ad8161b90ee', 'sssfdg', '2019-07-23 06:10:16', '4a7b531c1e18fd0179fc0ae1e771ad47', '6792bbf66a5104349ed7ff9589d8c9f2');
INSERT INTO `comment` VALUES ('cdc639d1451d2f17c40ef76098ae25ab', 'fafdsf', '2019-07-23 06:38:29', '4a7b531c1e18fd0179fc0ae1e771ad47', 'e5893bdb43232bc62089993ebce1a1d9');
INSERT INTO `comment` VALUES ('d10bc1c9963535c021dc41ca6c7cef1d', 'sssss', '2019-07-23 06:09:21', '4a7b531c1e18fd0179fc0ae1e771ad47', '6792bbf66a5104349ed7ff9589d8c9f2');
INSERT INTO `comment` VALUES ('d642866e86699210939446c4c9f951d6', 'hahahah', '2019-07-23 05:40:47', '4a7b531c1e18fd0179fc0ae1e771ad47', '6792bbf66a5104349ed7ff9589d8c9f2');
INSERT INTO `comment` VALUES ('eb8f479662c869c3ad251b8e1a2a245a', 'hahahahsdfsf', '2019-07-23 05:40:51', '4a7b531c1e18fd0179fc0ae1e771ad47', '6792bbf66a5104349ed7ff9589d8c9f2');

-- ----------------------------
-- Table structure for `coupon`
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` varchar(255) NOT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `validhours` int(11) DEFAULT NULL,
  `businessid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `useorderid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `item`
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `businessId` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Item_business_id_fk` (`businessId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', '兰州炒饭', '1', '15', 'static\\assets\\images\\兰州拉面\\商品\\chaofan.jpg');
INSERT INTO `item` VALUES ('10', '美式咖啡', '2', '13', 'static\\assets\\images\\CoCo\\商品\\meishi.jpg');
INSERT INTO `item` VALUES ('100', '黄瓜', '13', '2', 'static\\assets\\images\\小龙坎\\黄瓜.png');
INSERT INTO `item` VALUES ('101', '嫩牛肉', '13', '5', 'static\\assets\\images\\小龙坎\\嫩牛肉.png');
INSERT INTO `item` VALUES ('102', '土豆', '13', '2', 'static\\assets\\images\\小龙坎\\土豆.png');
INSERT INTO `item` VALUES ('103', '五花肉', '13', '5', 'static\\assets\\images\\小龙坎\\五花肉.png');
INSERT INTO `item` VALUES ('104', '香肠', '13', '5', 'static\\assets\\images\\小龙坎\\香肠.png');
INSERT INTO `item` VALUES ('105', '霸王手枪腿堡', '14', '30', 'static\\assets\\images\\德克士\\霸王手枪腿堡.png');
INSERT INTO `item` VALUES ('106', '菠萝鸡腿堡', '14', '30', 'static\\assets\\images\\德克士\\菠萝鸡腿堡.png');
INSERT INTO `item` VALUES ('107', '鸡腿堡', '14', '31', 'static\\assets\\images\\德克士\\鸡腿堡.png');
INSERT INTO `item` VALUES ('108', '南洋鸡肉卷', '14', '33', 'static\\assets\\images\\德克士\\南洋鸡肉卷.png');
INSERT INTO `item` VALUES ('109', '南洋鸡肉卷套餐', '14', '36', 'static\\assets\\images\\德克士\\南洋鸡肉卷套餐.png');
INSERT INTO `item` VALUES ('11', '拿铁咖啡', '2', '18', 'static\\assets\\images\\CoCo\\商品\\natie.jpg');
INSERT INTO `item` VALUES ('110', '能量下午茶', '14', '25', 'static\\assets\\images\\德克士\\能量下午茶.png');
INSERT INTO `item` VALUES ('111', '薯条', '14', '10', 'static\\assets\\images\\德克士\\薯条');
INSERT INTO `item` VALUES ('112', '芝士能量棒', '14', '10', 'static\\assets\\images\\德克士\\芝士能量棒.png');
INSERT INTO `item` VALUES ('113', '叫了只麻辣鸡', '15', '19.9', 'static\\assets\\images\\叫了只鸡\\叫了只麻辣鸡.png');
INSERT INTO `item` VALUES ('114', '叫了只香辣鸡', '15', '19.9', 'static\\assets\\images\\叫了只鸡\\叫了只麻辣鸡.png');
INSERT INTO `item` VALUES ('115', '叫了只咖喱鸡', '15', '19.9', 'static\\assets\\images\\叫了只鸡\\叫了只麻辣鸡.png');
INSERT INTO `item` VALUES ('116', '叫了只黑椒鸡', '15', '19.9', 'static\\assets\\images\\叫了只鸡\\叫了只麻辣鸡.png');
INSERT INTO `item` VALUES ('117', '叫了只孜然鸡', '15', '19.9', 'static\\assets\\images\\叫了只鸡\\叫了只麻辣鸡.png');
INSERT INTO `item` VALUES ('118', '叫了只原味鸡', '15', '19.9', 'static\\assets\\images\\叫了只鸡\\叫了只麻辣鸡.png');
INSERT INTO `item` VALUES ('119', '情侣套餐', '15', '35.9', 'static\\assets\\images\\叫了只鸡\\情侣套餐.png');
INSERT INTO `item` VALUES ('12', '鲜百香双响炮', '2', '15', 'static\\assets\\images\\CoCo\\商品\\baixiang.jpg');
INSERT INTO `item` VALUES ('120', '炸鸡薯条', '15', '15.9', 'static\\assets\\images\\叫了只鸡\\炸鸡薯条.png');
INSERT INTO `item` VALUES ('121', '肥肠血旺', '16', '14.5', 'static\\assets\\images\\川味人家\\肥肠血旺.jpg');
INSERT INTO `item` VALUES ('122', '花椒鱼', '16', '26', 'static\\assets\\images\\川味人家\\花椒鱼.jpg');
INSERT INTO `item` VALUES ('123', '回锅肉', '16', '13.5', 'static\\assets\\images\\川味人家\\回锅肉.jpg');
INSERT INTO `item` VALUES ('124', '泡椒美蛙', '16', '33', 'static\\assets\\images\\川味人家\\泡椒美蛙.jpg');
INSERT INTO `item` VALUES ('125', '土豆丝', '16', '5.9', 'static\\assets\\images\\川味人家\\土豆丝.jpg');
INSERT INTO `item` VALUES ('126', '小炒肉', '16', '9.9', 'static\\assets\\images\\川味人家\\小炒肉.jpg');
INSERT INTO `item` VALUES ('127', '小龙虾', '16', '105', 'static\\assets\\images\\川味人家\\小龙虾.jpg');
INSERT INTO `item` VALUES ('128', '鱼香肉丝', '16', '11', 'static\\assets\\images\\川味人家\\鱼香肉丝.jpg');
INSERT INTO `item` VALUES ('129', '北京烤鸭半只', '17', '15.9', 'static\\assets\\images\\梁记烤鸭\\北京烤鸭半只.jpg');
INSERT INTO `item` VALUES ('13', '金桔柠檬汁', '2', '12', 'static\\assets\\images\\CoCo\\商品\\jinju.jpg');
INSERT INTO `item` VALUES ('130', '北京烤鸭大份', '17', '35.9', 'static\\assets\\images\\梁记烤鸭\\北京烤鸭大份.jpg');
INSERT INTO `item` VALUES ('131', '北京烤鸭整只', '17', '25.9', 'static\\assets\\images\\梁记烤鸭\\北京烤鸭整只.jpg');
INSERT INTO `item` VALUES ('132', '温馨家庭套餐', '17', '45.9', 'static\\assets\\images\\梁记烤鸭\\温馨家庭套餐.jpg');
INSERT INTO `item` VALUES ('133', '小仙女稀饭套餐', '17', '17.9', 'static\\assets\\images\\梁记烤鸭\\小仙女稀饭套餐.jpg');
INSERT INTO `item` VALUES ('134', '葱丝', '17', '0.5', 'static\\assets\\images\\梁记烤鸭\\葱丝.jpg');
INSERT INTO `item` VALUES ('135', '黄瓜丝', '17', '0.5', 'static\\assets\\images\\梁记烤鸭\\黄瓜丝.jpg');
INSERT INTO `item` VALUES ('136', '面皮', '17', '4', 'static\\assets\\images\\梁记烤鸭\\面皮.jpg');
INSERT INTO `item` VALUES ('137', '白粥套餐', '18', '15.6', 'static\\assets\\images\\三米粥铺\\白粥套餐.jpg');
INSERT INTO `item` VALUES ('138', '南瓜粥套餐', '18', '15.6', 'static\\assets\\images\\三米粥铺\\南瓜粥套餐.jpg');
INSERT INTO `item` VALUES ('139', '皮蛋瘦肉粥', '18', '8.8', 'static\\assets\\images\\三米粥铺\\皮蛋瘦肉粥.jpg');
INSERT INTO `item` VALUES ('14', '鲜柠檬红茶', '2', '11', 'static\\assets\\images\\CoCo\\商品\\hongcha.jpg');
INSERT INTO `item` VALUES ('140', '山药排骨粥', '18', '8.8', 'static\\assets\\images\\三米粥铺\\山药排骨粥.jpg');
INSERT INTO `item` VALUES ('141', '生滚猪肝粥', '18', '8.8', 'static\\assets\\images\\三米粥铺\\生滚猪肝粥.jpg');
INSERT INTO `item` VALUES ('142', '香菇瘦肉粥', '18', '8.8', 'static\\assets\\images\\三米粥铺\\香菇瘦肉粥.jpg');
INSERT INTO `item` VALUES ('143', '玉米排骨粥.', '18', '8.8', 'static\\assets\\images\\三米粥铺\\玉米排骨粥.jpg');
INSERT INTO `item` VALUES ('144', '猪肝瘦肉粥', '18', '8.8', 'static\\assets\\images\\三米粥铺\\猪肝瘦肉粥.jpg');
INSERT INTO `item` VALUES ('145', '鸡公煲小', '19', '15', 'static\\assets\\images\\重庆鸡公煲\\鸡公煲小中大.jpg');
INSERT INTO `item` VALUES ('146', '鸡公煲中', '19', '25', 'static\\assets\\images\\重庆鸡公煲\\鸡公煲小中大.jpg');
INSERT INTO `item` VALUES ('147', '鸡公煲大', '19', '35', 'static\\assets\\images\\重庆鸡公煲\\鸡公煲小中大.jpg');
INSERT INTO `item` VALUES ('148', '土豆', '19', '2', 'static\\assets\\images\\重庆鸡公煲\\土豆.jpg');
INSERT INTO `item` VALUES ('149', '土豆粉', '19', '2', 'static\\assets\\images\\重庆鸡公煲\\土豆粉.jpg');
INSERT INTO `item` VALUES ('15', '珍珠奶茶', '2', '10', 'static\\assets\\images\\CoCo\\商品\\zhenzhu.jpg');
INSERT INTO `item` VALUES ('150', '鹌鹑蛋', '19', '2', 'static\\assets\\images\\重庆鸡公煲\\鹌鹑蛋.jpg');
INSERT INTO `item` VALUES ('151', '大白菜', '19', '2', 'static\\assets\\images\\重庆鸡公煲\\大白菜.jpg');
INSERT INTO `item` VALUES ('152', '冬瓜', '19', '2', 'static\\assets\\images\\重庆鸡公煲\\冬瓜.jpg');
INSERT INTO `item` VALUES ('153', '奥尔良烤鸡披萨', '20', '29.9', 'static\\assets\\images\\披萨\\奥尔良烤鸡披萨.png');
INSERT INTO `item` VALUES ('154', '缤纷水果披萨', '20', '29.9', 'static\\assets\\images\\披萨\\缤纷水果披萨.png');
INSERT INTO `item` VALUES ('155', '超级至尊披萨', '20', '29.9', 'static\\assets\\images\\披萨\\超级至尊披萨.png');
INSERT INTO `item` VALUES ('156', '榴莲披萨', '20', '29.9', 'static\\assets\\images\\披萨\\榴莲披萨.png');
INSERT INTO `item` VALUES ('157', '双拼薄脆披萨', '20', '29.9', 'static\\assets\\images\\披萨\\双拼薄脆披萨.png');
INSERT INTO `item` VALUES ('158', '双拼披萨', '20', '29.9', 'static\\assets\\images\\披萨\\双拼披萨.png');
INSERT INTO `item` VALUES ('159', '夏威夷披萨', '20', '29.9', 'static\\assets\\images\\披萨\\夏威夷披萨.png');
INSERT INTO `item` VALUES ('16', '焦糖奶茶', '2', '10', 'static\\assets\\images\\CoCo\\商品\\jiaotang.jpg');
INSERT INTO `item` VALUES ('160', '小酥肉披萨', '20', '29.9', 'static\\assets\\images\\披萨\\小酥肉披萨.png');
INSERT INTO `item` VALUES ('17', '嫩牛肉+牛杂', '3', '36.8', 'static\\assets\\images\\倔强翘脚牛肉\\商品\\niuza.jpg');
INSERT INTO `item` VALUES ('18', '嫩牛肉+毛肚', '3', '36.8', 'static\\assets\\images\\倔强翘脚牛肉\\商品\\niudu.jpg');
INSERT INTO `item` VALUES ('19', '嫩牛肉+金针菇', '3', '36.8', 'static\\assets\\images\\倔强翘脚牛肉\\商品\\jinzhengu.jpg');
INSERT INTO `item` VALUES ('2', '鸡蛋刀削面', '1', '14', 'static\\assets\\images\\兰州拉面\\商品\\daoxiaomian.jpg');
INSERT INTO `item` VALUES ('20', '嫩牛肉+火腿', '3', '36.8', 'static\\assets\\images\\倔强翘脚牛肉\\商品\\huotui.jpg');
INSERT INTO `item` VALUES ('21', '嫩牛肉+黄喉', '3', '36.8', 'static\\assets\\images\\倔强翘脚牛肉\\商品\\huanghou.jpg');
INSERT INTO `item` VALUES ('22', '嫩牛肉+肥牛', '3', '36.8', 'static\\assets\\images\\倔强翘脚牛肉\\商品\\feiniu.jpg');
INSERT INTO `item` VALUES ('23', '嫩牛肉+豆皮', '3', '36.8', 'static\\assets\\images\\倔强翘脚牛肉\\商品\\doupi.jpg');
INSERT INTO `item` VALUES ('24', '全牛杂', '3', '36.8', 'static\\assets\\images\\倔强翘脚牛肉\\商品\\quanniuza.jpg');
INSERT INTO `item` VALUES ('25', '猪肉大葱', '4', '12.5', 'static\\assets\\images\\山东水饺\\商品\\shuijiao.jpg');
INSERT INTO `item` VALUES ('26', '鸡肉虾仁', '4', '12', 'static\\assets\\images\\山东水饺\\商品\\shuijiao.jpg');
INSERT INTO `item` VALUES ('27', '白菜猪肉', '4', '11', 'static\\assets\\images\\山东水饺\\商品\\shuijiao.jpg');
INSERT INTO `item` VALUES ('28', '纯牛肉', '4', '14', 'static\\assets\\images\\山东水饺\\商品\\shuijiao.jpg');
INSERT INTO `item` VALUES ('29', '玉米鲜肉', '4', '12', 'static\\assets\\images\\山东水饺\\商品\\shuijiao.jpg');
INSERT INTO `item` VALUES ('3', '馕饼', '1', '8', 'static\\assets\\images\\兰州拉面\\商品\\bing.jpg');
INSERT INTO `item` VALUES ('30', '香菇肉', '4', '12', 'static\\assets\\images\\山东水饺\\商品\\shuijiao.jpg');
INSERT INTO `item` VALUES ('31', '纯鲜肉', '4', '12', 'static\\assets\\images\\山东水饺\\商品\\shuijiao.jpg');
INSERT INTO `item` VALUES ('32', '芹菜肉', '4', '11', 'static\\assets\\images\\山东水饺\\商品\\shuijiao.jpg');
INSERT INTO `item` VALUES ('33', '叉烧饭', '5', '28.8', 'static\\assets\\images\\粤香烧鹅\\商品\\chashao.jpg');
INSERT INTO `item` VALUES ('34', '白切鸡饭', '5', '27.8', 'static\\assets\\images\\粤香烧鹅\\商品\\baiqieji.jpg');
INSERT INTO `item` VALUES ('35', '脆皮烧鹅饭', '5', '42', 'static\\assets\\images\\粤香烧鹅\\商品\\shaoe.jpg');
INSERT INTO `item` VALUES ('36', '烧鹅拼叉烧饭', '5', '29.8', 'static\\assets\\images\\粤香烧鹅\\商品\\shuangpin.jpg');
INSERT INTO `item` VALUES ('37', '黑椒猪扒饭', '5', '26', 'static\\assets\\images\\粤香烧鹅\\商品\\zhupafan.jpg');
INSERT INTO `item` VALUES ('38', '黑椒鸡扒饭', '5', '26', 'static\\assets\\images\\粤香烧鹅\\商品\\jipafan.jpg');
INSERT INTO `item` VALUES ('39', '猪杂汤饭', '5', '36.8', 'static\\assets\\images\\粤香烧鹅\\商品\\zhuza.jpg');
INSERT INTO `item` VALUES ('4', '土豆鸡块盖饭', '1', '15', 'static\\assets\\images\\兰州拉面\\商品\\gaifan.jpg');
INSERT INTO `item` VALUES ('40', '煎蛋', '5', '3', 'static\\assets\\images\\粤香烧鹅\\商品\\jiandan.jpg');
INSERT INTO `item` VALUES ('41', '黑椒猪排蛋包饭', '6', '50', 'static\\assets\\images\\食野\\商品\\zhupai.jpg');
INSERT INTO `item` VALUES ('42', '番茄肥牛蛋包饭', '6', '50', 'static\\assets\\images\\食野\\商品\\fanqie.jpg');
INSERT INTO `item` VALUES ('43', '咖喱土豆牛肉蛋包饭', '6', '49.9', 'static\\assets\\images\\食野\\商品\\galiniurou.jpg');
INSERT INTO `item` VALUES ('44', '咖喱鸡肉蛋包饭', '6', '38', 'static\\assets\\images\\食野\\商品\\galijirou.jpg');
INSERT INTO `item` VALUES ('45', '碳烤猪排便当', '6', '30', 'static\\assets\\images\\食野\\商品\\zhupaibiandang.jpg');
INSERT INTO `item` VALUES ('46', '香煎龙利鱼便当', '6', '39', 'static\\assets\\images\\食野\\商品\\yubiandang.jpg');
INSERT INTO `item` VALUES ('47', '香煎鸡胸肉便当', '6', '35', 'static\\assets\\images\\食野\\商品\\jiroubiandang.jpg');
INSERT INTO `item` VALUES ('48', '酸辣肥牛便当', '6', '49.9', 'static\\assets\\images\\食野\\商品\\feiniubiandang.jpg');
INSERT INTO `item` VALUES ('49', '韩式咖喱炒乌冬面', '7', '14', 'static\\assets\\images\\八番屋日韩简餐\\商品\\galiwudong.jpg');
INSERT INTO `item` VALUES ('5', '新疆拌面', '1', '16', 'static\\assets\\images\\兰州拉面\\商品\\banmian.jpg');
INSERT INTO `item` VALUES ('50', '日式炒乌冬面', '7', '14', 'static\\assets\\images\\八番屋日韩简餐\\商品\\chaowudong.jpg');
INSERT INTO `item` VALUES ('51', '韩式海鲜石锅', '7', '22', 'static\\assets\\images\\八番屋日韩简餐\\商品\\haixianshiguo.jpg');
INSERT INTO `item` VALUES ('52', '韩式芝士鸡肉石锅', '7', '17', 'static\\assets\\images\\八番屋日韩简餐\\商品\\jiroushiguo.jpg');
INSERT INTO `item` VALUES ('53', '韩式牛肉石锅', '7', '14', 'static\\assets\\images\\八番屋日韩简餐\\商品\\niuroushiguo.jpg');
INSERT INTO `item` VALUES ('54', '咖喱牛肉饭', '7', '15', 'static\\assets\\images\\八番屋日韩简餐\\商品\\galiniurou.jpg');
INSERT INTO `item` VALUES ('55', '日式鸡肉饭', '7', '14', 'static\\assets\\images\\八番屋日韩简餐\\商品\\rishijirou.jpg');
INSERT INTO `item` VALUES ('56', '照烧无骨鸡肉饭', '7', '15', 'static\\assets\\images\\八番屋日韩简餐\\商品\\zhaoshaojirou.jpg');
INSERT INTO `item` VALUES ('57', '豆豉味烤嵌鱼', '8', '88', 'static\\assets\\images\\全味烤鱼\\商品\\douchixiangyu.jpg');
INSERT INTO `item` VALUES ('58', '泡椒味烤嵌鱼', '8', '88', 'static\\assets\\images\\全味烤鱼\\商品\\paojiaoxiangyu.jpg');
INSERT INTO `item` VALUES ('59', '香辣味烤嵌鱼', '8', '88', 'static\\assets\\images\\全味烤鱼\\商品\\xianglaxiangyu.jpg');
INSERT INTO `item` VALUES ('6', '干锅鸡', '1', '40', 'static\\assets\\images\\兰州拉面\\商品\\ganguoji.jpg');
INSERT INTO `item` VALUES ('60', '泡椒味烤草鱼', '8', '78', 'static\\assets\\images\\全味烤鱼\\商品\\paojiaocaoyu.jpg');
INSERT INTO `item` VALUES ('61', '豆豉味烤草鱼', '8', '78', 'static\\assets\\images\\全味烤鱼\\商品\\douchicaoyu.jpg');
INSERT INTO `item` VALUES ('62', '香辣味烤草鱼', '8', '78', 'static\\assets\\images\\全味烤鱼\\商品\\xianglacaoyu.jpg');
INSERT INTO `item` VALUES ('63', '泡椒味烤裸斑鱼', '8', '78', 'static\\assets\\images\\全味烤鱼\\商品\\paojiaoluobanyu.jpg');
INSERT INTO `item` VALUES ('64', '豆豉味烤裸斑鱼', '8', '78', 'static\\assets\\images\\全味烤鱼\\商品\\douchiluobanyu.jpg');
INSERT INTO `item` VALUES ('65', '金米鸡柳煎饼', '9', '20', 'static\\assets\\images\\煎商\\商品\\jinmijiliu.jpg');
INSERT INTO `item` VALUES ('66', '双蛋肉松鸡柳煎饼', '9', '23', 'static\\assets\\images\\煎商\\商品\\shuangdanrousongjiliu.jpg');
INSERT INTO `item` VALUES ('67', '双蛋肉松培根煎饼', '9', '23', 'static\\assets\\images\\煎商\\商品\\shuangdanrousongpeigen.jpg');
INSERT INTO `item` VALUES ('68', '双蛋肉松火腿煎饼', '9', '23', 'static\\assets\\images\\煎商\\商品\\shuangdanrousonghuotui.jpg');
INSERT INTO `item` VALUES ('69', '奥尔良鸡排煎饼', '9', '15', 'static\\assets\\images\\煎商\\商品\\aoerliang.jpg');
INSERT INTO `item` VALUES ('7', '兰州拉面', '1', '12', 'static\\assets\\images\\兰州拉面\\商品\\lamian.jpg');
INSERT INTO `item` VALUES ('70', '香烤培根煎饼', '9', '14', 'static\\assets\\images\\煎商\\商品\\peigen.jpg');
INSERT INTO `item` VALUES ('71', '原味肉松煎饼', '9', '13.5', 'static\\assets\\images\\煎商\\商品\\rousong.jpg');
INSERT INTO `item` VALUES ('72', '火腿煎饼', '9', '14', 'static\\assets\\images\\煎商\\商品\\huotui.jpg');
INSERT INTO `item` VALUES ('73', '羊肉串（10串）', '10', '58', 'static\\assets\\images\\老马家资格烤羊肉\\商品\\yangrouchuan.jpg');
INSERT INTO `item` VALUES ('74', '烤羊肚（10串）', '10', '58', 'static\\assets\\images\\老马家资格烤羊肉\\商品\\yangdu.jpg');
INSERT INTO `item` VALUES ('75', '烤羊筋（10串）', '10', '79', 'static\\assets\\images\\老马家资格烤羊肉\\商品\\yangjin.jpg');
INSERT INTO `item` VALUES ('76', '油包烤羊腰子', '10', '26', 'static\\assets\\images\\老马家资格烤羊肉\\商品\\yangyaozi.jpg');
INSERT INTO `item` VALUES ('77', '手抓羊肉半斤', '10', '68', 'static\\assets\\images\\老马家资格烤羊肉\\商品\\shouzhuayangrou.jpg');
INSERT INTO `item` VALUES ('78', '碳烤羊排（1串）', '10', '15', 'static\\assets\\images\\老马家资格烤羊肉\\商品\\yangpai.jpg');
INSERT INTO `item` VALUES ('79', '雪花啤酒', '10', '10', 'static\\assets\\images\\老马家资格烤羊肉\\商品\\xuehua.jpg');
INSERT INTO `item` VALUES ('8', '凉拌土豆丝', '1', '13', 'static\\assets\\images\\兰州拉面\\商品\\tudousi.jpg');
INSERT INTO `item` VALUES ('80', '乌苏啤酒', '10', '16', 'static\\assets\\images\\老马家资格烤羊肉\\商品\\wusu.jpg');
INSERT INTO `item` VALUES ('81', '腐竹', '11', '4', 'static\\assets\\images\\三顾冒菜\\腐竹.jpg');
INSERT INTO `item` VALUES ('82', '空心菜', '11', '3', 'static\\assets\\images\\三顾冒菜\\空心菜.jpg');
INSERT INTO `item` VALUES ('83', '毛肚', '11', '8', 'static\\assets\\images\\三顾冒菜\\毛肚.jpg');
INSERT INTO `item` VALUES ('84', '米饭', '11', '2', 'static\\assets\\images\\三顾冒菜\\米饭.jpg');
INSERT INTO `item` VALUES ('85', '千层肚', '11', '7', 'static\\assets\\images\\三顾冒菜\\千层肚.jpg');
INSERT INTO `item` VALUES ('86', '西红柿', '11', '3', 'static\\assets\\images\\三顾冒菜\\西红柿.jpg');
INSERT INTO `item` VALUES ('87', '鲜豆腐', '11', '3', 'static\\assets\\images\\三顾冒菜\\鲜豆腐.jpg');
INSERT INTO `item` VALUES ('88', '鲜肉丸子', '11', '3', 'static\\assets\\images\\三顾冒菜\\鲜肉丸.jpg');
INSERT INTO `item` VALUES ('89', '板烧翅乐套餐', '12', '30', 'static\\assets\\images\\麦当劳\\板烧翅乐套餐.jpg');
INSERT INTO `item` VALUES ('9', '葡萄柚绿茶', '2', '14', 'static\\assets\\images\\CoCo\\商品\\lvcha.jpg');
INSERT INTO `item` VALUES ('90', '板烧鸡腿堡套餐', '12', '35', 'static\\assets\\images\\麦当劳\\板烧鸡腿堡套餐.jpg');
INSERT INTO `item` VALUES ('91', '经典麦辣套餐', '12', '40', 'static\\assets\\images\\麦当劳\\经典麦辣套餐.jpg');
INSERT INTO `item` VALUES ('92', '巨无霸可乐套餐', '12', '30', 'static\\assets\\images\\麦当劳\\巨无霸可乐套餐.jpg');
INSERT INTO `item` VALUES ('93', '麦香鸡可乐杯套餐', '12', '35', 'static\\assets\\images\\麦当劳\\麦香鸡可乐杯套餐.jpg');
INSERT INTO `item` VALUES ('94', '麦香鱼套餐', '12', '40', 'static\\assets\\images\\麦当劳\\麦香鱼套餐.jpg');
INSERT INTO `item` VALUES ('95', '双层吉士汉堡', '12', '30', 'static\\assets\\images\\麦当劳\\双层吉士汉堡.jpg');
INSERT INTO `item` VALUES ('96', '双层鳕鱼堡套餐.jpg', '12', '35', 'static\\assets\\images\\麦当劳\\双层鳕鱼堡套餐.jpg');
INSERT INTO `item` VALUES ('97', '豆皮', '13', '2', 'static\\assets\\images\\小龙坎\\豆皮.png');
INSERT INTO `item` VALUES ('98', '肥牛', '13', '5', 'static\\assets\\images\\小龙坎\\肥牛.png');
INSERT INTO `item` VALUES ('99', '凤尾', '13', '2', 'static\\assets\\images\\小龙坎\\凤尾.png');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` varchar(255) NOT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `itemId` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('12f5bd1c37ac5d2d09473b343cd21a07', '1ba7a748c6acf2bb7b56e66579d3cdba', '132', null);
INSERT INTO `orderitem` VALUES ('13a985d00e964e43f774c94e68a32fcc', '8e88aa943acf77f2d2986eaa4eeeec4', '132', null);
INSERT INTO `orderitem` VALUES ('13f95feb72e732e254d59ea65114e541', '95ecc9172ec47ddc7bd7ba9efa1ab8d7', '132', null);
INSERT INTO `orderitem` VALUES ('15d0a419890871e0d979f67a93d25179', '63d210a64cea8e43f1f883f099d409d3', '100', null);
INSERT INTO `orderitem` VALUES ('15ed531f708af99de8dc6307b09d217c', '15ed531f708af99de8dc6307b09d217c', '132', null);
INSERT INTO `orderitem` VALUES ('1ad62ab4cddf8b12fcaff4f8e8b021e3', '307e89e97dfa04de10e6e671b57d8733', '132', null);
INSERT INTO `orderitem` VALUES ('1ba7a748c6acf2bb7b56e66579d3cdba', '1ba7a748c6acf2bb7b56e66579d3cdba', '132', null);
INSERT INTO `orderitem` VALUES ('1f378a132a6e8a87deba8cfb3f16708b', '1f378a132a6e8a87deba8cfb3f16708b', '132', null);
INSERT INTO `orderitem` VALUES ('1f8d06d33c67514f8222b62c2b9b8bfe', 'e5893bdb43232bc62089993ebce1a1d9', '3', null);
INSERT INTO `orderitem` VALUES ('1fe3303294b6b7ae3a90b8506b5dcae', '5d34b30e157bc70fe8844ba932b36c7f', '158', null);
INSERT INTO `orderitem` VALUES ('21649d0f6060861bfccae295a8723ca7', '216fa6cfbf5971c9a73cab13c277e1f', '3', null);
INSERT INTO `orderitem` VALUES ('216fa6cfbf5971c9a73cab13c277e1f', '216fa6cfbf5971c9a73cab13c277e1f', '3', null);
INSERT INTO `orderitem` VALUES ('2628f3d78970cc91675159790d68b1d7', '8fd47685cbf3e793775a5ec0141427fd', '132', null);
INSERT INTO `orderitem` VALUES ('26cf6d9d715e4f1b8beb25574b74f0cc', '26cf6d9d715e4f1b8beb25574b74f0cc', '132', null);
INSERT INTO `orderitem` VALUES ('2b08acdb8d8b477d98cf9f9800623ee7', 'b795018c4007a465972e00d3f32f6785', '132', null);
INSERT INTO `orderitem` VALUES ('2b4d18fd61d3eee61e48aa45ee37f65', '308a303ef6027127ec1a45ff6dd4671d', '132', null);
INSERT INTO `orderitem` VALUES ('2c4ead25c73b7715ea30d265f183c537', '6792bbf66a5104349ed7ff9589d8c9f2', '105', null);
INSERT INTO `orderitem` VALUES ('2c9589c47ecadf014c74d8642cd4329e', 'b795018c4007a465972e00d3f32f6785', '132', null);
INSERT INTO `orderitem` VALUES ('2f791d881003be180bf4da048aedbe96', '95ecc9172ec47ddc7bd7ba9efa1ab8d7', '132', null);
INSERT INTO `orderitem` VALUES ('307e89e97dfa04de10e6e671b57d8733', '307e89e97dfa04de10e6e671b57d8733', '132', null);
INSERT INTO `orderitem` VALUES ('3087e039e0e4d0362e9bbf349a62f7a3', '3087e039e0e4d0362e9bbf349a62f7a3', '132', null);
INSERT INTO `orderitem` VALUES ('308a303ef6027127ec1a45ff6dd4671d', '308a303ef6027127ec1a45ff6dd4671d', '132', null);
INSERT INTO `orderitem` VALUES ('30e47a249f963ef16ec579445b4709e1', 'e5452d07a60c2f64e380357ba599cdcd', '100', null);
INSERT INTO `orderitem` VALUES ('3446ae63c01b924fe690a7c4f48a1138', '3446ae63c01b924fe690a7c4f48a1138', '100', null);
INSERT INTO `orderitem` VALUES ('352905dc094bfa727591791eb2292b', '5ab7d4e366b91391e5d948470548c213', '132', null);
INSERT INTO `orderitem` VALUES ('375f39959b6bf63fe9eb7ca6df502966', '6792bbf66a5104349ed7ff9589d8c9f2', '110', null);
INSERT INTO `orderitem` VALUES ('38eff23a73c7fb9129e6934bb3049320', '4efb6c608bc4b48b1c4fe011124717f0', '132', null);
INSERT INTO `orderitem` VALUES ('3924bdde757b48d3ba943d34eb0883da', '31b97f02a3534a34537167b6a4141152', '132', null);
INSERT INTO `orderitem` VALUES ('3982693c54ba2d84d08377ba1e7561f3', '94d727e61fac713bc135413b37418a20', '100', null);
INSERT INTO `orderitem` VALUES ('39f67f570bad44e13c85da8e5403de8a', 'd0b0d1307af561c65450230e866d8c7d', '132', null);
INSERT INTO `orderitem` VALUES ('3bf5d6d769c85a814ae0bf6d8045de06', '3bf5d6d769c85a814ae0bf6d8045de06', '100', null);
INSERT INTO `orderitem` VALUES ('3f3299c026f341856e55068b050aa9a2', '1ba7a748c6acf2bb7b56e66579d3cdba', '132', null);
INSERT INTO `orderitem` VALUES ('3fb5d11c9a335fa71c52ccffe869c64f', '7d28a18f49e61406d4f47c5817c1596b', '132', null);
INSERT INTO `orderitem` VALUES ('44294caf3a18d8d403d063e41bdc8a62', 'f873a628f752f47e7a18826b72217ddc', '132', null);
INSERT INTO `orderitem` VALUES ('4481b0c889cc3782ff6979f67bf26bac', 'ce2b3401707af80fefeb8a6555a53faf', '3', null);
INSERT INTO `orderitem` VALUES ('45c294556100fa4c1a0ba82bdabdfb57', '5a781017cb3552bf315377cf6f52cfa', '100', null);
INSERT INTO `orderitem` VALUES ('4709ce4a66fa2aaf7c95828f8b9ac49c', '4709ce4a66fa2aaf7c95828f8b9ac49c', '132', null);
INSERT INTO `orderitem` VALUES ('48f6b6e9ce25e0370e562e5334e6788d', '4eb17ffba2952478eb14bb45ddccded2', '132', null);
INSERT INTO `orderitem` VALUES ('4dfe1a8c5679500d5f2b5de430e5f4b5', 'd82f17a33d2633c8f10ebaa114d9e260', '132', null);
INSERT INTO `orderitem` VALUES ('4e4c41ac0d56aafd607ed6ad13ad5ee4', '54fcf4889ea18c4ae61ae926a914e52e', '132', null);
INSERT INTO `orderitem` VALUES ('4eb17ffba2952478eb14bb45ddccded2', '4eb17ffba2952478eb14bb45ddccded2', '132', null);
INSERT INTO `orderitem` VALUES ('4efb6c608bc4b48b1c4fe011124717f0', '4efb6c608bc4b48b1c4fe011124717f0', '132', null);
INSERT INTO `orderitem` VALUES ('53076afed8bc0699ebb34bd76487daf8', '708bc38772842af64cc968a57827047b', '132', null);
INSERT INTO `orderitem` VALUES ('54fcf4889ea18c4ae61ae926a914e52e', '54fcf4889ea18c4ae61ae926a914e52e', '132', null);
INSERT INTO `orderitem` VALUES ('5583b542b2c32f633f429e4daae646f2', '5583b542b2c32f633f429e4daae646f2', '132', null);
INSERT INTO `orderitem` VALUES ('563f1a9fa1dfd118dcc5c35f1e3528d0', '708bc38772842af64cc968a57827047b', '132', null);
INSERT INTO `orderitem` VALUES ('58a5808dd57c24ece1068d02c2005dd7', '58a5808dd57c24ece1068d02c2005dd7', '3', null);
INSERT INTO `orderitem` VALUES ('58c8f4d654a19102c3c0bf1aeff7271e', 'a6f7f91f6fc79ff46447d69eb9b0a8de', '132', null);
INSERT INTO `orderitem` VALUES ('5a57e1d60eba97391942af69a1253183', '6792bbf66a5104349ed7ff9589d8c9f2', '105', null);
INSERT INTO `orderitem` VALUES ('5a5c703e89aac8ddad97e97cf086de60', 'b9fabb5305ac3cdabb238304169e0d83', '132', null);
INSERT INTO `orderitem` VALUES ('5a781017cb3552bf315377cf6f52cfa', '5a781017cb3552bf315377cf6f52cfa', '100', null);
INSERT INTO `orderitem` VALUES ('5b883c22c30c927e006a51febb32f5cf', 'b718c674a132ddfa4a79130ae09a609d', '132', null);
INSERT INTO `orderitem` VALUES ('5be1d9d008adff51c88f7969e587f14b', 'e1b3599d46295a76f03d1fa946a08876', '132', null);
INSERT INTO `orderitem` VALUES ('5d34b30e157bc70fe8844ba932b36c7f', '5d34b30e157bc70fe8844ba932b36c7f', '158', null);
INSERT INTO `orderitem` VALUES ('5d8516cc60e2108e13255c9d24e9725b', 'a6f7f91f6fc79ff46447d69eb9b0a8de', '132', null);
INSERT INTO `orderitem` VALUES ('5ff51c102b4d017a59649c5d8dbfdb7', 'bfb7217fbef604a593d46cca32dec369', '100', null);
INSERT INTO `orderitem` VALUES ('60ce33f9bbea64e4955edf67438bfc41', 'b718c674a132ddfa4a79130ae09a609d', '132', null);
INSERT INTO `orderitem` VALUES ('6259991543942ad1ac5ebe4be788f59', '308a303ef6027127ec1a45ff6dd4671d', '132', null);
INSERT INTO `orderitem` VALUES ('6298a603f5c871b51e192acfbd32cb7d', 'ce2b3401707af80fefeb8a6555a53faf', '3', null);
INSERT INTO `orderitem` VALUES ('63d210a64cea8e43f1f883f099d409d3', '63d210a64cea8e43f1f883f099d409d3', '100', null);
INSERT INTO `orderitem` VALUES ('64ef8c893d877f88d3b73706f75a9392', 'b9fabb5305ac3cdabb238304169e0d83', '132', null);
INSERT INTO `orderitem` VALUES ('652beab5ff4a13db24ce2f7d2468a07f', 'e5893bdb43232bc62089993ebce1a1d9', '1', null);
INSERT INTO `orderitem` VALUES ('66741181301d3fc06a6474f4d17587b9', 'f2719eb5b98ee722308e69a73c499cb9', '132', null);
INSERT INTO `orderitem` VALUES ('6791ceaddab035ae359757226482453a', '3446ae63c01b924fe690a7c4f48a1138', '100', null);
INSERT INTO `orderitem` VALUES ('683855b0398001b3336ec9eb3e1c134', '26cf6d9d715e4f1b8beb25574b74f0cc', '132', null);
INSERT INTO `orderitem` VALUES ('699845d7b589c1902fa283dba3de6297', 'f6078cabc8a668a101109415b00c1a34', '100', null);
INSERT INTO `orderitem` VALUES ('6bbb010c76ddb2b705b69f7a6fd1048', '6bbb010c76ddb2b705b69f7a6fd1048', '3', null);
INSERT INTO `orderitem` VALUES ('6c7cd54ff52efdf2b9ebef21ad24891a', 'd82f17a33d2633c8f10ebaa114d9e260', '132', null);
INSERT INTO `orderitem` VALUES ('6c7d03be2f8ee3c4e2910c6287727ceb', '7f214bf9b55e6db19c710d1ca1813732', '132', null);
INSERT INTO `orderitem` VALUES ('6cc22bef36793d0abada3f5af7190dc6', 'fe4bd9ca3a638c848fd6f252ffefc3cc', '132', null);
INSERT INTO `orderitem` VALUES ('6debc38c6be25c8e866455d590056229', '7f214bf9b55e6db19c710d1ca1813732', '132', null);
INSERT INTO `orderitem` VALUES ('6f72a1a26066098bc059873775ec2f6b', '4eb17ffba2952478eb14bb45ddccded2', '132', null);
INSERT INTO `orderitem` VALUES ('708bc38772842af64cc968a57827047b', '708bc38772842af64cc968a57827047b', '132', null);
INSERT INTO `orderitem` VALUES ('72ed492f85a0206c6b3b9fd54b788b1', '92dcbd1deff52fdad286cc5bc6aa3045', '3', null);
INSERT INTO `orderitem` VALUES ('737790f0abb25f1001a11a808771a172', 'd8ab272718ab692ac79292bb18967ba8', '3', null);
INSERT INTO `orderitem` VALUES ('758beefd27e1f3591862be828b4afeea', '216fa6cfbf5971c9a73cab13c277e1f', '3', null);
INSERT INTO `orderitem` VALUES ('76070cad83765f8969195d8d4f668587', '8fd47685cbf3e793775a5ec0141427fd', '132', null);
INSERT INTO `orderitem` VALUES ('773d6491fbc171bab4c2bf7bc39af1f7', '8f355ba4b711242c10f75cf0ff39bf54', '100', null);
INSERT INTO `orderitem` VALUES ('775fb272cca1063a13e0fb1f89ab960a', 'c0627a8ab55a75a82ecac4fbe8e5d20', '100', null);
INSERT INTO `orderitem` VALUES ('7aec418003225d9a7767d62dd89e7cc', '4709ce4a66fa2aaf7c95828f8b9ac49c', '132', null);
INSERT INTO `orderitem` VALUES ('7c121b7907661db9e3164c77190cd38b', 'ce2b3401707af80fefeb8a6555a53faf', '3', null);
INSERT INTO `orderitem` VALUES ('7d28a18f49e61406d4f47c5817c1596b', '7d28a18f49e61406d4f47c5817c1596b', '132', null);
INSERT INTO `orderitem` VALUES ('7f214bf9b55e6db19c710d1ca1813732', '7f214bf9b55e6db19c710d1ca1813732', '132', null);
INSERT INTO `orderitem` VALUES ('80d0970d59287c9fd898460a2f3dfd6c', '5d34b30e157bc70fe8844ba932b36c7f', '158', null);
INSERT INTO `orderitem` VALUES ('829039973b979aaa20ee319feba0cb91', 'e5893bdb43232bc62089993ebce1a1d9', '3', null);
INSERT INTO `orderitem` VALUES ('883e1d808fc0c8f44588323cb51f4ce8', '6bbb010c76ddb2b705b69f7a6fd1048', '3', null);
INSERT INTO `orderitem` VALUES ('8c320365bba56a52e3e67ec963184ff5', '8c320365bba56a52e3e67ec963184ff5', '132', null);
INSERT INTO `orderitem` VALUES ('8e88aa943acf77f2d2986eaa4eeeec4', '8e88aa943acf77f2d2986eaa4eeeec4', '132', null);
INSERT INTO `orderitem` VALUES ('8eaffa94725bbc085065212e9ce52449', '6792bbf66a5104349ed7ff9589d8c9f2', '110', null);
INSERT INTO `orderitem` VALUES ('8f355ba4b711242c10f75cf0ff39bf54', '8f355ba4b711242c10f75cf0ff39bf54', '100', null);
INSERT INTO `orderitem` VALUES ('8fd47685cbf3e793775a5ec0141427fd', '8fd47685cbf3e793775a5ec0141427fd', '132', null);
INSERT INTO `orderitem` VALUES ('92dcbd1deff52fdad286cc5bc6aa3045', '92dcbd1deff52fdad286cc5bc6aa3045', '3', null);
INSERT INTO `orderitem` VALUES ('94d727e61fac713bc135413b37418a20', '94d727e61fac713bc135413b37418a20', '100', null);
INSERT INTO `orderitem` VALUES ('9564e6c0ab336962f181f1d989984233', 'f3176509e60073438ab1b0042fd5b4c2', '3', null);
INSERT INTO `orderitem` VALUES ('95e61b1595a21d97be7ea144c7fd691e', '95e61b1595a21d97be7ea144c7fd691e', '132', null);
INSERT INTO `orderitem` VALUES ('96b3a425b5314573cb0817a21e1cba2c', '8c320365bba56a52e3e67ec963184ff5', '132', null);
INSERT INTO `orderitem` VALUES ('980d650e93ec655ed58e4d08d801b086', '3087e039e0e4d0362e9bbf349a62f7a3', '132', null);
INSERT INTO `orderitem` VALUES ('9af1906c1f177d05f610369b75f3faea', 'e5893bdb43232bc62089993ebce1a1d9', '3', null);
INSERT INTO `orderitem` VALUES ('9c88201a43520db0316a1bd363e8417b', '6bbb010c76ddb2b705b69f7a6fd1048', '3', null);
INSERT INTO `orderitem` VALUES ('9d53707f6251ce659aa0af3a97b3a63', '5aa9b4afa8054f5b4886d25b14988dc4', '3', null);
INSERT INTO `orderitem` VALUES ('9e6106afad88a9c2769b97c3534efa2c', '3bf5d6d769c85a814ae0bf6d8045de06', '100', null);
INSERT INTO `orderitem` VALUES ('a1b33b887014694c854805f949d38f39', '4709ce4a66fa2aaf7c95828f8b9ac49c', '132', null);
INSERT INTO `orderitem` VALUES ('a46a2397ffcd8fbdd52bfe3adfdceff2', '5aa9b4afa8054f5b4886d25b14988dc4', '3', null);
INSERT INTO `orderitem` VALUES ('a540a3f625c9e75ef779986b23284f49', 'f873a628f752f47e7a18826b72217ddc', '132', null);
INSERT INTO `orderitem` VALUES ('a5db1a59abd5d708b40f53adfbec8efc', '8e88aa943acf77f2d2986eaa4eeeec4', '132', null);
INSERT INTO `orderitem` VALUES ('a5e66884bbb6bb4653f127a9f661a844', '307e89e97dfa04de10e6e671b57d8733', '132', null);
INSERT INTO `orderitem` VALUES ('a63e3f52acf5f9d36082ddee0b6816b7', 'bedd00eeaaaf47e271e7a08dcd2f3e0', '100', null);
INSERT INTO `orderitem` VALUES ('a690fb778c5c86ccca914a3dc53b53d9', 'fe4bd9ca3a638c848fd6f252ffefc3cc', '132', null);
INSERT INTO `orderitem` VALUES ('a6f7f91f6fc79ff46447d69eb9b0a8de', 'a6f7f91f6fc79ff46447d69eb9b0a8de', '132', null);
INSERT INTO `orderitem` VALUES ('a7e6d49a83759bbc932bb521ad2299c2', '6792bbf66a5104349ed7ff9589d8c9f2', '110', null);
INSERT INTO `orderitem` VALUES ('aad388a9134fc8c569c680718b21138d', 'd82f17a33d2633c8f10ebaa114d9e260', '132', null);
INSERT INTO `orderitem` VALUES ('ab3d850acad49cb84126e7a28a33470', '31b97f02a3534a34537167b6a4141152', '132', null);
INSERT INTO `orderitem` VALUES ('afa05c22c7786ca4fd71ecd36390c5e8', 'd0b0d1307af561c65450230e866d8c7d', '132', null);
INSERT INTO `orderitem` VALUES ('b0626859221e0aa6eb4a2752641fcacc', '3087e039e0e4d0362e9bbf349a62f7a3', '132', null);
INSERT INTO `orderitem` VALUES ('b45620edf619ed9ac6eddc83983b022c', 'd8ab272718ab692ac79292bb18967ba8', '3', null);
INSERT INTO `orderitem` VALUES ('b551d0fcdb12dd07b2be04a433b8f432', '7d28a18f49e61406d4f47c5817c1596b', '132', null);
INSERT INTO `orderitem` VALUES ('b718c674a132ddfa4a79130ae09a609d', 'b718c674a132ddfa4a79130ae09a609d', '132', null);
INSERT INTO `orderitem` VALUES ('b795018c4007a465972e00d3f32f6785', 'b795018c4007a465972e00d3f32f6785', '132', null);
INSERT INTO `orderitem` VALUES ('b8d7030d9b2f466bd843b47c7b10d03a', '5583b542b2c32f633f429e4daae646f2', '132', null);
INSERT INTO `orderitem` VALUES ('b9fabb5305ac3cdabb238304169e0d83', 'b9fabb5305ac3cdabb238304169e0d83', '132', null);
INSERT INTO `orderitem` VALUES ('bb018a7d7f6d510b7577df0dc2ae3225', '8c320365bba56a52e3e67ec963184ff5', '132', null);
INSERT INTO `orderitem` VALUES ('bb2543afb5de6d47a286292c839feb59', '58a5808dd57c24ece1068d02c2005dd7', '3', null);
INSERT INTO `orderitem` VALUES ('bc5f1df816981fe6570046556ae39237', 'f6b188304f801557370997f55e5ffb5c', '132', null);
INSERT INTO `orderitem` VALUES ('bdce8cc321374c565d9b53779f41822b', 'f6b188304f801557370997f55e5ffb5c', '132', null);
INSERT INTO `orderitem` VALUES ('bedd00eeaaaf47e271e7a08dcd2f3e0', 'bedd00eeaaaf47e271e7a08dcd2f3e0', '100', null);
INSERT INTO `orderitem` VALUES ('bfb7217fbef604a593d46cca32dec369', 'bfb7217fbef604a593d46cca32dec369', '100', null);
INSERT INTO `orderitem` VALUES ('bff45e9ad03a1e769d63aa635db3192a', '5aa9b4afa8054f5b4886d25b14988dc4', '3', null);
INSERT INTO `orderitem` VALUES ('c0627a8ab55a75a82ecac4fbe8e5d20', 'c0627a8ab55a75a82ecac4fbe8e5d20', '100', null);
INSERT INTO `orderitem` VALUES ('c084968c264c72a5637d56e3bf382154', '6bbb010c76ddb2b705b69f7a6fd1048', '3', null);
INSERT INTO `orderitem` VALUES ('c18d3c64d3af03d0942478c9a0f754d8', '5d34b30e157bc70fe8844ba932b36c7f', '159', null);
INSERT INTO `orderitem` VALUES ('c1df29c1be5132bad7faa0e82aa01aa1', '31b97f02a3534a34537167b6a4141152', '132', null);
INSERT INTO `orderitem` VALUES ('c2bf2edcb96a64125953a71477c1da0c', '54fcf4889ea18c4ae61ae926a914e52e', '132', null);
INSERT INTO `orderitem` VALUES ('c31b0ce30f6ca2f6699ee99ab83f607d', '95e61b1595a21d97be7ea144c7fd691e', '132', null);
INSERT INTO `orderitem` VALUES ('c3773ddd252ffd3c79dde80cc082e048', '5583b542b2c32f633f429e4daae646f2', '132', null);
INSERT INTO `orderitem` VALUES ('c5cc796ebe570fd74a149e4805bbc8da', '58a5808dd57c24ece1068d02c2005dd7', '3', null);
INSERT INTO `orderitem` VALUES ('cc99c9e902ed323cd400e12b1a0c1abd', 'ce2b3401707af80fefeb8a6555a53faf', '3', null);
INSERT INTO `orderitem` VALUES ('ce54b61b92186e95bf429832b0067a98', 'e5893bdb43232bc62089993ebce1a1d9', '3', null);
INSERT INTO `orderitem` VALUES ('ce9c04dd037852b24116d6f351f5ff5a', '92dcbd1deff52fdad286cc5bc6aa3045', '3', null);
INSERT INTO `orderitem` VALUES ('cea0eb064fabb32dbb799a16c99119c5', 'e5893bdb43232bc62089993ebce1a1d9', '1', null);
INSERT INTO `orderitem` VALUES ('d0b0d1307af561c65450230e866d8c7d', 'd0b0d1307af561c65450230e866d8c7d', '132', null);
INSERT INTO `orderitem` VALUES ('d10bbf92eff652ca7d83e9e6a0124dc6', '5ab7d4e366b91391e5d948470548c213', '132', null);
INSERT INTO `orderitem` VALUES ('d12ff7c3daa49bf02ad18b70201a1155', '26cf6d9d715e4f1b8beb25574b74f0cc', '132', null);
INSERT INTO `orderitem` VALUES ('d791e8989db13f56c92870937c101769', 'f2719eb5b98ee722308e69a73c499cb9', '132', null);
INSERT INTO `orderitem` VALUES ('d7c9886d87a2bf7ff17953761f4a0c30', '95ecc9172ec47ddc7bd7ba9efa1ab8d7', '132', null);
INSERT INTO `orderitem` VALUES ('d8ab272718ab692ac79292bb18967ba8', 'd8ab272718ab692ac79292bb18967ba8', '3', null);
INSERT INTO `orderitem` VALUES ('d962b665ba66a9c371f692cf6045c3d4', '5aa9b4afa8054f5b4886d25b14988dc4', '3', null);
INSERT INTO `orderitem` VALUES ('da0e6a63ad9d521b827d9ad5dfd2fb40', 'd8ab272718ab692ac79292bb18967ba8', '3', null);
INSERT INTO `orderitem` VALUES ('db5031cae914228468a07096091e2364', 'ed570fddb3ebe14773535be4eae14e7d', '100', null);
INSERT INTO `orderitem` VALUES ('dbb894bbeda3444aaac86ebb3c67b3bd', '4efb6c608bc4b48b1c4fe011124717f0', '132', null);
INSERT INTO `orderitem` VALUES ('dbe8ec02b7415166b6efaf4300616a37', '5d34b30e157bc70fe8844ba932b36c7f', '158', null);
INSERT INTO `orderitem` VALUES ('de14943f2eb34f26dcf3ca6c4027bd7', 'f3176509e60073438ab1b0042fd5b4c2', '3', null);
INSERT INTO `orderitem` VALUES ('e011d443b2683781d49d74d7f85dcaf3', '15ed531f708af99de8dc6307b09d217c', '132', null);
INSERT INTO `orderitem` VALUES ('e0e76b18aa485e8e36e443ea82aa3c79', '6792bbf66a5104349ed7ff9589d8c9f2', '105', null);
INSERT INTO `orderitem` VALUES ('e164824e842952bd28862ba58c9d7788', '5ab7d4e366b91391e5d948470548c213', '132', null);
INSERT INTO `orderitem` VALUES ('e16c76e4faac11b7a676dad6df152e59', '95e61b1595a21d97be7ea144c7fd691e', '132', null);
INSERT INTO `orderitem` VALUES ('e1b3599d46295a76f03d1fa946a08876', 'e1b3599d46295a76f03d1fa946a08876', '132', null);
INSERT INTO `orderitem` VALUES ('e1fc249cf884cbd304a66a67d0be3a09', '1f378a132a6e8a87deba8cfb3f16708b', '132', null);
INSERT INTO `orderitem` VALUES ('e50898d3e94ddbd9efa7b960eb593d27', '6792bbf66a5104349ed7ff9589d8c9f2', '105', null);
INSERT INTO `orderitem` VALUES ('e5452d07a60c2f64e380357ba599cdcd', 'e5452d07a60c2f64e380357ba599cdcd', '100', null);
INSERT INTO `orderitem` VALUES ('e5893bdb43232bc62089993ebce1a1d9', 'e5893bdb43232bc62089993ebce1a1d9', '1', null);
INSERT INTO `orderitem` VALUES ('e66e0e7ab932bbf7ede427fcad6979e9', 'f3176509e60073438ab1b0042fd5b4c2', '3', null);
INSERT INTO `orderitem` VALUES ('ed570fddb3ebe14773535be4eae14e7d', 'ed570fddb3ebe14773535be4eae14e7d', '100', null);
INSERT INTO `orderitem` VALUES ('ed81f55e8a9fdc571fb1634a5bf1360e', 'e1b3599d46295a76f03d1fa946a08876', '132', null);
INSERT INTO `orderitem` VALUES ('f250d95cd926e974e57ba94df510d46', 'e5893bdb43232bc62089993ebce1a1d9', '1', null);
INSERT INTO `orderitem` VALUES ('f2719eb5b98ee722308e69a73c499cb9', 'f2719eb5b98ee722308e69a73c499cb9', '132', null);
INSERT INTO `orderitem` VALUES ('f3176509e60073438ab1b0042fd5b4c2', 'f3176509e60073438ab1b0042fd5b4c2', '3', null);
INSERT INTO `orderitem` VALUES ('f6078cabc8a668a101109415b00c1a34', 'f6078cabc8a668a101109415b00c1a34', '100', null);
INSERT INTO `orderitem` VALUES ('f6b188304f801557370997f55e5ffb5c', 'f6b188304f801557370997f55e5ffb5c', '132', null);
INSERT INTO `orderitem` VALUES ('f75c4d0c8d84a63d7c183e4d1a7e00ac', '92dcbd1deff52fdad286cc5bc6aa3045', '3', null);
INSERT INTO `orderitem` VALUES ('f873a628f752f47e7a18826b72217ddc', 'f873a628f752f47e7a18826b72217ddc', '132', null);
INSERT INTO `orderitem` VALUES ('f880aed7cf0d2e53834268d890681e8a', '58a5808dd57c24ece1068d02c2005dd7', '3', null);
INSERT INTO `orderitem` VALUES ('fe2210d9a3d1a5f01c178bd8eab7098e', '1f378a132a6e8a87deba8cfb3f16708b', '132', null);
INSERT INTO `orderitem` VALUES ('fe4bd9ca3a638c848fd6f252ffefc3cc', 'fe4bd9ca3a638c848fd6f252ffefc3cc', '132', null);
INSERT INTO `orderitem` VALUES ('fed7407c0c54dafd61aed9b0f2bf5b49', '15ed531f708af99de8dc6307b09d217c', '132', null);
INSERT INTO `orderitem` VALUES ('ff5d80c4cd51976ff9121512ada77e55', '216fa6cfbf5971c9a73cab13c277e1f', '3', null);

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `creatorid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_user_id_fk` (`creatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1542bb344b7319bfd098a45fd38848b6', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:11:18', '1');
INSERT INTO `orders` VALUES ('15ed531f708af99de8dc6307b09d217c', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:55:34', '1');
INSERT INTO `orders` VALUES ('1ba7a748c6acf2bb7b56e66579d3cdba', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:55:44', '1');
INSERT INTO `orders` VALUES ('1f378a132a6e8a87deba8cfb3f16708b', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:46:18', '1');
INSERT INTO `orders` VALUES ('216fa6cfbf5971c9a73cab13c277e1f', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:14:21', '1');
INSERT INTO `orders` VALUES ('26cf6d9d715e4f1b8beb25574b74f0cc', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:03:08', '1');
INSERT INTO `orders` VALUES ('307e89e97dfa04de10e6e671b57d8733', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:56:38', '1');
INSERT INTO `orders` VALUES ('3087e039e0e4d0362e9bbf349a62f7a3', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:57:56', '1');
INSERT INTO `orders` VALUES ('308a303ef6027127ec1a45ff6dd4671d', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:02:07', '1');
INSERT INTO `orders` VALUES ('31b97f02a3534a34537167b6a4141152', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:56:06', '1');
INSERT INTO `orders` VALUES ('3446ae63c01b924fe690a7c4f48a1138', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:28:17', '0');
INSERT INTO `orders` VALUES ('3bf5d6d769c85a814ae0bf6d8045de06', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:26:13', '0');
INSERT INTO `orders` VALUES ('4709ce4a66fa2aaf7c95828f8b9ac49c', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:56:25', '1');
INSERT INTO `orders` VALUES ('4eb17ffba2952478eb14bb45ddccded2', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:06:17', '1');
INSERT INTO `orders` VALUES ('4efb6c608bc4b48b1c4fe011124717f0', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:55:58', '1');
INSERT INTO `orders` VALUES ('54fcf4889ea18c4ae61ae926a914e52e', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:05:57', '1');
INSERT INTO `orders` VALUES ('5583b542b2c32f633f429e4daae646f2', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:55:04', '1');
INSERT INTO `orders` VALUES ('58a5808dd57c24ece1068d02c2005dd7', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:14:15', '1');
INSERT INTO `orders` VALUES ('5a781017cb3552bf315377cf6f52cfa', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:27:14', '0');
INSERT INTO `orders` VALUES ('5aa9b4afa8054f5b4886d25b14988dc4', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:12:11', '1');
INSERT INTO `orders` VALUES ('5ab7d4e366b91391e5d948470548c213', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:05:36', '1');
INSERT INTO `orders` VALUES ('5d34b30e157bc70fe8844ba932b36c7f', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:11:33', '0');
INSERT INTO `orders` VALUES ('63d210a64cea8e43f1f883f099d409d3', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:27:00', '0');
INSERT INTO `orders` VALUES ('6792bbf66a5104349ed7ff9589d8c9f2', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:58:22', '0');
INSERT INTO `orders` VALUES ('6bbb010c76ddb2b705b69f7a6fd1048', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:17:57', '1');
INSERT INTO `orders` VALUES ('708bc38772842af64cc968a57827047b', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:53:35', '1');
INSERT INTO `orders` VALUES ('7d28a18f49e61406d4f47c5817c1596b', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:57:22', '1');
INSERT INTO `orders` VALUES ('7f214bf9b55e6db19c710d1ca1813732', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:54:01', '1');
INSERT INTO `orders` VALUES ('8c320365bba56a52e3e67ec963184ff5', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:54:40', '1');
INSERT INTO `orders` VALUES ('8e88aa943acf77f2d2986eaa4eeeec4', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:59:03', '1');
INSERT INTO `orders` VALUES ('8f355ba4b711242c10f75cf0ff39bf54', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:27:24', '0');
INSERT INTO `orders` VALUES ('8fd47685cbf3e793775a5ec0141427fd', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:06:07', '1');
INSERT INTO `orders` VALUES ('92dcbd1deff52fdad286cc5bc6aa3045', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:14:04', '1');
INSERT INTO `orders` VALUES ('94d727e61fac713bc135413b37418a20', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:28:47', '0');
INSERT INTO `orders` VALUES ('95e61b1595a21d97be7ea144c7fd691e', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:06:09', '1');
INSERT INTO `orders` VALUES ('95ecc9172ec47ddc7bd7ba9efa1ab8d7', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:59:10', '1');
INSERT INTO `orders` VALUES ('a6f7f91f6fc79ff46447d69eb9b0a8de', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:58:03', '1');
INSERT INTO `orders` VALUES ('b718c674a132ddfa4a79130ae09a609d', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:58:22', '1');
INSERT INTO `orders` VALUES ('b795018c4007a465972e00d3f32f6785', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:58:53', '1');
INSERT INTO `orders` VALUES ('b9fabb5305ac3cdabb238304169e0d83', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:58:49', '1');
INSERT INTO `orders` VALUES ('bedd00eeaaaf47e271e7a08dcd2f3e0', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:32:20', '0');
INSERT INTO `orders` VALUES ('bfb7217fbef604a593d46cca32dec369', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:21:15', '1');
INSERT INTO `orders` VALUES ('c0627a8ab55a75a82ecac4fbe8e5d20', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:28:00', '0');
INSERT INTO `orders` VALUES ('ce2b3401707af80fefeb8a6555a53faf', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:13:28', '1');
INSERT INTO `orders` VALUES ('d0b0d1307af561c65450230e866d8c7d', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:05:34', '1');
INSERT INTO `orders` VALUES ('d82f17a33d2633c8f10ebaa114d9e260', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:06:12', '1');
INSERT INTO `orders` VALUES ('d8ab272718ab692ac79292bb18967ba8', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:16:32', '1');
INSERT INTO `orders` VALUES ('e1b3599d46295a76f03d1fa946a08876', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:58:32', '1');
INSERT INTO `orders` VALUES ('e5452d07a60c2f64e380357ba599cdcd', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:26:30', '0');
INSERT INTO `orders` VALUES ('e5893bdb43232bc62089993ebce1a1d9', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:38:13', '0');
INSERT INTO `orders` VALUES ('ed570fddb3ebe14773535be4eae14e7d', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:27:54', '0');
INSERT INTO `orders` VALUES ('f2719eb5b98ee722308e69a73c499cb9', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:02:05', '1');
INSERT INTO `orders` VALUES ('f3176509e60073438ab1b0042fd5b4c2', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:17:05', '1');
INSERT INTO `orders` VALUES ('f6078cabc8a668a101109415b00c1a34', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 04:18:32', '1');
INSERT INTO `orders` VALUES ('f6b188304f801557370997f55e5ffb5c', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 07:04:28', '1');
INSERT INTO `orders` VALUES ('f873a628f752f47e7a18826b72217ddc', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:54:16', '1');
INSERT INTO `orders` VALUES ('fe4bd9ca3a638c848fd6f252ffefc3cc', '4a7b531c1e18fd0179fc0ae1e771ad47', '2019-07-23 06:56:17', '1');

-- ----------------------------
-- Table structure for `session`
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_user_id_fk` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------

-- ----------------------------
-- Table structure for `transition`
-- ----------------------------
DROP TABLE IF EXISTS `transition`;
CREATE TABLE `transition` (
  `id` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `createTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transition_order_id_fk` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transition
-- ----------------------------
INSERT INTO `transition` VALUES ('1296dfba920272820d63508b60f25637', '4', 'ed570fddb3ebe14773535be4eae14e7d', '2019-07-23 04:27:54');
INSERT INTO `transition` VALUES ('1332fa81c305afc65cdb860128b5ff4f', '4', 'c0627a8ab55a75a82ecac4fbe8e5d20', '2019-07-23 04:28:01');
INSERT INTO `transition` VALUES ('2e7c8bed504ffd399538d88fb66f44db', '4', 'e5452d07a60c2f64e380357ba599cdcd', '2019-07-23 04:26:31');
INSERT INTO `transition` VALUES ('2f0922d9c8b4070fba9086fccf6ee162', '92', 'e5893bdb43232bc62089993ebce1a1d9', '2019-07-23 06:38:18');
INSERT INTO `transition` VALUES ('304cc68578717afe7652d4acf80daf5a', '195', '6792bbf66a5104349ed7ff9589d8c9f2', '2019-07-23 04:58:28');
INSERT INTO `transition` VALUES ('45aa058b76c20872441b05f4aedbe7d9', '4', '5a781017cb3552bf315377cf6f52cfa', '2019-07-23 04:27:15');
INSERT INTO `transition` VALUES ('833ca6a8691ea52a0642ff8bc856daed', '149.5', '5d34b30e157bc70fe8844ba932b36c7f', '2019-07-23 06:11:42');
INSERT INTO `transition` VALUES ('860df2b6d8bc0e15ece0bddc5e3a9df4', '4', '3446ae63c01b924fe690a7c4f48a1138', '2019-07-23 04:28:18');
INSERT INTO `transition` VALUES ('8a9a02050d17675d1c633818ce00c8f9', '4', 'bedd00eeaaaf47e271e7a08dcd2f3e0', '2019-07-23 04:32:21');
INSERT INTO `transition` VALUES ('96698ec36e7110fd5aed0d1239af4909', '4', '3bf5d6d769c85a814ae0bf6d8045de06', '2019-07-23 04:26:14');
INSERT INTO `transition` VALUES ('9befe7598d6e65c5b51743fea722b261', '4', '63d210a64cea8e43f1f883f099d409d3', '2019-07-23 04:27:01');
INSERT INTO `transition` VALUES ('b0e9e065614fda701b0d21a63b345a8a', '4', '8f355ba4b711242c10f75cf0ff39bf54', '2019-07-23 04:27:25');
INSERT INTO `transition` VALUES ('b7c637ac7dc23654a596ab6f5dc339ce', '4', '94d727e61fac713bc135413b37418a20', '2019-07-23 04:28:48');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0-平台用户 1-签约商户 2-管理员\n',
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('', null, null, null, null);
INSERT INTO `user` VALUES ('4a7b531c1e18fd0179fc0ae1e771ad47', '234', '0', '123', '123');

-- ----------------------------
-- Table structure for `useraddress`
-- ----------------------------
DROP TABLE IF EXISTS `useraddress`;
CREATE TABLE `useraddress` (
  `id` varchar(255) NOT NULL,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useraddress
-- ----------------------------
INSERT INTO `useraddress` VALUES ('546c399f04ecdb1793d43a616143829b', '4a7b531c1e18fd0179fc0ae1e771ad47', 'address1');
INSERT INTO `useraddress` VALUES ('7d59e9c8eadef16c709d1ddc865879b3', '4a7b531c1e18fd0179fc0ae1e771ad47', 'address3');
INSERT INTO `useraddress` VALUES ('b519565c2d488cf1dd57ab5d1c42f53c', '4a7b531c1e18fd0179fc0ae1e771ad47', 'address2');
