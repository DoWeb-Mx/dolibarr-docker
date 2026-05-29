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
-- Table structure for table `llx_c_currencies`
--

DROP TABLE IF EXISTS `llx_c_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `llx_c_currencies` (
  `code_iso` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unicode` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `max_decimal_unit` tinyint DEFAULT NULL,
  `max_decimal_tot` tinyint DEFAULT NULL,
  PRIMARY KEY (`code_iso`),
  UNIQUE KEY `uk_c_currencies_code_iso` (`code_iso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `llx_c_currencies`
--

LOCK TABLES `llx_c_currencies` WRITE;
/*!40000 ALTER TABLE `llx_c_currencies` DISABLE KEYS */;
INSERT INTO `llx_c_currencies` VALUES ('AED','United Arab Emirates Dirham',NULL,1,NULL,NULL),('AFN','Afghanistan Afghani','[1547]',1,NULL,NULL),('ALL','Albania Lek','[76,101,107]',1,NULL,NULL),('ANG','Netherlands Antilles Guilder','[402]',1,NULL,NULL),('AOA','Angola Kwanza',NULL,1,NULL,NULL),('ARP','Pesos argentins',NULL,0,NULL,NULL),('ARS','Argentino Peso','[36]',1,NULL,NULL),('ATS','Shiliing autrichiens',NULL,0,NULL,NULL),('AUD','Australia Dollar','[36]',1,NULL,NULL),('AWG','Aruba Guilder','[402]',1,NULL,NULL),('AZN','Azerbaijan New Manat','[1084,1072,1085]',1,NULL,NULL),('BAM','Bosnia and Herzegovina Convertible Marka','[75,77]',1,NULL,NULL),('BBD','Barbados Dollar','[36]',1,NULL,NULL),('BDT','Bangladeshi Taka','[2547]',1,NULL,NULL),('BEF','Francs belges',NULL,0,NULL,NULL),('BGN','Bulgaria Lev','[1083,1074]',1,NULL,NULL),('BHD','Bahrain',NULL,1,NULL,NULL),('BIF','Burundi Franc',NULL,1,NULL,NULL),('BMD','Bermuda Dollar','[36]',1,NULL,NULL),('BND','Brunei Darussalam Dollar','[36]',1,NULL,NULL),('BOB','Bolivia Boliviano','[66,115]',1,NULL,NULL),('BRL','Brazil Real','[82,36]',1,NULL,NULL),('BSD','Bahamas Dollar','[36]',1,NULL,NULL),('BWP','Botswana Pula','[80]',1,NULL,NULL),('BYR','Belarus Ruble','[112,46]',1,NULL,NULL),('BZD','Belize Dollar','[66,90,36]',1,NULL,NULL),('CAD','Canada Dollar','[36]',1,NULL,NULL),('CDF','Congolese Franc','[70,67]',1,NULL,NULL),('CHF','Switzerland Franc','[67,72,70]',1,NULL,NULL),('CLP','Chile Peso','[36]',1,NULL,NULL),('CNY','China Yuan Renminbi','[165]',1,NULL,NULL),('COP','Colombia Peso','[36]',1,NULL,NULL),('CRC','Costa Rica Colon','[8353]',1,NULL,NULL),('CUP','Cuba Peso','[8369]',1,NULL,NULL),('CVE','Cap Verde Escudo','[4217]',1,NULL,NULL),('CZK','Czech Republic Koruna','[75,269]',1,NULL,NULL),('DEM','Deutsche Mark',NULL,0,NULL,NULL),('DKK','Denmark Krone','[107,114]',1,NULL,NULL),('DOP','Dominican Republic Peso','[82,68,36]',1,NULL,NULL),('DZD','Algeria Dinar',NULL,1,NULL,NULL),('ECS','Ecuador Sucre','[83,47,46]',1,NULL,NULL),('EEK','Estonia Kroon','[107,114]',1,NULL,NULL),('EGP','Egypt Pound','[163]',1,NULL,NULL),('ESP','Pesete',NULL,0,NULL,NULL),('ETB','Ethiopian Birr',NULL,1,NULL,NULL),('EUR','Euro Member Countries','[8364]',1,NULL,NULL),('FIM','Mark finlandais',NULL,0,NULL,NULL),('FJD','Fiji Dollar','[36]',1,NULL,NULL),('FKP','Falkland Islands (Malvinas) Pound','[163]',1,NULL,NULL),('FRF','Francs francais',NULL,0,NULL,NULL),('GBP','United Kingdom Pound','[163]',1,NULL,NULL),('GGP','Guernsey Pound','[163]',1,NULL,NULL),('GHC','Ghana Cedis','[162]',1,NULL,NULL),('GIP','Gibraltar Pound','[163]',1,NULL,NULL),('GNF','Guinea Franc','[70,71]',1,NULL,NULL),('GRD','Drachme (grece)',NULL,0,NULL,NULL),('GTQ','Guatemala Quetzal','[81]',1,NULL,NULL),('GYD','Guyana Dollar','[36]',1,NULL,NULL),('HKD','Hong Kong Dollar','[36]',1,NULL,NULL),('HNL','Honduras Lempira','[76]',1,NULL,NULL),('HRK','Croatia Kuna','[107,110]',1,NULL,NULL),('HUF','Hungary Forint','[70,116]',1,NULL,NULL),('IDR','Indonesia Rupiah','[82,112]',1,NULL,NULL),('IEP','Livres irlandaises',NULL,0,NULL,NULL),('ILS','Israel Shekel','[8362]',1,NULL,NULL),('IMP','Isle of Man Pound','[163]',1,NULL,NULL),('INR','India Rupee','[8377]',1,NULL,NULL),('IRR','Iran Rial','[65020]',1,NULL,NULL),('ISK','Iceland Krona','[107,114]',1,NULL,NULL),('ITL','Lires',NULL,0,NULL,NULL),('JEP','Jersey Pound','[163]',1,NULL,NULL),('JMD','Jamaica Dollar','[74,36]',1,NULL,NULL),('JPY','Japan Yen','[165]',1,NULL,NULL),('KES','Kenya Shilling',NULL,1,NULL,NULL),('KGS','Kyrgyzstan Som','[1083,1074]',1,NULL,NULL),('KHR','Cambodia Riel','[6107]',1,NULL,NULL),('KPW','Korea (North) Won','[8361]',1,NULL,NULL),('KRW','Korea (South) Won','[8361]',1,NULL,NULL),('KYD','Cayman Islands Dollar','[36]',1,NULL,NULL),('KZT','Kazakhstan Tenge','[1083,1074]',1,NULL,NULL),('LAK','Laos Kip','[8365]',1,NULL,NULL),('LBP','Lebanon Pound','[163]',1,NULL,NULL),('LKR','Sri Lanka Rupee','[8360]',1,NULL,NULL),('LRD','Liberia Dollar','[36]',1,NULL,NULL),('LTL','Lithuania Litas','[76,116]',1,NULL,NULL),('LUF','Francs luxembourgeois',NULL,0,NULL,NULL),('LVL','Latvia Lat','[76,115]',1,NULL,NULL),('MAD','Morocco Dirham',NULL,1,NULL,NULL),('MDL','Moldova Leu',NULL,1,NULL,NULL),('MGA','Ariary',NULL,1,NULL,NULL),('MKD','Macedonia Denar','[1076,1077,1085]',1,NULL,NULL),('MMK','Myanmar Kyat','[75]',1,NULL,NULL),('MNT','Mongolia Tughrik','[8366]',1,NULL,NULL),('MRO','Mauritania Ouguiya',NULL,0,NULL,NULL),('MRU','Mauritania Ouguiya','[77,85]',1,NULL,NULL),('MUR','Mauritius Rupee','[8360]',1,NULL,NULL),('MXN','Mexico Peso','[36]',1,NULL,NULL),('MXP','Pesos Mexicans',NULL,0,NULL,NULL),('MYR','Malaysia Ringgit','[82,77]',1,NULL,NULL),('MZN','Mozambique Metical','[77,84]',1,NULL,NULL),('NAD','Namibia Dollar','[36]',1,NULL,NULL),('NGN','Nigeria Naira','[8358]',1,NULL,NULL),('NIO','Nicaragua Cordoba','[67,36]',1,NULL,NULL),('NLG','Florins',NULL,0,NULL,NULL),('NOK','Norway Krone','[107,114]',1,NULL,NULL),('NPR','Nepal Rupee','[8360]',1,NULL,NULL),('NZD','New Zealand Dollar','[36]',1,NULL,NULL),('OMR','Oman Rial','[65020]',1,NULL,NULL),('PAB','Panama Balboa','[66,47,46]',1,NULL,NULL),('PEN','Perú Sol','[83,47]',1,NULL,NULL),('PGK','Papua New Guinea Kina','[75]',1,NULL,NULL),('PHP','Philippines Peso','[8369]',1,NULL,NULL),('PKR','Pakistan Rupee','[8360]',1,NULL,NULL),('PLN','Poland Zloty','[122,322]',1,NULL,NULL),('PTE','Escudos',NULL,0,NULL,NULL),('PYG','Paraguay Guarani','[71,115]',1,NULL,NULL),('QAR','Qatar Riyal','[65020]',1,NULL,NULL),('RON','Romania New Leu','[108,101,105]',1,NULL,NULL),('RSD','Serbia Dinar','[1044,1080,1085,46]',1,NULL,NULL),('RUB','Russia Ruble','[1088,1091,1073]',1,NULL,NULL),('SAR','Saudi Arabia Riyal','[65020]',1,NULL,NULL),('SBD','Solomon Islands Dollar','[36]',1,NULL,NULL),('SCR','Seychelles Rupee','[8360]',1,NULL,NULL),('SEK','Sweden Krona','[107,114]',1,NULL,NULL),('SGD','Singapore Dollar','[36]',1,NULL,NULL),('SHP','Saint Helena Pound','[163]',1,NULL,NULL),('SKK','Couronnes slovaques',NULL,0,NULL,NULL),('SOS','Somalia Shilling','[83]',1,NULL,NULL),('SRD','Suriname Dollar','[36]',1,NULL,NULL),('SUR','Rouble',NULL,0,NULL,NULL),('SVC','El Salvador Colon','[36]',1,NULL,NULL),('SYP','Syria Pound','[163]',1,NULL,NULL),('THB','Thailand Baht','[3647]',1,NULL,NULL),('TND','Tunisia Dinar',NULL,1,NULL,NULL),('TRL','Turkey Lira','[84,76]',0,NULL,NULL),('TRY','Turkey Lira','[8378]',1,NULL,NULL),('TTD','Trinidad and Tobago Dollar','[84,84,36]',1,NULL,NULL),('TVD','Tuvalu Dollar','[36]',1,NULL,NULL),('TWD','Taiwan New Dollar','[78,84,36]',1,NULL,NULL),('UAH','Ukraine Hryvna','[8372]',1,NULL,NULL),('USD','United States Dollar','[36]',1,NULL,NULL),('UYU','Uruguay Peso','[36,85]',1,NULL,NULL),('UZS','Uzbekistan Som','[1083,1074]',1,NULL,NULL),('VEF','Venezuela Bolivar Fuerte','[66,115]',1,NULL,NULL),('VND','Viet Nam Dong','[8363]',1,NULL,NULL),('XAF','Communaute Financiere Africaine (BEAC) CFA Franc',NULL,1,NULL,NULL),('XCD','East Caribbean Dollar','[36]',1,NULL,NULL),('XEU','Ecus',NULL,0,NULL,NULL),('XOF','Communaute Financiere Africaine (BCEAO) Franc',NULL,1,NULL,NULL),('XPF','Franc CFP','[70]',1,NULL,NULL),('YER','Yemen Rial','[65020]',1,NULL,NULL),('ZAR','South Africa Rand','[82]',1,NULL,NULL),('ZWD','Zimbabwe Dollar','[90,36]',1,NULL,NULL);
/*!40000 ALTER TABLE `llx_c_currencies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12  0:55:33
