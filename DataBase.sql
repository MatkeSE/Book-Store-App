-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ebook-app
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `book_dtls`
--

DROP TABLE IF EXISTS `book_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_dtls` (
  `bookID` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `bookCategory` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_dtls`
--

LOCK TABLES `book_dtls` WRITE;
/*!40000 ALTER TABLE `book_dtls` DISABLE KEYS */;
INSERT INTO `book_dtls` VALUES (20,'Java','James Hetfield','99','New','Active','java.jpg','admin'),(21,'Python','Lars Mikael','25','New','Active','pyhon.jpg','admin'),(24,'SQL','Andreas Kisser','55','New','Active','sql.jpg','admin'),(26,'C','Abraham Lincoln','999','New','Active','c.jpg','admin'),(27,'DS & Algorithms','Benjamin Franklin','75','New','Active','dsa.jpg','admin'),(28,'Principles of Software Engineering','Mateas','9','Old','Active','sf.jpg','matijailicmatke@email.com'),(29,'Waterfall Model','Jack','750','Old','Active','waterfall.jpg','matijailicmatke@email.com'),(30,'Pascal','Thomas','5','Old','Active','pascal.jpg','matijailicmatke@email.com'),(31,'Old Java Book','Jack','500','Old','Active','java1.jpg','matijailicmatke@email.com');
/*!40000 ALTER TABLE `book_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_order`
--

DROP TABLE IF EXISTS `book_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `book_name` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_order`
--

LOCK TABLES `book_order` WRITE;
/*!40000 ALTER TABLE `book_order` DISABLE KEYS */;
INSERT INTO `book_order` VALUES (19,'BOOK-ORD-00128','Matija Ilic										','matijailicmatke@email.com','Majdanska, asdas, Obrenovac, asdasd, 11500','0603336073','Java2','James','123.0','COD'),(20,'BOOK-ORD-00981','Matija Ilic										','matijailicmatke@email.com','Majdanska, asdas, Obrenovac, asdasd, 11500','0603336073','Python','Python','123.0','COD'),(21,'BOOK-ORD-00345','Matija Ilic										','matijailicmatke@email.com','Majdanska, asdas, Obrenovac, asdasd, 11500','0603336073','Java','James','111.0','COD'),(22,'BOOK-ORD-00144','Matija Ilic										','matijailicmatke@email.com','Majdanska, asd, Obrenovac, asd, 11500','0603336073','Java2','James','123.0','COD'),(23,'BOOK-ORD-00640','Matija Ilic										','matijailicmatke@email.com','Majdanska, asd, Obrenovac, asd, 11500','0603336073','Python','Python','123.0','COD'),(24,'BOOK-ORD-0080','Matija Ilic										','matijailicmatke@email.com','Majdanska, asd, Obrenovac, asd, 11500','0603336073','Java','James','111.0','COD'),(25,'BOOK-ORD-00122','Matija Ilic										','matijailicmatke@email.com','Majdanska, asd, Obrenovac, asdas, 11500','0603336073','Java2','James','123.0','COD'),(26,'BOOK-ORD-00307','Matija Ilic										','matijailicmatke@email.com','Majdanska, asd, Obrenovac, asdas, 11500','0603336073','Python','Python','123.0','COD'),(27,'BOOK-ORD-00285','Matija Ilic										','matijailicmatke@email.com','Majdanska, asd, Obrenovac, asdas, 11500','0603336073','Java','James','111.0','COD'),(28,'BOOK-ORD-00736','Matija Ilic										','matijailicmatke@email.com',', , , , ','0603336073','Java2','James','123.0','COD'),(29,'BOOK-ORD-00482','Matija Ilic										','matijailicmatke@email.com','wer, wer, wer, wer, 123','0603336073','Java2','James','123.0','COD'),(30,'BOOK-ORD-00667','Matija Ilic										','matijamatailic@gmail.com','Majdanska, asd, Obrenovac, asd, 11500','123','Python','Python','123.0','COD'),(31,'BOOK-ORD-00378','Matija Ilic										','matijamatailic@gmail.com','Majdanska, asd, Obrenovac, asd, 11500','123','Java2','James','123.0','COD'),(32,'BOOK-ORD-00647','Matija Ilic										','matijamatailic@gmail.com','Majdanska, asd, Obrenovac, asd, 11500','123','Python','Python','123.0','COD'),(33,'BOOK-ORD-00752','Matija Ilic										','matijamatailic@gmail.com','Majdanska, asd, Obrenovac, asd, 11500','123','Java2','James','123.0','COD');
/*!40000 ALTER TABLE `book_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `bid` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `bookName` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (130,12,4,'Python','Python',123,123),(131,11,4,'Java2','James',123,123);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phno` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Matija Ilic','matijailicmatke@email.com','0603336073','1234',NULL,NULL,NULL,NULL,NULL),(2,'Matija Ilic','matija2220@its.edu.rs','0603336973','12345678',NULL,NULL,NULL,NULL,NULL),(4,'Matija Ilic','matijamatailic@gmail.com','123','1234',NULL,NULL,NULL,NULL,NULL),(5,'bixteps','bixteps@gmail.com','123','1234',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 13:44:55
