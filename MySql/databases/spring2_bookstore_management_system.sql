-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: spring2_bookstore_management_system
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `bms_book`
--

DROP TABLE IF EXISTS `bms_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bms_book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `stock_quantity` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKiwso2by5d2g0d6oikco9o9gth` (`description`),
  UNIQUE KEY `UKggt3grin5c6s7q71avf17di72` (`image_url`),
  UNIQUE KEY `UK3t95ptbnd3tuu09cxwhn82v0v` (`isbn`),
  UNIQUE KEY `UK8ueo5vfwe6kdhol0tkugc725y` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bms_book`
--

LOCK TABLES `bms_book` WRITE;
/*!40000 ALTER TABLE `bms_book` DISABLE KEYS */;
INSERT INTO `bms_book` VALUES (1,'Harper Lee','A gripping, heart-wrenching, and wholly remarkable tale of coming-of-age in a South poisoned by virulent prejudice.','Classic Fiction','To_Kill_a_Mockingbird.jpg','9780061120084',399,25,'To Kill a Mockingbird'),(6,'James Clear','An easy & proven way to build good habits & break bad ones. Atomic Habits offers a framework for improving every day.','Self-Help','Atomic_Habits.jpg','9780735211292',499,30,'Atomic Habits');
/*!40000 ALTER TABLE `bms_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-01 20:01:05
