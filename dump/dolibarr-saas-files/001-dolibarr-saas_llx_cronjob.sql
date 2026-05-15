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
-- Table structure for table `llx_cronjob`
--

DROP TABLE IF EXISTS `llx_cronjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_cronjob` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `tms` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `jobtype` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `command` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classesname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `objectname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `methodename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `md5params` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT '0',
  `datelastrun` datetime DEFAULT NULL,
  `datenextrun` datetime DEFAULT NULL,
  `datestart` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL,
  `datelastresult` datetime DEFAULT NULL,
  `lastresult` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lastoutput` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `unitfrequency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3600',
  `frequency` int NOT NULL DEFAULT '0',
  `maxrun` int NOT NULL DEFAULT '0',
  `nbrun` int DEFAULT NULL,
  `autodelete` int DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `processing` int NOT NULL DEFAULT '0',
  `pid` int DEFAULT NULL,
  `test` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `fk_user_author` int DEFAULT NULL,
  `fk_user_mod` int DEFAULT NULL,
  `fk_mailing` int DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `libname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_alert` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity` int DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_cronjob` (`label`,`entity`),
  KEY `idx_cronjob_status` (`status`),
  KEY `idx_cronjob_datelastrun` (`datelastrun`),
  KEY `idx_cronjob_datenextrun` (`datenextrun`),
  KEY `idx_cronjob_datestart` (`datestart`),
  KEY `idx_cronjob_dateend` (`dateend`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_cronjob`
--

LOCK TABLES `llx_cronjob` WRITE;
/*!40000 ALTER TABLE `llx_cronjob` DISABLE KEYS */;
INSERT INTO `llx_cronjob` VALUES (1,'2026-05-09 06:12:30','2026-05-08 14:22:29','method','SendEmailsReminders','','comm/action/class/actioncomm.class.php','ActionComm','sendEmailsReminder','','','agenda',10,NULL,'2026-05-08 14:22:29','2026-05-08 14:22:29',NULL,NULL,NULL,NULL,'60',5,0,0,0,0,0,NULL,'isModEnabled(\"agenda\")',NULL,NULL,NULL,'SendEMailsReminder','',NULL,1),(2,'2026-05-09 06:12:30','2026-05-08 14:22:29','method','SendSmsReminders','','comm/action/class/actioncomm.class.php','ActionComm','sendSmsReminder','','','agenda',10,NULL,'2026-05-08 14:22:29','2026-05-08 14:22:29',NULL,NULL,NULL,NULL,'60',5,0,0,0,0,0,NULL,'isModEnabled(\"agenda\")',NULL,NULL,NULL,'SendSmsReminder','',NULL,1),(3,'2026-05-09 06:12:30','2026-05-08 23:48:08','method','RecurringSupplierInvoicesJob','','fourn/class/fournisseur.facture-rec.class.php','FactureFournisseurRec','createRecurringInvoices','','','fournisseur',51,NULL,'2026-05-08 23:48:08','2026-05-08 23:00:00',NULL,NULL,NULL,NULL,'86400',1,0,0,0,0,0,NULL,'isModEnabled(\"supplier_invoice\")',1,1,NULL,'Generate recurring supplier invoices','',NULL,1),(4,'2026-05-09 05:48:08','2026-05-08 23:48:08','method','SendEmailsRemindersOnSupplierInvoiceDueDate','','fourn/class/fournisseur.facture.class.php','FactureFournisseur','sendEmailsRemindersOnSupplierInvoiceDueDate','10,all,EmailTemplateCode,duedate','','fournisseur',50,NULL,'2026-05-08 23:48:08','2026-05-08 23:00:00',NULL,NULL,NULL,NULL,'86400',1,0,0,0,0,0,NULL,'isModEnabled(\"supplier_invoice\")',1,1,NULL,'Send an email when we reach the supplier invoice due date (or supplier invoice date) - n days. First param is n, the number of days before due date (or supplier invoice date) to send the remind (or after if value is negative), second parameter is \"all\" or a payment mode code, third parameter is the code of the email template to use (an email template with the EmailTemplateCode must exists. The version of the email template in the language of the thirdparty will be used in priority. Language of the thirdparty will be also used to update the PDF of the sent supplier invoice). The fourth parameter is the string \"duedate\" (default) or \"invoicedate\" to define which date of the supplier invoice to use.','',NULL,1),(5,'2026-05-09 06:12:30','2026-05-08 23:48:12','method','RecurringInvoicesJob','','compta/facture/class/facture-rec.class.php','FactureRec','createRecurringInvoices','','','facture',51,NULL,'2026-05-08 23:48:12','2026-05-08 23:00:00',NULL,NULL,NULL,NULL,'86400',1,0,0,0,0,0,NULL,'isModEnabled(\"invoice\")',1,1,NULL,'Generate recurring invoices.','',NULL,1),(6,'2026-05-09 05:48:12','2026-05-08 23:48:12','method','SendEmailsRemindersOnInvoiceDueDate','','compta/facture/class/facture.class.php','Facture','sendEmailsRemindersOnInvoiceDueDate','10,all,EmailTemplateCode,duedate','','facture',50,NULL,'2026-05-08 23:48:12','2026-05-08 23:00:00',NULL,NULL,NULL,NULL,'86400',1,0,0,0,0,0,NULL,'isModEnabled(\"invoice\")',1,1,NULL,'Send an email when we reach the invoice due date (or invoice date) - n days. First param is n, the number of days before due date (or invoice date) to send the remind (or after if value is negative), second parameter is \"all\" or a payment mode code, third parameter is the code of the email template to use (an email template with the EmailTemplateCode must exists. The version of the email template in the language of the thirdparty will be used in priority. Language of the thirdparty will be also used to update the PDF of the sent invoice). The fourth parameter is the string \"duedate\" (default) or \"invoicedate\" to define which date of the invoice to use.','',NULL,1),(7,'2026-05-09 06:12:30','2026-05-08 23:48:53','method','Actualizar todos los tipos de cambio','','multicurrency/class/multicurrency.class.php','MultiCurrency','syncRates','0,0,cron','','multicurrency',61,NULL,'2026-05-08 23:48:53','2026-05-08 21:15:00',NULL,NULL,NULL,NULL,'604800',1,0,0,0,0,0,NULL,'isModEnabled(\"cron\")',1,1,NULL,'Update all the currencies using the currencylayer API. An API key needs to be given in the multi-currency module config page to have this job working.<br>First param is not used, Second parameter is 0 to update only already existing currency defined into the Multicurrency module or 1 to add any currency. Third parameter must be \"cron\".','',NULL,1),(8,'2026-05-09 06:12:30','2026-05-08 23:49:20','method','PurgeDeleteTemporaryFilesShort','','core/class/utils.class.php','Utils','purgeFiles','tempfilesold+logfiles','','cron',50,NULL,'2026-05-08 23:49:20',NULL,NULL,NULL,NULL,NULL,'604800',2,0,0,0,0,0,NULL,'1',1,1,NULL,'PurgeDeleteTemporaryFiles','',NULL,0),(9,'2026-05-09 05:49:20','2026-05-08 23:49:20','method','MakeLocalDatabaseDumpShort','','core/class/utils.class.php','Utils','dumpDatabase','none,auto,1,auto,10,0,0','','cron',90,NULL,'2026-05-08 23:49:20',NULL,NULL,NULL,NULL,NULL,'604800',1,0,0,0,0,0,NULL,'getDolDBType() == \'mysqli\'',1,1,NULL,'MakeLocalDatabaseDump','',NULL,0),(10,'2026-05-09 05:49:20','2026-05-08 23:49:20','method','MakeSendLocalDatabaseDumpShort','','core/class/utils.class.php','Utils','sendBackup',',,,,,sql','','cron',91,NULL,'2026-05-08 23:49:20',NULL,NULL,NULL,NULL,NULL,'604800',1,0,0,0,0,0,NULL,'getDolGlobalString(\"MAIN_ALLOW_BACKUP_BY_EMAIL\") && getDolDBType() == \'mysqli\'',1,1,NULL,'MakeSendLocalDatabaseDump','',NULL,0),(11,'2026-05-09 05:49:20','2026-05-08 23:49:20','method','CleanUnfinishedCronjobShort','','core/class/utils.class.php','Utils','cleanUnfinishedCronjob','','','cron',10,NULL,'2026-05-08 23:49:20',NULL,NULL,NULL,NULL,NULL,'60',5,0,0,0,0,0,NULL,'getDolGlobalInt(\"MAIN_FEATURES_LEVEL\") >= 2',1,1,NULL,'CleanUnfinishedCronjob','',NULL,0),(12,'2026-05-09 05:49:23','2026-05-08 23:49:23','method','CompressSyslogs','','core/class/utils.class.php','Utils','compressSyslogs','','','syslog',50,NULL,'2026-05-08 23:49:23',NULL,NULL,NULL,NULL,NULL,'86400',1,0,0,0,0,0,NULL,'1',1,1,NULL,'Compress and archive log files. The number of versions to keep is defined into the setup of module. Warning: Main application cron script must be run with same account than your web server to avoid to get log files with different owner than required by web server. Another solution is to set web server Operating System group as the group of directory documents and set GROUP permission \"rws\" on this directory so log files will always have the group and permissions of the web server Operating System group.','',NULL,1);
/*!40000 ALTER TABLE `llx_cronjob` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:20
