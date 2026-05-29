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
-- Table structure for table `llx_c_chargesociales`
--

DROP TABLE IF EXISTS `llx_c_chargesociales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_chargesociales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libelle` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deductible` smallint NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT '1',
  `code` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountancy_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_pays` int NOT NULL DEFAULT '1',
  `module` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_chargesociales`
--

LOCK TABLES `llx_c_chargesociales` WRITE;
/*!40000 ALTER TABLE `llx_c_chargesociales` DISABLE KEYS */;
INSERT INTO `llx_c_chargesociales` VALUES (1,'Securite sociale (URSSAF / MSA)',1,1,'TAXSECU',NULL,1,NULL),(2,'Securite sociale des indépendants (URSSAF)',1,1,'TAXSSI',NULL,1,NULL),(10,'Taxe apprentissage',1,1,'TAXAPP',NULL,1,NULL),(11,'Formation professionnelle continue',1,1,'TAXFPC',NULL,1,NULL),(12,'Cotisation fonciere des entreprises (CFE)',1,1,'TAXCFE',NULL,1,NULL),(13,'Cotisation sur la valeur ajoutee des entreprises (CVAE)',1,1,'TAXCVAE',NULL,1,NULL),(20,'Taxe fonciere',1,1,'TAXFON',NULL,1,NULL),(25,'Prelevement à la source (PAS)',0,1,'TAXPAS',NULL,1,NULL),(30,'Prevoyance',1,1,'TAXPREV',NULL,1,NULL),(40,'Mutuelle',1,1,'TAXMUT',NULL,1,NULL),(50,'Retraite',1,1,'TAXRET',NULL,1,NULL),(60,'Taxe sur vehicule societe (TVS)',0,1,'TAXTVS',NULL,1,NULL),(70,'impôts sur les sociétés (IS)',0,1,'TAXIS',NULL,1,NULL),(201,'ONSS',1,1,'TAXBEONSS',NULL,2,NULL),(210,'Precompte professionnel',1,1,'TAXBEPREPRO',NULL,2,NULL),(220,'Prime existence',1,1,'TAXBEPRIEXI',NULL,2,NULL),(230,'Precompte immobilier',1,1,'TAXBEPREIMMO',NULL,2,NULL),(4101,'Krankenversicherung',1,1,'TAXATKV',NULL,41,NULL),(4102,'Unfallversicherung',1,1,'TAXATUV',NULL,41,NULL),(4103,'Pensionsversicherung',1,1,'TAXATPV',NULL,41,NULL),(4104,'Arbeitslosenversicherung',1,1,'TAXATAV',NULL,41,NULL),(4105,'Insolvenzentgeltsicherungsfond',1,1,'TAXATIESG',NULL,41,NULL),(4106,'Wohnbauförderung',1,1,'TAXATWF',NULL,41,NULL),(4107,'Arbeiterkammerumlage',1,1,'TAXATAK',NULL,41,NULL),(4108,'Mitarbeitervorsorgekasse',1,1,'TAXATMVK',NULL,41,NULL),(4109,'Familienlastenausgleichsfond',1,1,'TAXATFLAF',NULL,41,NULL),(10201,'Αναλυτική Περιοδική Δήλωση (ΑΠΔ)',1,1,'ΑΠΔ',NULL,102,NULL),(10202,'Φόρος Μισθωτών Υπηρεσιών (ΦΜΥ)',1,1,'ΦΜΥ',NULL,102,NULL),(10203,'Ασφαλιστικές εισφορές (ΕΦΚΑ)',1,1,'ΕΦΚΑ',NULL,102,NULL),(10204,'Προκαταβολή Φόρου Εισοδήματος',0,1,'ΕΦΟΡΙΑ',NULL,102,NULL),(10205,'Ενιαίος Φόρος Ιδιοκτησίας Ακινήτων (ΕΝ.Φ.Ι.Α) ',0,1,'ΕΝΦΙΑ',NULL,102,NULL),(10206,'Ετήσιο τέλος διατήρησης Μερίδας στο Γ.Ε.ΜΗ.',1,1,'ΓΕΜΗ',NULL,102,NULL),(10207,'Επαγγελματικό Επιμελητήριο',1,1,'ΕΕ',NULL,102,NULL),(10208,'Εμπορικό και Βιομηχανικό Επιμελητηρίο',1,1,'ΕΒΕ',NULL,102,NULL),(10209,'Τέλη Κυκλοφορίας',1,1,'ΤΕΛΗ',NULL,102,NULL),(10210,'Ασφάλιση οχήματος',1,1,'ΑΣΦΑΛΕΙΑ',NULL,102,NULL),(10211,'Ενοίκιο',1,1,'ΕΝΟΙΚΙΟ',NULL,102,NULL),(10212,'Κοινόχρηστα',1,1,'ΚΟΙΝΟ',NULL,102,NULL),(10213,'Ηλεκτροδότηση',1,1,'ΡΕΥΜΑ',NULL,102,NULL);
/*!40000 ALTER TABLE `llx_c_chargesociales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:28
