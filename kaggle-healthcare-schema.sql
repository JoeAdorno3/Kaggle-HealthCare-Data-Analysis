CREATE DATABASE  IF NOT EXISTS `kaggle_healthcare` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kaggle_healthcare`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: kaggle_healthcare
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `admission_info`
--

DROP TABLE IF EXISTS `admission_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission_info` (
  `admission_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` smallint unsigned DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  `room_id` smallint unsigned DEFAULT NULL,
  `doctor_id` smallint unsigned DEFAULT NULL,
  `result_id` tinyint unsigned DEFAULT NULL,
  `medication_id` tinyint unsigned DEFAULT NULL,
  `condition_id` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`admission_id`),
  KEY `fk_admission_info_patient_id` (`patient_id`),
  KEY `fk_admission_info_room_id` (`room_id`),
  KEY `fk_admission_info_doctor_id` (`doctor_id`),
  KEY `fk_admission_info_result_id` (`result_id`),
  KEY `fk_admission_info_medication_id` (`medication_id`),
  CONSTRAINT `fk_admission_info_doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  CONSTRAINT `fk_admission_info_medication_id` FOREIGN KEY (`medication_id`) REFERENCES `medical_condition` (`condition_id`),
  CONSTRAINT `fk_admission_info_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `fk_admission_info_result_id` FOREIGN KEY (`result_id`) REFERENCES `test_result` (`result_id`),
  CONSTRAINT `fk_admission_info_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_info`
--

LOCK TABLES `admission_info` WRITE;
/*!40000 ALTER TABLE `admission_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `admission_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admission_type`
--

DROP TABLE IF EXISTS `admission_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admission_type` (
  `type_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission_type`
--

LOCK TABLES `admission_type` WRITE;
/*!40000 ALTER TABLE `admission_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `admission_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctor_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `hospital_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `insurance_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(30) NOT NULL,
  PRIMARY KEY (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_condition`
--

DROP TABLE IF EXISTS `medical_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_condition` (
  `condition_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_condition`
--

LOCK TABLES `medical_condition` WRITE;
/*!40000 ALTER TABLE `medical_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `medication_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`medication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `age` tinyint unsigned DEFAULT NULL,
  `blood_type` enum('O-','O+','B-','AB+','A+','AB-','A-','B+') DEFAULT NULL,
  `insurance_id` tinyint unsigned DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `fk_patient_insurance_id` (`insurance_id`),
  CONSTRAINT `fk_patient_insurance_id` FOREIGN KEY (`insurance_id`) REFERENCES `insurance` (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `hospital_id` smallint unsigned DEFAULT NULL,
  `number` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `fk_room_hospital_id` (`hospital_id`),
  CONSTRAINT `fk_room_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_result`
--

DROP TABLE IF EXISTS `test_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_result` (
  `result_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_result`
--

LOCK TABLES `test_result` WRITE;
/*!40000 ALTER TABLE `test_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07  7:44:47
