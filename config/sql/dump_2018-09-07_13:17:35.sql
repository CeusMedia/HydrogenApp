-- MySQL dump 10.13  Distrib 5.5.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: labs_hydrogen_app
-- ------------------------------------------------------
-- Server version	5.5.61-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mail_attachments`
--

DROP TABLE IF EXISTS `<%?prefix%>mail_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `<%?prefix%>mail_attachments` (
  `mailAttachmentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `className` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mimeType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `countAttached` int(11) DEFAULT '0',
  `createdAt` decimal(12,0) NOT NULL,
  PRIMARY KEY (`mailAttachmentId`),
  KEY `status` (`status`),
  KEY `className` (`className`),
  KEY `filename` (`filename`),
  KEY `mimeType` (`mimeType`),
  KEY `createdAt` (`createdAt`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_attachments`
--

LOCK TABLES `<%?prefix%>mail_attachments` WRITE;
/*!40000 ALTER TABLE `<%?prefix%>mail_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `<%?prefix%>mail_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_templates`
--

DROP TABLE IF EXISTS `<%?prefix%>mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `<%?prefix%>mail_templates` (
  `mailTemplateId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `plain` text COLLATE utf8_unicode_ci,
  `html` text COLLATE utf8_unicode_ci NOT NULL,
  `css` text COLLATE utf8_unicode_ci NOT NULL,
  `styles` text COLLATE utf8_unicode_ci,
  `images` text COLLATE utf8_unicode_ci,
  `createdAt` decimal(12,0) unsigned NOT NULL,
  `modifiedAt` decimal(12,0) unsigned DEFAULT NULL,
  PRIMARY KEY (`mailTemplateId`),
  KEY `status` (`status`),
  KEY `createdAt` (`createdAt`),
  KEY `modifiedAt` (`modifiedAt`),
  KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_templates`
--

LOCK TABLES `<%?prefix%>mail_templates` WRITE;
/*!40000 ALTER TABLE `<%?prefix%>mail_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `<%?prefix%>mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails`
--

DROP TABLE IF EXISTS `<%?prefix%>mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `<%?prefix%>mails` (
  `mailId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `senderId` int(10) unsigned NOT NULL DEFAULT '0',
  `receiverId` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `attempts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `senderAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiverAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiverName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mailClass` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `compression` tinyint(1) unsigned NOT NULL COMMENT '0: UNKNOWN, 1: BASE64, 2: GZIP, 3: BZIP',
  `object` longblob NOT NULL,
  `enqueuedAt` decimal(12,0) unsigned NOT NULL,
  `attemptedAt` decimal(12,0) unsigned DEFAULT '0',
  `sentAt` decimal(12,0) unsigned DEFAULT '0',
  PRIMARY KEY (`mailId`),
  KEY `senderId` (`senderId`),
  KEY `receiverId` (`receiverId`),
  KEY `status` (`status`),
  KEY `attempts` (`attempts`),
  KEY `language` (`language`),
  KEY `senderAddress` (`senderAddress`),
  KEY `receiverAddress` (`receiverAddress`),
  KEY `receiverName` (`receiverName`),
  KEY `subject` (`subject`),
  KEY `mailClass` (`mailClass`),
  KEY `compression` (`compression`),
  KEY `enqueuedAt` (`enqueuedAt`),
  KEY `attemptedAt` (`attemptedAt`),
  KEY `sentAt` (`sentAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails`
--

LOCK TABLES `<%?prefix%>mails` WRITE;
/*!40000 ALTER TABLE `<%?prefix%>mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `<%?prefix%>mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `<%?prefix%>pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `<%?prefix%>pages` (
  `pageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` int(10) unsigned DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `type` tinyint(4) DEFAULT '0',
  `scope` int(10) unsigned DEFAULT '0',
  `rank` tinyint(1) NOT NULL,
  `identifier` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'public',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `format` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'HTML',
  `description` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  `changefreq` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'weekly',
  `priority` float unsigned NOT NULL DEFAULT '0.5',
  `icon` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` decimal(12,0) unsigned NOT NULL,
  `modifiedAt` decimal(12,0) unsigned DEFAULT NULL,
  PRIMARY KEY (`pageId`),
  KEY `parentId` (`parentId`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `scope` (`scope`),
  KEY `identifier` (`identifier`),
  KEY `controller` (`controller`),
  KEY `action` (`action`),
  KEY `access` (`access`),
  KEY `format` (`format`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `<%?prefix%>pages` WRITE;
/*!40000 ALTER TABLE `<%?prefix%>pages` DISABLE KEYS */;
INSERT INTO `<%?prefix%>pages` VALUES (1,0,1,1,0,2,'manage','','','acl','Management',NULL,'HTML',NULL,NULL,'weekly',0.5,'fa fa-fw fa-cogs',1536262638,NULL),(2,1,1,2,0,1,'page','Manage_Page','','acl','Pages',NULL,'HTML',NULL,NULL,'weekly',0.5,'fa fa-fw fa-sitemap',1536262672,NULL),(3,1,1,2,0,3,'user','Manage_User','','acl','Users',NULL,'HTML',NULL,NULL,'weekly',0.5,'fa fa-fw fa-user',1536262789,1536262854),(4,1,1,2,0,4,'role','Manage_Role','','acl','User Roles',NULL,'HTML',NULL,NULL,'weekly',0.5,'fa fa-fw fa-users',1536262887,NULL),(5,0,1,0,0,1,'index','','','public','Start','<p>Weit hinten, hinter den Wortbergen, fern der L&auml;nder Vokalien und Konsonantien leben die Blindtexte. Abgeschieden wohnen sie in Buchstabhausen an der K&uuml;ste des Semantik, eines gro&szlig;en Sprachozeans. Ein kleines B&auml;chlein namens Duden flie&szlig;t durch ihren Ort und versorgt sie mit den n&ouml;tigen Regelialien.</p>\r\n<p>Es ist ein paradiesmatisches Land, in dem einem gebratene Satzteile in den Mund fliegen. Nicht einmal von der allm&auml;chtigen Interpunktion werden die Blindtexte beherrscht &ndash; ein geradezu unorthographisches Leben. Eines Tages aber beschlo&szlig; eine kleine Zeile Blindtext, ihr Name war Lorem Ipsum, hinaus zu gehen in die weite Grammatik.</p>','HTML',NULL,NULL,'weekly',0.5,'fa fa-fw fa-home',1536262951,1536313341),(6,0,1,2,0,3,'auth/login','Auth','login','outside','Sign in',NULL,'HTML',NULL,NULL,'weekly',0.5,'fa fa-fw fa-sign-in',1536263016,NULL),(7,0,1,2,0,4,'auth/logout','Auth','logout','inside','Sign out',NULL,'HTML',NULL,NULL,'weekly',0.5,'fa fa-fw fa-sign-out',1536263045,NULL),(8,1,1,2,0,2,'locale','Manage_Content_Locale','','acl','Locales',NULL,'HTML',NULL,NULL,'weekly',0.5,'fa fa-fw fa-comment-o',1536263638,1536281456);
/*!40000 ALTER TABLE `<%?prefix%>pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_rights`
--

DROP TABLE IF EXISTS `<%?prefix%>role_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `<%?prefix%>role_rights` (
  `roleRightId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `roleId` int(11) unsigned NOT NULL,
  `controller` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` decimal(12,0) unsigned NOT NULL,
  PRIMARY KEY (`roleRightId`),
  KEY `roleId` (`roleId`,`controller`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_rights`
--

LOCK TABLES `<%?prefix%>role_rights` WRITE;
/*!40000 ALTER TABLE `<%?prefix%>role_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `<%?prefix%>role_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `<%?prefix%>roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `<%?prefix%>roles` (
  `roleId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `access` tinyint(1) unsigned NOT NULL,
  `register` tinyint(1) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` decimal(12,0) NOT NULL,
  `modifiedAt` decimal(12,0) NOT NULL,
  PRIMARY KEY (`roleId`),
  KEY `access` (`access`,`register`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `<%?prefix%>roles` WRITE;
/*!40000 ALTER TABLE `<%?prefix%>roles` DISABLE KEYS */;
INSERT INTO `<%?prefix%>roles` VALUES (1,128,0,'Entwickler','',1294083736,0),(2,128,0,'Administrator','',1294083928,0),(3,64,0,'Manager','',1294083948,0),(4,64,128,'Benutzer','',1294083995,0),(5,64,64,'Gast','',1294084004,0);
/*!40000 ALTER TABLE `<%?prefix%>roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_passwords`
--

DROP TABLE IF EXISTS `<%?prefix%>user_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `<%?prefix%>user_passwords` (
  `userPasswordId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `algo` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `failsLast` tinyint(1) unsigned DEFAULT '0',
  `failsTotal` smallint(6) unsigned DEFAULT '0',
  `createdAt` decimal(12,0) unsigned NOT NULL,
  `failedAt` decimal(12,0) unsigned DEFAULT '0',
  `usedAt` decimal(12,0) unsigned DEFAULT '0',
  `revokedAt` decimal(12,0) unsigned DEFAULT '0',
  PRIMARY KEY (`userPasswordId`),
  KEY `userId` (`userId`),
  KEY `status` (`status`),
  KEY `algo` (`algo`),
  KEY `failsLast` (`failsLast`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_passwords`
--

LOCK TABLES `<%?prefix%>user_passwords` WRITE;
/*!40000 ALTER TABLE `<%?prefix%>user_passwords` DISABLE KEYS */;
INSERT INTO `<%?prefix%>user_passwords` VALUES (1,1,1,'1','d5ebcc1c7206b034c495c1891cf76dff','$2y$10$jzn1/2KcW2dIg418/rMUce7Pc5b.4X829KnRGmeENPyxfQ4X9ivDC',0,0,1536262447,0,1536312820,0);
/*!40000 ALTER TABLE `<%?prefix%>user_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `<%?prefix%>users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `<%?prefix%>users` (
  `userId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `accountId` int(11) unsigned DEFAULT '0',
  `roleId` int(11) unsigned NOT NULL,
  `companyId` int(11) unsigned DEFAULT '0',
  `roomId` int(11) unsigned DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `salutation` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` decimal(12,0) NOT NULL,
  `modifiedAt` decimal(12,0) DEFAULT NULL,
  `loggedAt` decimal(12,0) DEFAULT NULL,
  `activeAt` decimal(12,0) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `accountId` (`accountId`),
  KEY `roleId` (`roleId`),
  KEY `status` (`status`),
  KEY `email` (`email`),
  KEY `username` (`username`),
  KEY `gender` (`gender`),
  KEY `country` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `<%?prefix%>users` WRITE;
/*!40000 ALTER TABLE `<%?prefix%>users` DISABLE KEYS */;
INSERT INTO `<%?prefix%>users` VALUES (1,0,1,0,0,1,'root@localhost','root','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1383589432,NULL,1536312821,1536319037);
/*!40000 ALTER TABLE `<%?prefix%>users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-07 13:17:35
