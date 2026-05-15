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
-- Table structure for table `llx_c_invoice_subtype`
--

DROP TABLE IF EXISTS `llx_c_invoice_subtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_invoice_subtype` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `entity` int NOT NULL DEFAULT '1',
  `fk_country` int NOT NULL,
  `code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_invoice_subtype` (`entity`,`code`,`fk_country`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_invoice_subtype`
--

LOCK TABLES `llx_c_invoice_subtype` WRITE;
/*!40000 ALTER TABLE `llx_c_invoice_subtype` DISABLE KEYS */;
INSERT INTO `llx_c_invoice_subtype` VALUES (1,1,102,'1.1','Τιμολόγιο Πώλησης',1),(2,1,102,'1.2','Τιμολόγιο Πώλησης / Ενδοκοινοτικές Παραδόσεις',1),(3,1,102,'1.3','Τιμολόγιο Πώλησης / Παραδόσεις Τρίτων Χωρών',1),(4,1,102,'1.4','Τιμολόγιο Πώλησης / Πώληση για Λογαριασμό Τρίτων',0),(5,1,102,'1.5','Τιμολόγιο Πώλησης / Εκκαθάριση Πωλήσεων Τρίτων - Αμοιβή από Πωλήσεις Τρίτων',0),(6,1,102,'1.6','Τιμολόγιο Πώλησης / Συμπληρωματικό Παραστατικό',0),(7,1,102,'2.1','Τιμολόγιο Παροχής',1),(8,1,102,'2.2','Τιμολόγιο Παροχής / Ενδοκοινοτική Παροχή Υπηρεσιών',1),(9,1,102,'2.3','Τιμολόγιο Παροχής / Παροχή Υπηρεσιών σε λήπτη Τρίτης Χώρας',1),(10,1,102,'2.4','Τιμολόγιο Παροχής / Συμπληρωματικό Παραστατικό',0),(11,1,102,'3.1','Τίτλος Κτήσης (μη υπόχρεος Εκδότης)',0),(12,1,102,'3.2','Τίτλος Κτήσης (άρνηση έκδοσης από υπόχρεο Εκδότη)',0),(13,1,102,'6.1','Στοιχείο Αυτοπαράδοσης',0),(14,1,102,'6.2','Στοιχείο Ιδιοχρησιμοποίησης',0),(15,1,102,'7.1','Συμβόλαιο - Έσοδο',0),(16,1,102,'8.1','Ενοίκια - Έσοδο',0),(17,1,102,'8.2','Ειδικό Στοιχείο – Απόδειξης Είσπραξης Φόρου Διαμονής',0),(18,1,102,'11.1','ΑΛΠ',1),(19,1,102,'11.2','ΑΠΥ',1),(20,1,102,'11.3','Απλοποιημένο Τιμολόγιο',0),(21,1,102,'11.5','Απόδειξη Λιανικής Πώλησης για Λογ/σμό Τρίτων',0),(22,1,102,'5.1','Πιστωτικό Τιμολόγιο / Συσχετιζόμενο',0),(23,1,102,'5.2','Πιστωτικό Τιμολόγιο / Μη Συσχετιζόμενο',1),(24,1,102,'11.4','Πιστωτικό Στοιχείο Λιανικής',1);
/*!40000 ALTER TABLE `llx_c_invoice_subtype` ENABLE KEYS */;
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
