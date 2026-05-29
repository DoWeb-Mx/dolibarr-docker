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
-- Table structure for table `llx_asset`
--

DROP TABLE IF EXISTS `llx_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_asset` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `ref` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity` int NOT NULL DEFAULT '1',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_asset_model` int DEFAULT NULL,
  `reversal_amount_ht` double(24,8) DEFAULT NULL,
  `acquisition_value_ht` double(24,8) DEFAULT NULL,
  `recovered_vat` double(24,8) DEFAULT NULL,
  `reversal_date` date DEFAULT NULL,
  `date_acquisition` date NOT NULL,
  `date_start` date NOT NULL,
  `qty` double NOT NULL DEFAULT '1',
  `acquisition_type` smallint NOT NULL DEFAULT '0',
  `asset_type` smallint NOT NULL DEFAULT '0',
  `not_depreciated` tinyint(1) DEFAULT '0',
  `disposal_date` date DEFAULT NULL,
  `disposal_amount_ht` double(24,8) DEFAULT NULL,
  `fk_disposal_type` int DEFAULT NULL,
  `disposal_depreciated` tinyint(1) DEFAULT '0',
  `disposal_subject_to_vat` tinyint(1) DEFAULT '0',
  `note_public` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note_private` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_creat` int NOT NULL,
  `fk_user_modif` int DEFAULT NULL,
  `fk_user_valid` int DEFAULT NULL,
  `last_main_doc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_asset_fk_asset_model` (`fk_asset_model`),
  KEY `idx_asset_fk_disposal_type` (`fk_disposal_type`),
  KEY `fk_asset_user_creat` (`fk_user_creat`),
  KEY `fk_asset_user_modif` (`fk_user_modif`),
  CONSTRAINT `fk_asset_asset_model` FOREIGN KEY (`fk_asset_model`) REFERENCES `llx_asset_model` (`rowid`),
  CONSTRAINT `fk_asset_disposal_type` FOREIGN KEY (`fk_disposal_type`) REFERENCES `llx_c_asset_disposal_type` (`rowid`),
  CONSTRAINT `fk_asset_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `llx_user` (`rowid`),
  CONSTRAINT `fk_asset_user_modif` FOREIGN KEY (`fk_user_modif`) REFERENCES `llx_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_asset`
--

LOCK TABLES `llx_asset` WRITE;
/*!40000 ALTER TABLE `llx_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `llx_asset` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:35
