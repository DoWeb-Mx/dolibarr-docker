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
-- Table structure for table `llx_boxes_def`
--

DROP TABLE IF EXISTS `llx_boxes_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_boxes_def` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `file` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity` int NOT NULL DEFAULT '1',
  `fk_user` int NOT NULL DEFAULT '0',
  `tms` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` varchar(130) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_boxes_def` (`file`,`entity`,`note`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_boxes_def`
--

LOCK TABLES `llx_boxes_def` WRITE;
/*!40000 ALTER TABLE `llx_boxes_def` DISABLE KEYS */;
INSERT INTO `llx_boxes_def` VALUES (1,'box_lastlogin.php',1,0,'2026-05-08 20:22:27',NULL),(2,'box_birthdays.php',1,0,'2026-05-08 20:22:27',NULL),(3,'box_dolibarr_state_board.php',1,0,'2026-05-08 20:22:27',NULL),(4,'box_actions.php',1,0,'2026-05-08 20:22:29',NULL),(5,'box_actions_future.php',1,0,'2026-05-08 20:22:29',NULL),(6,'box_clients.php',1,0,'2026-05-09 05:47:58',NULL),(7,'box_prospect.php',1,0,'2026-05-09 05:47:58',NULL),(8,'box_contacts.php',1,0,'2026-05-09 05:47:58',NULL),(9,'box_activity.php',1,0,'2026-05-09 05:47:58','(WarningUsingThisBoxSlowDown)'),(10,'box_goodcustomers.php',1,0,'2026-05-09 05:47:58','(WarningUsingThisBoxSlowDown)'),(11,'box_graph_propales_permonth.php',1,0,'2026-05-09 05:48:00',NULL),(12,'box_propales.php',1,0,'2026-05-09 05:48:00',NULL),(13,'box_graph_invoices_supplier_permonth.php',1,0,'2026-05-09 05:48:08',NULL),(14,'box_graph_orders_supplier_permonth.php',1,0,'2026-05-09 05:48:08',NULL),(15,'box_fournisseurs.php',1,0,'2026-05-09 05:48:08',NULL),(16,'box_factures_fourn_imp.php',1,0,'2026-05-09 05:48:08',NULL),(17,'box_factures_fourn.php',1,0,'2026-05-09 05:48:08',NULL),(18,'box_supplier_orders.php',1,0,'2026-05-09 05:48:08',NULL),(19,'box_supplier_orders_awaiting_reception.php',1,0,'2026-05-09 05:48:08',NULL),(20,'box_factures_imp.php',1,0,'2026-05-09 05:48:12',NULL),(21,'box_factures.php',1,0,'2026-05-09 05:48:12',NULL),(22,'box_graph_invoices_permonth.php',1,0,'2026-05-09 05:48:12',NULL),(23,'box_customers_outstanding_bill_reached.php',1,0,'2026-05-09 05:48:12',NULL),(24,'box_comptes.php',1,0,'2026-05-09 05:48:21',NULL),(25,'box_accountancy_last_manual_entries.php',1,0,'2026-05-09 05:48:28',NULL),(26,'box_accountancy_suspense_account.php',1,0,'2026-05-09 05:48:28',NULL),(27,'box_produits.php',1,0,'2026-05-09 05:48:32',NULL),(28,'box_produits_alerte_stock.php',1,0,'2026-05-09 05:48:32',NULL),(29,'box_graph_product_distribution.php',1,0,'2026-05-09 05:48:32',NULL),(30,'box_services_contracts.php',1,0,'2026-05-09 05:48:41',NULL),(31,'box_bookmarks.php',1,0,'2026-05-09 05:48:59',NULL),(32,'box_scheduled_jobs.php',1,0,'2026-05-09 05:49:20',NULL),(33,'box_contracts.php',1,0,'2026-05-09 05:51:11',NULL),(34,'box_services_expired.php',1,0,'2026-05-09 05:51:11',NULL);
/*!40000 ALTER TABLE `llx_boxes_def` ENABLE KEYS */;
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
