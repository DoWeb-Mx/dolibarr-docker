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
-- Table structure for table `llx_c_holiday_types`
--

DROP TABLE IF EXISTS `llx_c_holiday_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_holiday_types` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `entity` int NOT NULL DEFAULT '1',
  `code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `affect` int NOT NULL,
  `delay` int NOT NULL,
  `newbymonth` double(8,5) NOT NULL DEFAULT '0.00000',
  `fk_country` int DEFAULT NULL,
  `block_if_negative` int NOT NULL DEFAULT '0',
  `sortorder` smallint DEFAULT NULL,
  `active` int DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_holiday_types` (`entity`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_holiday_types`
--

LOCK TABLES `llx_c_holiday_types` WRITE;
/*!40000 ALTER TABLE `llx_c_holiday_types` DISABLE KEYS */;
INSERT INTO `llx_c_holiday_types` VALUES (1,1,'LEAVE_SICK','Sick leave',0,0,0.00000,NULL,0,1,1),(2,1,'LEAVE_OTHER','Other leave',0,0,0.00000,NULL,0,2,1),(3,1,'LEAVE_PAID','Paid vacation',1,7,0.00000,NULL,0,3,0),(4,1,'LEAVE_RTT_FR','RTT',1,7,0.83000,1,0,4,1),(5,1,'LEAVE_PAID_FR','Paid vacation',1,30,2.08334,1,0,5,1),(6,1,'5D1Y','Κανονική άδεια(Πενθήμερο 1ο έτος)',1,0,1.66700,102,0,6,1),(7,1,'5D2Y','Κανονική άδεια(Πενθήμερο 2ο έτος)',1,0,1.75000,102,0,7,1),(8,1,'5D3-10Y','Κανονική άδεια(Πενθήμερο 3ο έως 10ο έτος)',1,0,1.83300,102,0,8,1),(9,1,'5D10-25Y','Κανονική άδεια(Πενθήμερο 10ο έως 25ο έτος)',1,0,2.08300,102,0,9,1),(10,1,'5D25+Y','Κανονική άδεια(Πενθήμερο 25+ έτη)',1,0,2.16600,102,0,10,1),(11,1,'6D1Y','Κανονική άδεια(Εξαήμερο 1ο έτος)',1,0,2.00000,102,0,11,1),(12,1,'6D2Y','Κανονική άδεια(Εξαήμερο 2ο έτος)',1,0,2.08300,102,0,12,1),(13,1,'6D3-10Y','Κανονική άδεια(Εξαήμερο 3ο έως 10ο έτος)',1,0,2.16600,102,0,13,1),(14,1,'6D10-25Y','Κανονική άδεια(Εξαήμερο 10ο έως 25ο έτος)',1,0,2.08300,102,0,14,1),(15,1,'6D25+Y','Κανονική άδεια(Εξαήμερο 25+ έτη)',1,0,2.16600,102,0,15,1),(16,1,'5D-WED','Πενθήμερη άδεια γάμου(με αποδοχές)',0,0,0.00000,102,0,16,0),(17,1,'6D-WED','Εξαήμερη άδεια γάμου(με αποδοχές)',0,0,0.00000,102,0,17,0),(18,1,'7D-AR','Επταήμερη άδεια ιατρικώς υποβοηθούμενης αναπαραγωγής(με αποδοχές)',0,0,0.00000,102,0,18,0),(19,1,'1D-BC','Μονοήμερη άδεια προγεννητικών εξετάσεων(με αποδοχές)',0,0,0.00000,102,0,19,0),(20,1,'1D-GYN','Μονοήμερη άδεια γυναικολογικού ελέγχου(με αποδοχές)',0,0,0.00000,102,0,20,0),(21,1,'149D-ML','Άδεια Μητρότητας (Άδεια κύησης – λοχείας)56 ημέρες πριν-93 ημέρες μετα(με αποδοχές)',0,0,0.00000,102,0,21,0),(22,1,'14D-PL','14ήμερη Άδεια πατρότητας(με αποδοχές)',0,0,0.00000,102,0,22,0),(23,1,'1-2H-CC','Άδεια φροντίδας παιδιών (μειωμένο ωράριο  https://www.kepea.gr/aarticle.php?id=1984)',0,0,0.00000,102,0,23,0),(24,1,'9M-M','Ειδική άδεια προστασίας μητρότητας 9 μηνών(χωρίς αποδοχές)',0,0,0.00000,102,0,24,0),(25,1,'4M-M','Τετράμηνη γονική Άδεια Ανατροφής Τέκνων(χωρίς αποδοχές)',0,0,0.00000,102,0,25,0),(26,1,'6-8D-SP','Εξαήμερη ή Οκταήμερη Άδεια για μονογονεϊκές οικογένειες(με αποδοχές)',0,0,0.00000,102,0,26,0),(27,1,'6-8-14D-FC','Αναρρωτική άδεια (άνευ αποδοχών, 6 ημέρες/έτος για ένα παιδί - 8 ημέρες/έτος για δύο και 14 ημέρες/έτος για τρία ή περισσότερα)',0,0,0.00000,102,0,27,0),(28,1,'10D-CD','Δεκαήμερη Γονική Άδεια για παιδί με σοβαρά νοσήματα και λόγω νοσηλείας παιδιών(με αποδοχές)',0,0,0.00000,102,0,28,0),(29,1,'30D-CD','Άδεια λόγω νοσηλείας των παιδιών(έως 30 ημέρες/έτος χωρίς αποδοχές)',0,0,0.00000,102,0,29,0),(30,1,'5D-CG','Άδεια φροντιστή(έως 5 ημέρες/έτος χωρίς αποδοχές)',0,0,0.00000,102,0,30,0),(31,1,'2D-CG','Άδεια απουσίας από την εργασία για λόγους ανωτέρας βίας(έως 2 ημέρες/έτος με αποδοχές)',0,0,0.00000,102,0,31,0),(32,1,'2D-SC','Άδεια για παρακολούθηση σχολικής επίδοσης(έως 2 ημέρες/έτος με αποδοχές)',0,0,0.00000,102,0,32,0),(33,1,'1D-BD','Μονοήμερη άδεια αιμοδοσίας(με αποδοχές)',0,0,0.00000,102,0,33,0),(34,1,'22D-BT','Άδεια για μετάγγιση αίματος & αιμοκάθαρση(έως 22 ημέρες/έτος με αποδοχές)',0,0,0.00000,102,0,34,0),(35,1,'30D-HIV','Άδεια λόγω AIDS(έως ένα (1) μήνα/έτος με αποδοχές)',0,0,0.00000,102,0,35,0),(36,1,'20D-CD','Άδεια πενθούντων γονέων(20 ημέρες με αποδοχές)',0,0,0.00000,102,0,36,0),(37,1,'2D-FD','Άδεια λόγω θανάτου συγγενούς(2 ημέρες με αποδοχές)',0,0,0.00000,102,0,37,0),(38,1,'DIS','Άδειες αναπήρων(30 ημέρες με αποδοχές)',0,0,0.00000,102,0,38,0),(39,1,'SE','Άδεια εξετάσεων μαθητών, σπουδαστών, φοιτητών(30 ημέρες χωρίς αποδοχές)',0,0,0.00000,102,0,39,0),(40,1,'NOT PAID','Άδεια άνευ αποδοχών(έως ένα (1) έτος)',0,0,0.00000,102,0,40,0);
/*!40000 ALTER TABLE `llx_c_holiday_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:18
