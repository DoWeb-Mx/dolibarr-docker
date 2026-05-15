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
-- Table structure for table `llx_asset_depreciation_options_economic`
--

DROP TABLE IF EXISTS `llx_asset_depreciation_options_economic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_asset_depreciation_options_economic` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `fk_asset` int DEFAULT NULL,
  `fk_asset_model` int DEFAULT NULL,
  `depreciation_type` smallint NOT NULL DEFAULT '0',
  `accelerated_depreciation_option` tinyint(1) DEFAULT '0',
  `degressive_coefficient` double(24,8) DEFAULT NULL,
  `duration` smallint NOT NULL,
  `duration_type` smallint NOT NULL DEFAULT '0',
  `amount_base_depreciation_ht` double(24,8) DEFAULT NULL,
  `amount_base_deductible_ht` double(24,8) DEFAULT NULL,
  `total_amount_last_depreciation_ht` double(24,8) DEFAULT NULL,
  `tms` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_modif` int DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_asset_doe_fk_asset` (`fk_asset`),
  UNIQUE KEY `uk_asset_doe_fk_asset_model` (`fk_asset_model`),
  KEY `idx_asset_doe_rowid` (`rowid`),
  KEY `fk_asset_doe_user_modif` (`fk_user_modif`),
  CONSTRAINT `fk_asset_doe_asset` FOREIGN KEY (`fk_asset`) REFERENCES `llx_asset` (`rowid`),
  CONSTRAINT `fk_asset_doe_asset_model` FOREIGN KEY (`fk_asset_model`) REFERENCES `llx_asset_model` (`rowid`),
  CONSTRAINT `fk_asset_doe_user_modif` FOREIGN KEY (`fk_user_modif`) REFERENCES `llx_user` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_asset_depreciation_options_economic`
--

LOCK TABLES `llx_asset_depreciation_options_economic` WRITE;
/*!40000 ALTER TABLE `llx_asset_depreciation_options_economic` DISABLE KEYS */;
/*!40000 ALTER TABLE `llx_asset_depreciation_options_economic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:25
