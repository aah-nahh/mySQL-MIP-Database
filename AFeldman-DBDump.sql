CREATE DATABASE  IF NOT EXISTS `military_interventions` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `military_interventions`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: military_interventions
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `administration`
--

DROP TABLE IF EXISTS `administration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administration` (
  `admin_id` tinyint NOT NULL AUTO_INCREMENT,
  `leader_id` tinyint NOT NULL,
  `country_id` tinyint NOT NULL,
  `admin_title` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `leader_id` (`leader_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `administration_ibfk_1` FOREIGN KEY (`leader_id`) REFERENCES `leader` (`leader_id`),
  CONSTRAINT `administration_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration`
--

LOCK TABLES `administration` WRITE;
/*!40000 ALTER TABLE `administration` DISABLE KEYS */;
INSERT INTO `administration` VALUES (1,1,96,'Washington','1789-04-30','1797-04-03'),(2,2,96,'Adams','1797-04-03','1801-04-03'),(3,3,96,'Jefferson','1801-04-03','1809-04-03'),(4,4,96,'Madison','1809-04-03','1817-04-03'),(5,5,96,'Monroe','1817-04-03','1825-04-03'),(6,6,96,'Quincy Adams','1825-04-03','1829-04-03'),(7,7,96,'Jackson','1829-04-03','1837-04-03'),(8,8,96,'Van Buren','1837-04-03','1841-04-03'),(9,9,96,'Henry Harrison','1841-04-03','1841-04-04'),(10,10,96,'Tyler','1841-04-04','1845-04-03'),(11,11,96,'Polk','1845-04-03','1849-04-03'),(12,12,96,'Taylor','1849-04-03','1850-09-07'),(13,13,96,'Fillmore','1850-09-07','1853-04-03'),(14,14,96,'Pierce','1853-04-03','1857-04-03'),(15,15,96,'Buchanan','1857-04-03','1861-04-03'),(16,16,96,'Lincoln','1861-04-03','1865-04-15'),(17,17,96,'Johnson','1865-04-15','1869-04-03'),(18,18,96,'Grant','1869-04-03','1877-04-03'),(19,19,96,'Hayes','1877-04-03','1881-04-03'),(20,20,96,'Garfield','1881-04-03','1881-09-19'),(21,21,96,'Arthur','1881-09-19','1885-04-03'),(22,22,96,'Cleveland','1885-04-03','1889-04-03'),(23,23,96,'Harrison','1889-04-03','1893-04-03'),(24,24,96,'Cleveland','1893-04-03','1897-04-03'),(25,25,96,'McKinley','1897-04-03','1901-09-14'),(26,26,96,'Roosevelt','1901-09-14','1909-04-03'),(27,27,96,'Taft','1909-04-03','1913-04-03'),(28,28,96,'Wilson','1913-04-03','1921-04-03'),(29,29,96,'Harding','1921-04-03','1923-02-08'),(30,30,96,'Coolidge','1923-02-08','1929-04-03'),(31,31,96,'Hoover','1929-04-03','1933-04-03'),(32,32,96,'Delano Roosevelt','1933-04-03','1945-12-04'),(33,33,96,'Truman','1945-12-04','1953-01-20'),(34,34,96,'Eisenhower','1953-01-20','1961-01-20'),(35,35,96,'Kennedy','1961-01-20','1963-11-22'),(36,36,96,'Johnson','1963-11-22','1969-01-20'),(37,37,96,'Nixon','1969-01-20','1974-09-08'),(38,38,96,'Ford','1974-09-08','1977-01-20'),(39,39,96,'Carter','1977-01-20','1981-01-20'),(40,40,96,'Reagan','1981-01-20','1989-01-20'),(41,41,96,'HW Bush','1989-01-20','1993-01-20'),(42,42,96,'Clinton','1993-01-20','2001-01-20'),(43,43,96,'W Bush','2001-01-20','2009-01-20'),(44,44,96,'Obama','2009-01-20','2017-01-20'),(45,45,96,'Trump','2017-01-20','2021-01-20');
/*!40000 ALTER TABLE `administration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branch_id` tinyint NOT NULL AUTO_INCREMENT,
  `admin_id` tinyint NOT NULL,
  `branch_name` varchar(45) DEFAULT NULL,
  `personnel_size` bigint DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,1,'Army',350502),(2,2,'Marine Corps',350501),(3,3,'Navy',350500),(4,4,'Coast Guard',350499),(5,5,'Air Force',350498),(6,6,'Army',350497),(7,7,'Marine Corps',350496),(8,8,'Navy',350495),(9,9,'Coast Guard',350494),(10,10,'Air Force',350493),(11,11,'Army',482000),(12,12,'Marine Corps',343000),(13,13,'Navy',320200),(14,14,'Coast Guard',205200),(15,15,'Air Force',300456),(16,16,'Army',48200),(17,17,'Marine Corps',34300),(18,18,'Navy',32020),(19,19,'Coast Guard',20520),(20,20,'Air Force',30045);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget` (
  `budget_id` tinyint NOT NULL AUTO_INCREMENT,
  `country_id` tinyint NOT NULL,
  `total_amt` double DEFAULT NULL,
  `military_amt` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`budget_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `budget_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget`
--

LOCK TABLES `budget` WRITE;
/*!40000 ALTER TABLE `budget` DISABLE KEYS */;
INSERT INTO `budget` VALUES (1,96,4100102103,1025025526,'1939-12-02','1939-12-03'),(2,96,4200300400,1050075100,'1986-09-03','1986-09-04'),(3,96,3101202303,775300576,'1951-12-01','1951-12-02'),(4,96,2101301402,525325351,'1934-04-02','1934-04-03'),(5,96,4100102103,1025025526,'2019-10-07','2019-10-08'),(6,96,4200300400,1050075100,'2001-12-01','2001-12-02'),(7,96,3101202303,775300576,'2001-12-02','2001-12-03'),(8,96,2101301402,525325351,'2001-12-03','2001-12-04'),(9,96,4100102103,1025025526,'1920-01-06','1920-01-07'),(10,96,4200300400,1050075100,'1914-01-07','1914-01-08'),(11,96,3101202303,775300576,'1914-01-08','1914-01-09'),(12,96,2101301402,525325351,'1914-01-09','1914-01-10'),(13,96,4100102103,1025025526,'1914-01-10','1914-01-11'),(14,96,4200300400,1050075100,'1969-11-10','1969-11-11'),(15,96,3101202303,775300576,'1964-04-12','1964-04-13'),(16,96,2101301402,525325351,'1964-04-13','1964-04-14'),(17,96,4100102103,1025025526,'1942-07-04','1942-07-05'),(18,96,4200300400,1050075100,'1942-07-05','1942-07-06'),(19,96,3101202303,775300576,'1942-07-06','1942-07-07'),(20,96,2101301402,525325351,'1942-07-07','1942-07-08');
/*!40000 ALTER TABLE `budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casualty`
--

DROP TABLE IF EXISTS `casualty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casualty` (
  `casualty_id` tinyint NOT NULL AUTO_INCREMENT,
  `intervention_id` tinyint NOT NULL,
  `casualty_type` varchar(100) DEFAULT NULL,
  `casualty_number` int DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`casualty_id`),
  KEY `intervention_id` (`intervention_id`),
  CONSTRAINT `casualty_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`intervention_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casualty`
--

LOCK TABLES `casualty` WRITE;
/*!40000 ALTER TABLE `casualty` DISABLE KEYS */;
INSERT INTO `casualty` VALUES (1,1,'none documented',0,'Donec dapibus.'),(2,2,'none documented',0,'Nulla suscipit ligula in lacus.'),(3,3,'killed in action',50,'Donec dapibus.'),(4,4,'diseased',100,'Nulla suscipit ligula in lacus.'),(5,5,'disabled by injuries',150,'Donec dapibus.'),(6,6,'disabled by psych trauma',200,'Nulla suscipit ligula in lacus.'),(7,7,'disabled by psych trauma',250,'Donec dapibus.'),(8,8,'deserted',300,'Morbi vel lectus.'),(9,9,'missing',350,'Nulla suscipit ligula in lacus.'),(10,10,'captured',400,'Donec dapibus.'),(11,11,'none documented',0,'Morbi vel lectus.'),(12,12,'none documented',0,'Nulla suscipit ligula in lacus.'),(13,13,'killed in action',50,'Donec dapibus.'),(14,14,'diseased',100,'Morbi vel lectus.'),(15,15,'disabled by injuries',150,'Nulla suscipit ligula in lacus.'),(16,16,'disabled by psych trauma',200,'Donec dapibus.'),(17,17,'disabled by psych trauma',250,'Morbi vel lectus.'),(18,18,'deserted',300,'Nulla suscipit ligula in lacus.'),(19,19,'missing',350,'Donec dapibus.'),(20,20,'captured',400,'Morbi vel lectus.');
/*!40000 ALTER TABLE `casualty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` tinyint NOT NULL,
  `region_id` tinyint NOT NULL,
  `country_name` varchar(45) DEFAULT NULL,
  `country_altName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  KEY `region_id` (`region_id`),
  CONSTRAINT `country_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,1,'Afghanistan','alternative name 1'),(2,5,'Albania','alternative name 2'),(3,9,'Algeria','alternative name 3'),(4,11,'Angola','alternative name 4'),(5,3,'Argentina','alternative name 5'),(6,3,'Bolivia','alternative name 6'),(7,5,'Bosnia and Herzegovina','alternative name 7'),(8,3,'Brazil','alternative name 8'),(9,4,'Bulgaria','alternative name 9'),(10,11,'Burundi','alternative name 10'),(11,1,'Cambodia','alternative name 11'),(12,11,'Cameroon','alternative name 12'),(13,8,'Canada','alternative name 13'),(14,11,'Central African Republic','alternative name 14'),(15,11,'Chad','alternative name 15'),(16,3,'Chile','alternative name 16'),(17,1,'China','alternative name 17'),(18,3,'Colombia','alternative name 18'),(19,5,'Croatia','alternative name 19'),(20,2,'Cuba','alternative name 20'),(21,4,'Czechoslovakia','alternative name 21'),(22,11,'Congo','alternative name 22'),(23,6,'Denmark','alternative name 23'),(24,11,'Djibouti','alternative name 24'),(25,2,'Dominica','alternative name 25'),(26,2,'Dominican Republic','alternative name 26'),(27,1,'Timor-Leste','alternative name 27'),(28,3,'Ecuador','alternative name 28'),(29,9,'Egypt','alternative name 29'),(30,3,'El Salvador','alternative name 30'),(31,11,'Eritrea','alternative name 31'),(32,11,'Ethiopia','alternative name 32'),(33,10,'Fiji','alternative name 33'),(34,6,'France','alternative name 34'),(35,4,'German Democratic Republic','alternative name 35'),(36,6,'Germany','alternative name 36'),(37,5,'Greece','alternative name 37'),(38,2,'Grenada','alternative name 38'),(39,3,'Guatemala','alternative name 39'),(40,11,'Guinea-Bissau','alternative name 40'),(41,2,'Haiti','alternative name 41'),(42,3,'Honduras','alternative name 42'),(43,6,'Iceland','alternative name 43'),(44,1,'India','alternative name 44'),(45,1,'Indonesia','alternative name 45'),(46,1,'Iran','alternative name 46'),(47,7,'Iraq','alternative name 47'),(48,7,'Israel','alternative name 48'),(49,5,'Italy','alternative name 49'),(50,11,'Cote d\'Ivoire','alternative name 50'),(51,1,'Japan','alternative name 51'),(52,7,'Jordan','alternative name 52'),(53,11,'Kenya','alternative name 53'),(54,10,'Kiribati','alternative name 54'),(55,1,'Korea','alternative name 55'),(56,7,'Kuwait','alternative name 56'),(57,1,'Laos','alternative name 57'),(58,7,'Lebanon','alternative name 58'),(59,9,'Liberia','alternative name 59'),(60,9,'Libya','alternative name 60'),(61,5,'Macedonia','alternative name 61'),(62,1,'Mecklenburg Schwerin','alternative name 62'),(63,3,'Mexico','alternative name 63'),(64,9,'Morocco','alternative name 64'),(65,11,'Mozambique','alternative name 65'),(66,6,'Netherlands','alternative name 66'),(67,3,'Nicaragua','alternative name 67'),(68,11,'Niger','alternative name 68'),(69,1,'North Korea','alternative name 69'),(70,4,'Norway','alternative name 70'),(71,1,'Pakistan','alternative name 71'),(72,3,'Panama','alternative name 72'),(73,3,'Paraguay','alternative name 73'),(74,3,'Peru','alternative name 74'),(75,1,'Philippines','alternative name 75'),(76,1,'Republic of Vietnam','alternative name 76'),(77,4,'Russian Federation','alternative name 77'),(78,11,'Rwanda','alternative name 78'),(79,10,'Samoa','alternative name 79'),(80,7,'Saudi Arabia','alternative name 80'),(81,11,'Sierra Leone','alternative name 81'),(82,11,'Somalia','alternative name 82'),(83,1,'South Korea','alternative name 83'),(84,11,'South Sudan','alternative name 84'),(85,6,'Spain','alternative name 85'),(86,11,'Sudan','alternative name 86'),(87,6,'Sweden','alternative name 87'),(88,6,'Switzerland','alternative name 88'),(89,7,'Syria','alternative name 89'),(90,1,'Taiwan','alternative name 90'),(91,1,'Thailand','alternative name 91'),(92,7,'Turkiye','alternative name 92'),(93,4,'Ukraine','alternative name 93'),(94,4,'United Arab Emirates','alternative name 94'),(95,6,'United Kingdom','alternative name 95'),(96,8,'United States','alternative name 96'),(97,3,'Uruguay','alternative name 97'),(98,3,'Venezuela','alternative name 98'),(99,1,'Vietnam','alternative name 99'),(100,7,'Yemen','alternative name 100'),(101,7,'Yemen Arab Republic','alternative name 101'),(102,7,'Yemen People\'s Republic','alternative name 102'),(103,5,'Yugoslavia','alternative name 103');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crime`
--

DROP TABLE IF EXISTS `crime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crime` (
  `crime_id` tinyint NOT NULL AUTO_INCREMENT,
  `intervention_id` tinyint NOT NULL,
  `crime_type` varchar(100) DEFAULT NULL,
  `crime_description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`crime_id`),
  KEY `intervention_id` (`intervention_id`),
  CONSTRAINT `crime_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`intervention_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime`
--

LOCK TABLES `crime` WRITE;
/*!40000 ALTER TABLE `crime` DISABLE KEYS */;
INSERT INTO `crime` VALUES (1,1,'wilful killing','Donec dapibus.'),(2,2,'torture','Nulla suscipit ligula in lacus.'),(3,3,'biological experiments','Donec dapibus.'),(4,4,'mutiliation','Nulla suscipit ligula in lacus.'),(5,5,'unjustified destruction and appropriation of property','Donec dapibus.'),(6,6,'conscripting POWs','Nulla suscipit ligula in lacus.'),(7,7,'denying POWs a fair trial','Donec dapibus.'),(8,8,'unlawful deportation and transfer','Morbi vel lectus.'),(9,9,'none documented','Nulla suscipit ligula in lacus.'),(10,10,'none documented','Donec dapibus.'),(11,11,'none documented','Morbi vel lectus.'),(12,12,'none documented','Nulla suscipit ligula in lacus.'),(13,13,'none documented','Donec dapibus.'),(14,14,'wilful killing','Morbi vel lectus.'),(15,15,'torture','Nulla suscipit ligula in lacus.'),(16,16,'biological experiments','Donec dapibus.'),(17,17,'unlawful deportation and transfer','Morbi vel lectus.'),(18,18,'unjustified destruction and appropriation of property','Nulla suscipit ligula in lacus.'),(19,19,'conscripting POWs','Donec dapibus.'),(20,20,'denying POWs a fair trial','Morbi vel lectus.');
/*!40000 ALTER TABLE `crime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deployment`
--

DROP TABLE IF EXISTS `deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deployment` (
  `deploy_id` tinyint NOT NULL AUTO_INCREMENT,
  `intervention_id` tinyint NOT NULL,
  `branch_id` tinyint NOT NULL,
  `division_name` varchar(45) DEFAULT NULL,
  `troop_nums` int DEFAULT NULL,
  `special_op` bit(1) DEFAULT NULL,
  PRIMARY KEY (`deploy_id`),
  KEY `branch_id` (`branch_id`),
  KEY `intervention_id` (`intervention_id`),
  CONSTRAINT `deployment_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`),
  CONSTRAINT `deployment_ibfk_2` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`intervention_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deployment`
--

LOCK TABLES `deployment` WRITE;
/*!40000 ALTER TABLE `deployment` DISABLE KEYS */;
INSERT INTO `deployment` VALUES (1,1,20,'Operation Infinite Reach',10,_binary '\0'),(2,2,20,'Operation Enduring Freedom Phase 1',11,_binary ''),(3,3,19,'War in Afghanistan',12,_binary ''),(4,4,18,'Operation Freedom Sentinel',13,_binary '\0'),(5,5,17,'No Name',14,_binary '\0'),(6,6,16,'Operation Silver Wake NEO',15,_binary ''),(7,7,15,'Second Barbary War',16,_binary ''),(8,8,14,'Kisembo Unrest',17,_binary '\0'),(9,9,13,'No Name',18,_binary ''),(10,10,12,'Landing to Protect Foreign Interests',19,_binary ''),(11,11,11,'Buenos Aires Protection',20,_binary '\0'),(12,12,10,'Buenos Aires protective mission',21,_binary '\0'),(13,13,9,'Drug seizure in Bolivia',22,_binary ''),(14,14,8,'NATO Intervention in Bosnia',23,_binary '\0'),(15,15,7,'Rio de Janeiro Affair',24,_binary ''),(16,16,6,'No Name',25,_binary ''),(17,17,5,'No Name',26,_binary ''),(18,18,4,'Burundi Airlift',27,_binary '\0'),(19,19,3,'Cambodia Bombing Campaign',28,_binary '\0'),(20,20,2,'No Name',29,_binary ''),(21,20,1,'AWACS Deployment',30,_binary '\0');
/*!40000 ALTER TABLE `deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `economy`
--

DROP TABLE IF EXISTS `economy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `economy` (
  `econ_id` tinyint NOT NULL AUTO_INCREMENT,
  `country_id` tinyint NOT NULL,
  `GDP_per_cap` double DEFAULT NULL,
  `unemploymt_rt` double DEFAULT NULL,
  `poverty_rt` double DEFAULT NULL,
  `population` bigint DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`econ_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `economy_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `economy`
--

LOCK TABLES `economy` WRITE;
/*!40000 ALTER TABLE `economy` DISABLE KEYS */;
INSERT INTO `economy` VALUES (1,96,53291.13,0.11,0.26,8308000,'1815-01-01','1815-12-12'),(2,96,51784.42,0.08,0.25,14086000,'1833-01-01','1833-12-12'),(3,96,50065.97,0.07,0.24,24999000,'1852-10-10','1853-12-12'),(4,96,48650.64,0.1,0.23,31513000,'1860-01-01','1860-12-12'),(5,96,47194.94,0.06,0.22,63056000,'1890-01-01','1890-12-12'),(6,96,48570.05,0.03,0.21,68910000,'1894-01-01','1894-12-12'),(7,96,48050.22,0.02,0.2,80632000,'1903-01-01','1903-12-12'),(8,96,46302,0.01,0.19,133402000,'1941-01-01','1941-12-12'),(9,96,44123.41,0.09,0.18,174141000,'1958-01-01','1958-12-12'),(10,96,41724.63,0.06,0.17,191927000,'1964-01-01','1964-12-02'),(11,96,39490.28,0.02,0.16,198752000,'1967-01-01','1967-12-12'),(12,96,37997.76,0.09,0.15,218086000,'1976-10-10','1976-10-11'),(13,96,37133.62,0.05,0.14,240683000,'1986-01-01','1986-12-12'),(14,96,36329.96,0.04,0.13,260282000,'1993-01-01','1993-01-02'),(15,96,34515.39,0.1,0.12,272958000,'1997-01-01','1997-12-12'),(16,96,32853.68,0.03,0.11,276154000,'1998-01-01','1998-12-12'),(17,96,31459.14,0.05,0.1,285225000,'2001-01-01','2003-12-12'),(18,96,29967.71,0.06,0.09,285225650,'2022-01-01','2022-12-12'),(19,96,28690.88,0.05,0.11,316598000,'2013-01-01','2013-12-12'),(20,96,27694.85,0.02,0.13,321323000,'2015-01-01','2017-12-12');
/*!40000 ALTER TABLE `economy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident`
--

DROP TABLE IF EXISTS `incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incident` (
  `incident_id` tinyint NOT NULL AUTO_INCREMENT,
  `intervention_id` tinyint NOT NULL,
  `deploy_id` tinyint NOT NULL,
  `incident_site` varchar(45) DEFAULT NULL,
  `incident_description` varchar(300) DEFAULT NULL,
  `incident_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`incident_id`),
  KEY `intervention_id` (`intervention_id`),
  KEY `deploy_id` (`deploy_id`),
  CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`intervention_id`),
  CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`deploy_id`) REFERENCES `deployment` (`deploy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident`
--

LOCK TABLES `incident` WRITE;
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
INSERT INTO `incident` VALUES (1,21,1,'Kabul','Cruise Missile Attack','Incident Name 1'),(2,20,2,'Kabul','ISAF in Afghanistan to help stabilize for new government','Incident Name 2'),(3,19,3,'Kabul','Operation Enduring Freedom Incident','Incident Name 3'),(4,18,4,'Kabul','Operation Freedom\'s Sentinel Incident','Incident Name 4'),(5,17,5,'Tirana','Albanian fighters force down a US Air Force jet','Incident Name 5'),(6,16,6,'Tirana','Evacuation from Tirana, Albania','Incident Name 6'),(7,15,7,'Algiers','A large fleet under U.S. Commodore Stephen Decatur attacked Algiers and obtained indemnities','Incident Name 7'),(8,14,8,'Angola','American residents at Kissembo called upon American and British ships against natives','Incident Name 8'),(9,13,9,'Luanda','CIA Intervention Incident','Incident Name 9'),(10,12,10,'Buenos Aires','Navy force sent ashore at Buenos Aires during insurrection','Incident Name 10'),(11,11,11,'Buenos Aires','Marines landed to protect American interests during a revolution','Incident Name 11'),(12,10,12,'Buenos Aires','Naval party landed to protect the U.S. consulate and legation','Incident Name 12'),(13,9,13,'La Paz','Anti-drug Operation','Incident Name 13'),(14,8,14,'Sarajevo','Airdrop of relief supplies aimed at Muslims surrounded by Serbian forces in Bosnia','Incident Name 14'),(15,7,15,'Rio de Janeiro','Naval force sought to protect American commerce and shipping during a Brazilian civil war','Incident Name 15'),(16,6,16,'Brasilia','United States threatens intervention','Incident Name 16'),(17,5,17,'Sofia','Bulgaria declared war on both United States and Britain','Incident Name 17'),(18,4,18,'Bujumbura','Small U.S. Air Force support team airlift operations','Incident Name 18'),(19,3,19,'Phnom Penh','Spillover Incident in Cambodia during Vietnam War','Incident Name 19'),(20,2,20,'Phnom Penh','Case written, but incident merged into Cam 1964.','Incident Name 20'),(21,1,21,'Libya','Deployment of AWACs Planes','Incident Name 21');
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrastructure`
--

DROP TABLE IF EXISTS `infrastructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infrastructure` (
  `infrastructure_id` tinyint NOT NULL AUTO_INCREMENT,
  `intervention_id` tinyint NOT NULL,
  `infrastructure_type` varchar(100) DEFAULT NULL,
  `infrastructure_name` varchar(100) DEFAULT NULL,
  `infrastructure_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`infrastructure_id`),
  KEY `intervention_id` (`intervention_id`),
  CONSTRAINT `infrastructure_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`intervention_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrastructure`
--

LOCK TABLES `infrastructure` WRITE;
/*!40000 ALTER TABLE `infrastructure` DISABLE KEYS */;
INSERT INTO `infrastructure` VALUES (1,1,'Water','Water Name','damaged, in service'),(2,2,'Hard infrastructure','Train Station Name','damaged, in service'),(3,3,'Roads','Road Name','damaged, in service'),(4,4,'Telecommunications','Telecommunication Name','destroyed'),(5,5,'Bridges','Bridge Name','destroyed'),(6,6,'Energy','Energy Name','out of service'),(7,7,'Railways','Railway Name','out of service'),(8,8,'Transportation','Transportation Name','damaged, in service'),(9,9,'Waste Management','Waste Management Name','damaged, in service'),(10,10,'Airports','Airport Name','damaged not working'),(11,11,'Aviation','Aviation Name','out of service'),(12,12,'Broadband','Broadband Name','out of service'),(13,13,'Business infrastructure','Business Name','destroyed'),(14,14,'Educational infrastructure','School Name','destroyed'),(15,15,'Electrical supply/transmission','Electrical Company Name','out of service'),(16,16,'Facilities','Facility Name','damaged, in service'),(17,17,'Recreational infrastructure','Public Park Name','out of service'),(18,18,'Critical Infrastructure','Hospital Name','out of service'),(19,19,'Sewage','Sewer System Name','damaged, in service'),(20,20,'Waterways','Canal Name','damaged, in service');
/*!40000 ALTER TABLE `infrastructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inserts`
--

DROP TABLE IF EXISTS `inserts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inserts` (
  `intervention_id` int NOT NULL,
  `changed_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intervention_id`,`changed_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inserts`
--

LOCK TABLES `inserts` WRITE;
/*!40000 ALTER TABLE `inserts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inserts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervention`
--

DROP TABLE IF EXISTS `intervention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intervention` (
  `intervention_id` tinyint NOT NULL AUTO_INCREMENT,
  `acting_country_id` tinyint NOT NULL,
  `location_country_id` tinyint NOT NULL,
  `admin_id` tinyint NOT NULL,
  `inter_name` varchar(100) DEFAULT NULL,
  `inter_description` varchar(1000) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `days_duration` decimal(9,2) GENERATED ALWAYS AS ((to_days(`end_date`) - to_days(`start_date`))) VIRTUAL,
  PRIMARY KEY (`intervention_id`),
  KEY `location_country_id` (`location_country_id`),
  KEY `acting_country_id` (`acting_country_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `intervention_ibfk_1` FOREIGN KEY (`location_country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `intervention_ibfk_2` FOREIGN KEY (`acting_country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `intervention_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `administration` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervention`
--

LOCK TABLES `intervention` WRITE;
/*!40000 ALTER TABLE `intervention` DISABLE KEYS */;
INSERT INTO `intervention` (`intervention_id`, `acting_country_id`, `location_country_id`, `admin_id`, `inter_name`, `inter_description`, `start_date`, `end_date`) VALUES (1,96,1,42,'Operation Infinite Reach','\"US uses cruise missiles to attack suspected terrorist facilities\"','1998-01-01','1998-12-12'),(2,96,1,43,'Operation Enduring Freedom Phase 1','\"Invasion - ISAF in Afghanistan to help stabilize for new provisional government - NATO takes command over ISAF Aug 11 2003\"','2001-01-01','2003-12-12'),(3,96,1,43,'War in Afghanistan','\"Operation Enduring Freedom\"','2001-01-21','2022-12-12'),(4,96,1,44,'Operation Freedom Sentinel','\"Operation Freedom\'s Sentinel\"','2015-01-01','2021-12-12'),(5,96,2,34,'No Name','\"Albanian fighters force down a US Air Force jet that became lost and crossed into Albanian airspace. The plane and pilot were released two weeks later.\"','1958-01-01','1958-12-12'),(6,96,2,42,'Operation Silver Wake NEO','\"Albania. On March 15, 1997, President Clinton reported to Congress that on March 13, 1997, he had utilized U.S. military forces to evacuate certain U.S. government employees and private U.S. citizens from Tirana, Albania, and to enhance security for the U.S. embassy in that city.\"','1997-01-01','1997-12-12'),(7,96,3,4,'Second Barbary War','\"Algiers. The second Barbary War was declared against the United States by the Dey of Algiers of the Barbary states, an act not reciprocated by the United States. Congress did authorize a military expedition by statutes. A large fleet under U.S. Commodore Stephen Decatur attacked Algiers and obtained indemnities. Tripoli. After securing an agreement from Algiers, Decatur demonstrated with his squadron at Tunis and Tripoli, where he secured indemnities for offenses during the War of 1812.\"','1815-01-01','1815-12-12'),(8,96,4,15,'Kisembo Unrest','\"Angola, Portuguese West Africa. March 1. American residents at Kissembo called upon American and British ships to protect lives and property during problems with natives.\"','1860-01-01','1860-12-12'),(9,96,4,38,'No Name','\"CIA assists South African-backed rebels.\"','1976-01-01','1992-12-12'),(10,96,5,7,'Landing to Protect Foreign Interests During Unrest','\"October 31 to November 15. A force was sent ashore at Buenos Aires to protect the interests of the United States and other countries during an insurrection.\"','1833-01-01','1833-12-12'),(11,96,5,13,'Buenos Aires Protection','\"Argentina. February 3 to 12, 1852; September 17, 1852, to April 1853. Marines were landed and maintained in Buenos Aires to protect American interests during a revolution.\"','1852-01-01','1853-12-12'),(12,96,5,9,'Buenos Aires protective mission','\"1890 Argentina. A naval party landed to protect the U.S. consulate and legation in Buenos Aires.\"','1890-01-01','1890-12-12'),(13,96,6,40,'Drug seizure in Bolivia','\"Bolivia. U.S. Army personnel and aircraft assisted Bolivia in anti-drug operations.\"','1986-01-01','1986-12-12'),(14,96,7,42,'NATO Intervention in Bosnia','\"Bosnia. On February 28, 1993, the United States began an airdrop of relief supplies aimed at Muslims surrounded by Serbian forces in Bosnia. Ongoing peacekeeping and anti-terrorism activities in Bosnia thru 2006.\"','1993-01-01','2004-12-12'),(15,96,8,22,'Rio de Janeiro Affair','\"Brazil. January. A display of naval force sought to protect American commerce and shipping at Rio de Janeiro during a Brazilian civil war.\"','1894-01-01','1894-12-12'),(16,96,8,26,'No Name','\"United States threatened to intervene in Brazil if the Brazilian government did not protect the \"innocent\" interests and investments of its citizens.\"','1903-01-01','1903-12-12'),(17,96,9,32,'No Name','\"Germany pressed Bulgaria to renounce neutrality and join the Axis powers. Bulgaria declared war on both United States and Britain.\"','1941-01-01','1941-12-12'),(18,96,10,44,'Burundi Airlift','\"A small U.S. Air Force support team and two C-17 Globemaster III aircraft began airlift operations on December 12, 2013, in response to a French request for airlift support. The U.S. airmen conducted 16 flights from Burundi to the Central African Republic transporting 857 Burundian troops, 73 pallets of equipment, and 18 Burundian military vehicles. Fewer than 10 Americans remained on the ground serving as liaisons with the French military when operations were completed on December 30, 2013.\"','2013-01-01','2013-12-12'),(19,96,11,36,'Cambodia Bombing Campaign','\"Repeated spillovers/incursions in Cambodia during Vietnam War\"','1964-01-01','1969-12-12'),(20,96,11,36,'No Name','\"Case written, but incicent merged into Cam 1964.\"','1967-01-01','1967-12-12'),(21,96,60,40,'AWACS Deployment','\"Mubarak appealed to US for support and asked for the AWACS reconnaissance system. The Reagan administration agreed and deployed AWACS planes.\"','1983-01-01','1983-12-12'),(22,96,78,45,'Unnamed','\"Test triggers and transactions\"','2018-01-01','2019-12-12');
/*!40000 ALTER TABLE `intervention` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_interv_inserts` AFTER INSERT ON `intervention` FOR EACH ROW INSERT INTO
 inserts VALUES(
 NEW.intervention_id, DEFAULT) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `interventions_overview`
--

DROP TABLE IF EXISTS `interventions_overview`;
/*!50001 DROP VIEW IF EXISTS `interventions_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `interventions_overview` AS SELECT 
 1 AS `Intervention`,
 1 AS `Country`,
 1 AS `Start Year`,
 1 AS `End Year`,
 1 AS `Days`,
 1 AS `Mission Name`,
 1 AS `Objective`,
 1 AS `Description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `leader`
--

DROP TABLE IF EXISTS `leader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leader` (
  `leader_id` tinyint NOT NULL AUTO_INCREMENT,
  `party_id` tinyint NOT NULL,
  `fName` varchar(45) DEFAULT NULL,
  `lName` varchar(45) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `home_state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`leader_id`),
  KEY `party_id` (`party_id`),
  CONSTRAINT `leader_ibfk_1` FOREIGN KEY (`party_id`) REFERENCES `party` (`party_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leader`
--

LOCK TABLES `leader` WRITE;
/*!40000 ALTER TABLE `leader` DISABLE KEYS */;
INSERT INTO `leader` VALUES (1,2,'George','Washington','1732-02-22','1799-12-14','Virginia'),(2,9,'John','Adams','1735-10-30','1826-07-04','Massachusetts'),(3,8,'Thomas','Jefferson','1743-04-13','1826-07-04','Virginia'),(4,8,'James','Madison','1751-03-16','1836-06-28','Virginia'),(5,8,'James','Monroe','1758-04-28','1831-07-04','Virginia'),(6,8,'John','Quincy Adams','1767-07-11','1848-02-23','Massachusetts'),(7,1,'Andrew','Jackson','1767-03-15','1845-06-08','Tennessee'),(8,1,'Martin','Van Buren','1782-12-05','1862-07-24','New York'),(9,4,'William','Henry Harrison','1773-02-09','1841-04-04','Ohio'),(10,4,'John','Tyler','1790-03-29','1862-01-18','Virginia'),(11,1,'James','Polk','1795-11-02','1849-06-15','Tennessee'),(12,4,'Zachary','Taylor','1784-11-24','1850-07-09','Louisiana'),(13,4,'Millard','Fillmore','1800-01-07','1874-05-08','New York'),(14,1,'Franklin','Pierce','1804-11-23','1869-10-08','New Hampshire'),(15,1,'James','Buchanan','1791-04-23','1868-06-01','Pennsylvania'),(16,6,'Abraham','Lincoln','1809-02-12','1865-04-15','Illinois'),(17,7,'Andrew','Johnson','1808-12-29','1875-07-31','Tennessee'),(18,3,'Ulysses','Grant','1822-04-27','1885-07-23','Ohio'),(19,3,'Rutherford','Hayes','1822-10-04','1893-01-17','Ohio'),(20,3,'James','Garfield','1831-11-19','1881-09-19','Ohio'),(21,3,'Chester','Arthur','1829-10-05','1886-11-18','New York'),(22,1,'Grover','Cleveland','1837-03-18','1908-06-24','New York'),(23,3,'Benjamin','Harrison','1833-08-20','1901-03-13','Indiana'),(24,1,'Grover','Cleveland','1837-03-18','1908-06-24','New York'),(25,3,'William','McKinley','1843-01-29','1901-09-14','Ohio'),(26,3,'Theodore','Roosevelt','1858-10-27','1919-01-06','New York'),(27,3,'William','Taft','1857-09-15','1930-03-08','Ohio'),(28,1,'Woodrow','Wilson','1858-12-28','1924-02-03','New Jersey'),(29,3,'Warren','Harding','1865-11-02','1923-08-02','Ohio'),(30,3,'Calvin','Coolidge','1872-07-04','1933-01-05','Massachusetts'),(31,3,'Herbert','Hoover','1874-08-10','1964-10-20','Iowa'),(32,1,'Franklin','Delano Roosevelt','1882-01-30','1945-04-12','New York'),(33,1,'Harry','Truman','1884-05-08','1972-12-26','Missouri'),(34,3,'Dwight','Eisenhower','1890-10-14','1969-03-28','Texas'),(35,1,'John','Kennedy','1917-05-29','1963-11-22','Massachusetts'),(36,1,'Lyndon','Johnson','1908-08-27','1973-01-22','Texas'),(37,3,'Richard ','Nixon','1913-01-09','1994-04-22','California'),(38,3,'Gerald','Ford','1913-07-14','2006-12-26','Michigan'),(39,1,'James','Carter','1924-10-01',NULL,'Georgia'),(40,3,'Ronald','Reagan','1911-02-06','2004-06-05','California'),(41,3,'George','HW Bush','1924-06-12',NULL,'Texas'),(42,1,'William','Clinton','1946-08-19',NULL,'Arkansas'),(43,3,'George','W Bush','1946-07-06',NULL,'Texas'),(44,1,'Barack','Obama','1961-08-04',NULL,'Hawaii'),(45,3,'Donald','Trump','1946-06-14',NULL,'New York');
/*!40000 ALTER TABLE `leader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mission` (
  `mission_id` tinyint NOT NULL AUTO_INCREMENT,
  `intervention_id` tinyint NOT NULL,
  `objective_id` tinyint NOT NULL,
  `mission_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mission_id`),
  KEY `intervention_id` (`intervention_id`),
  KEY `objective_id` (`objective_id`),
  CONSTRAINT `mission_ibfk_1` FOREIGN KEY (`intervention_id`) REFERENCES `intervention` (`intervention_id`),
  CONSTRAINT `mission_ibfk_2` FOREIGN KEY (`objective_id`) REFERENCES `objective` (`objective_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
INSERT INTO `mission` VALUES (1,1,20,'Operation Infinite Reach'),(2,2,19,'Operation Enduring Freedom Phase 1'),(3,3,18,'War in Afghanistan'),(4,4,17,'Operation Freedom Sentinel'),(5,5,16,'Unnamed Mission '),(6,6,15,'Operation Silver Wake NEO'),(7,7,14,'Second Barbary War'),(8,8,13,'Kisembo Unrest'),(9,9,12,'Unnamed Mission '),(10,10,11,'Landing to Protect Foreign Interests'),(11,11,10,'Buenos Aires Protection'),(12,12,9,'Buenos Aires Protective Mission'),(13,13,8,'Drug Seizure in Bolivia'),(14,14,7,'NATO Intervention in Bosnia'),(15,15,6,'Rio de Janeiro Affair'),(16,16,5,'Unnamed Mission '),(17,17,4,'Unnamed Mission '),(18,18,3,'Burundi Airlift'),(19,19,2,'Cambodia Bombing Campaign'),(20,20,1,'Unnamed Mission '),(21,22,22,'Another mission name');
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objective`
--

DROP TABLE IF EXISTS `objective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objective` (
  `objective_id` tinyint NOT NULL AUTO_INCREMENT,
  `objective_primary` varchar(100) DEFAULT NULL,
  `objective_secondary` varchar(100) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objective_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objective`
--

LOCK TABLES `objective` WRITE;
/*!40000 ALTER TABLE `objective` DISABLE KEYS */;
INSERT INTO `objective` VALUES (1,'Remove foreign regime','Protect own military/diplomatic interests','Donec dapibus.'),(2,'Remove Foreign Regime','','Nulla suscipit ligula in lacus.'),(3,'Remove Foreign Regime','Maintain/Build Foreign Regime / Maintain Empire','Morbi vel lectus in quam fringilla rhoncus.'),(4,'Maintain/Build Foreign Regime Authority','','Nulla tempus.'),(5,'No Objective Stated','','Donec dapibus.'),(6,'Protect Own Military/Diplomatic Interests','','Nulla suscipit ligula in lacus.'),(7,'Maintain Empire','Policy Change / Economic Protection','Morbi vel lectus in quam fringilla rhoncus.'),(8,'Social Protection & Order','','Nulla tempus.'),(9,'No Objective Stated','','Donec dapibus.'),(10,'Economic Protection','','Nulla suscipit ligula in lacus.'),(11,'Economic Protection','Protect own Military and/or Diplomatic Interests','Morbi vel lectus in quam fringilla rhoncus.'),(12,'Protect Own Military and/or Diplomatic Interests','','Nulla tempus.'),(13,'Social Protection & Order','','Donec dapibus.'),(14,'Social Protection & Order','Social Protection / Humanitarian Intervention','Nulla suscipit ligula in lacus.'),(15,'Economic Protection','','Morbi vel lectus in quam fringilla rhoncus.'),(16,'No Objective Stated','','Nulla tempus.'),(17,'No Objective Stated','','Donec dapibus.'),(18,'Humanitarian Intervention','Build Foreign Regime Authority','Nulla suscipit ligula in lacus.'),(19,'Maintain/Build Foreign Regime Authority','','Morbi vel lectus in quam fringilla rhoncus.'),(20,'No Objective Stated','','Nulla tempus.'),(21,'Maintain/Build Foreign Regime Authority','Defend Empire / Policy Change','Donec dapibus.'),(22,'Launch satellite',NULL,'Some notes about this objective');
/*!40000 ALTER TABLE `objective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partnership`
--

DROP TABLE IF EXISTS `partnership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partnership` (
  `country_id` tinyint NOT NULL,
  `partner_id` tinyint DEFAULT NULL,
  `alliance_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  KEY `partner_id` (`partner_id`),
  CONSTRAINT `partnership_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partnership`
--

LOCK TABLES `partnership` WRITE;
/*!40000 ALTER TABLE `partnership` DISABLE KEYS */;
INSERT INTO `partnership` VALUES (39,24,'Alliance Name V'),(40,23,'Alliance Name U'),(41,22,'Alliance Name T'),(42,21,'Alliance Name S'),(43,20,'Alliance Name R'),(44,19,'Alliance Name Q'),(45,18,'Alliance Name P'),(46,17,'Alliance Name O'),(47,96,'Alliance Name N'),(48,96,'Alliance Name M'),(49,14,'Alliance Name L'),(50,13,'Alliance Name K'),(51,12,'Alliance Name J'),(52,11,'Alliance Name I'),(53,10,'Alliance Name H'),(54,9,'Alliance Name G'),(55,8,'Alliance Name F'),(56,7,'Alliance Name E'),(57,6,'Alliance Name C'),(60,3,'Libya & Algeria, the Barbary states during second Barbary War'),(96,4,'Alliance Name A');
/*!40000 ALTER TABLE `partnership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party` (
  `party_id` tinyint NOT NULL,
  `party_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` VALUES (1,'Democrat'),(2,'Independent'),(3,'Republican'),(4,'Whig'),(5,'None'),(6,'Republican/National Union'),(7,'Democratic/National Union'),(8,'Democratic-Republican'),(9,'Federalist');
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `region_id` tinyint NOT NULL,
  `reg_name` varchar(45) DEFAULT NULL,
  `reg_altName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Asia','subregion 1'),(2,'Caribbean','subregion 2'),(3,'Central and South America','subregion 3'),(4,'Eastern Europe','subregion 4'),(5,'Southern Europe','subregion 5'),(6,'Western and Northern Europe','subregion 6'),(7,'Middle East','subregion 7'),(8,'North America','subregion 8'),(9,'North Africa','subregion 9'),(10,'Oceania','subregion 10'),(11,'Sub-Saharan Africa','subregion 11');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `interventions_overview`
--

/*!50001 DROP VIEW IF EXISTS `interventions_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `interventions_overview` AS select `i`.`inter_name` AS `Intervention`,`c`.`country_name` AS `Country`,year(`i`.`start_date`) AS `Start Year`,year(`i`.`end_date`) AS `End Year`,(to_days(`i`.`end_date`) - to_days(`i`.`start_date`)) AS `Days`,`m`.`mission_name` AS `Mission Name`,`o`.`objective_primary` AS `Objective`,`i`.`inter_description` AS `Description` from (((`intervention` `i` join `country` `c` on((`i`.`location_country_id` = `c`.`country_id`))) join `mission` `m` on((`m`.`intervention_id` = `i`.`intervention_id`))) join `objective` `o` on((`o`.`objective_id` = `m`.`objective_id`))) */;
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

-- Dump completed on 2023-12-16 20:10:18
