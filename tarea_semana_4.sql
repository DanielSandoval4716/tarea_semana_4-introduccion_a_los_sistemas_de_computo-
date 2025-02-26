-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: tarea_semana_4
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id_Alumnos` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Alumnos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Daniel','Sandoval',15);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos_has_cursos`
--

DROP TABLE IF EXISTS `alumnos_has_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos_has_cursos` (
  `Alumnos_id_Alumnos` int(11) NOT NULL,
  `Cursos_id_Cursos` int(11) NOT NULL,
  PRIMARY KEY (`Alumnos_id_Alumnos`,`Cursos_id_Cursos`),
  KEY `fk_Alumnos_has_Cursos_Cursos1_idx` (`Cursos_id_Cursos`),
  KEY `fk_Alumnos_has_Cursos_Alumnos_idx` (`Alumnos_id_Alumnos`),
  CONSTRAINT `fk_Alumnos_has_Cursos_Alumnos` FOREIGN KEY (`Alumnos_id_Alumnos`) REFERENCES `alumnos` (`id_Alumnos`),
  CONSTRAINT `fk_Alumnos_has_Cursos_Cursos1` FOREIGN KEY (`Cursos_id_Cursos`) REFERENCES `cursos` (`id_Cursos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos_has_cursos`
--

LOCK TABLES `alumnos_has_cursos` WRITE;
/*!40000 ALTER TABLE `alumnos_has_cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos_has_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_Cursos` int(11) NOT NULL,
  `curso` varchar(45) NOT NULL,
  PRIMARY KEY (`id_Cursos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Matematicas');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos_has_alumnos`
--

DROP TABLE IF EXISTS `cursos_has_alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos_has_alumnos` (
  `Cursos_id_Cursos` int(11) NOT NULL,
  `Alumnos_id_Alumnos` int(11) NOT NULL,
  PRIMARY KEY (`Cursos_id_Cursos`,`Alumnos_id_Alumnos`),
  KEY `fk_Cursos_has_Alumnos_Alumnos1_idx` (`Alumnos_id_Alumnos`),
  KEY `fk_Cursos_has_Alumnos_Cursos1_idx` (`Cursos_id_Cursos`),
  CONSTRAINT `fk_Cursos_has_Alumnos_Alumnos1` FOREIGN KEY (`Alumnos_id_Alumnos`) REFERENCES `alumnos` (`id_Alumnos`),
  CONSTRAINT `fk_Cursos_has_Alumnos_Cursos1` FOREIGN KEY (`Cursos_id_Cursos`) REFERENCES `cursos` (`id_Cursos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos_has_alumnos`
--

LOCK TABLES `cursos_has_alumnos` WRITE;
/*!40000 ALTER TABLE `cursos_has_alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos_has_alumnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-26 15:44:27
