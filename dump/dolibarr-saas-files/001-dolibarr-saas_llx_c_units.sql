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
-- Table structure for table `llx_c_units`
--

DROP TABLE IF EXISTS `llx_c_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_units` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortorder` smallint DEFAULT NULL,
  `scale` int DEFAULT NULL,
  `label` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_label` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_units_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_units`
--

LOCK TABLES `llx_c_units` WRITE;
/*!40000 ALTER TABLE `llx_c_units` DISABLE KEYS */;
INSERT INTO `llx_c_units` VALUES (1,'T',100,3,'WeightUnitton','T','weight',1),(2,'KG',110,0,'WeightUnitkg','kg','weight',1),(3,'G',120,-3,'WeightUnitg','g','weight',1),(4,'MG',130,-6,'WeightUnitmg','mg','weight',1),(5,'OZ',140,98,'WeightUnitounce','Oz','weight',1),(6,'LB',150,99,'WeightUnitpound','lb','weight',1),(7,'M',200,0,'SizeUnitm','m','size',1),(8,'DM',210,-1,'SizeUnitdm','dm','size',1),(9,'CM',220,-2,'SizeUnitcm','cm','size',1),(10,'MM',230,-3,'SizeUnitmm','mm','size',1),(11,'FT',240,98,'SizeUnitfoot','ft','size',1),(12,'IN',250,99,'SizeUnitinch','in','size',1),(13,'M2',300,0,'SurfaceUnitm2','m2','surface',1),(14,'DM2',310,-2,'SurfaceUnitdm2','dm2','surface',1),(15,'CM2',320,-4,'SurfaceUnitcm2','cm2','surface',1),(16,'MM2',330,-6,'SurfaceUnitmm2','mm2','surface',1),(17,'FT2',340,98,'SurfaceUnitfoot2','ft2','surface',1),(18,'IN2',350,99,'SurfaceUnitinch2','in2','surface',1),(19,'M3',400,0,'VolumeUnitm3','m3','volume',1),(20,'DM3',410,-3,'VolumeUnitdm3','dm3','volume',1),(21,'CM3',420,-6,'VolumeUnitcm3','cm3','volume',1),(22,'MM3',430,-9,'VolumeUnitmm3','mm3','volume',1),(23,'FT3',440,88,'VolumeUnitfoot3','ft3','volume',1),(24,'IN3',450,89,'VolumeUnitinch3','in3','volume',1),(25,'OZ3',460,97,'VolumeUnitounce','Oz','volume',1),(26,'L',470,98,'VolumeUnitlitre','L','volume',1),(27,'GAL',480,99,'VolumeUnitgallon','gal','volume',1),(28,'P',500,0,'unitP','p','qty',1),(29,'SET',510,0,'Set','set','qty',1),(30,'S',600,1,'second','s','time',1),(31,'MI',610,60,'minute','mn','time',1),(32,'H',620,3600,'hour','h','time',1),(33,'D',630,86400,'day','d','time',1),(34,'W',640,604800,'week','w','time',1),(35,'MO',650,2629800,'month','m','time',1),(36,'Y',660,31557600,'year','y','time',1);
/*!40000 ALTER TABLE `llx_c_units` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:27
