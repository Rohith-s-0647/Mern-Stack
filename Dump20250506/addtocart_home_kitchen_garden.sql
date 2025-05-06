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
-- Table structure for table `home_kitchen_garden`
--

DROP TABLE IF EXISTS `home_kitchen_garden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_kitchen_garden` (
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
-- Dumping data for table `home_kitchen_garden`
--

LOCK TABLES `home_kitchen_garden` WRITE;
/*!40000 ALTER TABLE `home_kitchen_garden` DISABLE KEYS */;
INSERT INTO `home_kitchen_garden` VALUES (1,'air fryer','89.00','130.00','32% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcozb9GBV6iy0v5Qq6Su05WolfaRrOlpN3N6jRHCUshA5BdawlOdxgMTZddNBRbAAYGXs&usqp=CAU.jpg'),(2,'garden chair','59.00','85.00','31% off','https://www.shutterstock.com/image-photo/metal-garden-chair-260nw-94788937.jpg'),(3,'cookware set','129.00','180.00','28% off','https://m.media-amazon.com/images/I/81ChqzkU7JL._AC_UF350,350_QL80_.jpg'),(4,'vacuum cleaner','149.00','200.00','25% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqq6jKPhUM-sqU5lV9jc6gNNxwEUWghOYmVUrPhZSNRFqkF0sclRoU0heqCVwhtj80tnI&usqp=CAU.jpg'),(5,'wall clock','25.00','40.00','37% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxBkNbXJHvhbLwpY-fF8AaKeFXnbk7-DEvrleKF6bOliMjoEGiKCXeuY0gKQBALCSltEA&usqp=CAU.jpg'),(6,'indoor plant set','45.00','65.00','30% off','https://3dbrute.com/wp-content/uploads/2023/08/preview017933.jpg'),(7,'bed sheet set','39.00','60.00','35% off','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8pC7ctp81tUJrqBdFNeUKIJRxB7QjzawRXMx2EIh_Y67jLa4AFPxwLeZq2jb5emNRg2s&usqp=CAU.jpg');
/*!40000 ALTER TABLE `home_kitchen_garden` ENABLE KEYS */;
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
