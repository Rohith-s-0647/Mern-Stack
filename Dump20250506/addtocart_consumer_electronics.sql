-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: addtocart
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `consumer_electronics`
--

DROP TABLE IF EXISTS `consumer_electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer_electronics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `discountprice` varchar(50) DEFAULT NULL,
  `originalprice` varchar(50) DEFAULT NULL,
  `offer` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_electronics`
--

LOCK TABLES `consumer_electronics` WRITE;
/*!40000 ALTER TABLE `consumer_electronics` DISABLE KEYS */;
INSERT INTO `consumer_electronics` VALUES (1,'Smartphone','499.00','599.00','17% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9AghPrrjno21gIzMQHd94W5lNf_x0GkmA_w&s.jpg'),(2,'Laptop','899.00','1100.00','18% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyY9pTKjDGoXzy9Q1SUuS-AE2YPugFSqCMIw&s.jpg'),(3,'Bluetooth Speaker','79.00','120.00','34% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT37UaRoe232N0eizu9M9MNLq5kwbQXnwZxPA&s.jpg'),(4,'Tablet','299.00','350.00','15% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZYqk-hwE8ZIAY1mMIQWUIxDBgK8-RkxYz2g&s.jpg'),(5,'Smartwatch','199.00','249.00','20% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8szRe1IUNBZizhTLqh3TtOx03qdFYB6XASA&s.jpg'),(6,'Home Theater','459.00','550.00','16% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfktSrbwUjUA3xzAhLbPBipCNv3PLVXYYG7w&s.jpg'),(7,'Wireless Earbuds','59.00','99.00','40% off','https://m.media-amazon.com/images/I/61hf2tu4IvL.jpg');
/*!40000 ALTER TABLE `consumer_electronics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-06 15:33:41
