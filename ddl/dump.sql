-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: restweb
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `business` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `headImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES ('bb1','九鼎冒菜','https://vaskka.com/static/zhishidian-youjiwu-image032.gif'),('bb2','xx米线','https://vaskka.com/static/zhishidian-zonghe2-image016.gif'),('bb3','汉堡王','https://vaskka.com/static/zhishidian-huaxuejisuan-image030.gif');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `id` varchar(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `businessId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_user_id_fk` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('2a7ccd5afe452e9083004bb9d5ef8c6a','cf249bdca77c4fc8015fb8e6a690202e','bb2'),('739021e91ec87475d18b7adc1f8e8926','cf249bdca77c4fc8015fb8e6a690202e','bb1'),('ebadcc4f6dc4db974d33cf903dad1c1f','cf249bdca77c4fc8015fb8e6a690202e','bb3');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cartitem` (
  `id` varchar(255) NOT NULL,
  `cartid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `itemid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
INSERT INTO `cartitem` VALUES ('2f4459c0ea741b396cd338e4754f7a91','2a7ccd5afe452e9083004bb9d5ef8c6a','ii4'),('471d2fe5478f554c9b183aafb79b5902','2a7ccd5afe452e9083004bb9d5ef8c6a','ii5'),('646b82b9d3c1c68025dd5e8486034255','2a7ccd5afe452e9083004bb9d5ef8c6a','ii4'),('687c249bc127822adf028e878ee934a7','2a7ccd5afe452e9083004bb9d5ef8c6a','ii5');
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `id` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `orderid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('28db70aecce4d4de91bf79ead7694d41','哈哈哈哈','2019-07-20 04:57:01','cf249bdca77c4fc8015fb8e6a690202e','6f69fb1435cd8c57e7f977a4b4f26ba6'),('5aed3c06b930e945cf1f33059d62d53f','qwer','2019-07-20 04:31:31','cf249bdca77c4fc8015fb8e6a690202e','df857215a00a7cb3bc96e1935fdb2b76'),('705c82f6f0248d03a8a112ab60041e07','asdas','2019-07-20 04-20-58','cf249bdca77c4fc8015fb8e6a690202e','df857215a00a7cb3bc96e1935fdb2b76'),('7204e17dfe46a5efb596f79ca1342b85','ertert','2019-07-20 04:31:34','cf249bdca77c4fc8015fb8e6a690202e','df857215a00a7cb3bc96e1935fdb2b76'),('abc871f82ebd5535c73341550cc02e0c','HelloWorld','2019-07-20 04:57:07','cf249bdca77c4fc8015fb8e6a690202e','6f69fb1435cd8c57e7f977a4b4f26ba6'),('c85ee2fd859f285ac2eb529068aa30f5','士大夫撒旦艰苦就','2019-07-20 04:56:55','cf249bdca77c4fc8015fb8e6a690202e','6f69fb1435cd8c57e7f977a4b4f26ba6'),('eb6b90c1aeb23849bab2a95932ccee1d','hahahahha','2019-07-20 04-21-09','cf249bdca77c4fc8015fb8e6a690202e','df857215a00a7cb3bc96e1935fdb2b76');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupn`
--

DROP TABLE IF EXISTS `coupn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `coupn` (
  `id` varchar(255) DEFAULT NULL,
  `createTime` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `validHours` int(11) DEFAULT NULL,
  `businessId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupn`
--

LOCK TABLES `coupn` WRITE;
/*!40000 ALTER TABLE `coupn` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES ('23e67d0b531fba86258ce2346fbe5bb','2019-07-18 01-07-59',15,24,'1','admin',1,NULL),('4a4af76998071fdb8f5c78b8a3e05462','2019-07-18 01-08-28',10,48,'1','admin',1,NULL),('892193f2857b1203bcceeac794d0c7b2','2019-07-18 01-08-10',10,48,'1','admin',1,NULL),('8a068b0ee27e78cc41f91b5a1ead3bad','2019-07-20 02-25-26',29,48,'bb1','cf249bdca77c4fc8015fb8e6a690202e',1,NULL),('a8e6c8c7ae04fc9717a321c432c1e19d','2019-07-20 02-25-16',20,24,'bb1','cf249bdca77c4fc8015fb8e6a690202e',1,NULL),('cad1b4b019e969a5ddb8038df7d0d459','2019-07-20 02-25-32',15,12,'bb1','cf249bdca77c4fc8015fb8e6a690202e',1,NULL);
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `businessId` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Item_business_id_fk` (`businessId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('ii1','肉类','bb1',20,'https://vaskka.com/static/zhishidian-wujifangyintz-image008.gif'),('ii2','青菜','bb1',18,'https://vaskka.com/static/zhishidian-tjfs_yh_hy-image012.gif'),('ii3','米线','bb2',25,'https://vaskka.com/static/zhishidian-huaxuejisuan-image016.gif'),('ii4','大份米线','bb2',30,'https://vaskka.com/static/zhishidian-huaxuejisuan-image012.gif'),('ii5','小粉米线','bb2',20,'https://vaskka.com/static/zhishidian-huaxuejisuan-image008.gif'),('ii6','汉堡','bb3',30,'https://vaskka.com/static/tuiduan-yjtd-image002.gif'),('ii7','薯条','bb3',25,'https://vaskka.com/static/tuiduan-yjtd-image003.jpg');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderitem` (
  `id` varchar(255) NOT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `itemId` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES ('109e5ad790697ccfcf16dbe551a6e25c','2631443ae6038ddf36ebc0c1a4d5078d','ii1',NULL),('10e0d36b8867889e687c127bb4de7639','10e0d36b8867889e687c127bb4de7639','ii1',NULL),('1779b829d37c0b80ad60faabe8cd5d98','1779b829d37c0b80ad60faabe8cd5d98','ii1',NULL),('2141995c5759804ab3da36edd01f5d09','6f69fb1435cd8c57e7f977a4b4f26ba6','ii4',NULL),('2631443ae6038ddf36ebc0c1a4d5078d','2631443ae6038ddf36ebc0c1a4d5078d','ii1',NULL),('3c776c398bf436bbf1a820e53675720d','ee7b5f30bf3714ab8e13fc561c97f015','ii2',NULL),('3f0e10f0f429138552931d55468e3d48','929da641ef0ecd8dd6fcd390e5bdecc0','ii1',NULL),('40722c4acd9bf5c04a653534b0d8beda','65784a29be5a9a58f8024e40e994be91','ii1',NULL),('465d6aa2a23cb5de72682263782244fa','6f69fb1435cd8c57e7f977a4b4f26ba6','ii5',NULL),('4a60e44f91c44c5537cebe57926722ed','ee7b5f30bf3714ab8e13fc561c97f015','ii1',NULL),('4c3ed4def14625e843acf372f305a16e','a8dbe62912ff25bb663773763fcb4b6c','ii2',NULL),('4d7484747e1d9304d284c7c028e07661','62c5e84173f0353fd3f98ae9707febd3','ii2',NULL),('540e7641334b5c8f66a1e8027075d285','10e0d36b8867889e687c127bb4de7639','ii1',NULL),('5cf5f34e42b4b30731fdcd636cedfbb3','ba9b091257e3c5534c6913986ac389a5','ii2',NULL),('5e7e4550743021ce2d7845d6380bb94c','5e7e4550743021ce2d7845d6380bb94c','ii1',NULL),('625d042636f7b6c66eb59a6ab961188','5e7e4550743021ce2d7845d6380bb94c','ii2',NULL),('62c5e84173f0353fd3f98ae9707febd3','62c5e84173f0353fd3f98ae9707febd3','ii1',NULL),('656931a8116a89bd55202990e340db82','1779b829d37c0b80ad60faabe8cd5d98','ii2',NULL),('65784a29be5a9a58f8024e40e994be91','65784a29be5a9a58f8024e40e994be91','ii1',NULL),('661697b175947206b61063bad5b50c59','693abbc0c82c3da534e220f657d12f05','ii1',NULL),('6670a4be59b841b6dcf7655f3bcb63df','6f69fb1435cd8c57e7f977a4b4f26ba6','ii4',NULL),('67a8a4a5aac941190869af2359a5983a','e80c73de427f8a4b657897d1b5b60346','ii1',NULL),('693abbc0c82c3da534e220f657d12f05','693abbc0c82c3da534e220f657d12f05','ii1',NULL),('6a069506cb7e13b07d646a8b7df02a76','d219a03d8abde1df979f740d3b073bc9','ii1',NULL),('77560bb1f6b48cdef60a0f4698f34431','df40902355ea0763d78b6d79e6dcbbcb','ii2',NULL),('79b215853cd3f1e8b26e517d3cda7867','eb444aff895e7426e924d67ce5ac2df8','ii2',NULL),('7a9778862fd717aa70cacc8ee2fe55f7','d219a03d8abde1df979f740d3b073bc9','ii2',NULL),('7dc8deeb88b05b741814752e7b248849','e87cfadb533a02f161ef0d5f85c5a49','ii1',NULL),('7eed73f6616641ef9d58afbee7f1bf69','62c5e84173f0353fd3f98ae9707febd3','ii1',NULL),('8931417358a560bfff755470ef02135a','df40902355ea0763d78b6d79e6dcbbcb','ii1',NULL),('929da641ef0ecd8dd6fcd390e5bdecc0','929da641ef0ecd8dd6fcd390e5bdecc0','ii1',NULL),('a7831da5a552070722adc60b4cf94','ee7b5f30bf3714ab8e13fc561c97f015','ii1',NULL),('a8dbe62912ff25bb663773763fcb4b6c','a8dbe62912ff25bb663773763fcb4b6c','ii1',NULL),('b335df8f3fd1f8ec32b4fbe154aabab9','65784a29be5a9a58f8024e40e994be91','ii2',NULL),('ba9b091257e3c5534c6913986ac389a5','ba9b091257e3c5534c6913986ac389a5','ii1',NULL),('bf314e4357d0d0707a329e3c30db6d2a','ba9b091257e3c5534c6913986ac389a5','ii1',NULL),('c2c1d4944e3c8c511a14e14ebb9b83cf','1779b829d37c0b80ad60faabe8cd5d98','ii1',NULL),('cd25a136ce98693cc260e0b80dddfa6e','a8dbe62912ff25bb663773763fcb4b6c','ii1',NULL),('cd96c040d761cd90c17712832b593d11','693abbc0c82c3da534e220f657d12f05','ii2',NULL),('cf16665674fbbdf379ad3d95ba93f0a','2631443ae6038ddf36ebc0c1a4d5078d','ii2',NULL),('d219a03d8abde1df979f740d3b073bc9','d219a03d8abde1df979f740d3b073bc9','ii1',NULL),('d2cb806cdefb1bb665900721793a317c','df857215a00a7cb3bc96e1935fdb2b76','ii1',NULL),('d62d796737ae3f10698587635297ea55','5e7e4550743021ce2d7845d6380bb94c','ii1',NULL),('d86d343a01b8e7e3c4780e65dbaa10d7','929da641ef0ecd8dd6fcd390e5bdecc0','ii2',NULL),('dade5e22aa3d29bcf4456017aff250f6','df857215a00a7cb3bc96e1935fdb2b76','ii2',NULL),('df40902355ea0763d78b6d79e6dcbbcb','df40902355ea0763d78b6d79e6dcbbcb','ii1',NULL),('df857215a00a7cb3bc96e1935fdb2b76','df857215a00a7cb3bc96e1935fdb2b76','ii1',NULL),('e16d2e23392df532d8565d12bd9b5d63','10e0d36b8867889e687c127bb4de7639','ii2',NULL),('e32b8b15f798938923e00a2d2e36912a','e80c73de427f8a4b657897d1b5b60346','ii2',NULL),('e80c73de427f8a4b657897d1b5b60346','e80c73de427f8a4b657897d1b5b60346','ii1',NULL),('e907fd6147a438e2839162cd13a5348d','eb444aff895e7426e924d67ce5ac2df8','ii1',NULL),('eaf429eae252dc1ac44c82e5d2d2217','6f69fb1435cd8c57e7f977a4b4f26ba6','ii5',NULL),('eb444aff895e7426e924d67ce5ac2df8','eb444aff895e7426e924d67ce5ac2df8','ii1',NULL),('f3f2bb54517b8ad831cd79bba2b69e83','e87cfadb533a02f161ef0d5f85c5a49','ii1',NULL),('faf945f4c269d6caa8ddfd7977a17a19','e87cfadb533a02f161ef0d5f85c5a49','ii2',NULL);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `creatorid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_user_id_fk` (`creatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('10e0d36b8867889e687c127bb4de7639','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 03-18-18','1'),('1779b829d37c0b80ad60faabe8cd5d98','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 03-06-10','1'),('2631443ae6038ddf36ebc0c1a4d5078d','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 02-44-16','1'),('5e7e4550743021ce2d7845d6380bb94c','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 03-17-50','1'),('62c5e84173f0353fd3f98ae9707febd3','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 02-47-00','1'),('65784a29be5a9a58f8024e40e994be91','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 02-45-51','1'),('693abbc0c82c3da534e220f657d12f05','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 02-59-03','1'),('6f69fb1435cd8c57e7f977a4b4f26ba6','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 04:56:36','0'),('929da641ef0ecd8dd6fcd390e5bdecc0','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 03-18-35','1'),('a8dbe62912ff25bb663773763fcb4b6c','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 02-53-11','1'),('ba9b091257e3c5534c6913986ac389a5','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 02-43-45','1'),('d219a03d8abde1df979f740d3b073bc9','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 03-22-18','1'),('df40902355ea0763d78b6d79e6dcbbcb','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 03-16-57','1'),('df857215a00a7cb3bc96e1935fdb2b76','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 03-40-47','0'),('e80c73de427f8a4b657897d1b5b60346','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 02-57-52','1'),('e87cfadb533a02f161ef0d5f85c5a49','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 02-40-21','1'),('eb444aff895e7426e924d67ce5ac2df8','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 02-45-35','1'),('ee7b5f30bf3714ab8e13fc561c97f015','cf249bdca77c4fc8015fb8e6a690202e','2019-07-20 03-16-38','1');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `session` (
  `id` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_user_id_fk` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transition`
--

DROP TABLE IF EXISTS `transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transition` (
  `id` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `createTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transition_order_id_fk` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transition`
--

LOCK TABLES `transition` WRITE;
/*!40000 ALTER TABLE `transition` DISABLE KEYS */;
INSERT INTO `transition` VALUES ('8ff5da84f1b48f1b7a1d00f15a0489e9',100,'6f69fb1435cd8c57e7f977a4b4f26ba6','2019-07-20 04:56:43'),('e25190a3d2ed1e32b32548b90e8996f9',58,'df857215a00a7cb3bc96e1935fdb2b76','2019-07-20 03-40-51');
/*!40000 ALTER TABLE `transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '0-平台用户 1-签约商户 2-管理员\n',
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('cf249bdca77c4fc8015fb8e6a690202e','Vaskka',0,'123','15145051056');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraddress`
--

DROP TABLE IF EXISTS `useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `useraddress` (
  `id` varchar(255) NOT NULL,
  `userid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraddress`
--

LOCK TABLES `useraddress` WRITE;
/*!40000 ALTER TABLE `useraddress` DISABLE KEYS */;
INSERT INTO `useraddress` VALUES ('15b783deaec9c873caab3233df13e988','cf249bdca77c4fc8015fb8e6a690202e','address_1'),('4d179ab607217eddd0b2c960557b8e5a','cf249bdca77c4fc8015fb8e6a690202e','address_2'),('976a49995f81c0f7b7c523b5e22ee1b1','admin','黑龙江省哈尔滨市松北区世纪花园'),('ff3d72d9ac76c1ba0d6f37470085acc8','admin','四川省成都市双流区川大路二段四川大学');
/*!40000 ALTER TABLE `useraddress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-20  5:00:07
