-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: newNova
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `newNova`
--

USE `newNova`;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `order` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Outliant','https://media.licdn.com/dms/image/v2/C4D0BAQF2QkTqySxBMQ/company-logo_100_100/company-logo_100_100/0/1667935352108/outliant_logo?e=2147483647&v=beta&t=UCQpI8Y_s4CV5XL4mmhYaKmE-mBGMmyk3K-qhnQiyt0',0),(2,'The Anything Group','https://media.licdn.com/dms/image/v2/D4D0BAQEoG__CRqHa_A/company-logo_100_100/company-logo_100_100/0/1712070092665/theanythinggroup_logo?e=2147483647&v=beta&t=EQMfqrM-hwVzMI5th8kGhe58fyZABQT2gjJPUgPU9M0',0),(3,'Andela','https://media.licdn.com/dms/image/v2/C560BAQHOiEePQQlQ8g/company-logo_100_100/company-logo_100_100/0/1656607040147/andela_logo?e=2147483647&v=beta&t=oM8rIYuqM04VMdY4tIgYxJrEe7q0s-7ETtpEaoozIsI',0),(4,'BigID','https://media.licdn.com/dms/image/v2/D4D0BAQFEe-bo2QggdQ/company-logo_100_100/company-logo_100_100/0/1709270537648/bigid_logo?e=2147483647&v=beta&t=UYJQoTusVgbWVT_YuOsHcQGtNvN5WwZ_80pEso-SrmA',0),(5,'Plan-IT','https://media.licdn.com/dms/image/v2/C4E0BAQFrgjAvUp4jKg/company-logo_100_100/company-logo_100_100/0/1631307344474?e=2147483647&v=beta&t=31wFytwN13r4ypJfpNX5ZpkrEAWNxwcc92buUXYJoZI',0),(6,'Project Growth','https://media.licdn.com/dms/image/v2/D4E0BAQHWHNlHUTGhuQ/company-logo_100_100/company-logo_100_100/0/1692293892237/our_project_growth_logo?e=2147483647&v=beta&t=SVAEonGbYxyvqrcdZZzmAC3lecrUkZuAcYaooNblBM8',0),(7,'Rhino','https://media.licdn.com/dms/image/v2/D4E0BAQH8bcO-_L2_Wg/company-logo_100_100/company-logo_100_100/0/1711036613316?e=2147483647&v=beta&t=WqB0YEEf5z1ey6K0Qxcpix3sfHw6TzkKyt36Jv_qWk4',0),(8,'Perform','https://media.licdn.com/dms/image/v2/D560BAQHKicvwh4oe6g/company-logo_100_100/company-logo_100_100/0/1720534619470/total_performance_consulting_logo?e=2147483647&v=beta&t=xaUyU_kDA_jJDS4yfbi_lKhejBILfb9cMvkh1za-rSs',0),(9,'Mercado Libre','https://media.licdn.com/dms/image/v2/D560BAQE-A7bI1LDvZg/company-logo_100_100/company-logo_100_100/0/1711465264286/mercadolibre_logo?e=2147483647&v=beta&t=j9554A-zc63I2Gak4cV3xappbIDGx5HwJmp-dIAjJAU',1),(10,'Privada','https://static.licdn.com/aero-v1/sc/h/6puxblwmhnodu6fjircz4dn4h',0),(11,'BBVA en Argentina','https://media.licdn.com/dms/image/v2/D4D0BAQHuA4zcBwHNWA/company-logo_100_100/company-logo_100_100/0/1688385559517/bbva_argentina_logo?e=2147483647&v=beta&t=Z6xdiCWIkYo6n2vvCbB_8dKeokruqzydt196_YfG9L4',1),(12,'Brazoderecho','https://media.licdn.com/dms/image/v2/D4D0BAQEEGTqKQP6bRw/company-logo_100_100/company-logo_100_100/0/1711460719657/brazo_derecho_logo?e=2147483647&v=beta&t=GwP-m6t6TY6EmHLtTkC-oIwM5_WABgh0pDFv5AqHaNc',0),(13,'nubceo','https://media.licdn.com/dms/image/v2/D4D0BAQGuzMbBboqy4A/company-logo_100_100/company-logo_100_100/0/1706037530723/nubceo_logo?e=2147483647&v=beta&t=jQ6vU-wTd-ZKODDuQWaRkbLlPfKcxtTF_lDCcptSmxE',0),(14,'Linkme','https://media.licdn.com/dms/image/v2/C4E0BAQF9e39zlnaLtQ/company-logo_100_100/company-logo_100_100/0/1657800893320/linkmeglobal_logo?e=2147483647&v=beta&t=G_3nmx5lVICeqjuSCeJeRj1jqO5hx9zsNTOIt8Y96fo',0),(15,'Nearshore Business Solutions','https://media.licdn.com/dms/image/v2/D4E0BAQG9GwDNJrotgQ/company-logo_100_100/company-logo_100_100/0/1730658324168/nearshore_business_solutions_logo?e=2147483647&v=beta&t=HQffGoTO7lYG0__pRh2QKVLelTJcNSOeER6tJCAuqA0',0),(16,'Confidencial','https://static.licdn.com/aero-v1/sc/h/6puxblwmhnodu6fjircz4dn4h',0),(17,'Vinoly','https://media.licdn.com/dms/image/v2/C4D0BAQH4iCi_DWpm5A/company-logo_100_100/company-logo_100_100/0/1676403697806/vinoly_logo?e=2147483647&v=beta&t=e69ay4Vgjq2bFdi9jyflqCieneOMJ9TKpCQUFb8n0V0',0),(18,'Torre Hunt, LLC','https://media.licdn.com/dms/image/v2/D4D0BAQEfvgPj3VHL9Q/company-logo_100_100/company-logo_100_100/0/1732144934727?e=2147483647&v=beta&t=bYWH-hi3g5iksS_ir3U1MjD8VKWiI9WDg3Wtc5mmcrU',0),(19,'redbee','https://media.licdn.com/dms/image/v2/D4D0BAQH51J9BDsc24w/company-logo_100_100/company-logo_100_100/0/1712344296827/redbeestudios_logo?e=2147483647&v=beta&t=mH8rrWYiEQkJ_hNbvqgZ9eCXbl0W8gnWNFjUvWid0_0',0),(20,'Hablax INC.','https://media.licdn.com/dms/image/v2/D4E0BAQH5YmRK8Y2hIA/company-logo_100_100/company-logo_100_100/0/1682080999103/hablax_logo?e=2147483647&v=beta&t=93kHu3pyzIBltirNl3NFIwja2ge9XKZsAoyna1Lfc1U',0),(21,'Talent Connect','https://media.licdn.com/dms/image/v2/D4D0BAQEIjlBjrRikaQ/company-logo_100_100/company-logo_100_100/0/1720891930968/talentconnect_ai_logo?e=2147483647&v=beta&t=8IzkjQhfmzmzFCK05iC5wHJHiQqs_aySY6ED4eaQCFg',0),(22,'Techie Talent','https://media.licdn.com/dms/image/v2/C4E0BAQGHwtE2CANhmQ/company-logo_100_100/company-logo_100_100/0/1648729477405/techie_talent_logo?e=2147483647&v=beta&t=SE2tW7bjfUdBo1diSE5QtYxBQKYnOBE5jkmYl-o-J8o',0),(23,'Autonoma AI','https://media.licdn.com/dms/image/v2/D4D0BAQHsp8kBLMzlXQ/company-logo_100_100/company-logo_100_100/0/1718818118914/autonoma_ai_logo?e=2147483647&v=beta&t=w_LqtIJ-Jq0UaOWIsnE90GlDOJenThFLtZ7D-PNJnkA',0),(24,'Dam Squad','https://media.licdn.com/dms/image/v2/D4E0BAQGSElp6pujGAQ/company-logo_100_100/company-logo_100_100/0/1729882837140/damsquadok_logo?e=2147483647&v=beta&t=SbW28cGeQgKrdT8gLwmXsqKYH2yv-GWegqRTjBWkdtQ',0),(25,'TripleTen Indonesia','https://media.licdn.com/dms/image/v2/D4D0BAQEval8_yenQxQ/company-logo_100_100/company-logo_100_100/0/1686632393999/practicum_indonesia_logo?e=2147483647&v=beta&t=dwkmIcBHkfRcc4kGCAtd_gUzF5VzzrHqrOWR1i8j488',0),(26,'Blanc Labs','https://media.licdn.com/dms/image/v2/C4D0BAQFEgw6AlC-8uw/company-logo_100_100/company-logo_100_100/0/1639667336115/blanc_labs_logo?e=2147483647&v=beta&t=EwgXwr2GKCpCZLWq7GI_uRKfYvcmL0aWwSwH-7zhegA',0),(27,'SecurityScorecard','https://media.licdn.com/dms/image/v2/D560BAQFVfSMZBwBwYg/company-logo_100_100/company-logo_100_100/0/1690297691684/security_scorecard_logo?e=2147483647&v=beta&t=ZJ6aPvT9lJfS9r2p0adOK1d5ogHGuUZJGFzeLc6RNKA',0),(28,'Oowlish','https://media.licdn.com/dms/image/v2/D4D0BAQFwwwVW9HV1Zw/company-logo_100_100/company-logo_100_100/0/1684782684656/oowlish_logo?e=2147483647&v=beta&t=h6Vz7t__0eIvdwBgkXiDedU7nPuiAwhbkonPbruef8A',0),(29,'Techunting','https://media.licdn.com/dms/image/v2/C4D0BAQHJqB9L-YyQIg/company-logo_100_100/company-logo_100_100/0/1668202634829/techunting_net_logo?e=2147483647&v=beta&t=rjR78Bqu2oBUmUsp3bJH7PyLa_Q9YhsHob3mdhFP50w',0),(30,'Baufest','https://media.licdn.com/dms/image/v2/D4D0BAQF5aEWN8URfhQ/company-logo_100_100/company-logo_100_100/0/1719875873084/baufest_logo?e=2147483647&v=beta&t=fdbDKaWaejCsIHfJueVbaF0JJsTpil5lA6Dm2PXpC1Y',0),(31,'Experis Argentina','https://media.licdn.com/dms/image/v2/D4D0BAQF6YFctP4mziA/company-logo_100_100/company-logo_100_100/0/1720025437155/experis_arg_logo?e=2147483647&v=beta&t=WmNSpWH82Yu2kXENQerWMyozA80Vb3xhTovM6lsBtkk',0),(32,'Kastech Software Solutions Group','https://media.licdn.com/dms/image/v2/D4D0BAQF8wZFf1YzDyg/company-logo_100_100/company-logo_100_100/0/1723043325288/kastech_software_solutions_group_logo?e=2147483647&v=beta&t=pQRsGGyZRtLSYjK1VH07XxtksUZDqQTT2G2RIPA5rMI',0),(33,'Koibanx','https://media.licdn.com/dms/image/v2/D4E0BAQGvTXVbRrzEvw/company-logo_100_100/company-logo_100_100/0/1695305654641/koibanx_logo?e=2147483647&v=beta&t=fo50x-xHqpH4Wi7UGP0LfgWGAf9j0-5xvQnRI62AL6s',0),(34,'Capgemini Engineering','https://media.licdn.com/dms/image/v2/C4E0BAQGf5YDRAgF5ow/company-logo_100_100/company-logo_100_100/0/1675696304669/capgemini_engineering_logo?e=2147483647&v=beta&t=z70ol6a3txPeMjFIIOh8MUG1jQxpNEXm-YPelqrE2P0',0),(35,'Chainlink Labs','https://media.licdn.com/dms/image/v2/D560BAQEYHgoKT4l1jQ/company-logo_100_100/company-logo_100_100/0/1729725476545/chainlink_labs_logo?e=2147483647&v=beta&t=ZPGINN49ySuATJL1Z2PHKKw8Iy0CDT5y_RV-Cu2TjUw',0),(36,'Jalasoft','https://media.licdn.com/dms/image/v2/D4E0BAQEANODAuCjgQw/company-logo_100_100/company-logo_100_100/0/1683915582412/jalasoft_logo?e=2147483647&v=beta&t=pcvwVJmku8Xxd_p9sk450bYBEEB6VIxmeAx92Adv6Js',0),(37,'Canonical','https://media.licdn.com/dms/image/v2/C560BAQEbIYAkAURcYw/company-logo_100_100/company-logo_100_100/0/1650566107463/canonical_logo?e=2147483647&v=beta&t=17jhZvUOD-0vAJw3nIGnkBiYtBbXfEriIhIo6TfDmzc',0),(38,'GlobalLogic Latinoamérica','https://media.licdn.com/dms/image/v2/D4D0BAQE9jiksbhrSmw/company-logo_100_100/company-logo_100_100/0/1712784031192/globallogiclatam_logo?e=2147483647&v=beta&t=E4KUL8gYXeN-RHmT3opB5nHIix2bkcGLoW2k-VKblXY',0),(39,'Selectium','https://media.licdn.com/dms/image/v2/D4D0BAQEM0rGAHxONzw/company-logo_100_100/company-logo_100_100/0/1714133501031/selectium_logo?e=2147483647&v=beta&t=QWUqBgVXtLJlDxWFDSjyxb5CLUnpEY9S5GF3ZbaYUKs',0),(40,'CookUnity','https://media.licdn.com/dms/image/v2/C4E0BAQHwBGxEoghBRg/company-logo_100_100/company-logo_100_100/0/1673296963558/cookunity_logo?e=2147483647&v=beta&t=rqTkqoC15JLRexUO7x2So-7H1YE3Pluw54Ak81Dmpl0',0),(41,'LawnStarter','https://media.licdn.com/dms/image/v2/D560BAQGeexU0mvhzPg/company-logo_100_100/company-logo_100_100/0/1728510146471/lawnstarter_logo?e=2147483647&v=beta&t=QB_hpk7rXNSOJ32ALE3DaI1yxl-SQ0fpKA2emIo1Tng',0),(42,'Sezzle','https://media.licdn.com/dms/image/v2/C4E0BAQEv2WrQrWZM-A/company-logo_100_100/company-logo_100_100/0/1630615785657/sezzle_logo?e=2147483647&v=beta&t=0a5rGWdc0TG7Vt9gqNL7j-V14_ygpMCetPqwJcHPR_8',0),(43,'Outsource Argentina','https://media.licdn.com/dms/image/v2/C4D0BAQHfGHL-2jRPlA/company-logo_100_100/company-logo_100_100/0/1673964655694/outsource_argentina_logo?e=2147483647&v=beta&t=lBbNrUUkwogRsrFgnXjhi3rC8D5BA5lgWR6mXZZSzzs',0),(44,'Rockwell Automation','https://media.licdn.com/dms/image/v2/C560BAQFRXUKwML_TTQ/company-logo_100_100/company-logo_100_100/0/1655148418582/rockwell_automation_logo?e=2147483647&v=beta&t=jwUtB-MX6EGs60EC4qJU_ZOeIYZRhgKYp8FhS6DvVRA',0),(45,'Recursos Humanos Especializados - RHE Consultora','https://media.licdn.com/dms/image/v2/C4D0BAQGQV5p-VTaGVQ/company-logo_100_100/company-logo_100_100/0/1630508224399/recursos_humanos_especializados_logo?e=2147483647&v=beta&t=-v1KdVjD0ZdIRMR_SV5HW2bA_R4T_4ruLZaE67yPOx8',0),(46,'PwC Argentina','https://media.licdn.com/dms/image/v2/D4D0BAQGAbS3lCSDvig/company-logo_100_100/company-logo_100_100/0/1719843344395/pwc_argentina_logo?e=2147483647&v=beta&t=O9keoatDLigfmfzYsiCHB1U0JgVViTzwYFrKQdrI4wo',0);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter`
--

LOCK TABLES `filter` WRITE;
/*!40000 ALTER TABLE `filter` DISABLE KEYS */;
INSERT INTO `filter` VALUES (1,'Cybersecurity'),(2,'Analyst'),(3,'.Net'),(4,'Azure'),(5,'Reliability'),(6,'Golang'),(7,'Tutor'),(8,'DotNet'),(9,'Mobile'),(10,'Native'),(11,'Wordpress'),(12,'Angular'),(13,'NET ');
/*!40000 ALTER TABLE `filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index2` (`company_id`,`name`,`post_date`),
  CONSTRAINT `fk_position_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,1,'Full Stack Engineer (Mid-Level)','2025-01-23','https://ar.linkedin.com/jobs/view/full-stack-engineer-mid-level-at-outliant-4130659576?position=1&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=AHIksUF6iAFruw2vtnyY9w%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(2,2,'Back End Developer','2025-01-22','https://ar.linkedin.com/jobs/view/back-end-developer-at-the-anything-group-4130138854?position=2&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=kfw5LRv11RCBRK74AFnShQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(3,3,'Back End Developer','2025-01-22','https://ar.linkedin.com/jobs/view/back-end-developer-at-andela-4130122378?position=3&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=qzQU6W5n4j2ESXHt6vy6VA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(4,4,'Full Stack Web/Software Developer','2025-01-23','https://ar.linkedin.com/jobs/view/full-stack-web-software-developer-at-bigid-4103770674?position=4&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=mz25NtuhSdnwzDOM%2FIn7Cw%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(5,5,'Desarrollador de back-end','2025-01-22','https://ar.linkedin.com/jobs/view/desarrollador-de-back-end-at-plan-it-4130159485?position=5&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=2LA2k4nCvT%2B0PScLnVza%2Fw%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(6,6,'Web Developer','2025-01-23','https://ar.linkedin.com/jobs/view/web-developer-at-project-growth-4132134915?position=6&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=hER73Pwr5caB4fu8dxQf6A%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(7,7,'Programador full stack','2025-01-23','https://ar.linkedin.com/jobs/view/programador-full-stack-at-rhino-4104818829?position=7&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=3gXa6UYmPrHxBOSKnL9tYw%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(8,8,'Frontend Developer (React.Js )','2025-01-22','https://ar.linkedin.com/jobs/view/frontend-developer-react-js-at-perform-4131808639?position=8&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=4JxTJc4kBTI%2Bc3ziSBdKpQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(9,1,'Frontend Engineer II (Mid-Level with Webflow expertise)','2025-01-22','https://ar.linkedin.com/jobs/view/frontend-engineer-ii-mid-level-with-webflow-expertise-at-outliant-4130660360?position=9&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=NvIW%2FF58JpHMKNr52kAksw%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(10,9,'Ingeniera / Ingeniero de Software Frontend','2025-01-22','https://ar.linkedin.com/jobs/view/ingeniera-ingeniero-de-software-frontend-at-mercado-libre-4130199770?position=10&pageNum=0&refId=8oGcWwby3P3rob3oEE1nlg%3D%3D&trackingId=8ceRC7I8SlLi%2BGDmnaOdRA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(11,10,'Desarrollador de back-end ssr','2025-01-22','https://ar.linkedin.com/jobs/view/desarrollador-de-back-end-ssr-at-privada-4130638790?position=2&pageNum=1&refId=Q%2BAMHegqePKIhHfDVkIpAw%3D%3D&trackingId=FbqtsM28%2FRcytGRDPht%2Brg%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(12,11,'Desarrollador Full Stack Senior','2025-01-23','https://ar.linkedin.com/jobs/view/desarrollador-full-stack-senior-at-bbva-en-argentina-4132622559?position=4&pageNum=1&refId=Q%2BAMHegqePKIhHfDVkIpAw%3D%3D&trackingId=tEaWn4mbYsFsDavN2dJp6Q%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(13,12,'Full Stack Engineer','2025-01-22','https://ar.linkedin.com/jobs/view/full-stack-engineer-at-brazoderecho-4132359271?position=5&pageNum=1&refId=Q%2BAMHegqePKIhHfDVkIpAw%3D%3D&trackingId=ilHK2%2FU4iSgy2S5Olgrhsg%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(14,13,'Desarrollador de Software Semi Senior','2025-01-22','https://ar.linkedin.com/jobs/view/desarrollador-de-software-semi-senior-at-nubceo-4130158135?position=6&pageNum=1&refId=Q%2BAMHegqePKIhHfDVkIpAw%3D%3D&trackingId=OsQDXPI3NOYPoxbyzbirVQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(15,14,'Senior Backend Engineer','2025-01-22','https://ar.linkedin.com/jobs/view/senior-backend-engineer-at-linkme-4132389341?position=7&pageNum=1&refId=Q%2BAMHegqePKIhHfDVkIpAw%3D%3D&trackingId=lDemwukTlSk5zyzoaNDJaA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(16,15,'Senior Backend Engineer','2025-01-23','https://ar.linkedin.com/jobs/view/senior-backend-engineer-at-nearshore-business-solutions-4132062831?position=8&pageNum=1&refId=Q%2BAMHegqePKIhHfDVkIpAw%3D%3D&trackingId=28lbLM31HkBDFa6AqkqzuA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(17,16,'Developer Back End Node JS. Industria Petrolera','2025-01-22','https://ar.linkedin.com/jobs/view/developer-back-end-node-js-industria-petrolera-at-confidencial-4123834374?position=9&pageNum=1&refId=Q%2BAMHegqePKIhHfDVkIpAw%3D%3D&trackingId=vTvs50gVg9m20i7o8vsw9w%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(18,17,'Lead Backend Developer','2025-01-22','https://ar.linkedin.com/jobs/view/lead-backend-developer-at-vinoly-4130162138?position=10&pageNum=1&refId=Q%2BAMHegqePKIhHfDVkIpAw%3D%3D&trackingId=0MpZxQwTpkEIvQE3dH39jQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(19,18,'Back-End Engineer at Nearshore Business Solutions','2025-01-23','https://ar.linkedin.com/jobs/view/back-end-engineer-at-nearshore-business-solutions-at-torre-hunt-llc-4130179786?position=1&pageNum=2&refId=LXKAUJiPCuUVKkzDnTqrkw%3D%3D&trackingId=4%2B2eL3B7stwTGEShiQrMhw%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',2),(20,19,'Sr Fullstack Developer','2025-01-22','https://ar.linkedin.com/jobs/view/sr-fullstack-developer-at-redbee-4131826921?position=2&pageNum=2&refId=LXKAUJiPCuUVKkzDnTqrkw%3D%3D&trackingId=iIy%2F%2Bl4XeI1rlAW8A18F9Q%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(21,20,'Programador / Desarrollador con Contrata Indefinida','2025-01-22','https://ar.linkedin.com/jobs/view/programador-desarrollador-con-contrata-indefinida-at-hablax-inc-4131897452?position=4&pageNum=2&refId=LXKAUJiPCuUVKkzDnTqrkw%3D%3D&trackingId=wZfemr%2BVxHEHpi7s%2BR4bvQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(22,21,'Desarrollador Full Stack Senior - Híbrido (CABA/GBA).','2025-01-23','https://ar.linkedin.com/jobs/view/desarrollador-full-stack-senior-h%C3%ADbrido-caba-gba-at-talent-connect-4130699127?position=5&pageNum=2&refId=LXKAUJiPCuUVKkzDnTqrkw%3D%3D&trackingId=behu9U1MJqbjYvgxoWBoew%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(23,22,'Software Engineer (Golang)','2025-01-23','https://ar.linkedin.com/jobs/view/software-engineer-golang-at-techie-talent-4130681784?position=6&pageNum=2&refId=LXKAUJiPCuUVKkzDnTqrkw%3D%3D&trackingId=L8p%2FuJQptBsVwG1LsTn8og%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(24,23,'Senior Software Engineer','2025-01-22','https://ar.linkedin.com/jobs/view/senior-software-engineer-at-autonoma-ai-4130128315?position=7&pageNum=2&refId=LXKAUJiPCuUVKkzDnTqrkw%3D%3D&trackingId=O%2Ba2GpqobPRNDaRoK7tRrA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(25,24,'Full Stack Developer con experiencia en Azure','2025-01-23','https://ar.linkedin.com/jobs/view/full-stack-developer-con-experiencia-en-azure-at-dam-squad-4132090684?position=8&pageNum=2&refId=LXKAUJiPCuUVKkzDnTqrkw%3D%3D&trackingId=c18voKF%2BWaC2E%2F5GVEf5qQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(26,18,'Back-end Engineer at Nearshore Business Solutions','2025-01-22','https://ar.linkedin.com/jobs/view/back-end-engineer-at-nearshore-business-solutions-at-torre-hunt-llc-4132135251?position=9&pageNum=2&refId=LXKAUJiPCuUVKkzDnTqrkw%3D%3D&trackingId=Gntr7%2B67w7D8ZMxb%2B9daKg%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',2),(27,25,'Tutor for Software Engineering Program','2025-01-23','https://ar.linkedin.com/jobs/view/tutor-for-software-engineering-program-at-tripleten-indonesia-4132154615?position=10&pageNum=2&refId=LXKAUJiPCuUVKkzDnTqrkw%3D%3D&trackingId=MzeZuqhWGUPTRmVCIE45ww%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(28,26,'Senior  Front-end developer','2025-01-22','https://ar.linkedin.com/jobs/view/senior-front-end-developer-at-blanc-labs-4132369978?position=1&pageNum=3&refId=ImZowOf8lmX0Wen4zcoMVg%3D%3D&trackingId=MymvO0Ka%2FhwgPW0q8vi6eA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(29,27,'Senior Engineering Manager','2025-01-22','https://ar.linkedin.com/jobs/view/senior-engineering-manager-at-securityscorecard-4130141540?position=2&pageNum=3&refId=ImZowOf8lmX0Wen4zcoMVg%3D%3D&trackingId=qsbaVe1BoTpRR2fC9dFmlA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(30,28,'Backend Developer - Nodejs','2025-01-23','https://ar.linkedin.com/jobs/view/backend-developer-nodejs-at-oowlish-4080291767?position=3&pageNum=3&refId=ImZowOf8lmX0Wen4zcoMVg%3D%3D&trackingId=rgsiKa4jdsOgcUOuZvsAMg%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(31,27,'Senior Software Engineer','2025-01-22','https://ar.linkedin.com/jobs/view/senior-software-engineer-at-securityscorecard-4130141954?position=4&pageNum=3&refId=ImZowOf8lmX0Wen4zcoMVg%3D%3D&trackingId=g1Z4xNHb6%2Bx4t11TiRzM5A%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(32,29,'Sr. NET Developer','2025-01-22','https://ar.linkedin.com/jobs/view/sr-net-developer-at-techunting-4130147128?position=7&pageNum=3&refId=ImZowOf8lmX0Wen4zcoMVg%3D%3D&trackingId=txPqhMN9pqSWbCqXKp%2FW8A%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(33,30,'Cybersecurity Backend Specialist Sr','2025-01-22','https://ar.linkedin.com/jobs/view/cybersecurity-backend-specialist-sr-at-baufest-4131815129?position=8&pageNum=3&refId=ImZowOf8lmX0Wen4zcoMVg%3D%3D&trackingId=mdhwMCMY9uAk4vpEcgjyRw%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(34,31,'Junior Engineer - INGLÉS + CHINO AVANZADO','2025-01-22','https://ar.linkedin.com/jobs/view/junior-engineer-ingl%C3%A9s-%2B-chino-avanzado-at-experis-argentina-4131827102?position=1&pageNum=4&refId=wWwizaa5m9GSBr6YLVHa4w%3D%3D&trackingId=e7Bgdf%2FqYqmNRbpwHNDSvQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(35,32,'Full Stack Engineer (.NET, SQL Server)','2025-01-23','https://ar.linkedin.com/jobs/view/full-stack-engineer-net-sql-server-at-kastech-software-solutions-group-4131521332?position=8&pageNum=4&refId=wWwizaa5m9GSBr6YLVHa4w%3D%3D&trackingId=E0bgdenExn8ruFgSP1hlrg%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(36,33,'DevSecOps Engineer - Ssr','2025-01-22','https://ar.linkedin.com/jobs/view/devsecops-engineer-ssr-at-koibanx-4130168681?position=9&pageNum=4&refId=wWwizaa5m9GSBr6YLVHa4w%3D%3D&trackingId=CGSwvi3NR9hOgclu0XFEtA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(37,34,'Semi-Senior SDET Engineer','2025-01-22','https://ar.linkedin.com/jobs/view/semi-senior-sdet%C2%A0engineer-at-capgemini-engineering-4132107457?position=1&pageNum=5&refId=yPlcbSppzMTEWnt3H5myYQ%3D%3D&trackingId=CdHOsuHDhX0136a5OgFWlg%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(38,35,'Senior Data Analyst, Economics','2025-01-23','https://ar.linkedin.com/jobs/view/senior-data-analyst-economics-at-chainlink-labs-4133015240?position=2&pageNum=5&refId=yPlcbSppzMTEWnt3H5myYQ%3D%3D&trackingId=F6e4dod7u%2FAh4gn8SnSNqA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(39,36,'Senior Full-Stack Developer (C#/.NET & Blazor | Open to Angular Expertise)','2025-01-22','https://ar.linkedin.com/jobs/view/senior-full-stack-developer-c%23-net-blazor-open-to-angular-expertise-at-jalasoft-4130639647?position=4&pageNum=5&refId=yPlcbSppzMTEWnt3H5myYQ%3D%3D&trackingId=uBhOhIoExXPm7K7H%2FA9ZEw%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(40,37,'SaaS Backend Engineer - Landscape','2025-01-23','https://ar.linkedin.com/jobs/view/saas-backend-engineer-landscape-at-canonical-4132093256?position=6&pageNum=5&refId=yPlcbSppzMTEWnt3H5myYQ%3D%3D&trackingId=ztMO4lXX5YJ32lZWn%2FaOwQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(41,38,'React Native Engineer','2025-01-22','https://ar.linkedin.com/jobs/view/react-native-engineer-at-globallogic-latinoam%C3%A9rica-4131764791?position=9&pageNum=5&refId=yPlcbSppzMTEWnt3H5myYQ%3D%3D&trackingId=32AuOlSks5wh9NAXYZe9fQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(42,39,'Desarrollador/a Fullstack Ssr (Node.js','2025-01-23','https://ar.linkedin.com/jobs/view/desarrollador-a-fullstack-ssr-node-js-at-selectium-4132091468?position=1&pageNum=1&refId=Z45i5NFX9Ae01vT08Plxnw%3D%3D&trackingId=k1NOwWAxtt4FqyjpwoAAmQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(43,40,'Tech Lead - Menu Team','2025-01-22','https://ar.linkedin.com/jobs/view/tech-lead-menu-team-at-cookunity-4131805856?position=2&pageNum=1&refId=Z45i5NFX9Ae01vT08Plxnw%3D%3D&trackingId=WSW%2BdPCwD%2B1MvdRZzHbRrQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(44,41,'WordPress Developer','2025-01-22','https://ar.linkedin.com/jobs/view/wordpress-developer-at-lawnstarter-4132391484?position=5&pageNum=1&refId=Z45i5NFX9Ae01vT08Plxnw%3D%3D&trackingId=MVZKpK6W55HQI7A7aYe6jg%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(45,34,'Junior Dotnet Developer','2025-01-22','https://ar.linkedin.com/jobs/view/junior-dotnet-developer-at-capgemini-engineering-4131795951?position=7&pageNum=1&refId=Z45i5NFX9Ae01vT08Plxnw%3D%3D&trackingId=j9sDVzogrcxhHtkiqoKeAQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(46,42,'Senior Site Reliability Engineer (Argentina)','2025-01-23','https://ar.linkedin.com/jobs/view/senior-site-reliability-engineer-argentina-at-sezzle-4082662203?position=8&pageNum=1&refId=Z45i5NFX9Ae01vT08Plxnw%3D%3D&trackingId=y9vjjxLIrk%2FLFK%2BVTDXvgg%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(47,43,'Magento/Backend-Developer','2025-01-23','https://ar.linkedin.com/jobs/view/magento-backend-developer-at-outsource-argentina-4132085308?position=10&pageNum=1&refId=Z45i5NFX9Ae01vT08Plxnw%3D%3D&trackingId=YK3%2FaUeOSQs%2B%2FXarwROrgg%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(48,38,'API Engineer','2025-01-22','https://ar.linkedin.com/jobs/view/api-engineer-at-globallogic-latinoam%C3%A9rica-4131789706?position=3&pageNum=2&refId=AhxN81yAI44WOOakhFC3tg%3D%3D&trackingId=DTWJ%2BRc%2BXhackdYiBtVHgQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(49,38,'Mobile Quality Engineer','2025-01-22','https://ar.linkedin.com/jobs/view/mobile-quality-engineer-at-globallogic-latinoam%C3%A9rica-4131793649?position=4&pageNum=2&refId=AhxN81yAI44WOOakhFC3tg%3D%3D&trackingId=JILm4iXDGIAAH7Z1Qu0dWQ%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(50,44,'Field Service Engineer','2025-01-23','https://ar.linkedin.com/jobs/view/field-service-engineer-at-rockwell-automation-4132140355?position=5&pageNum=2&refId=AhxN81yAI44WOOakhFC3tg%3D%3D&trackingId=eNQbB9YIHtGjr1efz7zZlA%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(51,45,'Desarrollador .NET c Angular SSR','2025-01-22','https://ar.linkedin.com/jobs/view/desarrollador-net-c-angular-ssr-at-recursos-humanos-especializados-rhe-consultora-4130622392?position=6&pageNum=2&refId=AhxN81yAI44WOOakhFC3tg%3D%3D&trackingId=oDjDHRDVFWjpdnd2e3lEug%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL),(52,46,'Tech Lead (React/.NET)','2025-01-22','https://ar.linkedin.com/jobs/view/tech-lead-react-net-at-pwc-argentina-4132124983?position=7&pageNum=2&refId=AhxN81yAI44WOOakhFC3tg%3D%3D&trackingId=OIWjyLOVWRSQ%2BQNdNhAqcw%3D%3D','2025-01-23 11:40:02','2025-01-23 11:40:02',NULL);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Review'),(2,'Rejected'),(3,'Applied');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `to_review`
--

DROP TABLE IF EXISTS `to_review`;
/*!50001 DROP VIEW IF EXISTS `to_review`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `to_review` AS SELECT 
 1 AS `id`,
 1 AS `company`,
 1 AS `position`,
 1 AS `post_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'newNova'
--
/*!50003 DROP PROCEDURE IF EXISTS `id_refresh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`fullsnacker`@`localhost` PROCEDURE `id_refresh`()
BEGIN

SET @new_auto_increment = (SELECT id + 1 from company order by id desc limit 1);
SET @query = CONCAT('ALTER TABLE company AUTO_INCREMENT = ', @new_auto_increment);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `id_refresher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`fullsnacker`@`localhost` PROCEDURE `id_refresher`()
BEGIN

ALTER TABLE `newNova`.`position` 
ADD COLUMN `company_name` VARCHAR(255);

UPDATE `newNova`.`position` p SET p.`company_name` = (SELECT name from newNova.company WHERE id = p.company_id) 
WHERE (`id` >= '1');

UPDATE `newNova`.`position` p SET p.`company_id` = null 
WHERE (`id` >= '1');

CREATE TEMPORARY TABLE temp_table AS 
SELECT @rownum := @rownum + 1 AS new_id, id 
FROM company, (SELECT @rownum := 0) r 
ORDER BY id;

UPDATE company t
JOIN temp_table tmp ON t.id = tmp.id
SET t.id = tmp.new_id;

DROP TEMPORARY TABLE IF EXISTS temp_table;

SET @new_auto_increment = (SELECT id + 1 from company order by id desc limit 1);
SET @query = CONCAT('ALTER TABLE company AUTO_INCREMENT = ', @new_auto_increment);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

UPDATE `newNova`.`position` p 
SET p.`company_id` = (SELECT id from company c where c.name = p.company_name) 
WHERE (`id` >= '1');

ALTER TABLE `newNova`.`position` 
DROP COLUMN `company_name`;

CREATE TEMPORARY TABLE temp_table AS 
SELECT @rownum := @rownum + 1 AS new_id, id 
FROM position, (SELECT @rownum := 0) r 
ORDER BY id;

UPDATE position t
JOIN temp_table tmp ON t.id = tmp.id
SET t.id = tmp.new_id;

DROP TEMPORARY TABLE IF EXISTS temp_table;

SET @new_auto_increment = (SELECT id + 1 from position order by id desc limit 1);
SET @query = CONCAT('ALTER TABLE position AUTO_INCREMENT = ', @new_auto_increment);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `newNova`
--

USE `newNova`;

--
-- Final view structure for view `to_review`
--

/*!50001 DROP VIEW IF EXISTS `to_review`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fullsnacker`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `to_review` AS select `p`.`id` AS `id`,`c`.`name` AS `company`,`p`.`name` AS `position`,`p`.`post_date` AS `post_date` from (`position` `p` join `company` `c` on((`p`.`company_id` = `c`.`id`))) where ((`c`.`order` is not null) and exists(select 1 from `filter` `f` where (`p`.`name` like concat('%',`f`.`word`,'%'))) is false and (`p`.`status_id` is null)) order by `c`.`order` desc,`p`.`post_date` desc,`c`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-23 12:20:10
