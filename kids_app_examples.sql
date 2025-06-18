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
-- Table structure for table `examples`
--

DROP TABLE IF EXISTS `examples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examples` (
  `id` int NOT NULL AUTO_INCREMENT,
  `letter_id` int DEFAULT NULL,
  `word` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `audio_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `examples_ibfk_1` (`letter_id`),
  CONSTRAINT `examples_ibfk_1` FOREIGN KEY (`letter_id`) REFERENCES `letters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examples`
--

LOCK TABLES `examples` WRITE;
/*!40000 ALTER TABLE `examples` DISABLE KEYS */;
INSERT INTO `examples` VALUES (1,1,'airplane','http://localhost:3000/images/airplane.png','http://localhost:3000/sounds/airplane.mp3'),(2,1,'ant','http://localhost:3000/images/ant.png','http://localhost:3000/sounds/ant.mp3'),(3,1,'apple','http://localhost:3000/images/apple.png','http://localhost:3000/sounds/apple.mp3'),(4,2,'ball','http://localhost:3000/images/ball.png','http://localhost:3000/sounds/ball.mp3'),(8,2,'bicycle','http://localhost:3000/images/bicycle.png','http://localhost:3000/sounds/bycycle.mp3'),(9,2,'bat','http://localhost:3000/images/bat.png','http://localhost:3000/sounds/bat.mp3'),(10,3,'cat','http://localhost:3000/images/cat.png','http://localhost:3000/sounds/cat.mp3'),(11,3,'cup','http://localhost:3000/images/cup.png','http://localhost:3000/sounds/cup.mp3'),(12,3,'cake','http://localhost:3000/images/cake.png','http://localhost:3000/sounds/cake.mp3'),(22,7,'goat','http://localhost:3000/images/goat.png','http://localhost:3000/sounds/goat.mp3'),(23,7,'glass','http://localhost:3000/images/glass.png','http://localhost:3000/sounds/glass.mp3'),(24,7,'guitar','http://localhost:3000/images/guitar.png','http://localhost:3000/sounds/guitar.mp3'),(25,8,'hat','http://localhost:3000/images/hat.png','http://localhost:3000/sounds/hat.mp3'),(26,8,'horse','http://localhost:3000/images/horse.png','http://localhost:3000/sounds/horse.mp3'),(27,8,'house','http://localhost:3000/images/house.png','http://localhost:3000/sounds/house.mp3'),(28,9,'ice','http://localhost:3000/images/ice.png','http://localhost:3000/sounds/ice.mp3'),(29,9,'ink','http://localhost:3000/images/ink.png','http://localhost:3000/sounds/ink.mp3'),(30,9,'island','http://localhost:3000/images/island.png','http://localhost:3000/sounds/island.mp3'),(31,10,'jacket','http://localhost:3000/images/jacket.png','http://localhost:3000/sounds/jacket.mp3'),(32,10,'jaguar','http://localhost:3000/images/jaguar.png','http://localhost:3000/sounds/jaguar.mp3'),(33,10,'juice','http://localhost:3000/images/juice.png','http://localhost:3000/sounds/juice.mp3'),(34,11,'kite','http://localhost:3000/images/kite.png','http://localhost:3000/sounds/kite.mp3'),(35,11,'kangaroo','http://localhost:3000/images/kangaroo.png','http://localhost:3000/sounds/kangaroo.mp3'),(36,11,'king','http://localhost:3000/images/king.png','http://localhost:3000/sounds/king.mp3'),(37,12,'lion','http://localhost:3000/images/lion.png','http://localhost:3000/sounds/lion.mp3'),(38,12,'leaf','http://localhost:3000/images/leaf.png','http://localhost:3000/sounds/leaf.mp3'),(39,12,'lamp','http://localhost:3000/images/lamp.png','http://localhost:3000/sounds/lamp.mp3'),(40,13,'monkey','http://localhost:3000/images/monkey.png','http://localhost:3000/sounds/monkey.mp3'),(41,13,'moon','http://localhost:3000/images/moon.png','http://localhost:3000/sounds/moon.mp3'),(42,13,'mango','http://localhost:3000/images/mango.png','http://localhost:3000/sounds/mango.mp3'),(43,14,'nest','http://localhost:3000/images/nest.png','http://localhost:3000/sounds/nest.mp3'),(44,14,'ninja','http://localhost:3000/images/ninja.png','http://localhost:3000/sounds/ninja.mp3'),(45,14,'nose','http://localhost:3000/images/nose.png','http://localhost:3000/sounds/nose.mp3'),(46,15,'orange','http://localhost:3000/images/orange.png','http://localhost:3000/sounds/orange.mp3'),(47,15,'owl','http://localhost:3000/images/owl.png','http://localhost:3000/sounds/owl.mp3'),(48,15,'octopus','http://localhost:3000/images/octopus.png','http://localhost:3000/sounds/octopus.mp3'),(49,16,'parrot','http://localhost:3000/images/parrot.png','http://localhost:3000/sounds/parrot.mp3'),(50,16,'pen','http://localhost:3000/images/pen.png','http://localhost:3000/sounds/pen.mp3'),(51,16,'pizza','http://localhost:3000/images/pizza.png','http://localhost:3000/sounds/pizza.mp3'),(52,17,'queen','http://localhost:3000/images/queen.png','http://localhost:3000/sounds/queen.mp3'),(53,17,'quilt','http://localhost:3000/images/quilt.png','http://localhost:3000/sounds/quilt.mp3'),(54,17,'question','http://localhost:3000/images/question.png','http://localhost:3000/sounds/question.mp3'),(55,18,'rabbit','http://localhost:3000/images/rabbit.png','http://localhost:3000/sounds/rabbit.mp3'),(56,18,'rainbow','http://localhost:3000/images/rainbow.png','http://localhost:3000/sounds/rainbow.mp3'),(57,18,'rock','http://localhost:3000/images/rock.png','http://localhost:3000/sounds/rock.mp3'),(58,19,'sun','http://localhost:3000/images/sun.png','http://localhost:3000/sounds/sun.mp3'),(59,19,'snake','http://localhost:3000/images/snake.png','http://localhost:3000/sounds/snake.mp3'),(60,19,'star','http://localhost:3000/images/star.png','http://localhost:3000/sounds/star.mp3'),(61,20,'tiger','http://localhost:3000/images/tiger.png','http://localhost:3000/sounds/tiger.mp3'),(62,20,'table','http://localhost:3000/images/table.png','http://localhost:3000/sounds/table.mp3'),(63,20,'turtle','http://localhost:3000/images/turtle.png','http://localhost:3000/sounds/turtle.mp3'),(64,21,'umbrella','http://localhost:3000/images/umbrella.png','http://localhost:3000/sounds/umbrella.mp3'),(65,21,'unicorn','http://localhost:3000/images/unicorn.png','http://localhost:3000/sounds/unicorn.mp3'),(66,21,'under','http://localhost:3000/images/under.png','http://localhost:3000/sounds/under.mp3'),(67,22,'van','http://localhost:3000/images/van.png','http://localhost:3000/sounds/van.mp3'),(68,22,'vase','http://localhost:3000/images/vase.png','http://localhost:3000/sounds/vase.mp3'),(69,22,'violin','http://localhost:3000/images/violin.png','http://localhost:3000/sounds/violin.mp3'),(70,23,'whale','http://localhost:3000/images/whale.png','http://localhost:3000/sounds/whale.mp3'),(71,23,'wolf','http://localhost:3000/images/wolf.png','http://localhost:3000/sounds/wolf.mp3'),(72,23,'window','http://localhost:3000/images/window.png','http://localhost:3000/sounds/window.mp3'),(73,24,'xylophone','http://localhost:3000/images/xylophone.png','http://localhost:3000/sounds/xylophone.mp3'),(74,24,'x-ray','http://localhost:3000/images/x-ray.png','http://localhost:3000/sounds/x-ray.mp3'),(75,24,'xmas','http://localhost:3000/images/xerox.png','http://localhost:3000/sounds/xerox.mp3'),(76,25,'yogurt','http://localhost:3000/images/yogurt.png','http://localhost:3000/sounds/yogurt.mp3'),(77,25,'yoyo','http://localhost:3000/images/yoyo.png','http://localhost:3000/sounds/yoyo.mp3'),(78,25,'yellow','http://localhost:3000/images/yellow.png','http://localhost:3000/sounds/yellow.mp3'),(79,26,'zebra','http://localhost:3000/images/zebra.png','http://localhost:3000/sounds/zebra.mp3'),(80,26,'zipper','http://localhost:3000/images/zipper.png','http://localhost:3000/sounds/zipper.mp3'),(81,26,'zoo','http://localhost:3000/images/zoo.png','http://localhost:3000/sounds/zoo.mp3'),(161,6,'flower','http://localhost:3000/images/flower.png','http://localhost:3000/sounds/flower.mp3'),(162,6,'fish','http://localhost:3000/images/fish.png','http://localhost:3000/sounds/fish.mp3'),(163,6,'frog','http://localhost:3000/images/frog.png','http://localhost:3000/sounds/frog.mp3'),(167,4,'dog','http://localhost:3000/images/dog.png','http://localhost:3000/sounds/dog.mp3'),(168,4,'doll','http://localhost:3000/images/doll.png','http://localhost:3000/sounds/doll.mp3'),(169,4,'duck','http://localhost:3000/images/duck.png','http://localhost:3000/sounds/duck.mp3'),(170,5,'egg','http://localhost:3000/images/egg.png','http://localhost:3000/sounds/egg.mp3'),(171,5,'elephant','http://localhost:3000/images/elephant.png','http://localhost:3000/sounds/elephant.mp3'),(172,5,'ear','http://localhost:3000/images/ear.png','http://localhost:3000/sounds/ear.mp3');
/*!40000 ALTER TABLE `examples` ENABLE KEYS */;
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
