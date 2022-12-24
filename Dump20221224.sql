CREATE DATABASE  IF NOT EXISTS `diemtiemchung` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `diemtiemchung`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: diemtiemchung
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
-- Table structure for table `benhnhan`
--

DROP TABLE IF EXISTS `benhnhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benhnhan` (
  `maBenhNhan` varchar(50) NOT NULL,
  `CCCD` varchar(12) NOT NULL,
  `hoVaTen` varchar(255) NOT NULL,
  `gioiTinh` varchar(3) DEFAULT NULL,
  `ngaySinh` date NOT NULL DEFAULT '2000-01-01',
  `soDienThoai` varchar(12) NOT NULL,
  `sucKhoe` text,
  PRIMARY KEY (`maBenhNhan`,`CCCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benhnhan`
--

LOCK TABLES `benhnhan` WRITE;
/*!40000 ALTER TABLE `benhnhan` DISABLE KEYS */;
/*!40000 ALTER TABLE `benhnhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `maNhanVien` varchar(50) NOT NULL,
  `hoVaTen` varchar(50) NOT NULL,
  `ngaySinh` date NOT NULL,
  `gioiTinh` varchar(3) NOT NULL,
  `soDienThoai` varchar(12) NOT NULL,
  `chuyenMon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`maNhanVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieutiem`
--

DROP TABLE IF EXISTS `phieutiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieutiem` (
  `maPhieuTiem` varchar(255) NOT NULL,
  `maBenhNhan` varchar(50) NOT NULL,
  `thoiGian` date NOT NULL,
  `diaDiem` varchar(255) NOT NULL,
  `maNhanVien` varchar(50) NOT NULL,
  `maThuocTiem` varchar(50) NOT NULL,
  `soLuongMui` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`maPhieuTiem`,`maBenhNhan`),
  KEY `maBenhNhan` (`maBenhNhan`),
  KEY `maNhanVien` (`maNhanVien`),
  KEY `maThuocTiem` (`maThuocTiem`),
  CONSTRAINT `phieutiem_ibfk_1` FOREIGN KEY (`maBenhNhan`) REFERENCES `benhnhan` (`maBenhNhan`),
  CONSTRAINT `phieutiem_ibfk_2` FOREIGN KEY (`maNhanVien`) REFERENCES `nhanvien` (`maNhanVien`),
  CONSTRAINT `phieutiem_ibfk_3` FOREIGN KEY (`maThuocTiem`) REFERENCES `thuoctiem` (`maThuocTiem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieutiem`
--

LOCK TABLES `phieutiem` WRITE;
/*!40000 ALTER TABLE `phieutiem` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieutiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtinthuoctiem`
--

DROP TABLE IF EXISTS `thongtinthuoctiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongtinthuoctiem` (
  `maThuocTiem` varchar(50) NOT NULL,
  `soLuongConLai` int DEFAULT '0',
  `soLuongDaTiem` int DEFAULT '0',
  PRIMARY KEY (`maThuocTiem`),
  CONSTRAINT `thongtinthuoctiem_ibfk_1` FOREIGN KEY (`maThuocTiem`) REFERENCES `thuoctiem` (`maThuocTiem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtinthuoctiem`
--

LOCK TABLES `thongtinthuoctiem` WRITE;
/*!40000 ALTER TABLE `thongtinthuoctiem` DISABLE KEYS */;
/*!40000 ALTER TABLE `thongtinthuoctiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuoctiem`
--

DROP TABLE IF EXISTS `thuoctiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thuoctiem` (
  `maThuocTiem` varchar(50) NOT NULL,
  `tenThuocTiem` varchar(255) NOT NULL,
  `moTaChucNang` text,
  `loaiThuoc` varchar(50) DEFAULT NULL,
  `donGia` int DEFAULT '0',
  `hanSuDung` date DEFAULT NULL,
  PRIMARY KEY (`maThuocTiem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuoctiem`
--

LOCK TABLES `thuoctiem` WRITE;
/*!40000 ALTER TABLE `thuoctiem` DISABLE KEYS */;
/*!40000 ALTER TABLE `thuoctiem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-24 15:21:30
