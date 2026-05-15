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
-- Table structure for table `llx_c_hrm_public_holiday`
--

DROP TABLE IF EXISTS `llx_c_hrm_public_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_hrm_public_holiday` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity` int NOT NULL DEFAULT '1',
  `fk_country` int DEFAULT NULL,
  `fk_departement` int DEFAULT NULL,
  `code` varchar(62) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dayrule` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `active` int DEFAULT '1',
  `import_key` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_c_hrm_public_holiday` (`entity`,`code`),
  UNIQUE KEY `uk_c_hrm_public_holiday2` (`entity`,`fk_country`,`dayrule`,`day`,`month`,`year`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_hrm_public_holiday`
--

LOCK TABLES `llx_c_hrm_public_holiday` WRITE;
/*!40000 ALTER TABLE `llx_c_hrm_public_holiday` DISABLE KEYS */;
INSERT INTO `llx_c_hrm_public_holiday` VALUES (1,1,0,NULL,'NEWYEARDAY1','',1,1,0,1,NULL),(2,1,0,NULL,'LABORDAY1','',1,5,0,1,NULL),(3,1,0,NULL,'ASSOMPTIONDAY1','',15,8,0,1,NULL),(4,1,0,NULL,'CHRISTMASDAY1','',25,12,0,1,NULL),(5,1,1,NULL,'FR-VICTORYDAY','',8,5,0,1,NULL),(6,1,1,NULL,'FR-NATIONALDAY','',14,7,0,1,NULL),(7,1,1,NULL,'FR-ASSOMPTION','',15,8,0,1,NULL),(8,1,1,NULL,'FR-TOUSSAINT','',1,11,0,1,NULL),(9,1,1,NULL,'FR-ARMISTICE','',11,11,0,1,NULL),(10,1,1,NULL,'FR-EASTER','eastermonday',0,0,0,1,NULL),(11,1,1,NULL,'FR-ASCENSION','ascension',0,0,0,1,NULL),(12,1,1,NULL,'FR-PENTECOST','pentecost',0,0,0,1,NULL),(13,1,2,NULL,'BE-VICTORYDAY','',8,5,0,1,NULL),(14,1,2,NULL,'BE-NATIONALDAY','',21,7,0,1,NULL),(15,1,2,NULL,'BE-ASSOMPTION','',15,8,0,1,NULL),(16,1,2,NULL,'BE-TOUSSAINT','',1,11,0,1,NULL),(17,1,2,NULL,'BE-ARMISTICE','',11,11,0,1,NULL),(18,1,2,NULL,'BE-EASTER','eastermonday',0,0,0,1,NULL),(19,1,2,NULL,'BE-ASCENSION','ascension',0,0,0,1,NULL),(20,1,2,NULL,'BE-PENTECOST','pentecost',0,0,0,1,NULL),(21,1,3,NULL,'IT-LIBEAZIONE','',25,4,0,1,NULL),(22,1,3,NULL,'IT-EPIPHANY','',1,6,0,1,NULL),(23,1,3,NULL,'IT-REPUBBLICA','',2,6,0,1,NULL),(24,1,3,NULL,'IT-TUTTISANTIT','',1,11,0,1,NULL),(25,1,3,NULL,'IT-IMMACULE','',8,12,0,1,NULL),(26,1,3,NULL,'IT-SAINTSTEFAN','',26,12,0,1,NULL),(27,1,4,NULL,'ES-EASTER','easter',0,0,0,1,NULL),(28,1,4,NULL,'ES-REYE','',1,6,0,1,NULL),(29,1,4,NULL,'ES-HISPANIDAD','',12,10,0,1,NULL),(30,1,4,NULL,'ES-TOUSSAINT','',1,11,0,1,NULL),(31,1,4,NULL,'ES-CONSTITUIZION','',6,12,0,1,NULL),(32,1,4,NULL,'ES-IMMACULE','',8,12,0,1,NULL),(33,1,5,NULL,'DE-NEUJAHR','',1,1,0,1,NULL),(34,1,5,NULL,'DE-HL3KOEN--TLW','',6,1,0,0,NULL),(35,1,5,NULL,'DE-INTFRAUENTAG--TLW','',8,3,0,0,NULL),(36,1,5,NULL,'DE-KARFREITAG','goodfriday',0,0,0,1,NULL),(37,1,5,NULL,'DE-OSTERMONTAG','eastermonday',0,0,0,1,NULL),(38,1,5,NULL,'DE-TAGDERARBEIT','',1,5,0,1,NULL),(39,1,5,NULL,'DE-HIMMELFAHRT','ascension',0,0,0,1,NULL),(40,1,5,NULL,'DE-PFINGSTEN','pentecotemonday',0,0,0,1,NULL),(41,1,5,NULL,'DE-FRONLEICHNAM--TLW','fronleichnam',0,0,0,0,NULL),(42,1,5,NULL,'DE-MARIAEHIMMEL--TLW','',15,8,0,0,NULL),(43,1,5,NULL,'DE-WELTKINDERTAG--TLW','',20,9,0,0,NULL),(44,1,5,NULL,'DE-TAGDERDEUTEINHEIT','',3,10,0,1,NULL),(45,1,5,NULL,'DE-REFORMATIONSTAG--TLW','',31,10,0,0,NULL),(46,1,5,NULL,'DE-ALLERHEILIGEN--TLW','',1,11,0,0,NULL),(47,1,5,NULL,'DE-WEIHNACHTSTAG1','',25,12,0,1,NULL),(48,1,5,NULL,'DE-WEIHNACHTSTAG2','',26,12,0,1,NULL),(49,1,41,NULL,'AT-EASTER','eastermonday',0,0,0,1,NULL),(50,1,41,NULL,'AT-ASCENSION','ascension',0,0,0,1,NULL),(51,1,41,NULL,'AT-PENTECOST','pentecost',0,0,0,1,NULL),(52,1,41,NULL,'AT-FRONLEICHNAM','fronleichnam',0,0,0,1,NULL),(53,1,41,NULL,'AT-KONEGIE','',1,6,0,1,NULL),(54,1,41,NULL,'AT-26OKT','',26,10,0,1,NULL),(55,1,41,NULL,'AT-TOUSSAINT','',1,11,0,1,NULL),(56,1,41,NULL,'AT-IMMACULE','',8,12,0,1,NULL),(57,1,41,NULL,'AT-24DEC','',24,12,0,1,NULL),(58,1,41,NULL,'AT-SAINTSTEFAN','',26,12,0,1,NULL),(59,1,41,NULL,'AT-Silvester','',31,12,0,1,NULL),(60,1,102,NULL,'GR-ΠΡΩΤΟΧΡΟΝΙΑ','',1,1,0,1,NULL),(61,1,102,NULL,'GR-ΘΕΟΦΑΝΕΙΑ','',6,1,0,1,NULL),(62,1,102,NULL,'GR-25Η ΜΑΡΤΙΟΥ','',25,3,0,1,NULL),(63,1,102,NULL,'GR-ΠΡΩΤΟΜΑΓΙΑ','',1,5,0,1,NULL),(64,1,102,NULL,'GR-ΚΑΘΑΡΑ ΔΕΥΤΕΡΑ','ΚΑΘΑΡΑ_ΔΕΥΤΕΡΑ',0,0,0,1,NULL),(65,1,102,NULL,'GR-ΜΕΓΑΛΗ ΠΑΡΑΣΚΕΥΗ','ΜΕΓΑΛΗ_ΠΑΡΑΣΚΕΥΗ',0,0,0,1,NULL),(66,1,102,NULL,'GR-ΔΕΥΤΕΡΑ ΤΟΥ ΠΑΣΧΑ','ΔΕΥΤΕΡΑ_ΤΟΥ_ΠΑΣΧΑ',0,0,0,1,NULL),(67,1,102,NULL,'GR-ΤΟΥ ΑΓΙΟΥ ΠΝΕΥΜΑΤΟΣ','ΤΟΥ_ΑΓΙΟΥ_ΠΝΕΥΜΑΤΟΣ',0,0,0,1,NULL),(68,1,102,NULL,'GR-ΚΟΙΜΗΣΗ ΤΗΣ ΘΕΟΤΟΚΟΥ','',15,8,0,1,NULL),(69,1,102,NULL,'GR-28Η ΟΚΤΩΒΡΙΟΥ','',28,10,0,1,NULL),(70,1,102,NULL,'GR-ΧΡΙΣΤΟΥΓΕΝΝΑ','',25,12,0,1,NULL),(71,1,102,NULL,'GR-ΣΥΝΑΞΗ ΘΕΟΤΟΚΟΥ','',26,12,0,1,NULL),(72,1,117,NULL,'IN-REPUBLICDAY','',26,1,0,1,NULL),(73,1,117,NULL,'IN-GANDI','',2,10,0,1,NULL);
/*!40000 ALTER TABLE `llx_c_hrm_public_holiday` ENABLE KEYS */;
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
