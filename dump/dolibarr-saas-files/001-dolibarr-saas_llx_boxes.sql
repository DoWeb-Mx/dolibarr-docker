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
-- Table structure for table `llx_boxes`
--

DROP TABLE IF EXISTS `llx_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_boxes` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `entity` int NOT NULL DEFAULT '1',
  `box_id` int NOT NULL,
  `position` smallint NOT NULL,
  `box_order` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_user` int NOT NULL DEFAULT '0',
  `maxline` int DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_boxes` (`entity`,`box_id`,`position`,`fk_user`),
  KEY `idx_boxes_boxid` (`box_id`),
  KEY `idx_boxes_fk_user` (`fk_user`),
  CONSTRAINT `fk_boxes_box_id` FOREIGN KEY (`box_id`) REFERENCES `llx_boxes_def` (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_boxes`
--

LOCK TABLES `llx_boxes` WRITE;
/*!40000 ALTER TABLE `llx_boxes` DISABLE KEYS */;
INSERT INTO `llx_boxes` VALUES (1,1,1,0,'A01',0,NULL,NULL),(2,1,2,0,'B02',0,NULL,NULL),(3,1,3,0,'A03',0,NULL,NULL),(4,1,4,0,'B04',0,NULL,NULL),(5,1,5,0,'A05',0,NULL,NULL),(6,1,6,0,'B06',0,NULL,NULL),(7,1,7,0,'A07',0,NULL,NULL),(8,1,8,0,'B08',0,NULL,NULL),(9,1,9,0,'A09',0,NULL,NULL),(10,1,10,0,'B10',0,NULL,NULL),(11,1,11,0,'A11',0,NULL,NULL),(12,1,12,0,'B12',0,NULL,NULL),(13,1,13,0,'A13',0,NULL,NULL),(14,1,14,0,'B14',0,NULL,NULL),(15,1,15,0,'A15',0,NULL,NULL),(16,1,16,0,'B16',0,NULL,NULL),(17,1,17,0,'A17',0,NULL,NULL),(18,1,18,0,'B18',0,NULL,NULL),(19,1,19,0,'A19',0,NULL,NULL),(20,1,20,0,'B20',0,NULL,NULL),(21,1,21,0,'A21',0,NULL,NULL),(22,1,22,0,'B22',0,NULL,NULL),(23,1,23,0,'A23',0,NULL,NULL),(24,1,24,0,'B24',0,NULL,NULL),(25,1,27,0,'A25',0,NULL,NULL),(26,1,28,0,'B26',0,NULL,NULL),(27,1,29,0,'A27',0,NULL,NULL),(28,1,30,0,'B28',0,NULL,NULL),(29,1,31,0,'A29',0,NULL,NULL),(30,1,32,0,'B30',0,NULL,NULL),(31,1,33,0,'A31',0,NULL,NULL),(32,1,34,0,'B32',0,NULL,NULL);
/*!40000 ALTER TABLE `llx_boxes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:38
