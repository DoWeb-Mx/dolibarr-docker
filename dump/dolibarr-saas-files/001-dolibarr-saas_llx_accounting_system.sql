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
-- Table structure for table `llx_accounting_system`
--

DROP TABLE IF EXISTS `llx_accounting_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_accounting_system` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `fk_country` int DEFAULT NULL,
  `pcg_version` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` smallint DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_accounting_system_pcg_version` (`pcg_version`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_accounting_system`
--

LOCK TABLES `llx_accounting_system` WRITE;
/*!40000 ALTER TABLE `llx_accounting_system` DISABLE KEYS */;
INSERT INTO `llx_accounting_system` VALUES (1,1,'PCG25-DEV','The developed accountancy french plan 2025',0,NULL,NULL),(2,1,'PCG18-ASSOC','French foundation chart of accounts 2018',0,NULL,NULL),(3,1,'PCGAFR14-DEV','The developed farm accountancy french plan 2014',0,NULL,NULL),(4,2,'PCMN-BASE','The base accountancy belgium plan',0,NULL,NULL),(5,2,'MAR-VERKORT','The base accountancy belgium plan Dutch',0,NULL,NULL),(6,4,'PCG08-PYME','The PYME accountancy spanish plan',0,NULL,NULL),(7,4,'PCG08-PYME-CAT','The PYME accountancy spanish plan in catalan language',0,NULL,NULL),(8,5,'SKR03','Standardkontenrahmen SKR 03',0,NULL,NULL),(9,5,'SKR04','Standardkontenrahmen SKR 04',0,NULL,NULL),(10,6,'PCG_SUISSE','Switzerland plan',0,NULL,NULL),(11,7,'ENG-BASE','England plan',0,NULL,NULL),(12,10,'PCT','The Tunisia plan',0,NULL,NULL),(13,12,'PCG','The Moroccan chart of accounts',0,NULL,NULL),(14,13,'NSCF','Nouveau système comptable financier',0,NULL,NULL),(15,17,'NL-VERKORT','Verkort rekeningschema',0,NULL,NULL),(16,20,'BAS-K1-MINI','The Swedish mini chart of accounts',0,NULL,NULL),(17,41,'AT-BASE','Plan Austria',0,NULL,NULL),(18,67,'PC-MIPYME','The PYME accountancy Chile plan',0,NULL,NULL),(19,80,'DK-STD','Standardkontoplan fra SKAT',0,NULL,NULL),(20,84,'EC-SUPERCIAS','Plan de cuentas Ecuador',0,NULL,NULL),(21,70,'CO-PUC','Plan único de cuentas Colombia',0,NULL,NULL),(22,140,'PCN2020-LUXEMBURG','Plan comptable normalisé 2020 Luxembourgeois',0,NULL,NULL),(23,188,'RO-BASE','Plan de conturi romanesc',0,NULL,NULL),(24,102,'Ε.Λ.Π.','Ελληνικά Λογιστικά Πρότυπα',0,NULL,NULL),(25,49,'SYSCOHADA-BJ','Plan comptable Ouest-Africain',0,NULL,NULL),(26,60,'SYSCOHADA-BF','Plan comptable Ouest-Africain',0,NULL,NULL),(27,73,'SYSCOHADA-CD','Plan comptable Ouest-Africain',0,NULL,NULL),(28,65,'SYSCOHADA-CF','Plan comptable Ouest-Africain',0,NULL,NULL),(29,72,'SYSCOHADA-CG','Plan comptable Ouest-Africain',0,NULL,NULL),(30,21,'SYSCOHADA-CI','Plan comptable Ouest-Africain',0,NULL,NULL),(31,24,'SYSCOHADA-CM','Plan comptable Ouest-Africain',0,NULL,NULL),(32,16,'SYSCOHADA-GA','Plan comptable Ouest-Africain',0,NULL,NULL),(33,87,'SYSCOHADA-GQ','Plan comptable Ouest-Africain',0,NULL,NULL),(34,71,'SYSCOHADA-KM','Plan comptable Ouest-Africain',0,NULL,NULL),(35,147,'SYSCOHADA-ML','Plan comptable Ouest-Africain',0,NULL,NULL),(36,168,'SYSCOHADA-NE','Plan comptable Ouest-Africain',0,NULL,NULL),(37,22,'SYSCOHADA-SN','Plan comptable Ouest-Africain',0,NULL,NULL),(38,66,'SYSCOHADA-TD','Plan comptable Ouest-Africain',0,NULL,NULL),(39,15,'SYSCOHADA-TG','Plan comptable Ouest-Africain',0,NULL,NULL),(40,11,'US-BASE','USA basic chart of accounts',0,NULL,NULL),(41,11,'US-GAAP-BASIC','USA GAAP basic chart of accounts',0,NULL,NULL),(42,14,'CA-ENG-BASE','Canadian basic chart of accounts - English',0,NULL,NULL),(43,154,'SAT/24-2019','Catalogo y codigo agrupador fiscal del 2019',1,NULL,NULL),(44,123,'JPN-BASE','日本 勘定科目表 基本版',0,NULL,NULL);
/*!40000 ALTER TABLE `llx_accounting_system` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:16
