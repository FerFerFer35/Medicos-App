-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: medicos_db
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `especialidad` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula_profesional` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medicos_cedula_profesional_unique` (`cedula_profesional`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Elton Erdman','Oftalmología','98584786','2026-05-20 01:37:32','2026-06-12 10:52:07','2026-06-12 10:52:07'),(2,'Dr. Kenyatta Mante','Ginecología','74576015','2026-03-25 11:59:13','2026-06-12 10:52:07','2026-06-12 10:52:07'),(3,'Danyka Lakin','Ginecología','43937319','2026-02-09 03:57:34','2026-06-12 10:52:07','2026-06-12 10:52:07'),(4,'Eulah Zieme Sr.','Neurología','50831573','2026-04-17 12:56:41','2026-06-12 10:52:07','2026-06-12 10:52:07'),(5,'Dr. Alford Braun PhD','Dermatología','31801499','2026-01-30 22:19:41','2026-06-12 10:52:07','2026-06-12 10:52:07'),(6,'Ms. Jane Oberbrunner IV','Ginecología','91337812','2026-06-07 08:52:49','2026-06-12 10:52:07','2026-06-12 10:52:07'),(7,'Eileen Aufderhar PhD','Cardiología','31865415','2025-12-22 07:17:47','2026-06-12 10:52:07','2026-06-12 10:52:07'),(8,'Solon Friesen','Neurología','13518950','2026-02-13 20:47:45','2026-06-12 10:52:07','2026-06-12 10:52:07'),(9,'Prof. Tyrique Mertz','Dermatología','68985823','2026-01-15 09:54:42','2026-06-12 10:52:07','2026-06-12 10:52:07'),(10,'Mrs. Lillie Stehr','Dermatología','39812247','2026-01-26 15:32:24','2026-06-12 10:52:07','2026-06-12 10:52:07'),(11,'Name Collier III','Oftalmología','41178102','2026-01-26 22:43:08','2026-06-12 10:52:07','2026-06-12 10:52:07'),(12,'Mrs. Ayana Haley III','Traumatología','11498185','2026-03-15 07:04:09','2026-06-12 10:52:07','2026-06-12 10:52:07'),(13,'Novella Ebert DVM','Pediatría','61771775','2026-02-06 23:55:18','2026-06-12 10:52:07','2026-06-12 10:52:07'),(14,'Dr. Aditya Ebert DVM','Oftalmología','10905467','2026-05-19 16:10:15','2026-06-12 10:52:07','2026-06-12 10:52:07'),(15,'Ken Grady','Cardiología','05345522','2026-06-03 01:10:58','2026-06-12 10:52:07','2026-06-12 10:52:07'),(16,'Anissa Gleason','Dermatología','26191634','2026-05-21 09:51:00','2026-06-12 10:52:07','2026-06-12 10:52:07'),(17,'Augustine Koepp','Oftalmología','89336349','2026-05-08 16:29:12','2026-06-12 10:52:07','2026-06-12 10:52:07'),(18,'Dashawn Considine II','Dermatología','80257679','2025-12-17 17:57:29','2026-06-12 10:52:07','2026-06-12 10:52:07'),(19,'Dr. Destin Kautzer','Cardiología','14371464','2026-03-09 00:29:19','2026-06-12 10:52:07','2026-06-12 10:52:07'),(20,'Mrs. Judy Will','Neurología','62125880','2026-02-17 19:18:23','2026-06-12 10:52:07','2026-06-12 10:52:07'),(21,'Mr. Dejuan Smith','Oftalmología','20465311','2026-02-13 10:48:59','2026-06-12 10:52:07','2026-06-12 10:52:07'),(22,'Kieran Lubowitz DVM','Traumatología','54780884','2026-02-09 00:23:07','2026-06-12 10:52:07','2026-06-12 10:52:07'),(23,'Mr. Ned Hoeger','Neurología','55066175','2026-01-06 07:19:49','2026-06-12 10:52:07','2026-06-12 10:52:07'),(24,'Dr. Carmen Rau MD','Pediatría','48784779','2026-02-16 21:22:09','2026-06-12 10:52:07','2026-06-12 10:52:07'),(25,'Jakayla Langworth','Traumatología','96693160','2025-12-15 09:29:01','2026-06-12 10:52:07','2026-06-12 10:52:07'),(26,'Vladimir Block','Oftalmología','16634810','2026-02-21 18:03:23','2026-06-12 10:52:07','2026-06-12 10:52:07'),(27,'Evans Wuckert','Ginecología','25917727','2026-01-22 09:38:01','2026-06-12 10:52:07','2026-06-12 10:52:07'),(28,'Alfonso Hirthe','Cardiología','07862828','2026-04-13 10:10:52','2026-06-12 10:52:07','2026-06-12 10:52:07'),(29,'Candido Boyer','Ginecología','19229518','2026-03-03 07:35:13','2026-06-12 10:52:07','2026-06-12 10:52:07'),(30,'Myrtice Ratke','Cardiología','26616205','2026-04-02 21:01:01','2026-06-12 10:52:07','2026-06-12 10:52:07'),(31,'Antonetta Koch V','Ginecología','88430723','2026-01-02 05:25:49','2026-06-12 10:52:07','2026-06-12 10:52:07'),(32,'Prof. Amber Effertz MD','Pediatría','66026440','2026-04-26 13:49:53','2026-06-12 10:52:07','2026-06-12 10:52:07'),(33,'Pink Boyer IV','Ginecología','28297797','2026-04-03 19:16:31','2026-06-12 10:52:07','2026-06-12 10:52:07'),(34,'Berenice Pfannerstill','Oftalmología','26950020','2026-03-10 08:35:59','2026-06-12 10:52:07','2026-06-12 10:52:07'),(35,'Lester Hirthe','Cardiología','16654133','2026-03-31 13:54:38','2026-06-12 10:52:07','2026-06-12 10:52:07'),(36,'Mr. Samson Wilkinson IV','Neurología','80828085','2026-02-28 02:20:02','2026-06-12 10:52:07','2026-06-12 10:52:07'),(37,'Dr. Gerry Bernier','Neurología','46971122','2026-05-13 07:32:38','2026-06-12 10:52:07','2026-06-12 10:52:07'),(38,'Daphne Kunze','Pediatría','48562973','2026-04-24 13:42:33','2026-06-12 10:52:07','2026-06-12 10:52:07'),(39,'Efren Collier','Ginecología','65417379','2026-04-19 22:03:55','2026-06-12 10:52:07','2026-06-12 10:52:07'),(40,'Lurline Dickinson','Ginecología','71371693','2026-06-10 05:51:43','2026-06-12 10:52:07','2026-06-12 10:52:07'),(41,'Dallin Block','Dermatología','60105893','2026-02-22 17:40:34','2026-06-12 10:52:07','2026-06-12 10:52:07'),(42,'Brown Keebler DVM','Dermatología','20521861','2026-03-29 23:05:59','2026-06-12 10:52:07','2026-06-12 10:52:07'),(43,'Vicenta Zemlak','Dermatología','40938263','2026-04-27 21:27:26','2026-06-12 10:52:07','2026-06-12 10:52:07'),(44,'Ryleigh Becker','Dermatología','92595983','2026-02-27 06:06:31','2026-06-12 10:52:07','2026-06-12 10:52:07'),(45,'Miss Asha Sawayn','Traumatología','50493571','2026-03-10 13:05:33','2026-06-12 10:52:07','2026-06-12 10:52:07'),(46,'Gerhard Abbott','Cardiología','05790912','2026-04-14 18:59:21','2026-06-12 10:52:07','2026-06-12 10:52:07'),(47,'Sherwood Wiza','Cardiología','96203002','2025-12-15 20:29:44','2026-06-12 10:52:07','2026-06-12 10:52:07'),(48,'Ms. Ruthe Welch','Traumatología','78675761','2026-01-28 01:40:47','2026-06-12 10:52:07','2026-06-12 10:52:07'),(49,'Berniece Armstrong I','Pediatría','84295943','2026-02-14 00:02:47','2026-06-12 10:52:07','2026-06-12 10:52:07'),(50,'Daron Terry','Traumatología','04516049','2026-04-26 13:18:03','2026-06-12 10:52:07','2026-06-12 10:52:07');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2026_06_11_163947_create_medicos_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('HaznBxHbfCt1PXH90ywHFKrmv63bnvCThmqx8oYn',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJUaWtYbW1FV094dnRoSDRCcEZwbWE0UGVLUUM4ZnRUWEd0dW1CSW5YIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9tZWRpY29zIiwicm91dGUiOiJtZWRpY29zLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=',1781285118),('Lid1Xhg7jd7Aycxk3RHRjDRiFyuyVZ8l9IpxZtFB',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJ5dGRVMnd4dmxKY2lYMkxRRW5Ub0xOamk5aU9OR1NGWTZ3T1N2ZlVzIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9tZWRpY29zIiwicm91dGUiOiJtZWRpY29zLmluZGV4In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=',1781286254);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User','test@example.com','2026-06-12 10:52:06','$2y$12$yvGhZ4AdSkNNGDVgjT7vh.P3kkQJ7SiZU/66mAYxItxZs4SPiXvFW','aLZuXTqm1e','2026-06-12 10:52:07','2026-06-12 10:52:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-12 17:48:36
