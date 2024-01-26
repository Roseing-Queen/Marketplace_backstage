-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host:     Database: marketplacebackstage
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user` (
  `userNo` bigint NOT NULL,
  `nickName` varchar(100) NOT NULL,
  `sex` tinyint unsigned DEFAULT NULL COMMENT '0:男,1：女,',
  `Position` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `userMobile` varchar(11) NOT NULL,
  `userId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `realName` varchar(100) DEFAULT NULL,
  `roles` json NOT NULL,
  `status` int unsigned NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `admin_user_pk` (`userNo`),
  UNIQUE KEY `admin_user_pk2` (`userId`),
  UNIQUE KEY `admin_user_pk3` (`userNo`),
  UNIQUE KEY `admin_user_pk4` (`userId`),
  KEY `admin_user_userId_index` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES (10000001,'admin',1,'students','10000001','123456','19522272668',1,'example@example.com','管理员','{}',1,'2024-01-18 23:48:53','2024-01-18 23:48:56');
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blindbox`
--

DROP TABLE IF EXISTS `blindbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blindbox` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一标识和主键',
  `BlindBoxName` varchar(500) NOT NULL COMMENT 'Blind box name',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL,
  `userNo` varchar(100) DEFAULT NULL COMMENT 'The unique identifier of the last operator userNo',
  `state` int NOT NULL COMMENT '1，enable，2，Removed from shelves',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blindbox`
--

LOCK TABLES `blindbox` WRITE;
/*!40000 ALTER TABLE `blindbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `blindbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodity`
--

DROP TABLE IF EXISTS `commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commodity` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一的标识',
  `Brand` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '商品的品牌',
  `CommodityNo` bigint unsigned NOT NULL COMMENT '唯一标识',
  `CommodityDescription` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '商品的描述，1000字以内',
  `CommodityName` varchar(300) NOT NULL COMMENT '商品的名称',
  `type` int unsigned NOT NULL COMMENT '商品的类型1，正常2，缺货，3.删除（不可修改）',
  `costPrice` decimal(25,8) NOT NULL COMMENT '成本的价格',
  `Category` bigint unsigned NOT NULL COMMENT '商品分类',
  `CommodityLabel` varchar(5000) NOT NULL COMMENT '转化为字符串的数组，存储的结果是Label的id',
  `Remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `StockQuantity` bigint unsigned NOT NULL COMMENT '商品的库存',
  `SupplierNo` bigint unsigned NOT NULL COMMENT '供应商的唯一标识',
  `state` tinyint(1) NOT NULL COMMENT 'true：启用，false：禁用',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '编辑时间',
  `userNo` bigint unsigned NOT NULL COMMENT 'The userNo of the last modified operation',
  `Weight` bigint unsigned NOT NULL COMMENT '商品重量单位为克',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity`
--

LOCK TABLES `commodity` WRITE;
/*!40000 ALTER TABLE `commodity` DISABLE KEYS */;
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodityspecifications`
--

DROP TABLE IF EXISTS `commodityspecifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commodityspecifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `SpecificationsNo` varchar(200) NOT NULL COMMENT 'The specification code cannot be empty. It is a combination of 24-digit numbers and letters. The letters are case-sensitive.',
  `SpecificationName` varchar(150) NOT NULL COMMENT '规格名称',
  `SpecificationPrice` decimal(25,8) NOT NULL COMMENT '规格的价格',
  `CraeteTime` datetime NOT NULL,
  `UpdateTime` datetime NOT NULL,
  `SpecificationCost` decimal(25,8) NOT NULL COMMENT 'The cost price of this specification',
  `SpecificationDescription` varchar(1000) DEFAULT NULL COMMENT '规格的描述',
  `state` int unsigned NOT NULL COMMENT 'The status of the specification is 1, put on the shelf, 2, taken off the shelf, 3, deleted. The default is 1, 3, and the options are not available to users of the backend management system.',
  `CommodityNo` bigint unsigned NOT NULL COMMENT 'The unique identifier of the product',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodityspecifications`
--

LOCK TABLES `commodityspecifications` WRITE;
/*!40000 ALTER TABLE `commodityspecifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `commodityspecifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historywalletchanges`
--

DROP TABLE IF EXISTS `historywalletchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historywalletchanges` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一的主键',
  `userNo` bigint unsigned NOT NULL COMMENT '所属用户的唯一标识',
  `type` int NOT NULL COMMENT '0：订单退款，1：活动退款',
  `beforeFixingData` decimal(25,8) NOT NULL COMMENT '修改前的金额',
  `operate` decimal(25,8) DEFAULT NULL COMMENT '所做的操作，负值代表提现，正值代表增加',
  `AfterModification` decimal(25,8) NOT NULL COMMENT '剩下的金额',
  `createTime` datetime NOT NULL COMMENT '创建的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historywalletchanges`
--

LOCK TABLES `historywalletchanges` WRITE;
/*!40000 ALTER TABLE `historywalletchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `historywalletchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operationlog`
--

DROP TABLE IF EXISTS `operationlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operationlog` (
  `LogId` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '操作日志的唯一标识',
  `OperatorNo` bigint unsigned NOT NULL COMMENT '操作者编码',
  `Behavior` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行的操作',
  `OperatorName` varchar(200) NOT NULL COMMENT '操作者的名字',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operationlog`
--

LOCK TABLES `operationlog` WRITE;
/*!40000 ALTER TABLE `operationlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `operationlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productcategory` (
  `CategoryId` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '类别的唯一的标识',
  `CategoryParentId` bigint unsigned DEFAULT NULL COMMENT '父分类的id可以为空',
  `CategoryLevel` int NOT NULL DEFAULT '1' COMMENT '类别的层级默认为1最大为2',
  `CategoryName` varchar(100) NOT NULL COMMENT '类别的名称',
  `CategoryIcon` varchar(250) DEFAULT NULL COMMENT '分类图标的链接',
  `state` int unsigned NOT NULL DEFAULT '1' COMMENT '值为1表示启用值为2表示禁用',
  `CreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `UpdateTime` date NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory`
--

LOCK TABLES `productcategory` WRITE;
/*!40000 ALTER TABLE `productcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlabel`
--

DROP TABLE IF EXISTS `productlabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productlabel` (
  `LabelId` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一表示',
  `LabelName` varchar(100) NOT NULL COMMENT '标签名称',
  `status` int NOT NULL DEFAULT '1' COMMENT '1为启用，2为禁用',
  `CreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`LabelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlabel`
--

LOCK TABLES `productlabel` WRITE;
/*!40000 ALTER TABLE `productlabel` DISABLE KEYS */;
/*!40000 ALTER TABLE `productlabel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productorder`
--

DROP TABLE IF EXISTS `productorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productorder` (
  `ProductId` bigint unsigned NOT NULL COMMENT '唯一键',
  `ProductNo` varchar(100) NOT NULL COMMENT '唯一检索no',
  `UserNo` bigint unsigned NOT NULL COMMENT '下单的用户表的No',
  PRIMARY KEY (`ProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productorder`
--

LOCK TABLES `productorder` WRITE;
/*!40000 ALTER TABLE `productorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `productorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopcarousel`
--

DROP TABLE IF EXISTS `shopcarousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopcarousel` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一的标识',
  `type` int NOT NULL COMMENT '1.商品详情2.活动页面',
  `state` int NOT NULL DEFAULT '1' COMMENT '1.启用2.禁用',
  `content` varchar(100) NOT NULL COMMENT 'type的值为1时间为商品的No2.type的值为2的时间为页面地址',
  `imageUrl` varchar(500) NOT NULL COMMENT '轮播图的图片，要在首页进行轮播',
  `craeteTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '修改时间，不能为空值可以和创建时间一致',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopcarousel`
--

LOCK TABLES `shopcarousel` WRITE;
/*!40000 ALTER TABLE `shopcarousel` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopcarousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcart` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '该表是购物车中商品的唯一表',
  `CommodityCode` varchar(100) NOT NULL COMMENT '商品的编码',
  `SpecificationCode` varchar(100) NOT NULL,
  `userNo` varchar(100) NOT NULL COMMENT '所属用户的No',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '更改的时间',
  `quantity` bigint NOT NULL DEFAULT '1' COMMENT '商品的数量',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopuser`
--

DROP TABLE IF EXISTS `shopuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopuser` (
  `UserId` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '用户的唯一对内标识',
  `userNo` bigint NOT NULL COMMENT '用户的对外以及检索的唯一标识',
  `RealName` varchar(100) DEFAULT NULL COMMENT '用户的真实姓名',
  `NickName` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `gender` int NOT NULL DEFAULT '1' COMMENT '0为男,1为女,2.为未设置',
  `mobile` varchar(11) NOT NULL COMMENT '用户的手机号码',
  `work` varchar(100) DEFAULT NULL COMMENT '用户的工作',
  `avatar` varchar(200) DEFAULT NULL COMMENT '用户的头像',
  `Birthday` datetime DEFAULT NULL COMMENT '用户的生日',
  `identificationNumber` varchar(25) DEFAULT NULL COMMENT '用户的身份证号码',
  `state` int NOT NULL,
  `inviteCode` varchar(15) NOT NULL,
  `inviteUserNo` varchar(100) DEFAULT NULL COMMENT '可以为空',
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `shopuser_pk` (`userNo`),
  UNIQUE KEY `shopuser_pk2` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopuser`
--

LOCK TABLES `shopuser` WRITE;
/*!40000 ALTER TABLE `shopuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraddress`
--

DROP TABLE IF EXISTS `useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useraddress` (
  `addressId` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '地址的唯一标识',
  `mobile` varchar(11) NOT NULL COMMENT '用户的手机号码',
  `recipientName` varchar(100) NOT NULL COMMENT '收件人姓名',
  `administrativeDistrictId` bigint unsigned NOT NULL COMMENT '收件地址人所属区县的id',
  `AddressDeatil` varchar(300) NOT NULL COMMENT '收件人的详细地址',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '更新时间',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '值为true时为默认，false不为默认',
  `userNo` bigint unsigned NOT NULL COMMENT '所属用户的No',
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraddress`
--

LOCK TABLES `useraddress` WRITE;
/*!40000 ALTER TABLE `useraddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userfeedback`
--

DROP TABLE IF EXISTS `userfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userfeedback` (
  `FeedBackId` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '对外唯一的标识符',
  `UserNo` bigint unsigned NOT NULL COMMENT '反馈用户的No',
  `Content` varchar(500) NOT NULL COMMENT '用户反馈的内容',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '更新时间不能为空',
  `state` int unsigned NOT NULL COMMENT '值为0代表已反馈（初始状态），值为1代表审核中，值为2代表接受反馈值为3代表暂时搁置值为4代表已驳回，',
  PRIMARY KEY (`FeedBackId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userfeedback`
--

LOCK TABLES `userfeedback` WRITE;
/*!40000 ALTER TABLE `userfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `userfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一的id',
  `userNo` bigint unsigned NOT NULL COMMENT '所属用户的No',
  `RefundAmount` decimal(25,8) NOT NULL DEFAULT '0.00000000' COMMENT '退款的金额',
  `RewardAmount` decimal(25,8) NOT NULL DEFAULT '0.00000000' COMMENT '活动奖励的金额',
  `careteTime` datetime NOT NULL COMMENT '创建的时间',
  `UpdateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'marketplacebackstage'
--

--
-- Dumping routines for database 'marketplacebackstage'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 22:57:42
