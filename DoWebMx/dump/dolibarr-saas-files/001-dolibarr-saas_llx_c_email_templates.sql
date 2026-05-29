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
-- Table structure for table `llx_c_email_templates`
--

DROP TABLE IF EXISTS `llx_c_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_email_templates` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `entity` int NOT NULL DEFAULT '1',
  `module` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_template` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `private` smallint NOT NULL DEFAULT '0',
  `fk_user` int DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` smallint DEFAULT NULL,
  `defaultfortype` smallint DEFAULT '0',
  `enabled` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `active` tinyint NOT NULL DEFAULT '1',
  `email_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_tocc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_tobcc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `joinfiles` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_lines` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_c_email_templates` (`entity`,`label`,`lang`),
  KEY `idx_type` (`type_template`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_email_templates`
--

LOCK TABLES `llx_c_email_templates` WRITE;
/*!40000 ALTER TABLE `llx_c_email_templates` DISABLE KEYS */;
INSERT INTO `llx_c_email_templates` VALUES (1,0,'banque','thirdparty','',0,NULL,NULL,'2026-05-08 20:22:00','(YourSEPAMandate)',1,0,'isModEnabled(\"societe\") && isModEnabled(\"bank\") && isModEnabled(\"prelevement\")',0,NULL,NULL,NULL,NULL,'__(YourSEPAMandate)__','0','__(Hello)__,<br><br>\n\n__(FindYourSEPAMandate)__ :<br>\n__MYCOMPANY_NAME__<br>\n__MYCOMPANY_FULLADDRESS__<br><br>\n__(Sincerely)__<br>\\__SENDEREMAIL_SIGNATURE__',NULL),(2,0,'adherent','member','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingEmailOnAutoSubscription)',10,0,'isModEnabled(\"adherent\")',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipRequestWasReceived)__','0','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfYourMembershipRequestWasReceived)__<br>\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\n<br><br>\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__',NULL),(3,0,'adherent','member','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingEmailOnMemberValidation)',20,0,'isModEnabled(\"adherent\")',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipWasValidated)__','0','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfYourMembershipWasValidated)__<br>__(FirstName)__ : __MEMBER_FIRSTNAME__<br>__(LastName)__ : __MEMBER_LASTNAME__<br>__(ID)__ : __MEMBER_ID__<br>\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\n<br><br>\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__',NULL),(4,0,'adherent','member','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingEmailOnNewSubscription)',30,0,'isModEnabled(\"adherent\")',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(YourSubscriptionWasRecorded)__','1','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfYourSubscriptionWasRecorded)__<br>\n\n<br><br>\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__',NULL),(5,0,'adherent','member','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingReminderForExpiredSubscription)',40,0,'isModEnabled(\"adherent\")',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(SubscriptionReminderEmail)__','0','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(ThisIsContentOfSubscriptionReminderEmail)__<br>\n<br>__ONLINE_PAYMENT_TEXT_AND_URL__<br>\n<br><br>\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__',NULL),(6,0,'adherent','member','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingEmailOnCancelation)',50,0,'isModEnabled(\"adherent\")',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(YourMembershipWasCanceled)__','0','__(Hello)__ __MEMBER_FULLNAME__,<br><br>\n\n__(YourMembershipWasCanceled)__<br>\n<br><br>\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__',NULL),(7,0,'adherent','member','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingAnEMailToMember)',60,0,'isModEnabled(\"adherent\")',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(CardContent)__','0','__(Hello)__,<br><br>\n\n__(ThisIsContentOfYourCard)__<br>\n__(ID)__ : __ID__<br>\n__(Civility)__ : __MEMBER_CIVILITY__<br>\n__(Firstname)__ : __MEMBER_FIRSTNAME__<br>\n__(Lastname)__ : __MEMBER_LASTNAME__<br>\n__(Fullname)__ : __MEMBER_FULLNAME__<br>\n__(Company)__ : __MEMBER_COMPANY__<br>\n__(Address)__ : __MEMBER_ADDRESS__<br>\n__(Zip)__ : __MEMBER_ZIP__<br>\n__(Town)__ : __MEMBER_TOWN__<br>\n__(Country)__ : __MEMBER_COUNTRY__<br>\n__(Email)__ : __MEMBER_EMAIL__<br>\n__(Birthday)__ : __MEMBER_BIRTH__<br>\n__(Photo)__ : __MEMBER_PHOTO__<br>\n__(Login)__ : __MEMBER_LOGIN__<br>\n__(Phone)__ : __MEMBER_PHONE__<br>\n__(PhonePerso)__ : __MEMBER_PHONEPRO__<br>\n__(PhoneMobile)__ : __MEMBER_PHONEMOBILE__<br><br>\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__',NULL),(8,0,'recruitment','recruitmentcandidature_send','',0,NULL,NULL,'2026-05-08 20:22:00','(AnswerCandidature)',100,0,'isModEnabled(\"recruitment\")',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(YourCandidature)__','0','__(Hello)__ __CANDIDATE_FULLNAME__,<br><br>\n\n__(YourCandidatureAnswerMessage)__<br>__ONLINE_INTERVIEW_SCHEDULER_TEXT_AND_URL__\n<br><br>\n__(Sincerely)__<br>__SENDEREMAIL_SIGNATURE__',NULL),(9,0,'','conferenceorbooth','',0,NULL,NULL,'2026-05-08 20:22:00','(EventOrganizationEmailAskConf)',10,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationEmailAskConf)__',NULL,'__(Hello)__,<br /><br />__(OrganizationEventConfRequestWasReceived)__<br /><br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__',NULL),(10,0,'','conferenceorbooth','',0,NULL,NULL,'2026-05-08 20:22:00','(EventOrganizationEmailAskBooth)',20,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationEmailAskBooth)__',NULL,'__(Hello)__,<br /><br />__(OrganizationEventBoothRequestWasReceived)__<br /><br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__',NULL),(11,0,'','conferenceorbooth','',0,NULL,NULL,'2026-05-08 20:22:00','(EventOrganizationEmailBoothPayment)',30,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationEmailBoothPayment)__',NULL,'__(Hello)__,<br /><br />__(OrganizationEventPaymentOfBoothWasReceived)__<br /><br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__',NULL),(12,0,'','conferenceorbooth','',0,NULL,NULL,'2026-05-08 20:22:00','(EventOrganizationEmailRegistrationPayment)',40,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationEmailRegistrationPayment)__',NULL,'__(Hello)__,<br /><br />__(OrganizationEventPaymentOfRegistrationWasReceived)__<br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__',NULL),(13,0,'','conferenceorbooth','',0,NULL,NULL,'2026-05-08 20:22:00','(EventOrganizationMassEmailAttendees)',50,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationMassEmailAttendees)__',NULL,'__(Hello)__,<br /><br />__(OrganizationEventBulkMailToAttendees)__<br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__',NULL),(14,0,'','conferenceorbooth','',0,NULL,NULL,'2026-05-08 20:22:00','(EventOrganizationMassEmailSpeakers)',60,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] __(EventOrganizationMassEmailSpeakers)__',NULL,'__(Hello)__,<br /><br />__(OrganizationEventBulkMailToSpeakers)__<br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__',NULL),(15,0,'partnership','partnership_send','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingEmailOnPartnershipWillSoonBeCanceled)',100,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] - __(YourPartnershipWillSoonBeCanceledTopic)__','0','<body>\n <p>__(Hello)__,<br><br>\n__(YourPartnershipWillSoonBeCanceledContent)__</p>\n<br />\n\n<br />\n\n            __(Sincerely)__ <br />\n            __[MAIN_INFO_SOCIETE_NOM]__ <br />\n </body>\n',NULL),(16,0,'partnership','partnership_send','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingEmailOnPartnershipCanceled)',100,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] - __(YourPartnershipCanceledTopic)__','0','<body>\n <p>__(Hello)__,<br><br>\n__(YourPartnershipCanceledContent)__</p>\n<br />\n\n<br />\n\n            __(Sincerely)__ <br />\n            __[MAIN_INFO_SOCIETE_NOM]__ <br />\n </body>\n',NULL),(17,0,'partnership','partnership_send','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingEmailOnPartnershipRefused)',100,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] - __(YourPartnershipRefusedTopic)__','0','<body>\n <p>__(Hello)__,<br><br>\n__(YourPartnershipRefusedContent)__</p>\n<br />\n\n<br />\n\n            __(Sincerely)__ <br />\n            __[MAIN_INFO_SOCIETE_NOM]__ <br />\n </body>\n',NULL),(18,0,'partnership','partnership_send','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingEmailOnPartnershipAccepted)',100,0,'1',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] - __(YourPartnershipAcceptedTopic)__','0','<body>\n <p>__(Hello)__,<br><br>\n__(YourPartnershipAcceptedContent)__</p>\n<br />\n\n<br />\n\n            __(Sincerely)__ <br />\n            __[MAIN_INFO_SOCIETE_NOM]__ <br />\n </body>\n',NULL),(19,0,'supplier_invoice','invoice_supplier_send','',0,NULL,NULL,'2026-05-08 20:22:00','(SendingReminderEmailOnUnpaidSupplierInvoice)',100,0,'isModEnabled(\"supplier_invoice\")',1,NULL,NULL,NULL,NULL,'[__[MAIN_INFO_SOCIETE_NOM]__] - __(SupplierInvoice)__','0','__(Hello)__,<br /><br />__(SupplierInvoiceUnpaidContent)__<br />__URL_SUPPLIER_INVOICE__<br /><br />__(Sincerely)__<br />__SENDEREMAIL_SIGNATURE__',NULL);
/*!40000 ALTER TABLE `llx_c_email_templates` ENABLE KEYS */;
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
