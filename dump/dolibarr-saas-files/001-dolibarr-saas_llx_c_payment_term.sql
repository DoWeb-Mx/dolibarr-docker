-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: dolibarr-saas
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `llx_c_payment_term`
--

DROP TABLE IF EXISTS `llx_c_payment_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_payment_term` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `entity` int NOT NULL DEFAULT '1',
  `code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortorder` smallint DEFAULT NULL,
  `active` tinyint DEFAULT '1',
  `libelle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `libelle_facture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type_cdr` tinyint DEFAULT NULL,
  `nbjour` smallint DEFAULT NULL,
  `decalage` smallint DEFAULT NULL,
  `deposit_percent` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_payment_term_code` (`entity`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_payment_term`
--

LOCK TABLES `llx_c_payment_term` WRITE;
/*!40000 ALTER TABLE `llx_c_payment_term` DISABLE KEYS */;
INSERT INTO `llx_c_payment_term` VALUES (1,1,'RECEP',1,1,'Due upon receipt','Due upon receipt',0,1,NULL,NULL,NULL,0),(2,1,'30D',5,1,'30 days','Due in 30 days',0,30,NULL,NULL,NULL,0),(3,1,'30DENDMONTH',7,1,'30 days end of month','Due in 30 days, end of month',1,30,NULL,NULL,NULL,0),(4,1,'60D',20,1,'60 days','Due in 60 days',0,60,NULL,NULL,NULL,0),(5,1,'60DENDMONTH',25,0,'60 days end of month','Due in 60 days, end of month',1,60,NULL,NULL,NULL,0),(6,1,'PT_ORDER',30,1,'Due on order','Due on order',0,1,NULL,NULL,NULL,0),(7,1,'PT_DELIVERY',35,1,'Due on delivery','Due on delivery',0,1,NULL,NULL,NULL,0),(8,1,'PT_5050',40,1,'50 and 50','50% on order, 50% on delivery',0,1,NULL,NULL,NULL,0),(9,1,'10D',50,1,'10 days','Due in 10 days',0,10,NULL,NULL,NULL,0),(10,1,'10DENDMONTH',55,1,'10 days end of month','Due in 10 days, end of month',1,10,NULL,NULL,NULL,0),(11,1,'14D',60,1,'14 days','Due in 14 days',0,14,NULL,NULL,NULL,0),(12,1,'14DENDMONTH',65,1,'14 days end of month','Due in 14 days, end of month',1,14,NULL,NULL,NULL,0),(13,1,'DEP30PCTDEL',90,0,'__DEPOSIT_PERCENT__% deposit','__DEPOSIT_PERCENT__% deposit, remainder on delivery',0,1,NULL,'30',NULL,0),(14,1,'45D',10,1,'45 days','Due in 45 days',0,45,NULL,NULL,NULL,0),(15,1,'45DENDMONTH',15,1,'45 days end of month','Due in 45 days, end of month',1,45,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `llx_c_payment_term` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:31
