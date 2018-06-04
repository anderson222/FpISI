CREATE DATABASE  IF NOT EXISTS `bd_etudiants_etrangers` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `bd_etudiants_etrangers`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_etudiants_etrangers
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dossier_admission`
--

DROP TABLE IF EXISTS `dossier_admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dossier_admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dossier_etudiant` int(11) DEFAULT NULL,
  `etat_admission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_id_etudiant_admission_idx` (`id_dossier_etudiant`),
  CONSTRAINT `FK_id_etudiant_admission` FOREIGN KEY (`id_dossier_etudiant`) REFERENCES `dossier_etudiant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dossier_admission`
--

LOCK TABLES `dossier_admission` WRITE;
/*!40000 ALTER TABLE `dossier_admission` DISABLE KEYS */;
/*!40000 ALTER TABLE `dossier_admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dossier_caq`
--

DROP TABLE IF EXISTS `dossier_caq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dossier_caq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dossier_etudiant` int(11) DEFAULT NULL,
  `etat_caq` int(11) NOT NULL,
  `is_preuve_financiere_requis` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_id_etudiant_idx` (`id_dossier_etudiant`),
  CONSTRAINT `FK_id_etudiant_caq` FOREIGN KEY (`id_dossier_etudiant`) REFERENCES `dossier_etudiant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dossier_caq`
--

LOCK TABLES `dossier_caq` WRITE;
/*!40000 ALTER TABLE `dossier_caq` DISABLE KEYS */;
/*!40000 ALTER TABLE `dossier_caq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dossier_etudiant`
--

DROP TABLE IF EXISTS `dossier_etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dossier_etudiant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `courriel` varchar(100) NOT NULL,
  `mdp` varchar(50) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `ville` varchar(70) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `is_service_avocat` tinyint(4) DEFAULT NULL,
  `etat_global` int(11) DEFAULT NULL,
  `choix_programmes` varchar(255) NOT NULL,
  `choix_sessions` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dossier_etudiant`
--

LOCK TABLES `dossier_etudiant` WRITE;
/*!40000 ALTER TABLE `dossier_etudiant` DISABLE KEYS */;
INSERT INTO `dossier_etudiant` VALUES (3,'Alex','Cross','alex.cross@yahoo.com',NULL,NULL,NULL,NULL,NULL,NULL,'',''),(4,'Dimitri','Guillaume','dimitri@yahoo.com',NULL,NULL,NULL,NULL,NULL,NULL,'',''),(5,'Toto','Titi','txt@yahoo.comm',NULL,NULL,NULL,NULL,NULL,NULL,'IntegrationSystemesInformation, GestionProjets, ','Automne2019, Hiver2020, Ete2020, ');
/*!40000 ALTER TABLE `dossier_etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dossier_permis_etudes`
--

DROP TABLE IF EXISTS `dossier_permis_etudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dossier_permis_etudes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dossier_etudiant` int(11) DEFAULT NULL,
  `etat_permis` int(11) NOT NULL,
  `commentaires` text,
  PRIMARY KEY (`id`),
  KEY `FK_id_etudiant_permis_idx` (`id_dossier_etudiant`),
  CONSTRAINT `FK_id_etudiant_permis` FOREIGN KEY (`id_dossier_etudiant`) REFERENCES `dossier_etudiant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dossier_permis_etudes`
--

LOCK TABLES `dossier_permis_etudes` WRITE;
/*!40000 ALTER TABLE `dossier_permis_etudes` DISABLE KEYS */;
/*!40000 ALTER TABLE `dossier_permis_etudes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichier`
--

DROP TABLE IF EXISTS `fichier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fichier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dossier_etudiant` int(11) DEFAULT NULL,
  `nom` varchar(255) NOT NULL,
  `dossier_contenant` int(11) NOT NULL,
  `format` int(11) NOT NULL,
  `categorie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_id_etudiant_fichier_idx` (`id_dossier_etudiant`),
  CONSTRAINT `FK_id_etudiant_fichier` FOREIGN KEY (`id_dossier_etudiant`) REFERENCES `dossier_etudiant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichier`
--

LOCK TABLES `fichier` WRITE;
/*!40000 ALTER TABLE `fichier` DISABLE KEYS */;
/*!40000 ALTER TABLE `fichier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paiements`
--

DROP TABLE IF EXISTS `paiements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paiements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dossier_etudiant` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `montant` double NOT NULL,
  `is_paid` tinyint(4) NOT NULL,
  `type` int(11) NOT NULL,
  `mode` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_id_etudiant_paiements_idx` (`id_dossier_etudiant`),
  CONSTRAINT `FK_id_etudiant_paiements` FOREIGN KEY (`id_dossier_etudiant`) REFERENCES `dossier_etudiant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paiements`
--

LOCK TABLES `paiements` WRITE;
/*!40000 ALTER TABLE `paiements` DISABLE KEYS */;
/*!40000 ALTER TABLE `paiements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-03 20:50:04
