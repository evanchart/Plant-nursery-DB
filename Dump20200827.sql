-- MySQL dump 10.13  Distrib 8.0.21, for osx10.15 (x86_64)
--
-- Host: localhost    Database: plant_nursery
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `food` int(11) NOT NULL,
  `water` int(11) NOT NULL,
  `curr_airm` int(11) NOT NULL,
  `curr_ambi` int(11) NOT NULL,
  `curr_time` datetime NOT NULL,
  `Log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event_ID` int(11) DEFAULT NULL,
  `Station_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Log_ID`),
  KEY `Event_ID` (`Event_ID`),
  KEY `Station_ID` (`Station_ID`),
  CONSTRAINT `activity_log_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `weather_events` (`Event_ID`),
  CONSTRAINT `activity_log_ibfk_2` FOREIGN KEY (`Station_ID`) REFERENCES `weather_stations` (`Station_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,0,71,113,'1944-07-05 18:12:18',1,NULL,NULL),(6,4,80,121,'1935-11-20 00:46:43',2,NULL,NULL),(10,7,83,131,'2000-04-30 08:18:51',3,NULL,NULL),(5,10,77,100,'2011-05-05 20:06:11',4,NULL,NULL),(5,10,71,208,'1973-12-11 00:14:57',5,NULL,NULL),(9,7,88,168,'1939-10-17 20:38:25',6,NULL,NULL),(5,1,73,210,'1946-02-27 22:34:10',7,NULL,NULL),(2,7,80,215,'1963-12-15 09:37:36',8,NULL,NULL),(1,7,86,297,'1979-04-27 02:50:30',9,NULL,NULL),(8,3,76,222,'1936-11-06 10:54:14',10,NULL,NULL),(5,4,76,202,'1980-01-30 20:12:56',11,NULL,NULL),(2,7,79,149,'2012-07-22 13:38:39',12,NULL,NULL),(9,6,78,153,'1937-09-28 22:20:08',13,NULL,NULL),(6,8,90,237,'1969-10-30 16:18:06',14,NULL,NULL),(1,5,88,293,'1947-10-03 17:10:15',15,NULL,NULL),(0,8,85,178,'1990-12-29 23:51:41',16,NULL,NULL),(2,1,89,145,'1963-03-18 22:23:37',17,NULL,NULL),(1,7,71,126,'1975-04-12 18:48:24',18,NULL,NULL),(1,1,73,200,'1931-03-06 21:56:42',19,NULL,NULL),(5,7,83,153,'1965-12-16 10:56:38',20,NULL,NULL),(2,8,77,175,'2005-05-14 18:48:22',21,NULL,NULL),(0,9,72,286,'1958-02-18 17:19:01',22,NULL,NULL),(8,10,77,297,'2005-02-22 00:02:16',23,NULL,NULL),(2,8,89,169,'1930-10-28 13:33:41',24,NULL,NULL),(10,9,79,226,'2000-04-05 23:29:27',25,NULL,NULL),(0,9,72,299,'1988-05-25 00:47:41',26,NULL,NULL),(3,4,75,112,'1976-03-19 20:25:41',27,NULL,NULL),(4,4,87,107,'1987-04-18 16:27:58',28,NULL,NULL),(0,5,74,205,'1932-09-08 14:30:11',29,NULL,NULL),(6,7,84,210,'1984-04-15 20:37:35',30,NULL,NULL),(4,0,75,298,'1949-08-01 16:40:49',31,NULL,NULL),(1,9,71,249,'1974-02-08 03:17:14',32,NULL,NULL),(2,6,80,234,'2002-01-03 19:40:05',33,NULL,NULL),(0,7,73,290,'1949-06-19 20:29:42',34,NULL,NULL),(2,5,84,104,'1935-01-07 16:50:09',35,NULL,NULL),(2,8,76,128,'2004-11-10 06:04:40',36,NULL,NULL),(8,3,73,103,'1978-12-04 04:00:48',37,NULL,NULL),(7,8,83,123,'1981-11-24 08:56:25',38,NULL,NULL),(5,10,76,215,'2015-07-01 02:13:46',39,NULL,NULL),(0,4,87,275,'2013-05-27 04:47:06',40,NULL,NULL),(0,4,90,225,'1948-03-16 06:13:15',41,NULL,NULL),(1,10,79,193,'2012-07-05 13:47:47',42,NULL,NULL);
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_requirements`
--

DROP TABLE IF EXISTS `daily_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_requirements` (
  `food` int(11) NOT NULL,
  `water` int(11) NOT NULL,
  `temp` int(11) NOT NULL,
  `airm` int(11) NOT NULL,
  `light` int(11) NOT NULL,
  `Req_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Req_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_requirements`
--

LOCK TABLES `daily_requirements` WRITE;
/*!40000 ALTER TABLE `daily_requirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant`
--

DROP TABLE IF EXISTS `plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant` (
  `volume` int(11) NOT NULL,
  `classification` varchar(25) NOT NULL,
  `lifespan` varchar(25) NOT NULL,
  `species` varchar(25) NOT NULL,
  `common_name` varchar(25) NOT NULL,
  `variety` varchar(25) NOT NULL,
  `description` text,
  `germination_length` int(11) NOT NULL,
  `planting_date` date DEFAULT NULL,
  `germination_date` double GENERATED ALWAYS AS ((`planting_date` + interval `germination_length` day)) VIRTUAL,
  `Plant_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Req_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Plant_ID`),
  KEY `Req_ID` (`Req_ID`),
  CONSTRAINT `plant_ibfk_1` FOREIGN KEY (`Req_ID`) REFERENCES `daily_requirements` (`Req_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant`
--

LOCK TABLES `plant` WRITE;
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
INSERT INTO `plant` (`volume`, `classification`, `lifespan`, `species`, `common_name`, `variety`, `description`, `germination_length`, `planting_date`, `Plant_ID`, `Req_ID`) VALUES (2,'herb','annual','Ocimum basilicum','Basil','Green',NULL,8,'2000-10-12',1,NULL),(2,'herb','annual','Ocimum basilicum','Basil','Yellow',NULL,10,'2004-02-03',2,NULL),(2,'herb','perenial','Laurus nobilis','Bay Laural','Red',NULL,15,'2004-01-03',3,NULL),(2,'herb','perenial','Laurus nobilis','Bay Laural','Purple',NULL,15,'2004-01-05',4,NULL),(2,'herb','perenial','Borage officinalis','Borage','Orange',NULL,5,'2001-04-16',5,NULL),(2,'herb','perenial','Borage officinalis','Borage','Red',NULL,5,'2003-08-05',6,NULL),(2,'herb','perenial','Carum carvi','Caraway','Red',NULL,10,'2003-07-06',7,NULL),(2,'herb','perenial','Carum carvi','Caraway','Green',NULL,10,'1930-08-06',8,NULL),(2,'herb','annual','Nepeta cataria','Catnip','Green',NULL,5,'2006-08-09',9,NULL),(2,'herb','annual','Nepeta cataria','Catnip','Red',NULL,5,'2006-07-06',10,NULL),(2,'herb','annual','Allium Schoenoprasum','Chives','Yellow',NULL,15,'2004-10-28',11,NULL),(2,'herb','annual','Allium Schoenoprasum','Chives','Green',NULL,15,'2004-11-12',12,NULL),(8,'vegetable','perenial','Brassica oleracea','Cabbage','Red',NULL,13,'2019-05-23',13,NULL),(8,'vegetable','perenial','Brassica oleracea','Cabbage','Purple',NULL,12,'2019-05-23',14,NULL),(8,'vegetable','perenial','Cichorium intybus','Chicory','Red',NULL,13,'2019-05-23',15,NULL),(8,'vegetable','perenial','Cichorium intybus','Chicory','Blue',NULL,12,'2019-05-23',16,NULL),(8,'vegetable','perenial','Inula crithmoides','Samphire','Red',NULL,12,'2019-05-23',17,NULL),(8,'vegetable','perenial','Inula crithmoides','Samphire','Brown',NULL,15,'2019-05-23',18,NULL),(8,'vegetable','perenial','Inula crithmoides','Samphire','Red',NULL,12,'2019-05-23',19,NULL),(8,'vegetable','perenial','Inula crithmoides','Samphire','Brown',NULL,15,'2019-05-23',20,NULL),(8,'vegetable','annual','Lactuca sativa','Lettuce','Iceberg',NULL,13,'2019-05-23',21,NULL),(8,'vegetable','annual','Lactuca sativa','Lettuce','Red',NULL,13,'2019-05-23',22,NULL),(8,'vegetable','annual','Lactuca sativa','Lettuce','Iceberg',NULL,13,'2019-05-23',23,NULL),(8,'vegetable','annual','Lactuca sativa','Lettuce','Red',NULL,13,'2019-05-23',24,NULL),(8,'vegetable','annual','Lactuca sativa','Lettuce','Iceberg',NULL,13,'2019-05-23',25,NULL),(8,'vegetable','annual','Lactuca sativa','Lettuce','Red',NULL,13,'2019-05-23',26,NULL),(8,'vegetable','annual','Brassica oleracea','Kale','Green',NULL,12,'2019-05-23',27,NULL),(8,'vegetable','annual','Brassica oleracea','Kale','Yellow',NULL,12,'2019-05-23',28,NULL),(8,'vegetable','annual','Plantago major','Plantain','Greater',NULL,10,'2019-05-23',29,NULL),(8,'vegetable','annual','Plantago major','Plantain','Lesser',NULL,18,'2019-05-23',30,NULL),(4,'flower','annual','Mimosa pudica','Mimosa','Purple',NULL,2,'2009-06-13',31,NULL),(4,'flower','annual','Mimosa pudica','Mimosa','Red',NULL,2,'2001-08-12',32,NULL),(4,'flower','annual','Ipomea purpurea','Morning Glory','Yellow',NULL,5,'2006-12-01',33,NULL),(4,'flower','annual','Ipomea purpurea','Morning Glory','White',NULL,5,'2004-03-04',34,NULL),(4,'flower','annual','Erysimum nymphaea','Wallflower','Yellow',NULL,1,'2002-05-06',35,NULL),(4,'flower','annual','Erysimum nymphaea','Wallflower','White',NULL,1,'2003-06-09',36,NULL),(4,'flower','annual','Ilex verticillata','Winterberry','White',NULL,2,'2007-04-05',37,NULL),(4,'flower','annual','Ilex verticillata','Winterberry','Purple',NULL,1,'2007-04-03',38,NULL),(4,'flower','annual','Jasminum nudiflorum','Winter Jasmine','Purple',NULL,3,'2002-03-02',39,NULL),(4,'flower','annual','Jasminum nudiflorum','Winter Jasmine','Pink',NULL,3,'2005-02-03',40,NULL),(4,'flower','annual','Daphne odora','Daphne','White',NULL,1,'2006-05-08',41,NULL),(4,'flower','annual','Daphne odora','Daphne','Yellow',NULL,1,'2004-05-08',42,NULL);
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_actions`
--

DROP TABLE IF EXISTS `plant_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_actions` (
  `fed` int(11) NOT NULL,
  `watered` int(11) NOT NULL,
  `Action_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Action_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_actions`
--

LOCK TABLES `plant_actions` WRITE;
/*!40000 ALTER TABLE `plant_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `plant_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pot`
--

DROP TABLE IF EXISTS `pot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pot` (
  `volume` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `Pot_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tray_ID` int(11) DEFAULT NULL,
  `Log_ID` int(11) DEFAULT NULL,
  `Plant_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pot_ID`),
  KEY `Tray_ID` (`Tray_ID`),
  KEY `Log_ID` (`Log_ID`),
  KEY `Plant_ID` (`Plant_ID`),
  CONSTRAINT `pot_ibfk_1` FOREIGN KEY (`Tray_ID`) REFERENCES `tray` (`Tray_ID`),
  CONSTRAINT `pot_ibfk_2` FOREIGN KEY (`Log_ID`) REFERENCES `activity_log` (`Log_ID`),
  CONSTRAINT `pot_ibfk_3` FOREIGN KEY (`Plant_ID`) REFERENCES `plant` (`Plant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pot`
--

LOCK TABLES `pot` WRITE;
/*!40000 ALTER TABLE `pot` DISABLE KEYS */;
INSERT INTO `pot` VALUES (4,7,1,NULL,NULL,42),(4,7,2,NULL,NULL,41),(4,7,3,NULL,NULL,40),(4,7,4,NULL,NULL,39),(4,7,5,NULL,NULL,38),(4,7,6,NULL,NULL,37),(4,7,7,NULL,NULL,36),(4,7,8,NULL,NULL,35),(4,7,9,NULL,NULL,34),(4,7,10,NULL,NULL,33),(4,7,11,NULL,NULL,32),(4,7,12,NULL,NULL,31),(8,12,13,NULL,NULL,30),(8,12,14,NULL,NULL,29),(8,12,15,NULL,NULL,28),(8,12,16,NULL,NULL,27),(8,12,17,NULL,NULL,26),(8,12,18,NULL,NULL,25),(8,12,19,NULL,NULL,24),(8,12,20,NULL,NULL,23),(8,12,21,NULL,NULL,22),(8,12,22,NULL,NULL,21),(8,12,23,NULL,NULL,20),(8,12,24,NULL,NULL,19),(8,12,25,NULL,NULL,18),(8,12,26,NULL,NULL,17),(8,12,27,NULL,NULL,16),(8,12,28,NULL,NULL,15),(8,12,29,NULL,NULL,14),(8,12,30,NULL,NULL,13),(2,3,31,NULL,NULL,12),(2,3,32,NULL,NULL,11),(2,3,33,NULL,NULL,10),(2,3,34,NULL,NULL,9),(2,3,35,NULL,NULL,8),(2,3,36,NULL,NULL,7),(2,3,37,NULL,NULL,6),(2,3,38,NULL,NULL,5),(2,3,39,NULL,NULL,4),(2,3,40,NULL,NULL,3),(2,3,41,NULL,NULL,2),(2,3,42,NULL,NULL,1);
/*!40000 ALTER TABLE `pot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tray`
--

DROP TABLE IF EXISTS `tray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tray` (
  `timestamp` timestamp NULL DEFAULT NULL,
  `last_action` text,
  `location` varchar(5) NOT NULL,
  `Tray_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Plant_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Tray_ID`),
  KEY `Plant_ID` (`Plant_ID`),
  CONSTRAINT `tray_ibfk_1` FOREIGN KEY (`Plant_ID`) REFERENCES `plant` (`Plant_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tray`
--

LOCK TABLES `tray` WRITE;
/*!40000 ALTER TABLE `tray` DISABLE KEYS */;
INSERT INTO `tray` VALUES (NULL,NULL,'(0,0)',1,NULL),(NULL,NULL,'(0,1)',2,NULL),(NULL,NULL,'(2,0)',3,NULL),(NULL,NULL,'(2,2)',4,NULL),(NULL,NULL,'(4,2)',5,NULL),(NULL,NULL,'(4,0)',6,NULL),(NULL,NULL,'(5,1)',7,NULL);
/*!40000 ALTER TABLE `tray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_events`
--

DROP TABLE IF EXISTS `weather_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_events` (
  `curr_temp` int(11) NOT NULL,
  `curr_ambi` int(11) NOT NULL,
  `curr_airm` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_events`
--

LOCK TABLES `weather_events` WRITE;
/*!40000 ALTER TABLE `weather_events` DISABLE KEYS */;
INSERT INTO `weather_events` VALUES (74,160,88,1),(78,208,78,2),(79,124,73,3),(81,141,78,4),(75,161,84,5),(78,111,70,6),(71,131,82,7),(80,270,83,8),(84,232,72,9),(82,243,85,10),(80,167,73,11),(85,182,85,12),(77,238,77,13),(82,121,83,14),(89,279,81,15),(70,212,84,16),(84,219,86,17),(73,204,71,18),(84,181,88,19),(74,187,80,20),(75,269,77,21),(77,238,77,22),(83,186,71,23),(70,294,85,24);
/*!40000 ALTER TABLE `weather_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_stations`
--

DROP TABLE IF EXISTS `weather_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_stations` (
  `location` varchar(5) DEFAULT NULL,
  `Station_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Event_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Station_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `weather_stations_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `weather_events` (`Event_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_stations`
--

LOCK TABLES `weather_stations` WRITE;
/*!40000 ALTER TABLE `weather_stations` DISABLE KEYS */;
INSERT INTO `weather_stations` VALUES ('(0,1)',1,NULL),('(1,2)',2,NULL),('(2,1)',3,NULL),('(3,2)',4,NULL),('(4,1)',5,NULL);
/*!40000 ALTER TABLE `weather_stations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-27 17:33:06
