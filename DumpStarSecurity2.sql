-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: star_security
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20240324113443_init','8.0.3');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PasswordHash` longtext NOT NULL,
  `EmployeeId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `CreateDate` datetime(6) NOT NULL,
  `DeleteDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Account_Email` (`Email`),
  KEY `IX_Account_EmployeeId` (`EmployeeId`),
  CONSTRAINT `FK_Account_Employee_EmployeeId` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('af573807-ea77-11ee-93ac-5c60bac01548','A0987654321@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb18aa-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af59d476-ea77-11ee-93ac-5c60bac01548','A0123456789@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb2547-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af59d81d-ea77-11ee-93ac-5c60bac01548','A0876543210@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb2a02-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af59d905-ea77-11ee-93ac-5c60bac01548','A0912345678@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb2c64-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9868-ea77-11ee-93ac-5c60bac01548','A0890765432@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb2e82-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9a6e-ea77-11ee-93ac-5c60bac01548','A0567890123@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb3086-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9b93-ea77-11ee-93ac-5c60bac01548','A0234567890@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb32c5-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9c23-ea77-11ee-93ac-5c60bac01548','A0654321098@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb3481-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9cc6-ea77-11ee-93ac-5c60bac01548','A0456789012@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb369a-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9d4f-ea77-11ee-93ac-5c60bac01548','A0789012345@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb3893-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9de4-ea77-11ee-93ac-5c60bac01548','A0321098765@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb3a77-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9e6e-ea77-11ee-93ac-5c60bac01548','A0678901234@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb3caf-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9ef5-ea77-11ee-93ac-5c60bac01548','A0345678901@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb3e5c-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5a9fdb-ea77-11ee-93ac-5c60bac01548','A0765432109@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb4065-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5aa099-ea77-11ee-93ac-5c60bac01548','A0210987654@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb4289-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5aa294-ea77-11ee-93ac-5c60bac01548','A0543210987@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb44c1-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5aa32c-ea77-11ee-93ac-5c60bac01548','A0987654320@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb47a1-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5aa4c8-ea77-11ee-93ac-5c60bac01548','A0890123456@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb49bf-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5aa54e-ea77-11ee-93ac-5c60bac01548','A0321098761@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb4b74-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5aa5d9-ea77-11ee-93ac-5c60bac01548','A0123456783@gmail.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb4d56-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL),('af5aa669-ea77-11ee-93ac-5c60bac01548','AAdminSon@email.com','$2a$12$MtctREQn//hgkx92Z1.CKuUpLlgva5hAwEH/JYPi.VNWVCz0PW7ke','51bb4f55-ea77-11ee-93ac-5c60bac01548','2024-03-25 14:17:05.000000',NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Name` longtext NOT NULL,
  `Region` longtext NOT NULL,
  `ContactDetail` longtext NOT NULL,
  `CreateDate` datetime(6) NOT NULL,
  `DeleteDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('51b590c4-ea77-11ee-93ac-5c60bac01548','The North Wolf','North','Lam CEO Wild Wolf','2024-03-25 14:14:28.000000',NULL,NULL),('51b5a333-ea77-11ee-93ac-5c60bac01548','The South Turtle','South','Son The Mountaion Turtle','2024-03-25 14:14:28.000000',NULL,NULL),('51b5a3df-ea77-11ee-93ac-5c60bac01548','The East Dragon','East','Huy The great Accient Dragon','2024-03-25 14:14:28.000000',NULL,NULL),('51b5a40c-ea77-11ee-93ac-5c60bac01548','The West Pheonix','West','Tuan The Great Flame','2024-03-25 14:14:28.000000',NULL,NULL);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `CurrentOfferId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `CreateDate` datetime(6) NOT NULL,
  `DeleteDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `Name` longtext NOT NULL,
  `Gender` longtext NOT NULL,
  `DateOfBirth` datetime(6) NOT NULL,
  `Address` longtext DEFAULT NULL,
  `ContactNumber` longtext DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Client_Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('51b832c4-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Nguyễn Viết Sơn','male','0000-00-00 00:00:00.000000','Hà Nội','2558105787','2558105787@gmail.com'),('51b83f77-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Nguyễn Thành Lâm','male','1988-05-05 00:00:00.000000','Hà Nội','1578132423','1578132423@gmail.com'),('51b840e8-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trần Đức Minh','male','1999-03-06 00:00:00.000000','Hà Nội','9854586660','9854586660@gmail.com'),('51b84171-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Nguyễn Ngọc Huy','male','1983-12-27 00:00:00.000000','Hà Nội','2079885310','2079885310@gmail.com'),('51b84440-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Nguyễn Thị Thảo','female','1973-12-21 00:00:00.000000','Cần Thơ','4861628733','4861628733@gmail.com'),('51b844b9-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trần Văn Minh','male','1999-06-01 00:00:00.000000','Quảng Ninh','2399821675','2399821675@gmail.com'),('51b8452a-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Minh An','female','1992-02-18 00:00:00.000000','Thanh Hóa','1806436599','1806436599@gmail.com'),('51b8458d-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Thanh Hoa','female','1997-12-15 00:00:00.000000','Nghệ An','8491117563','8491117563@gmail.com'),('51b84646-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hoàng Hữu Quang','male','1983-03-23 00:00:00.000000','Hà Tĩnh','7299024667','7299024667@gmail.com'),('51b846ab-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Thịnh Lan','female','2004-05-13 00:00:00.000000','Quảng Bình','4073847419','4073847419@gmail.com'),('51b8470d-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phan Ngọc Tùng','male','1971-12-12 00:00:00.000000','Quảng Trị','9712189017','9712189017@gmail.com'),('51b84774-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Vũ Đức Ngọc','male','1991-02-06 00:00:00.000000','Thừa Thiên Huế','3305861914','3305861914@gmail.com'),('51b847e2-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đặng Thịnh Hải','male','1977-07-15 00:00:00.000000','Quảng Nam','8791663334','8791663334@gmail.com'),('51b84843-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Bùi Hồng Thị','female','2000-02-10 00:00:00.000000','Quảng Ngãi','5110961834','5110961834@gmail.com'),('51b848a3-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đỗ Xuân Dương','female','1993-06-01 00:00:00.000000','Bình Định','7921284430','7921284430@gmail.com'),('51b84904-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hồ Thị Ngân','female','1993-05-22 00:00:00.000000','Phú Yên','7827945952','7827945952@gmail.com'),('51b84968-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Ngô Công Tuấn','male','1996-03-18 00:00:00.000000','Khánh Hòa','9991970732','9991970732@gmail.com'),('51b849d5-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Dương Nguyễn Hà','male','1993-03-04 00:00:00.000000','Ninh Thuận','2238486028','2238486028@gmail.com'),('51b84a38-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lý Thúy Hưng','male','2002-12-26 00:00:00.000000','Bình Thuận','3811950369','3811950369@gmail.com'),('51b84a97-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đào Tiến Mai','male','2001-08-11 00:00:00.000000','Kon Tum','1746764534','1746764534@gmail.com'),('51b84af5-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đinh Thịnh Trung','male','1989-05-26 00:00:00.000000','Gia Lai','2430421280','2430421280@gmail.com'),('51b84b4f-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trương Huy Thanh','male','1991-03-16 00:00:00.000000','Đắk Lắk','6071166713','6071166713@gmail.com'),('51b84baf-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Dậu Thịnh Phương','female','1979-07-01 00:00:00.000000','Đắk Nông','4062240812','4062240812@gmail.com'),('51b84c1c-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Kiều Thành Đức','male','1979-06-23 00:00:00.000000','Lâm Đồng','3397947859','3397947859@gmail.com'),('51b84c81-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trần Xuân Linh','female','1997-12-18 00:00:00.000000','Bình Phước','4635030807','4635030807@gmail.com'),('51b84ce7-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Thị Phúc','female','1982-04-04 00:00:00.000000','Tây Ninh','3496667728','3496667728@gmail.com'),('51b84d44-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Công Nguyễn','male','1974-03-27 00:00:00.000000','Bình Dương','4423073627','4423073627@gmail.com'),('51b84daa-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hoàng Văn Thủy','male','1980-08-08 00:00:00.000000','Đồng Nai','7843478937','7843478937@gmail.com'),('51b84e0c-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Minh Văn','male','1982-06-15 00:00:00.000000','Bà Rịa - Vũng Tàu','6078481835','6078481835@gmail.com'),('51b84e72-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đinh Thanh Thảo','female','2004-03-12 00:00:00.000000','Long An','7705292849','7705292849@gmail.com'),('51b84ed0-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trương Hữu Trần','male','1974-06-09 00:00:00.000000','Tiền Giang','1366462189','1366462189@gmail.com'),('51b84f2f-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Dậu Thúy Đức','male','1974-12-03 00:00:00.000000','Bến Tre','1347823929','1347823929@gmail.com'),('51b84f90-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Tiến Trang','male','1982-10-21 00:00:00.000000','Trà Vinh','7508214015','7508214015@gmail.com'),('51b84ff1-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Thịnh Đại','male','1993-12-03 00:00:00.000000','Vĩnh Long','9814043628','9814043628@gmail.com'),('51b8505a-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hoàng Huy Thủy','male','2005-02-21 00:00:00.000000','Đồng Tháp','3635463285','3635463285@gmail.com'),('51b850bb-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Hữu Văn','male','2005-01-05 00:00:00.000000','An Giang','1925283800','1925283800@gmail.com'),('51b85122-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phan Thịnh Thảo','female','2004-03-08 00:00:00.000000','Kiên Giang','7071247306','7071247306@gmail.com'),('51b85183-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Vũ Ngọc Trần','female','1984-03-21 00:00:00.000000','Cần Thơ','4461871483','4461871483@gmail.com'),('51b851e8-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đặng Thị Đức','female','2005-01-04 00:00:00.000000','Hậu Giang','5031929234','5031929234@gmail.com'),('51b8524a-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trần Công Thị','male','1983-10-14 00:00:00.000000','Sóc Trăng','1638644926','1638644926@gmail.com'),('51b852ab-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Văn Dương','male','1993-04-04 00:00:00.000000','Bạc Liêu','8658212709','8658212709@gmail.com'),('51b8530f-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Minh Ngân','female','1988-03-15 00:00:00.000000','Cà Mau','9585997559','9585997559@gmail.com'),('51b85372-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hoàng Thanh Tuấn','male','1970-02-21 00:00:00.000000','Lào Cai','1743976968','1743976968@gmail.com'),('51b853d0-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Hữu Hà','female','1995-05-11 00:00:00.000000','Yên Bái','5240349817','5240349817@gmail.com'),('51b85430-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đinh Đức Hưng','male','1973-11-16 00:00:00.000000','Điện Biên','4059999927','4059999927@gmail.com'),('51b85492-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Thịnh Mai','female','1985-04-12 00:00:00.000000','Lai Châu','1828424660','1828424660@gmail.com'),('51b854f1-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Hồng Trung','male','1975-11-19 00:00:00.000000','Sơn La','2137152827','2137152827@gmail.com'),('51b8554e-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hoàng Xuân Thanh','female','1981-11-24 00:00:00.000000','Hòa Bình','9564785930','9564785930@gmail.com'),('51b855b7-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Thị An','female','1973-01-07 00:00:00.000000','Thái Nguyên','6855636463','6855636463@gmail.com'),('51b8561d-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phan Công Hoa','male','1975-04-10 00:00:00.000000','Lạng Sơn','6667275460','6667275460@gmail.com'),('51b8567f-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Vũ Nguyễn Quang','male','1991-09-27 00:00:00.000000','Bắc Giang','7211595390','7211595390@gmail.com'),('51b856e3-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trương Thúy Lan','female','1996-06-12 00:00:00.000000','Phú Thọ','8803926477','8803926477@gmail.com'),('51b85746-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Dậu Thịnh Tùng','male','1987-08-06 00:00:00.000000','Vĩnh Phúc','8431447556','8431447556@gmail.com'),('51b857ae-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Kiều Huy Ngọc','male','1983-07-15 00:00:00.000000','Bắc Ninh','1419353758','1419353758@gmail.com'),('51b8580d-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trần Hữu Hải','male','1993-01-06 00:00:00.000000','Hải Dương','9862066203','9862066203@gmail.com'),('51b85879-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Thịnh Thị','female','1996-08-07 00:00:00.000000','Hưng Yên','6428437667','6428437667@gmail.com'),('51b858da-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Ngọc Dương','male','1986-03-19 00:00:00.000000','Thái Bình','4169252131','4169252131@gmail.com'),('51b8593a-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Thị Tuấn','female','1988-04-23 00:00:00.000000','Hà Nam','5718325545','5718325545@gmail.com'),('51b8599a-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Công Hà','male','1994-09-24 00:00:00.000000','Nam Định','8668542472','8668542472@gmail.com'),('51b859fe-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hoàng Thanh Hưng','male','1979-08-19 00:00:00.000000','Ninh Bình','6052500359','6052500359@gmail.com'),('51b85a5e-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Hữu Mai','female','1988-12-18 00:00:00.000000','Thanh Hóa','1635287982','1635287982@gmail.com'),('51b85ac1-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đinh Đức Trung','male','1991-08-18 00:00:00.000000','Hà Tĩnh','2937179230','2937179230@gmail.com'),('51b85b20-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trương Thịnh Thanh','female','2004-09-28 00:00:00.000000','Quảng Bình','1192130569','1192130569@gmail.com'),('51b85b84-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Dậu Hồng Phương','female','1993-06-15 00:00:00.000000','Hồ Chí Minh','4982979102','4982979102@gmail.com'),('51b85be8-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Nguyễn Xuân Đức','male','1994-12-21 00:00:00.000000','Hải Phòng','9551756800','9551756800@gmail.com'),('51b85c50-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trần Thị Linh','female','2003-07-05 00:00:00.000000','Đà Nẵng','1294133495','1294133495@gmail.com'),('51b85cb0-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Công Phúc','male','1975-09-09 00:00:00.000000','Cần Thơ','2654385619','2654385619@gmail.com'),('51b85d0f-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Tiến Nguyễn','male','1983-07-03 00:00:00.000000','Quảng Ninh','8542200603','8542200603@gmail.com'),('51b85d74-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hoàng Thịnh Thủy','female','2004-11-05 00:00:00.000000','Bắc Giang','2439326221','2439326221@gmail.com'),('51b85dd2-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Huy Văn','male','1998-09-05 00:00:00.000000','Phú Thọ','4057913232','4057913232@gmail.com'),('51b85e7a-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Dậu Hữu Thảo','female','1994-12-07 00:00:00.000000','Vĩnh Phúc','4437687855','4437687855@gmail.com'),('51b85ee4-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Nguyễn Thịnh Trần','male','1979-05-15 00:00:00.000000','Bắc Ninh','2508488987','2508488987@gmail.com'),('51b85f43-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trần Ngọc Hoa','male','1993-02-07 00:00:00.000000','Hải Dương','4081620077','4081620077@gmail.com'),('51b85fa6-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Thị Quang','female','2003-11-05 00:00:00.000000','Cần Thơ','2351329188','2351329188@gmail.com'),('51b86006-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Công Lan','male','1996-04-25 00:00:00.000000','Vĩnh Long','1060148750','1060148750@gmail.com'),('51b8605f-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hoàng Văn Tùng','male','2001-10-20 00:00:00.000000','Hải Phòng','7179738551','7179738551@gmail.com'),('51b860c4-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Minh Ngọc','female','1981-06-14 00:00:00.000000','Quảng Ninh','4381673041','4381673041@gmail.com'),('51b86127-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Thanh Hải','male','2005-07-01 00:00:00.000000','Bắc Ninh','8541347470','8541347470@gmail.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `EmployeeCode` varchar(255) NOT NULL,
  `EducationalQualification` longtext NOT NULL,
  `Role` longtext NOT NULL,
  `Grade` longtext NOT NULL,
  `Achievements` longtext DEFAULT NULL,
  `ProvideService` longtext NOT NULL,
  `BranchId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `CurrentOfferId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  `CreateDate` datetime(6) NOT NULL,
  `DeleteDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `Name` longtext NOT NULL,
  `Gender` longtext NOT NULL,
  `DateOfBirth` datetime(6) NOT NULL,
  `Address` longtext DEFAULT NULL,
  `ContactNumber` longtext DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `IX_Employee_Email` (`Email`),
  UNIQUE KEY `IX_Employee_EmployeeCode` (`EmployeeCode`),
  KEY `IX_Employee_BranchId` (`BranchId`),
  CONSTRAINT `FK_Employee_Branch_BranchId` FOREIGN KEY (`BranchId`) REFERENCES `branch` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('51bb18aa-ea77-11ee-93ac-5c60bac01548','EMP0987654321','Universe degree','None','Universe',NULL,'MannedGuarding','51b590c4-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Nguyễn Thị Thanh Hương','female','1992-07-15 00:00:00.000000','Hồ Chí Minh','0987654321','A0987654321@gmail.com'),('51bb2547-ea77-11ee-93ac-5c60bac01548','EMP0123456789','Universe degree','None','Universe',NULL,'MannedGuarding','51b5a333-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trần Văn An','male','1985-03-29 00:00:00.000000','Lạng Sơn','0123456789','A0123456789@gmail.com'),('51bb2a02-ea77-11ee-93ac-5c60bac01548','EMP0876543210','Universe degree','None','Universe',NULL,'MannedGuarding','51b5a3df-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Thị Mai','female','1999-11-05 00:00:00.000000','Hậu Giang','0876543210','A0876543210@gmail.com'),('51bb2c64-ea77-11ee-93ac-5c60bac01548','EMP0912345678','Universe degree','None','Universe',NULL,'MannedGuarding','51b5a40c-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phạm Đức Long','male','1988-09-21 00:00:00.000000','Quảng Bình','0912345678','A0912345678@gmail.com'),('51bb2e82-ea77-11ee-93ac-5c60bac01548','EMP0890765432','Universe degree','None','Universe',NULL,'MannedGuarding','51b590c4-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Hoàng Thị Lan','female','1981-12-10 00:00:00.000000','Cà Mau','0890765432','A0890765432@gmail.com'),('51bb3086-ea77-11ee-93ac-5c60bac01548','EMP0567890123','Universe degree','None','Universe',NULL,'CashServices','51b5a333-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Vũ Minh Tuấn','male','1984-06-28 00:00:00.000000','Thừa Thiên Huế','0567890123','A0567890123@gmail.com'),('51bb32c5-ea77-11ee-93ac-5c60bac01548','EMP0234567890','Universe degree','None','Universe',NULL,'CashServices','51b5a3df-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đặng Thị Thu Hà','female','1996-02-17 00:00:00.000000','Bình Phước','0234567890','A0234567890@gmail.com'),('51bb3481-ea77-11ee-93ac-5c60bac01548','EMP0654321098','Universe degree','None','Universe',NULL,'CashServices','51b5a40c-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Bùi Đình Hòa','male','1983-08-03 00:00:00.000000','Kiên Giang','0654321098','A0654321098@gmail.com'),('51bb369a-ea77-11ee-93ac-5c60bac01548','EMP0456789012','Universe degree','None','Universe',NULL,'CashServices','51b590c4-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đỗ Thị Thu Trang','female','2000-04-24 00:00:00.000000','Vĩnh Phúc','0456789012','A0456789012@gmail.com'),('51bb3893-ea77-11ee-93ac-5c60bac01548','EMP0789012345','Universe degree','None','Universe',NULL,'CashServices','51b5a333-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Ngô Quang Hải','male','1990-10-08 00:00:00.000000','Quảng Nam','0789012345','A0789012345@gmail.com'),('51bb3a77-ea77-11ee-93ac-5c60bac01548','EMP0321098765','Universe degree','HR','Universe',NULL,'RecruitmentAndTraining','51b5a3df-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Mai Thanh Tùng','male','1995-05-12 00:00:00.000000','Ninh Thuận','0321098765','A0321098765@gmail.com'),('51bb3caf-ea77-11ee-93ac-5c60bac01548','EMP0678901234','Universe degree','HR','Universe',NULL,'RecruitmentAndTraining','51b5a40c-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trần Thị Hồng Loan','female','1982-11-27 00:00:00.000000','Tây Ninh','0678901234','A0678901234@gmail.com'),('51bb3e5c-ea77-11ee-93ac-5c60bac01548','EMP0345678901','Universe degree','HR','Universe',NULL,'RecruitmentAndTraining','51b590c4-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lê Văn Đức','male','1987-01-19 00:00:00.000000','Phú Thọ','0345678901','A0345678901@gmail.com'),('51bb4065-ea77-11ee-93ac-5c60bac01548','EMP0765432109','Universe degree','HR','Universe',NULL,'RecruitmentAndTraining','51b5a333-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Nguyễn Thị Hương Giang','female','1998-08-07 00:00:00.000000','Thái Nguyên','0765432109','A0765432109@gmail.com'),('51bb4289-ea77-11ee-93ac-5c60bac01548','EMP0210987654','Universe degree','HR','Universe',NULL,'RecruitmentAndTraining','51b5a3df-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Phan Hữu Nam','male','1986-04-02 00:00:00.000000','Thanh Hóa','0210987654','A0210987654@gmail.com'),('51bb44c1-ea77-11ee-93ac-5c60bac01548','EMP0543210987','Universe degree','None','Universe',NULL,'ElectronicSecuritySystems','51b5a40c-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Lương Thị Ngọc Trâm','female','2003-09-09 00:00:00.000000','Cần Thơ','0543210987','A0543210987@gmail.com'),('51bb47a1-ea77-11ee-93ac-5c60bac01548','EMP0987654320','Universe degree','None','Universe',NULL,'ElectronicSecuritySystems','51b590c4-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Võ Minh Hiếu','male','1991-06-23 00:00:00.000000','Hà Tĩnh','0987654320','A0987654320@gmail.com'),('51bb49bf-ea77-11ee-93ac-5c60bac01548','EMP0890123456','Universe degree','None','Universe',NULL,'ElectronicSecuritySystems','51b5a333-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Huỳnh Thị Thu Trang','female','1989-02-05 00:00:00.000000','Lào Cai','0890123456','A0890123456@gmail.com'),('51bb4b74-ea77-11ee-93ac-5c60bac01548','EMP0321098761','Universe degree','None','Universe',NULL,'ElectronicSecuritySystems','51b5a3df-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Đặng Văn Hùng','male','1993-12-31 00:00:00.000000','Bình Dương','0321098761','A0321098761@gmail.com'),('51bb4d56-ea77-11ee-93ac-5c60bac01548','EMP0123456783','Universe degree','None','Universe',NULL,'ElectronicSecuritySystems','51b5a40c-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Trịnh Thị Bích Ngọc','female','2002-07-20 00:00:00.000000','Hà Giang','0123456783','A0123456783@gmail.com'),('51bb4f55-ea77-11ee-93ac-5c60bac01548','EMP0773240597','Universe degree','Admin','Universe',NULL,'Manager','51b5a333-ea77-11ee-93ac-5c60bac01548',NULL,'2024-03-25 14:14:28.000000',NULL,NULL,'Nguyễn Viết Sơn','male','1997-08-06 00:00:00.000000','Hà Nội','0773240597','AAdminSon@email.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `TotalPayment` decimal(65,30) NOT NULL,
  `StartDate` datetime(6) NOT NULL,
  `EndDate` datetime(6) NOT NULL,
  `ProvideService` longtext NOT NULL,
  `EmployeeId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `ClientId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `CreateDate` datetime(6) NOT NULL,
  `DeleteDate` datetime(6) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Offer_ClientId` (`ClientId`),
  KEY `IX_Offer_EmployeeId` (`EmployeeId`),
  CONSTRAINT `FK_Offer_Client_ClientId` FOREIGN KEY (`ClientId`) REFERENCES `client` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Offer_Employee_EmployeeId` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'star_security'
--

--
-- Dumping routines for database 'star_security'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25 15:00:24
