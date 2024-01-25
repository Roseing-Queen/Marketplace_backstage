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
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '唯一的id',
  `userNo` bigint unsigned NOT NULL COMMENT '所属用户的id',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2024-01-24 21:49:04
