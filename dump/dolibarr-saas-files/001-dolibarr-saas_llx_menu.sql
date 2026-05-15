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
-- Table structure for table `llx_menu`
--

DROP TABLE IF EXISTS `llx_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_menu` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `menu_handler` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity` int NOT NULL DEFAULT '1',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mainmenu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leftmenu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_menu` int NOT NULL,
  `fk_mainmenu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_leftmenu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `showtopmenuinframe` int DEFAULT '0',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `langs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` smallint DEFAULT NULL,
  `perms` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `enabled` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `usertype` int NOT NULL DEFAULT '0',
  `tms` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rowid`),
  KEY `idx_menu_menuhandler_type` (`menu_handler`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_menu`
--

LOCK TABLES `llx_menu` WRITE;
/*!40000 ALTER TABLE `llx_menu` DISABLE KEYS */;
INSERT INTO `llx_menu` VALUES (1,'all',1,'agenda','top','agenda',NULL,0,NULL,NULL,86,'/comm/action/index.php',0,'','TMenuAgenda','<span class=\"fas fa-calendar-alt infobox-action pictofixedwidth\" style=\"\"></span>','agenda',NULL,'$user->hasRight(\"agenda\", \"myactions\", \"read\") || $user->hasRight(\"resource\", \"read\")','isModEnabled(\"agenda\") || isModEnabled(\"resource\")',2,'2026-05-08 20:22:29'),(2,'all',1,'agenda','left','agenda',NULL,1,NULL,NULL,100,'/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda',0,'','Actions','<span class=\"fas fa-calendar-alt infobox-action paddingright pictofixedwidth\" style=\"\"></span>','agenda',NULL,'$user->hasRight(\"agenda\", \"myactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(3,'all',1,'agenda','left','agenda',NULL,2,NULL,NULL,101,'/comm/action/card.php?mainmenu=agenda&amp;leftmenu=agenda&action=create',0,'','NewAction','','commercial',NULL,'($user->hasRight(\"agenda\", \"myactions\", \"create\") || $user->hasRight(\"agenda\", \"allactions\", \"create\"))','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(4,'all',1,'agenda','left','agenda',NULL,2,NULL,NULL,140,'/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda',0,'','Calendar','','agenda',NULL,'$user->hasRight(\"agenda\", \"myactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(5,'all',1,'agenda','left','agenda',NULL,4,NULL,NULL,141,'/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine',0,'','MenuToDoMyActions','','agenda',NULL,'$user->hasRight(\"agenda\", \"myactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(6,'all',1,'agenda','left','agenda',NULL,4,NULL,NULL,142,'/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine',0,'','MenuDoneMyActions','','agenda',NULL,'$user->hasRight(\"agenda\", \"myactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(7,'all',1,'agenda','left','agenda',NULL,4,NULL,NULL,143,'/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filtert=-1',0,'','MenuToDoActions','','agenda',NULL,'$user->hasRight(\"agenda\", \"allactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(8,'all',1,'agenda','left','agenda',NULL,4,NULL,NULL,144,'/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filtert=-1',0,'','MenuDoneActions','','agenda',NULL,'$user->hasRight(\"agenda\", \"allactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(9,'all',1,'agenda','left','agenda',NULL,2,NULL,NULL,110,'/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda',0,'','List','','agenda',NULL,'$user->hasRight(\"agenda\", \"myactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(10,'all',1,'agenda','left','agenda',NULL,9,NULL,NULL,111,'/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine',0,'','MenuToDoMyActions','','agenda',NULL,'$user->hasRight(\"agenda\", \"myactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(11,'all',1,'agenda','left','agenda',NULL,9,NULL,NULL,112,'/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine',0,'','MenuDoneMyActions','','agenda',NULL,'$user->hasRight(\"agenda\", \"myactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(12,'all',1,'agenda','left','agenda',NULL,9,NULL,NULL,113,'/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filtert=-1',0,'','MenuToDoActions','','agenda',NULL,'$user->hasRight(\"agenda\", \"allactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(13,'all',1,'agenda','left','agenda',NULL,9,NULL,NULL,114,'/comm/action/list.php?mode=show_list&amp;mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filtert=-1',0,'','MenuDoneActions','','agenda',NULL,'$user->hasRight(\"agenda\", \"allactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(14,'all',1,'agenda','left','agenda',NULL,2,NULL,NULL,160,'/comm/action/rapport/index.php?mainmenu=agenda&amp;leftmenu=agenda',0,'','Reportings','','agenda',NULL,'$user->hasRight(\"agenda\", \"allactions\", \"read\")','isModEnabled(\"agenda\")',2,'2026-05-08 20:22:29'),(15,'all',1,'agenda','left','agenda',NULL,2,NULL,NULL,170,'/categories/categorie_list.php?mainmenu=agenda&amp;leftmenu=agenda&type=10',0,'','Categories','','agenda',NULL,'$user->hasRight(\"agenda\", \"allactions\", \"read\")','isModEnabled(\"category\") && getDolGlobalString(\"CATEGORY_EDIT_IN_MENU_NOT_IN_POPUP\")',2,'2026-05-08 20:22:29'),(17,'all',1,'cron','left','home',NULL,-1,'home','admintools',500,'/cron/list.php?leftmenu=admintools',0,'','CronList','','cron',NULL,'$user->hasRight(\"cron\", \"read\")','isModEnabled(\"cron\") && preg_match(\'/^(admintools|all)/\', $leftmenu)',2,'2026-05-09 05:49:20');
/*!40000 ALTER TABLE `llx_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:23
