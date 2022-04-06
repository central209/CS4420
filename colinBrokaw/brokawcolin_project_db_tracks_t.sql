CREATE DATABASE  IF NOT EXISTS `brokawcolin_project_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `brokawcolin_project_db`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: brokawcolin_project_db
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `tracks_t`
--

DROP TABLE IF EXISTS `tracks_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracks_t` (
  `TrackID` int NOT NULL,
  `TrackTitle` varchar(45) NOT NULL,
  `Duration` time DEFAULT NULL,
  `CatalogNo` varchar(12) NOT NULL,
  PRIMARY KEY (`TrackTitle`),
  KEY `FK_tracks_album_idx` (`CatalogNo`),
  CONSTRAINT `FK_tracks_album` FOREIGN KEY (`CatalogNo`) REFERENCES `album_t` (`CatalogNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks_t`
--

LOCK TABLES `tracks_t` WRITE;
/*!40000 ALTER TABLE `tracks_t` DISABLE KEYS */;
INSERT INTO `tracks_t` VALUES (7,'2 Rights Make 1 Wrong','09:31:00','OLE 490-1'),(9,'9-9','03:02:00','SP 70604'),(1,'About You','02:41:00','CRE LP 173L'),(10,'Alcoholiday','05:26:00','CRE LP 106'),(7,'Catapult','03:54:00','SP 70604'),(7,'Day For Night','02:55:00','72445-11015'),(3,'December','03:03:00','CRE LP 106'),(4,'Dial: Revenge','03:28:00','OLE 490-1'),(8,'Discolite','03:07:00','CRE LP 173L'),(1,'Divine Intervention','05:37:00','72445-11015'),(11,'Don\'t Go','03:24:00','72445-11015'),(4,'Don\'t Look Back','03:42:00','CRE LP 173L'),(6,'Evangeline','04:45:00','72445-11015'),(3,'Girlfriend','03:40:00','72445-11015'),(10,'Going Places','04:28:00','CRE LP 173L'),(11,'Guiding Star','02:47:00','CRE LP 106'),(13,'Hardcore/Ballad','01:48:00','CRE LP 173L'),(5,'I Don\'t Know','04:35:00','CRE LP 106'),(12,'I Gotta Know','03:27:00','CRE LP 173L'),(10,'I Wanted To Tell You','04:30:00','72445-11015'),(11,'I\'ll Make It Clear','02:34:00','CRE LP 173L'),(2,'I\'ve Been Waiting','03:36:00','72445-11015'),(12,'Is This Music','03:16:00','CRE LP 106'),(3,'Laughing','03:52:00','SP 70604'),(4,'Looking At The Sun','04:16:00','72445-11015'),(3,'Mellow Doubt','02:42:00','CRE LP 173L'),(7,'Metal Baby','03:39:00','CRE LP 106'),(5,'Moral Kiosk','03:32:00','SP 70604'),(6,'Neil Jung','04:49:00','CRE LP 173L'),(3,'O I Sleep','00:55:00','OLE 490-1'),(6,'Perfect Circle','03:23:00','SP 70604'),(8,'Pet Rock','02:35:00','CRE LP 106'),(2,'Pilgrimage','04:25:00','SP 70604'),(1,'Radio Free Eurupe','04:05:00','SP 70604'),(6,'Robot Chant','01:03:00','OLE 490-1'),(2,'Satan','01:22:00','CRE LP 106'),(9,'Say No','03:12:00','CRE LP 173L'),(8,'Secret Pint','03:37:00','OLE 490-1'),(10,'Shaking Through','04:00:00','SP 70604'),(9,'Sidewinder','03:03:00','CRE LP 106'),(1,'Sine Wave','04:55:00','OLE 490-1'),(8,'Sitting Still','03:07:00','SP 70604'),(2,'Sparky\'s Dream','03:15:00','CRE LP 173L'),(6,'Star Sign','04:55:00','CRE LP 106'),(2,'Take Me Somewhere','06:57:00','OLE 490-1'),(4,'Talk About The Passion','03:22:00','SP 70604'),(7,'Tears','02:42:00','CRE LP 173L'),(1,'The Concept','06:06:00','CRE LP 106'),(8,'Thought I Knew You','02:57:00','72445-11015'),(5,'Verisimilitude','03:31:00','CRE LP 173L'),(11,'We Walk','03:04:00','SP 70604'),(12,'West Of The Fields','03:15:00','SP 70604'),(4,'What You Do To Me','02:00:00','CRE LP 106'),(5,'Winona','04:59:00','72445-11015'),(5,'You Don\'t Know Jesus','08:02:00','OLE 490-1'),(9,'You Don\'t Love Me','05:21:00','72445-11015'),(12,'Your Sweet Voice','03:54:00','72445-11015');
/*!40000 ALTER TABLE `tracks_t` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-03 13:32:34
