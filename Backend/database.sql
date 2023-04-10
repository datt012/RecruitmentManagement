-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: job_it
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin`
--
use job_it
DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Đạt','ha noi','dat@gmail.com','123456','2023-01-01 15:05:45','2023-01-01 15:05:45');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `avatar` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `banner` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `introduce` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (11,'Song Long IT','Hà Nội','www.songlongit.com','songlong@gmail.com','songlong','976444971',1,'2023-01-29 13:58:12','2023-01-29 13:59:13','https://www.mintformations.co.uk/blog/wp-content/uploads/2020/05/shutterstock_583717939.jpg','https://phuoc-associates.com/wp-content/uploads/2019/10/5-Things-To-Keep-In-Mind-When-Opening-A-Company-In-Vietnam.jpg',NULL,5000);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saveworks`
--

DROP TABLE IF EXISTS `saveworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saveworks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `workId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `workId` (`workId`),
  CONSTRAINT `saveworks_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `saveworks_ibfk_2` FOREIGN KEY (`workId`) REFERENCES `works` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saveworks`
--

LOCK TABLES `saveworks` WRITE;
/*!40000 ALTER TABLE `saveworks` DISABLE KEYS */;
INSERT INTO `saveworks` VALUES (24,20,35,'2023-01-29 14:00:30','2023-01-29 14:00:30'),(25,21,35,'2023-01-29 14:03:05','2023-01-29 14:03:05');
/*!40000 ALTER TABLE `saveworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20210315095502-create-role.js'),('20210315100000-addRole.js'),('20210315100246-addRole.js'),('20210315143235-create-user.js'),('20210315143721-create-user-role.js'),('20210316005847-create-new.js'),('20210316011137-create-tag.js'),('20210316011219-create-tag-new.js'),('20210316012326-create-notification-user.js'),('20210316013216-create-contact.js'),('20210316073359-create-social-network.js'),('20210316080123-create-candidate.js'),('20210316081342-create-tag-candidate.js'),('20210316082300-create-company.js'),('20210316082923-create-work.js'),('20210316085640-create-save-work.js'),('20210316090255-create-recruitment.js'),('20210316090726-create-tag-work.js'),('20210316091225-create-notification-company.js'),('20210316091548-create-type-of-work.js'),('20210316091641-create-work-type-of-work.js'),('20210616012223-add_company.js'),('20210617022108-addBannerUser.js'),('20210617031416-addIntroduceUser.js'),('20210621020815-create-user-type-of-work.js'),('20210621085941-create-user-tag.js'),('20210623084616-create-work-apply.js'),('20210625013725-create-form-cv.js'),('20210626020225-create-tag-form-cv.js'),('20210626075605-addFormCVName.js'),('20210630092708-addIconTypeWork.js'),('20220617084337-editPrice.js'),('20220623075928-addSchedule.js'),('20221229145326-add_censorship_column_to_work.js'),('20230104144640-drop-table-new.js'),('20230104145918-create-user-admin.js'),('20230104151819-drop-table-role.js'),('20230108140737-rename-userAdmin.js'),('20230116140246-add-status-active.js'),('20230117132515-remove-tag.js'),('20230127134342-remove-user-type-work.js'),('20230127134546-remove-form-cv.js'),('20230128053352-remove-table.js'),('20230128053760-remove-recuriment.js'),('20230128054149-remove-in-compani.js'),('20230128135836-add-quantity-companies.js'),('20230128141533-change-column-request-to-quantity.js'),('20230128142553-rename-request.js'),('20230128150832-drop-column.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialnetworks`
--

DROP TABLE IF EXISTS `socialnetworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialnetworks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialnetworks`
--

LOCK TABLES `socialnetworks` WRITE;
/*!40000 ALTER TABLE `socialnetworks` DISABLE KEYS */;
INSERT INTO `socialnetworks` VALUES (1,'facebook','#3f64ab','fab fa-facebook-f','http://faceboook.com/',1,'2021-06-26 01:53:21','2021-07-01 08:08:45'),(2,'instagram','linear-gradient(45deg,#f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%','fab fa-instagram','https://www.instagram.com/accounts/login/?next=/schemecolor_official/',1,'2021-06-26 01:57:06','2021-07-01 08:08:47'),(3,'twitch','#1d9ceb','fab fa-twitter','https://twitter.com/login?lang=vi',1,'2021-07-01 08:16:59','2021-07-01 08:17:04'),(4,'Google +','#e94134','fab fa-google-plus-g','https://www.google.com.vn/imghp?hl=vi',1,'2021-07-01 08:19:24','2021-07-01 08:19:27');
/*!40000 ALTER TABLE `socialnetworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typeofworks`
--

DROP TABLE IF EXISTS `typeofworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typeofworks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeofworks`
--

LOCK TABLES `typeofworks` WRITE;
/*!40000 ALTER TABLE `typeofworks` DISABLE KEYS */;
INSERT INTO `typeofworks` VALUES (1,'Thực tập sinh',NULL,1,'2021-06-17 15:05:46','2021-06-17 15:10:15','<i class=\"fas fa-user-graduate\"></i>'),(2,'Lập trình web',NULL,1,'2021-06-17 15:06:00','2021-06-17 15:07:25','<i class=\"fas fa-terminal\"></i>'),(3,'Thiết kế đồ hoạ',NULL,1,'2021-06-17 15:06:10','2021-06-17 15:07:28','<i class=\"fas fa-drafting-compass\"></i>'),(4,'Lập trình mobile',NULL,1,'2021-06-17 15:06:25','2021-06-17 15:07:27','<i class=\"fas fa-mobile-alt\"></i>'),(5,'Trí tuệ nhân tạo',NULL,1,'2021-06-17 15:06:38','2021-06-17 15:07:29','<i class=\"fab fa-airbnb\"></i>'),(6,'Mạng máy tính',NULL,1,'2021-06-17 15:06:53','2021-06-17 15:07:35','<i class=\"fas fa-network-wired\"></i>'),(7,'Lập trình .NET',NULL,1,'2021-06-17 15:07:08','2021-06-17 15:07:33','<i class=\"fab fa-battle-net\"></i>'),(8,'Cơ sở dữ liệu',NULL,1,'2021-06-17 15:07:16','2021-06-17 15:07:31','<i class=\"fas fa-database\"></i>'),(9,'Thiết kế website',NULL,1,'2021-06-17 15:08:54','2021-06-17 15:10:09','<i class=\"fas fa-swatchbook\"></i>'),(10,'Sửa chữa phần cứng',NULL,1,'2021-06-17 15:09:19','2021-06-17 15:10:50','<i class=\"fas fa-users-cog\"></i>'),(11,'Lập trình máy','no',1,'2021-06-17 15:10:00','2023-01-28 02:40:20','<i class=\"fas fa-tv\"></i>'),(13,'Lập trình IOS','IOS',1,'2023-01-28 02:39:47','2023-01-28 02:40:36','<i class=\"fas fa-tv\"></i>');
/*!40000 ALTER TABLE `typeofworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `male` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `avatar` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `banner` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `introduce` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (20,'Tú Lý','tuly6474@gmail.com','tuly6474','Hà Nội','335346054','Nam','https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png','2022-05-18T17:00:00.000Z',1,'2023-01-29 13:56:50','2023-01-29 13:57:16','https://zeru.com/blog/wp-content/uploads/How-Do-You-Have-No-Profile-Picture-on-Facebook_25900','<p>Nothing</p>'),(21,'Tiến Đạt','tiendat@gmail.com','tiendat','Hải Phòng','987111746','Nam','https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png','2022-11-01T17:00:00.000Z',1,'2023-01-29 14:02:45','2023-01-29 14:02:45','https://zeru.com/blog/wp-content/uploads/How-Do-You-Have-No-Profile-Picture-on-Facebook_25900',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workapplies`
--

DROP TABLE IF EXISTS `workapplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workapplies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `workId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `sechedule` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `statusActive` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workId` (`workId`),
  KEY `userId` (`userId`),
  CONSTRAINT `workapplies_ibfk_1` FOREIGN KEY (`workId`) REFERENCES `works` (`id`) ON DELETE CASCADE,
  CONSTRAINT `workapplies_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workapplies`
--

LOCK TABLES `workapplies` WRITE;
/*!40000 ALTER TABLE `workapplies` DISABLE KEYS */;
INSERT INTO `workapplies` VALUES (22,35,21,'đcm','https://firebasestorage.googleapis.com/v0/b/my-job-react-with-node.appspot.com/o/fileCv%2FDNS_Local.pdf?alt=media&token=a75bc1c6-6d69-4be0-9263-79672ac8526b',0,'2023-01-29 14:03:03','2023-01-29 14:03:33',NULL,3),(23,35,20,'Hello','https://firebasestorage.googleapis.com/v0/b/my-job-react-with-node.appspot.com/o/fileCv%2FDNS_Local.pdf?alt=media&token=9f3cc261-92bd-454d-9f8c-69cdfe0353ca',0,'2023-01-29 14:04:42','2023-01-29 14:05:12',NULL,2);
/*!40000 ALTER TABLE `workapplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works` (
  `id` int NOT NULL AUTO_INCREMENT,
  `companyId` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `addressGoogle` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `interest` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `dealtime` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nature` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `exprience` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `form` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `status` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `price2` int DEFAULT NULL,
  `price1` int DEFAULT NULL,
  `censorship` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companyId` (`companyId`),
  CONSTRAINT `works_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (35,11,'Lập trình mạng Socket','Hà Nội','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d501726.251541797!2d106.69522764999999!3d10.754792!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529292e8d3dd1%3A0xf15f5aad773c112b!2sHo%20Chi%20Minh%20City!5e0!3m2!1sen!2s!4v1674871124022!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>','songlong@gmail.com','0976444971',NULL,4,'<p>H</p>','2023-01-31','Full Time','<p>H</p>','<p>H</p>','<p>H</p>',1,'2023-01-29 13:59:59','2023-01-29 14:00:04',0,0,1);
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worktypeofworks`
--

DROP TABLE IF EXISTS `worktypeofworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worktypeofworks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `typeofworkId` int DEFAULT NULL,
  `workId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `typeofworkId` (`typeofworkId`),
  KEY `workId` (`workId`),
  CONSTRAINT `worktypeofworks_ibfk_1` FOREIGN KEY (`typeofworkId`) REFERENCES `typeofworks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `worktypeofworks_ibfk_2` FOREIGN KEY (`workId`) REFERENCES `works` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worktypeofworks`
--

LOCK TABLES `worktypeofworks` WRITE;
/*!40000 ALTER TABLE `worktypeofworks` DISABLE KEYS */;
INSERT INTO `worktypeofworks` VALUES (43,6,35,'2023-01-29 13:59:59','2023-01-29 13:59:59');
/*!40000 ALTER TABLE `worktypeofworks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 21:10:36
