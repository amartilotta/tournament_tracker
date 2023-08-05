-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: tournament_tracker
-- ------------------------------------------------------
-- Server version	8.0.33

-- Backup de las tablas equipo, juego, jugador, partida, registrodepuntuaciones y torneo. 
-- Unicamente son los datos, no hay nada de estructura.
-- Yo decidi hacer un backup únicamente de las 6 tablas principales.

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
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES (1,'Brujas Arcanas','2023-06-07','Argentina',1),(2,'Nomadas del Tiempo','2023-06-07','Argentina',1),(3,'Duelistas Cosmicos','2023-06-07','Argentina',1),(4,'NombreEquipo','2023-07-15','Cuba',1);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `juego`
--

LOCK TABLES `juego` WRITE;
/*!40000 ALTER TABLE `juego` DISABLE KEYS */;
INSERT INTO `juego` VALUES (1,'Yu-Gi-Oh! Duel Links','Konami','Juego de cartas','iOS Android y PC (Steam)',1),(2,'Yu-Gi-Oh! Legacy','Konami','Juego de cartas','PlayStation 4 y Xbox One',1),(3,'Yu-Gi-Oh! Forbidden Memories','Konami','Juego de cartas','PlayStation',1),(4,'Yu-Gi-Oh! Power of Chaos','Konami','Juego de cartas','PC (Windows)',1);
/*!40000 ALTER TABLE `juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Agustin','Martilotta','Argentina','1999-06-08','mail1@hotmail.com',1),(2,'Pedro','Pascal','Argentina','1998-07-11','mail2@hotmail.com',1),(3,'Arturo','Fontar','Argentina','1993-11-06','mail3@hotmail.com',1),(4,'Rodrigo','Iglesias','Argentina','1991-01-01','mail4@hotmail.com',2),(5,'Diego','Russo','Chile','1996-09-01','mail5@hotmail.com',2),(6,'Cristian','Sanchez','Uruguay','1997-12-12','mail6@hotmail.com',2),(7,'Florencia','Castelli','Paraguay','2000-06-04','mail7@hotmail.com',3),(8,'Esteban','Rogers','Chile','2002-08-03','mail8@hotmail.com',3),(9,'Ivan','Britos','Brasil','2001-10-07','mail9@hotmail.com',3),(10,'Juan','Perez','Croacia','2000-07-12','mail18@hotmail.com',2),(11,'Fidel','Lopez','Austrlia','1999-07-12','mail19@hotmail.com',1);
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (1,1,1,'A Definir','Una Hora'),(2,1,2,'A Definir','Dos Horas'),(3,1,3,'A Definir','Tres Horas'),(21,1,2,'A Definir','Cinco Horas'),(22,1,3,'A Definir','Cinco Horas'),(23,1,3,'A Definir','Dos Horas'),(24,1,2,'A Definir','Tres Horas');
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `registrodepuntuaciones`
--

LOCK TABLES `registrodepuntuaciones` WRITE;
/*!40000 ALTER TABLE `registrodepuntuaciones` DISABLE KEYS */;
INSERT INTO `registrodepuntuaciones` VALUES (1,1,1,12,'2023-07-12 15:30:00'),(2,2,1,36,'2023-07-12 15:30:00'),(3,3,2,55,'2023-07-12 16:00:00'),(4,4,2,10,'2023-07-12 16:00:00'),(5,5,3,10,'2023-07-12 17:30:00'),(6,6,3,10,'2023-07-12 17:30:00'),(7,7,4,10,'2023-07-12 20:40:00'),(8,8,4,10,'2023-07-12 20:40:00'),(9,9,3,10,'2023-07-12 17:30:00'),(10,2,1,55,'2023-07-12 13:25:00'),(11,3,1,65,'2022-07-12 17:25:00'),(12,9,2,34,'2022-06-12 19:25:00');
/*!40000 ALTER TABLE `registrodepuntuaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `torneo`
--

LOCK TABLES `torneo` WRITE;
/*!40000 ALTER TABLE `torneo` DISABLE KEYS */;
INSERT INTO `torneo` VALUES (1,'Torneo Yugioh','2023-07-12','2023-07-13','Carta UR Mago Oscuro');
/*!40000 ALTER TABLE `torneo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-05 10:56:03
