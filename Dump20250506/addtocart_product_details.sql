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
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `discountprice` varchar(50) DEFAULT NULL,
  `offer` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `originalprice` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

LOCK TABLES `product_details` WRITE;
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` VALUES (1,'Samsung Tv','678.00','18% off','https://cdn.jiostore.online/v2/jmd-asp/jdprod/wrkr/jioretailer/products/pictures/item/free/original/zR5qjlNa5A-bpl-32-hd-television-492166140-i-4-1200wx1200h.jpeg','799.00'),(2,'Mobile Phones','129.00','23% off','https://m.media-amazon.com/images/I/712SuRmHG4L._SX679_.jpg','189.00'),(3,'Washing Machine','1890.00','28% off','https://upload.wikimedia.org/wikipedia/commons/e/ec/LG_%EB%93%9C%EB%9F%BC%EC%84%B8%ED%83%81%EA%B8%B0%EC%99%80_%EC%8B%9D%EA%B8%B0%EC%84%B8%EC%B2%99%EA%B8%B0%2C_%EC%98%81%EA%B5%AD%EC%84%9C_%EB%AC%BC%EC%82%AC%EC%9A%A9_%ED%9A%A8%EC%9C%A8_%EC%B5%9C%EC%9A%B0%EC%88%98_%EC%A0%9C%ED%92%88_%EC%88%98%EC%83%81.jpg','2010.00'),(4,'Camera','359.00','6% off','https://www.iphotography.com/wp-content/uploads/2023/06/Best-Cameras-for-Professional-Photography-6.jpg','410.00'),(5,'Gaming Console','219.00','20% off','https://m.media-amazon.com/images/I/51c+jDFrMQL._SX679_.jpg','240.00'),(6,'Audio','59.00','12% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlNRqOPdR-GpnJYKd9Q1wKVZWf_F3TnnbHFg&s.jpg','81.00'),(7,'Air Cooler','189.00','12% off','https://as1.ftcdn.net/jpg/10/31/25/46/1000_F_1031254660_ZGJCT1H2KXj5SO1JiAx9JFIyJpqNhHA5.jpg','230.00');
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;
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
