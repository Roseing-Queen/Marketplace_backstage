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

-- Dump completed on 2024-01-22 22:08:53
