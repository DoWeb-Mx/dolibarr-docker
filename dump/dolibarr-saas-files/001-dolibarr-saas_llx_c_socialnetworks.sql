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
-- Table structure for table `llx_c_socialnetworks`
--

DROP TABLE IF EXISTS `llx_c_socialnetworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_socialnetworks` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `entity` int NOT NULL DEFAULT '1',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `idx_c_socialnetworks_code_entity` (`entity`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_socialnetworks`
--

LOCK TABLES `llx_c_socialnetworks` WRITE;
/*!40000 ALTER TABLE `llx_c_socialnetworks` DISABLE KEYS */;
INSERT INTO `llx_c_socialnetworks` VALUES (1,1,'500px','500px','{socialid}','fa-500px',0),(2,1,'dailymotion','Dailymotion','{socialid}','',0),(3,1,'diaspora','Diaspora','{socialid}','',0),(4,1,'discord','Discord','{socialid}','fa-discord',0),(5,1,'facebook','Facebook','https://www.facebook.com/{socialid}','fa-facebook',1),(6,1,'flickr','Flickr','{socialid}','fa-flickr',0),(7,1,'gifycat','Gificat','{socialid}','',0),(8,1,'giphy','Giphy','{socialid}','',0),(9,1,'github','GitHub','https://www.github.com/{socialid}','',0),(10,1,'instagram','Instagram','https://www.instagram.com/{socialid}','fa-instagram',1),(11,1,'linkedin','LinkedIn','https://www.linkedin.com/in/{socialid}','fa-linkedin',1),(12,1,'mastodon','Mastodon','{socialid}','fa-mastodon',0),(13,1,'meetup','Meetup','{socialid}','fa-meetup',0),(14,1,'periscope','Periscope','{socialid}','',0),(15,1,'pinterest','Pinterest','{socialid}','fa-pinterest',0),(16,1,'pixelfed','Pixelfed','{socialid}','fa-pixelfed',0),(17,1,'quora','Quora','{socialid}','',0),(18,1,'reddit','Reddit','{socialid}','fa-reddit',0),(19,1,'slack','Slack','{socialid}','fa-slack',0),(20,1,'snapchat','Snapchat','{socialid}','fa-snapchat',0),(21,1,'skype','Skype','https://www.skype.com/{socialid}','fa-skype',0),(22,1,'tripadvisor','Tripadvisor','{socialid}','',0),(23,1,'tumblr','Tumblr','https://www.tumblr.com/{socialid}','fa-tumblr',0),(24,1,'twitch','Twitch','{socialid}','',0),(25,1,'twitter','X-Twitter','https://www.x.com/{socialid}','fa-twitter',1),(26,1,'vero','Vero','https://vero.co/{socialid}','',0),(27,1,'viadeo','Viadeo','https://fr.viadeo.com/fr/{socialid}','fa-viadeo',0),(28,1,'viber','Viber','{socialid}','',0),(29,1,'vimeo','Vimeo','{socialid}','fa-vimeo',0),(30,1,'whatsapp','Whatsapp','https://web.whatsapp.com/send?phone={socialid}','fa-whatsapp',1),(31,1,'wikipedia','Wikipedia','{socialid}','fa-wikipedia-w',0),(32,1,'xing','Xing','{socialid}','fa-xing',0),(33,1,'youtube','Youtube','https://www.youtube.com/{socialid}','fa-youtube',1);
/*!40000 ALTER TABLE `llx_c_socialnetworks` ENABLE KEYS */;
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
