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
-- Table structure for table `llx_c_type_contact`
--

DROP TABLE IF EXISTS `llx_c_type_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_type_contact` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `element` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'external',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `module` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_type_contact_id` (`element`,`source`,`code`),
  KEY `idx_c_type_contact_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_type_contact`
--

LOCK TABLES `llx_c_type_contact` WRITE;
/*!40000 ALTER TABLE `llx_c_type_contact` DISABLE KEYS */;
INSERT INTO `llx_c_type_contact` VALUES (1,'contrat','internal','SALESREPSIGN','Commercial signataire du contrat',1,NULL,0),(2,'contrat','internal','SALESREPFOLL','Commercial suivi du contrat',1,NULL,0),(3,'contrat','external','BILLING','Contact client facturation contrat',1,NULL,0),(4,'contrat','external','CUSTOMER','Contact client suivi contrat',1,NULL,0),(5,'contrat','external','SALESREPSIGN','Contact client signataire contrat',1,NULL,0),(6,'propal','internal','SALESREPFOLL','Commercial à l\'origine de la propale',1,NULL,0),(7,'propal','external','BILLING','Contact client facturation propale',1,NULL,0),(8,'propal','external','CUSTOMER','Contact client suivi propale',1,NULL,0),(9,'propal','external','SHIPPING','Contact client livraison propale',1,NULL,0),(10,'facture','internal','SALESREPFOLL','Responsable suivi du paiement',1,NULL,0),(11,'facture','external','BILLING','Contact client facturation',1,NULL,0),(12,'facture','external','SHIPPING','Contact client livraison',1,NULL,0),(13,'facture','external','SERVICE','Contact client prestation',1,NULL,0),(14,'invoice_supplier','internal','SALESREPFOLL','Responsable suivi du paiement',1,NULL,0),(15,'invoice_supplier','external','BILLING','Contact fournisseur facturation',1,NULL,0),(16,'invoice_supplier','external','SHIPPING','Contact fournisseur livraison',1,NULL,0),(17,'invoice_supplier','external','SERVICE','Contact fournisseur prestation',1,NULL,0),(18,'agenda','internal','ACTOR','Responsable',1,NULL,0),(19,'agenda','internal','GUEST','Guest',1,NULL,0),(20,'agenda','external','ACTOR','Responsable',1,NULL,0),(21,'agenda','external','GUEST','Guest',1,NULL,0),(22,'commande','internal','SALESREPFOLL','Responsable suivi de la commande',1,NULL,0),(23,'commande','external','BILLING','Contact client facturation commande',1,NULL,0),(24,'commande','external','CUSTOMER','Contact client suivi commande',1,NULL,0),(25,'commande','external','SHIPPING','Contact client livraison commande',1,NULL,0),(26,'shipping','internal','SALESREPFOLL','Representative following-up shipping',1,NULL,0),(27,'shipping','external','BILLING','Customer invoice contact',1,NULL,0),(28,'shipping','external','CUSTOMER','Customer shipping contact',1,NULL,0),(29,'shipping','external','SHIPPING','Loading facility',1,NULL,0),(30,'shipping','external','DELIVERY','Delivery facility',1,NULL,0),(31,'fichinter','internal','INTERREPFOLL','Responsable suivi de l\'intervention',1,NULL,0),(32,'fichinter','internal','INTERVENING','Intervenant',1,NULL,0),(33,'fichinter','external','BILLING','Contact client facturation intervention',1,NULL,0),(34,'fichinter','external','CUSTOMER','Contact client suivi de l\'intervention',1,NULL,0),(35,'order_supplier','internal','SALESREPFOLL','Responsable suivi de la commande',1,NULL,0),(36,'order_supplier','internal','SHIPPING','Responsable réception de la commande',1,NULL,0),(37,'order_supplier','external','BILLING','Contact fournisseur facturation commande',1,NULL,0),(38,'order_supplier','external','CUSTOMER','Contact fournisseur suivi commande',1,NULL,0),(39,'order_supplier','external','SHIPPING','Contact fournisseur livraison commande',1,NULL,0),(40,'dolresource','internal','USERINCHARGE','In charge of resource',1,NULL,0),(41,'dolresource','external','THIRDINCHARGE','In charge of resource',1,NULL,0),(42,'ticket','internal','SUPPORTTEC','Utilisateur contact support',1,NULL,0),(43,'ticket','internal','CONTRIBUTOR','Intervenant',1,NULL,0),(44,'ticket','external','SUPPORTCLI','Contact client suivi incident',1,NULL,0),(45,'ticket','external','CONTRIBUTOR','Intervenant',1,NULL,0),(46,'product','internal','SALESREPFOLL','Responsable produit',1,NULL,0),(47,'product','internal','BILLING','Responsable production',1,NULL,0),(48,'product','external','CUSTOMER','Contact fournisseur',1,NULL,0),(49,'product','external','SHIPPING','Contact sous-traitance',1,NULL,0),(50,'project','internal','PROJECTLEADER','Chef de Projet',1,NULL,0),(51,'project','internal','PROJECTCONTRIBUTOR','Intervenant',1,NULL,0),(52,'project','external','PROJECTLEADER','Chef de Projet',1,NULL,0),(53,'project','external','PROJECTCONTRIBUTOR','Intervenant',1,NULL,0),(54,'project_task','internal','TASKEXECUTIVE','Responsable',1,NULL,0),(55,'project_task','internal','TASKCONTRIBUTOR','Intervenant',1,NULL,0),(56,'project_task','external','TASKEXECUTIVE','Responsable',1,NULL,0),(57,'project_task','external','TASKCONTRIBUTOR','Intervenant',1,NULL,0),(58,'supplier_proposal','internal','SALESREPFOLL','Responsable suivi de la demande',1,NULL,0),(59,'supplier_proposal','external','BILLING','Contact fournisseur facturation',1,NULL,0),(60,'supplier_proposal','external','SHIPPING','Contact fournisseur livraison',1,NULL,0),(61,'supplier_proposal','external','SERVICE','Contact fournisseur prestation',1,NULL,0),(62,'conferenceorbooth','internal','MANAGER','Conference or Booth manager',1,NULL,0),(63,'conferenceorbooth','external','SPEAKER','Conference Speaker',1,NULL,0),(64,'conferenceorbooth','external','RESPONSIBLE','Booth responsible',1,NULL,0),(65,'societe','external','SALESREPTHIRD','Sales Representative',1,NULL,0);
/*!40000 ALTER TABLE `llx_c_type_contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:15
