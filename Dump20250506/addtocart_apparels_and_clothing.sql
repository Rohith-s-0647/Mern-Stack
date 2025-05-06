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
-- Table structure for table `apparels_and_clothing`
--

DROP TABLE IF EXISTS `apparels_and_clothing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apparels_and_clothing` (
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
-- Dumping data for table `apparels_and_clothing`
--

LOCK TABLES `apparels_and_clothing` WRITE;
/*!40000 ALTER TABLE `apparels_and_clothing` DISABLE KEYS */;
INSERT INTO `apparels_and_clothing` VALUES (1,'T-Shirt','19.00','25.00','24% off','https://thebanyantee.com/cdn/shop/files/Black-T-shirt.jpg?v=1721380366&width=1646.jpg'),(2,'Jeans','49.00','65.00','25% off','https://tigc.in/cdn/shop/files/compress_0421-cpdnm-azure__1.jpg?v=1720758011.jpg'),(3,'Jacket','79.00','120.00','34% off','https://5.imimg.com/data5/LP/SB/MY-8637222/mens-stylish-jacket-500x500.png'),(4,'Dress','59.00','80.00','26% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4zmWtjprT3LmDPYyaU3F3foPBxkfqbrYNCjXznElvCprlXGhTAzb5qcWZIFdnA3xno0w&usqp=CAU.jpg'),(5,'Sweatshirt','29.00','40.00','28% off','https://triprindia.com/cdn/shop/files/TGYRNFULSWEAT-PLAIN1_9625fe55-7250-40c8-bd3d-6e32fc4d4f38_1.jpg?v=1741074028.jpg'),(6,'Sneakers','89.00','120.00','26% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpqs7cSckr6jhDOvxXzFD9CBLY1VmF1-UgbQWYsC9r_uuIMClu6tOog7uDTqkHb7rDVNY&usqp=CAU.jpg'),(7,'Cap','15.00','20.00','25% off','https://images.pexels.com/photos/1124465/pexels-photo-1124465.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500.jpgg');
/*!40000 ALTER TABLE `apparels_and_clothing` ENABLE KEYS */;
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
