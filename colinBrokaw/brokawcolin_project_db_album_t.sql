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
-- Table structure for table `album_t`
--

DROP TABLE IF EXISTS `album_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_t` (
  `CatalogNo` varchar(12) NOT NULL,
  `AlbumTitle` varchar(45) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Country` varchar(25) NOT NULL,
  `RecordLabel` varchar(45) NOT NULL,
  `ArtistName` varchar(45) NOT NULL,
  PRIMARY KEY (`CatalogNo`),
  KEY `FK_artist_album_idx` (`ArtistName`),
  CONSTRAINT `FK_album_artist` FOREIGN KEY (`ArtistName`) REFERENCES `artist_t` (`ArtistName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_t`
--

LOCK TABLES `album_t` WRITE;
/*!40000 ALTER TABLE `album_t` DISABLE KEYS */;
INSERT INTO `album_t` VALUES ('72445-11015','Girlfriend','1991-10-22','US','Zoo Entertainment','Matthew Sweet'),('CRE LP 106','Bandwagonesque','1991-11-04','UK','Creation Records','Teenage Fanclub'),('CRE LP 173L','Grand Prix','1995-05-29','UK','Creation Records','Teenage Fanclub'),('OLE 490-1','Rock Action','2001-04-30','US','Matador','Mogwai'),('SP 70604','Murmur','1983-04-12','US','I.R.S.','REM');
/*!40000 ALTER TABLE `album_t` ENABLE KEYS */;
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
