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
-- Table structure for table `llx_events`
--

DROP TABLE IF EXISTS `llx_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_events` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `tms` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity` int NOT NULL DEFAULT '1',
  `prefix_session` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateevent` datetime DEFAULT NULL,
  `fk_user` int DEFAULT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_object` int DEFAULT NULL,
  `authentication_method` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_oauth_token` int DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_events_dateevent` (`dateevent`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_events`
--

LOCK TABLES `llx_events` WRITE;
/*!40000 ALTER TABLE `llx_events` DISABLE KEYS */;
INSERT INTO `llx_events` VALUES (1,'2026-05-09 06:32:01','USER_MODIFY',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:32:01',1,'EventUserModified','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(2,'2026-05-09 06:33:58','USER_LOGOUT',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:33:58',1,'UserLogoff','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(3,'2026-05-09 06:34:07','USER_LOGIN_FAILED',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:34:07',NULL,'UserLoginFailed - Identificadores de usuario o contrase&ntilde;a incorrectos - login=hola@doweb.mx','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(4,'2026-05-09 06:34:15','USER_LOGIN_FAILED',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:34:15',NULL,'UserLoginFailed - Identificadores de usuario o contrase&ntilde;a incorrectos - login=admin','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(5,'2026-05-09 06:34:33','USER_LOGIN',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:34:33',1,'UserLogged - TZ=-6;TZString=America/Mexico_City;Screen=1920x929 - authmode=dolibarr - entity=1','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(6,'2026-05-09 06:34:57','USER_NEW_PASSWORD',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:34:57',1,'UserPasswordChange','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(7,'2026-05-09 06:34:57','USER_MODIFY',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:34:57',1,'EventUserModified','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(8,'2026-05-09 06:34:57','USER_LOGIN_FAILED',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:34:57',1,'UserLoginFailed - ErrorUserSessionWasInvalidated - login=admin','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(9,'2026-05-09 06:35:03','USER_LOGIN',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:35:03',1,'UserLogged - TZ=-6;TZString=America/Mexico_City;Screen=1920x929 - authmode=dolibarr - entity=1','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(10,'2026-05-09 06:36:01','USER_MODIFY',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:36:01',1,'EventUserModified','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(11,'2026-05-09 06:36:29','USER_LOGIN',1,'984896631fb0d406f0e56bf074fa349e453bef2a','2026-05-09 00:36:29',1,'UserLogged - TZ=-6;TZString=America/Mexico_City;Screen=1920x929 - authmode=dolibarr - entity=1','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(12,'2026-05-11 04:07:33','USER_LOGIN_FAILED',1,'4f2c9e92a4378d2e78fa59af5c03a84a6face39e','2026-05-10 22:07:33',NULL,'UserLoginFailed - Identificadores de usuario o contrase&ntilde;a incorrectos - login=admin','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(13,'2026-05-11 04:07:54','USER_LOGIN',1,'4f2c9e92a4378d2e78fa59af5c03a84a6face39e','2026-05-10 22:07:54',1,'UserLogged - TZ=-6;TZString=America/Mexico_City;Screen=1440x749 - authmode=dolibarr - entity=1','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(14,'2026-05-11 04:08:28','USER_LOGOUT',1,'4f2c9e92a4378d2e78fa59af5c03a84a6face39e','2026-05-10 22:08:28',1,'UserLogoff','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(15,'2026-05-11 04:17:29','USER_LOGIN',1,'4f2c9e92a4378d2e78fa59af5c03a84a6face39e','2026-05-10 22:17:29',1,'UserLogged - TZ=-6;TZString=America/Mexico_City;Screen=1440x749 - authmode=dolibarr - entity=1','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(16,'2026-05-11 07:34:41','USER_LOGIN',1,'4f2c9e92a4378d2e78fa59af5c03a84a6face39e','2026-05-11 01:34:41',1,'UserLogged - TZ=-6;TZString=America/Mexico_City;Screen=1920x929 - authmode=dolibarr - entity=1','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL),(17,'2026-05-11 07:42:17','USER_LOGIN',1,'4f2c9e92a4378d2e78fa59af5c03a84a6face39e','2026-05-11 01:42:17',1,'UserLogged - TZ=-6;TZString=America/Mexico_City;Screen=1920x929 - authmode=dolibarr - entity=1','192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36',NULL,NULL,NULL);
/*!40000 ALTER TABLE `llx_events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:41
