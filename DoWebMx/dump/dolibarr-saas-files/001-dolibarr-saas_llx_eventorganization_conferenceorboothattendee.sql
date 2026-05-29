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
-- Table structure for table `llx_eventorganization_conferenceorboothattendee`
--

DROP TABLE IF EXISTS `llx_eventorganization_conferenceorboothattendee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_eventorganization_conferenceorboothattendee` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `ref` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_soc` int DEFAULT NULL,
  `fk_actioncomm` int DEFAULT NULL,
  `fk_project` int NOT NULL,
  `fk_invoice` int DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_company` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_subscription` datetime DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `note_public` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note_private` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_creation` datetime NOT NULL,
  `tms` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_creat` int DEFAULT NULL,
  `fk_user_modif` int DEFAULT NULL,
  `last_main_doc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_key` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_eventorganization_confboothattendee` (`ref`),
  UNIQUE KEY `uk_eventorganization_conferenceorboothattendee` (`fk_project`,`email`,`fk_actioncomm`),
  KEY `idx_eventorganization_conferenceorboothattendee_rowid` (`rowid`),
  KEY `idx_eventorganization_conferenceorboothattendee_fk_soc` (`fk_soc`),
  KEY `idx_eventorganization_conferenceorboothattendee_fk_actioncomm` (`fk_actioncomm`),
  KEY `idx_eventorganization_conferenceorboothattendee_fk_project` (`fk_project`),
  KEY `idx_eventorganization_conferenceorboothattendee_email` (`email`),
  KEY `idx_eventorganization_conferenceorboothattendee_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_eventorganization_conferenceorboothattendee`
--

LOCK TABLES `llx_eventorganization_conferenceorboothattendee` WRITE;
/*!40000 ALTER TABLE `llx_eventorganization_conferenceorboothattendee` DISABLE KEYS */;
/*!40000 ALTER TABLE `llx_eventorganization_conferenceorboothattendee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:32
