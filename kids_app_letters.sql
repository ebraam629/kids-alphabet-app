-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: kids_app
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `letters`
--

DROP TABLE IF EXISTS `letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `letters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `letter` char(1) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `audio_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `letters`
--

LOCK TABLES `letters` WRITE;
/*!40000 ALTER TABLE `letters` DISABLE KEYS */;
INSERT INTO `letters` VALUES (1,'A','http://localhost:3000/images/a.png','http://localhost:3000/audio/a.mp3'),(2,'B','http://localhost:3000/images/b.png','http://localhost:3000/audio/b.mp3'),(3,'C','http://localhost:3000/images/c.png','http://localhost:3000/audio/c.mp3'),(4,'D','http://localhost:3000/images/d.png','http://localhost:3000/audio/d.mp3'),(5,'E','http://localhost:3000/images/e.png','http://localhost:3000/audio/e.mp3'),(6,'F','http://localhost:3000/images/f.png','http://localhost:3000/audio/f.mp3'),(7,'G','http://localhost:3000/images/g.png','http://localhost:3000/audio/g.mp3'),(8,'H','http://localhost:3000/images/h.png','http://localhost:3000/audio/h.mp3'),(9,'I','http://localhost:3000/images/i.png','http://localhost:3000/audio/i.mp3'),(10,'J','http://localhost:3000/images/j.png','http://localhost:3000/audio/j.mp3'),(11,'K','http://localhost:3000/images/k.png','http://localhost:3000/audio/k.mp3'),(12,'L','http://localhost:3000/images/l.png','http://localhost:3000/audio/l.mp3'),(13,'M','http://localhost:3000/images/m.png','http://localhost:3000/audio/m.mp3'),(14,'N','http://localhost:3000/images/n.png','http://localhost:3000/audio/n.mp3'),(15,'O','http://localhost:3000/images/o.png','http://localhost:3000/audio/o.mp3'),(16,'P','http://localhost:3000/images/p.png','http://localhost:3000/audio/p.mp3'),(17,'Q','http://localhost:3000/images/q.png','http://localhost:3000/audio/q.mp3'),(18,'R','http://localhost:3000/images/r.png','http://localhost:3000/audio/r.mp3'),(19,'S','http://localhost:3000/images/s.png','http://localhost:3000/audio/s.mp3'),(20,'T','http://localhost:3000/images/t.png','http://localhost:3000/audio/t.mp3'),(21,'U','http://localhost:3000/images/u.png','http://localhost:3000/audio/u.mp3'),(22,'V','http://localhost:3000/images/v.png','http://localhost:3000/audio/v.mp3'),(23,'W','http://localhost:3000/images/w.png','http://localhost:3000/audio/w.mp3'),(24,'X','http://localhost:3000/images/x.png','http://localhost:3000/audio/x.mp3'),(25,'Y','http://localhost:3000/images/y.png','http://localhost:3000/audio/y.mp3'),(26,'Z','http://localhost:3000/images/z.png','http://localhost:3000/audio/z.mp3');
/*!40000 ALTER TABLE `letters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-19  0:32:06
