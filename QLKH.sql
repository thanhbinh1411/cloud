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

USE QLKH;

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin` (
  `MaAdmin` varchar(5) NOT NULL,
  `HoTen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `MaTK` varchar(5) DEFAULT NULL,
  `Imagead` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaAdmin`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `FK_Admin_TaiKhoan` (`MaTK`),
  CONSTRAINT `FK_Admin_TaiKhoan` FOREIGN KEY (`MaTK`) REFERENCES `TaiKhoan` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
INSERT INTO `Admin` VALUES ('AD001','Nguyễn Đức Nhân','ducnhan279notionktkt279@gmail.com','2003-04-22','TK009','https://i.pinimg.com/736x/a8/ea/51/a8ea51143c5c6f90fa98cc1b973fdda6.jpg'),('AD002','Kiệt Đào','tankiet28@gmail.com','2003-12-28','TK010','https://i.pinimg.com/originals/df/0f/00/df0f0012e5b972ea828a5db82bbca9b8.jpg');
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BienBanNghiemThu`
--

DROP TABLE IF EXISTS `BienBanNghiemThu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BienBanNghiemThu` (
  `MaBienBan` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Diem` float DEFAULT NULL,
  `DanhGia` text,
  `MinhChung` text,
  `NgayNghiemThu` date DEFAULT NULL,
  `MaDeTai` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MaPQL` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaBienBan`),
  KEY `FK_BienBanNghiemThu_DeTai` (`MaDeTai`),
  CONSTRAINT `FK_BienBanNghiemThu_DeTai` FOREIGN KEY (`MaDeTai`) REFERENCES `DeTai` (`MaDeTai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BienBanNghiemThu`
--

LOCK TABLES `BienBanNghiemThu` WRITE;
/*!40000 ALTER TABLE `BienBanNghiemThu` DISABLE KEYS */;
INSERT INTO `BienBanNghiemThu` VALUES ('3',10,'đạt','link minh chung ne','2023-12-13','33','QL002'),('4',10,'Đạt ','/linkminhchung','2023-12-13','DT010','QL002'),('5',5.6,'chưa đạt','/linkminhchung','2023-12-13','DT012','QL002'),('6',9.5,'tốt','/linkminhchung','2023-12-14','27','QL002'),('7',9.5,'tốt','/linkminhchung','2023-12-14','1','QL002'),('8',9.5,'đạt','/linkminhchung','2023-12-14','25','QL002'),('9',9.5,'dạt','/linkminhchung','2023-12-14','26','QL002'),('D2',8.4,'gần đạt','link minh chung 2','2023-12-08','DT002','QL002'),('NT001',8.5,'Đạt','/minhchung1','2023-06-30','DT001','QL001');
/*!40000 ALTER TABLE `BienBanNghiemThu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DangKyDeTai`
--

DROP TABLE IF EXISTS `DangKyDeTai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DangKyDeTai` (
  `MaGV` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaDeTai` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NgayDangKy` date DEFAULT NULL,
  `GhiChu` text,
  `TrangThai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MaNhom` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`MaGV`,`MaDeTai`),
  KEY `FK_DangKyDeTai_DeTai` (`MaDeTai`),
  CONSTRAINT `FK_DangKyDeTai_DeTai` FOREIGN KEY (`MaDeTai`) REFERENCES `DeTai` (`MaDeTai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DangKyDeTai`
--

LOCK TABLES `DangKyDeTai` WRITE;
/*!40000 ALTER TABLE `DangKyDeTai` DISABLE KEYS */;
INSERT INTO `DangKyDeTai` VALUES ('GV001','30','2023-12-13','hủy','Đã hủy','NH006'),('GV001','31','2023-12-13','duyệt ròi th lollll','Đã duyệt','NH001'),('GV001','DT001','2023-01-01','Đề tài bạn đã được duyệt','Đã duyệt','NH001'),('GV001','DT010','2023-12-09',NULL,'Đã hủy','NH011'),('GV002','1','2023-12-14','link đính kèm......','Đã duyệt','NH002'),('GV002','24','2023-12-15',NULL,'Đang Chờ Duyệt','NH007'),('GV002','25','2023-12-15','duyệt','Đã duyệt','NH012'),('GV002','26','2023-12-15','Duyệt','Đã duyệt','NH012'),('GV004','27','2023-12-15','Đề tài của bạn đã được duyệt','Đã duyệt','NH009'),('GV005','32','2023-12-14','/linkdetai','Đã duyệt','NH005'),('GV005','34','2023-12-14','/linkminhchung','Đã duyệt','NH010');
/*!40000 ALTER TABLE `DangKyDeTai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DeTai`
--

DROP TABLE IF EXISTS `DeTai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeTai` (
  `MaDeTai` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenDeTai` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `GhiChu` text,
  `NgayThucHien` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  `KinhPhiDuKien` decimal(18,2) DEFAULT NULL,
  `KetQua` text,
  `TrangThai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `LinkNopBai` text,
  `visible` int DEFAULT '1',
  `NgayNop` date DEFAULT NULL,
  PRIMARY KEY (`MaDeTai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeTai`
--

LOCK TABLES `DeTai` WRITE;
/*!40000 ALTER TABLE `DeTai` DISABLE KEYS */;
INSERT INTO `DeTai` VALUES ('1','Nghiên cứu về sự biến đổi khí hậu','biến đổi khí hậu là vấn đề cấp thiết','2023-12-12','2024-06-12',1000000.00,'9.5','Hoàn Thành','LinkNop',1,'2023-12-15'),('19','Phát triển game','Làm game cơ bản bằng C++','2023-12-13','2024-06-13',100000.00,NULL,'Đang thực hiện',NULL,1,NULL),('20','TenDeTai3','MoTa_Value',NULL,NULL,1001.00,NULL,'Chưa Đăng Ký',NULL,0,NULL),('21','TenDeTai1','MoTa_Value',NULL,NULL,1001.00,NULL,'Chưa Đăng Ký',NULL,0,NULL),('22','TenDeTai2','MoTa_Value',NULL,NULL,1001.00,NULL,'Chưa Đăng Ký',NULL,0,NULL),('23','TenDeTai4','MoTa_Value',NULL,NULL,1001.00,NULL,'Chưa Đăng Ký',NULL,0,NULL),('24','Phát triển dự án tái chế rác','Tái chế nhựa đã qua sử dụng',NULL,NULL,1000000.00,NULL,'Đang Chờ Duyệt',NULL,1,NULL),('25','Phát triển dự án tái chế rác nhựa','Tái chế nhựa','2023-12-14','2024-06-14',1000000.00,'9.5','Hoàn Thành','/linkbainop',1,'2023-12-15'),('26','Phát triển ốp điện thoại siêu mỏng, nhẹ','Mô tả j khôn gbieet','2023-12-14','2024-06-29',1200000.00,'9.5','Hoàn Thành','/linknopbai',1,'2023-12-15'),('27','Phát triển game fake','Kiệt yêu dấu','2023-12-14','2024-12-21',1233334.00,'9.4','Hoàn Thành','/linknopbai',1,'2023-12-15'),('28','Phát triển game fake','Kiệt yêu dấu',NULL,NULL,1233334.00,NULL,'Chưa Đăng Ký',NULL,1,NULL),('29','Phát triển game auth','Kiệt nữa đây',NULL,NULL,1233334.00,NULL,'Chưa Đăng Ký',NULL,1,NULL),('30','Phát triển bàn phím cơ','Kiệt kiệt',NULL,NULL,1233334.00,NULL,'Chưa Đăng Ký',NULL,1,NULL),('31','Phát triển chuột máy tính','Một lần nữa thôi nhe\r\n','2023-12-11','2024-12-10',1233334.00,NULL,'Đang Thực Hiện',NULL,1,NULL),('32','Phát triển dự án tái chế rác nhựa','Tái chế nhựa','2023-12-13','2024-12-31',1000000.00,NULL,'Đang thực hiện',NULL,1,NULL),('33','Phát triển dự án tái chế rác nhựa','Tái chế nhựa',NULL,NULL,1000000.00,NULL,'Hoàn thành',NULL,1,NULL),('34','Phát triển ốp lưng điện thoại siêu mỏng, nhẹ','Phát triển ốp lưng điện thoại cho Iphone','2023-12-13','2024-12-31',100000.00,NULL,'Đang thực hiện',NULL,1,NULL),('35','Phát triển điện thoại ','Phát triển điện thoại mỏng nhẹ',NULL,NULL,100000.00,NULL,'Chưa Đăng Ký',NULL,1,NULL),('37','Nghiên cứu khí hậu','Khí hậu biến đổi',NULL,NULL,1200000.00,NULL,'Chưa Đăng Ký',NULL,1,NULL),('38','phát triển công nghệ lõi','Công nghệ tiên tiến toàn cầu',NULL,NULL,1231232.00,NULL,'Chưa Đăng Ký',NULL,1,NULL),('39','Nghiên cứu công nghệ lõi','công nghệ lõi',NULL,NULL,1233332.00,NULL,'Chưa Đăng Ký',NULL,1,NULL),('50','Phát triển máy tính cầm tay','Phát triển mát tính ct',NULL,NULL,1977273.00,NULL,'Chưa Đăng Ký',NULL,0,NULL),('DT001','Phát triển ứng dụng di động','Đề tài này liên quan đến phát triển ứng dụng di động sử dụng React Native.','2023-12-09','2024-06-09',15000.00,'không đạt','Hoàn thành','/linknopbai11',1,NULL),('DT002','Nghiên cứu vị trí tuệ nhân tạo','Đề tài này tập trung vào việc nghiên cứu và phát triển mô hình trí tuệ nhân tạo sử dụng deep learning.','2023-12-01','2023-12-09',25000.00,NULL,'Ðang thực hiện',NULL,0,NULL),('DT003','Tối ưu hóa cơ sở dữ liệu','Đề tài này tập trung vào tối ưu hóa cơ sở dữ liệu để cải thiện hiệu suất hệ thống',NULL,'2023-12-09',18000.00,NULL,'Chưa Đăng Ký','/linknopbai11',0,NULL),('DT010','Phát triển ứng dụng VR','Phát triển ứng dụng VR','2023-11-23','2023-12-08',35000.00,NULL,'Hoàn thành','https://www.youtube.com/watch?v=3wQedC2rHrA',1,'2023-12-12'),('DT011','Quan ly trang ban giay','thực hiện quản lý trang web bán giày 2nd trực tuyến',NULL,'2023-12-09',10000.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL),('DT012','Quan ly trang ban giay','thực hiện quản lý trang web bán giày 2nd trực tuyến','2023-01-12','2023-12-09',10000.00,NULL,'Hoàn thành',NULL,1,NULL),('DT013','Quan ly trang ban giay','thực hiện quản lý trang web bán giày 2nd trực tuyến',NULL,'2023-12-09',10000.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL),('DT015','hello','àasdasdasdasd',NULL,'2023-12-09',100.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL),('DT016','123','123',NULL,'2023-12-09',123.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL),('DT021','hello','adddd',NULL,'2023-12-09',100.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL),('DT022','hello','adđ',NULL,'2023-12-09',100.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL),('DT023','hello','addd',NULL,'2023-12-09',100.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL),('DT024','Quan ly trang ban giay','thực hiện quản lý trang web bán giày 2nd trực tuyến',NULL,'2023-12-09',10000.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL),('DT025','Quan ly trang ban giay','thực hiện quản lý trang web bán giày 2nd trực tuyến',NULL,'2023-12-09',10000.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL),('DT17','Ten moi','Ghi chu moi','2024-01-01','2023-12-09',15000.00,'','Đang Thực Hiện/Đã xin gia hạn','Link moi',0,NULL),('DT20','Ten moi','Ghi chu moi','2024-01-01','2023-12-09',15000.00,'Ket qua moi','Đang Thực Hiện/Đã xin gia hạn','Link moi',0,NULL),('DT27','12','ad',NULL,'2023-12-09',123.00,NULL,'Đang Thực Hiện/Đã xin gia hạn',NULL,0,NULL);
/*!40000 ALTER TABLE `DeTai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DeXuatDetai`
--

DROP TABLE IF EXISTS `DeXuatDetai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeXuatDetai` (
  `MaGV` varchar(5) DEFAULT NULL,
  `MaPhongQL` varchar(5) DEFAULT NULL,
  `TenDeTai` varchar(255) NOT NULL,
  `MoTa` text,
  `KinhPhiDuKien` decimal(18,0) DEFAULT NULL,
  `LyDo` text,
  `TrangThai` varchar(50) DEFAULT NULL,
  `NgayDeXuat` date DEFAULT NULL,
  `visible` int DEFAULT '1',
  `LinkDX` varchar(255) NOT NULL,
  UNIQUE KEY `uk_tenDeTai` (`TenDeTai`),
  KEY `FK_DeXuatDetai_GiangVien` (`MaGV`),
  KEY `FK_DeXuatDetai_PhongQL` (`MaPhongQL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeXuatDetai`
--

LOCK TABLES `DeXuatDetai` WRITE;
/*!40000 ALTER TABLE `DeXuatDetai` DISABLE KEYS */;
INSERT INTO `DeXuatDetai` VALUES ('GV001','QL001','Đề tài 1','',5000,'đề tài của bạn đã bị hủy','Đang chờ duyệt','2023-01-01',1,'link'),('GV003',NULL,'Đề tài 3','',7000,'nononoo ','Đã hủy','2023-03-03',1,'linklink'),('GV002','QL002','Nghiên cứu công nghệ lõi','công nghệ lõi',1233332,NULL,'Đã duyệt','2023-12-15',1,'/linkdẽuat'),('GV004','QL002','Nghiên cứu khí hậu','Khí hậu biến đổi',1200000,NULL,'Đã duyệt','2023-12-15',1,'/linkdexuat'),('GV001','QL002','Phát tri?n game','Làm game c? b?n b?ng C++',1000000000,NULL,'Đã duyệt','2023-12-13',1,'/linkne'),('GV001',NULL,'Phát triển bàn phím cơ','Kiệt kiệt',1233334,NULL,'Đã duyệt','2023-12-13',1,'?linkgame'),('GV001',NULL,'Phát triển chuột máy tính','Một lần nữa thôi nhe\r\nTao Ngủuuuuuu',1233334,NULL,'Đã duyệt','2023-12-13',1,'?linkgame'),('GV002','QL002','phát triển công nghệ lõi','Công nghệ tiên tiến toàn cầu',1231232,NULL,'Đã duyệt','2023-12-15',1,'/linkdexuat'),('GV005','QL002','Phát triển điện thoại ','Phát triển điện thoại mỏng nhẹ',100000,NULL,'Đã duyệt','2023-12-14',1,'/linkmota'),('GV001',NULL,'Phát triển dự án tái chế rác','Tái chế nhựa đã qua sử dụng',1000000,NULL,'Đã duyệt','2023-12-13',1,'/linkne'),('GV001','QL002','Phát triển dự án tái chế rác nhựa','Tái chế nhựa',1000000,NULL,'Đã duyệt','2023-12-13',1,'/linkne'),('GV001',NULL,'Phát triển game auth','Kiệt nữa đây',1233334,NULL,'Đã duyệt','2023-12-13',1,'?linkgame'),('GV001',NULL,'Phát triển game fake','Kiệt yêu dấu',1233334,NULL,'Đã duyệt','2023-12-13',1,'?linkgame'),('GV001',NULL,'Phát triển ốp điện thoại siêu mỏng, nhẹ','Mô tả j khôn gbieet',1200000,NULL,'Đã duyệt','2023-12-13',1,'/linknaaaaa'),('GV001','QL002','Phát triển ốp lưng điện thoại siêu mỏng, nhẹ','Phát triển ốp lưng điện thoại cho Iphone',NULL,'đề tài đề xuất của bạn đã bị hủy','Đã duyệt','2023-12-09',1,'link'),('GV002','QL001','TenDeTai','MoTa_Value',1001,NULL,'Đang chờ duyệt','2023-12-31',0,'link'),('GV002','QL002','TenDeTai1','MoTa_Value',1001,NULL,'Đang chờ duyệt','2023-12-31',1,'link'),('GV002','QL002','TenDeTai2','MoTa_Value',1001,NULL,'Đang chờ duyệt','2023-12-31',1,'link'),('GV002','QL002','TenDeTai3','MoTa_Value',1001,NULL,'Đã duyệt','2023-12-31',1,'link'),('GV002',NULL,'TenDeTai4','MoTa_Value',1001,NULL,'Đã duyệt','2023-12-31',1,'link');
/*!40000 ALTER TABLE `DeXuatDetai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DonXinGiaHan`
--

DROP TABLE IF EXISTS `DonXinGiaHan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DonXinGiaHan` (
  `MaDon` int NOT NULL AUTO_INCREMENT,
  `NgayGiaHan` date DEFAULT NULL,
  `NgayHoanThanh` date DEFAULT NULL,
  `LinkDonXin` longtext,
  `LyDoXin` longtext,
  `LyDoHuy` longtext,
  `TrangThai` varchar(50) DEFAULT NULL,
  `MaDeTai` varchar(5) DEFAULT NULL,
  `MaGV` varchar(5) DEFAULT NULL,
  `MaPQL` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`MaDon`),
  KEY `FK_DonXinGiaHan_GiangVien` (`MaGV`),
  CONSTRAINT `FK_DonXinGiaHan_GiangVien` FOREIGN KEY (`MaGV`) REFERENCES `GiangVien` (`MaGV`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DonXinGiaHan`
--

LOCK TABLES `DonXinGiaHan` WRITE;
/*!40000 ALTER TABLE `DonXinGiaHan` DISABLE KEYS */;
INSERT INTO `DonXinGiaHan` VALUES (2,'2023-01-01','2023-02-01','http://example.com','Đề tài cần thêm thời gian hoàn thành',NULL,'Đã duyệt','DT001','GV001','QL001'),(3,'2023-01-01','2023-02-01','http://example.com','Đề tài cần thêm thời gian hoàn thành',NULL,'Đã duyệt','DT001','GV001',NULL),(4,'2023-01-01','2023-02-01','http://example.com','Đề tài cần thêm thời gian hoàn thành',NULL,'Đã hủy','DT001','GV001','QL001'),(5,'2023-01-01','2023-02-01','http://example.com','Đề tài cần thêm thời gian hoàn thành',NULL,'Đã hủy','DT001','GV001',NULL),(6,'2023-01-01','2023-02-01','http://example.com','Đề tài cần thêm thời gian hoàn thành',NULL,'Đã duyệt','DT001','GV001',''),(7,'2023-01-01','2023-02-01','http://example.com','Đề tài cần thêm thời gian hoàn thành',NULL,'Đã hủy','DT001','GV001',NULL),(8,'2023-01-01','2023-02-01','http://example.com','Đề tài cần thêm thời gian hoàn thành',NULL,'Đã duyệt','DT001','GV001','QL002'),(9,'2023-01-01','2023-02-01','http://example.com','Đề tài cần thêm thời gian hoàn thành','yêu cầu của bạn không được duyệt vì bạn không đủ điều kiện để gia hạn thêm thời gian thực hiện đề tài','Đã hủy','DT001','GV001','QL002'),(10,'2023-01-01','2023-02-01','http://example.com','Đề tài cần thêm thời gian hoàn thành','hủy hủy','Đã hủy','DT001','GV001','QL002'),(11,'2023-12-30','2023-12-09','https://www.youtube.com/watch?v=VSw78vMWXcI','Một số vấn đề chưa giải quyết kịp nữa','Bạn không được phép gia hạn','Đã hủy','DT010','GV001','QL002'),(12,'2024-07-01','2024-06-13','?linkgiahan31','Làm khôngkịp',NULL,'Đã duyệt','31','GV001',NULL),(14,'2024-07-01','2024-06-13','/linkdonxin','Không đủ thời gian làm bài',NULL,'Đã duyệt','34','GV005','QL002'),(15,'2024-07-01','2024-06-13','/linkdonxin','Không đủ thời gian',NULL,'Đã duyệt','32','GV005','QL002'),(16,'2024-06-22','2024-06-14','/linkdongiahan','Không dủ thời gian thực hiện',NULL,'Đã duyệt','27','GV004','QL002'),(17,'2024-06-15','2024-06-14','linkdonxingiahan','không đủ thời gian',NULL,'Đã duyệt','25','GV002','QL002'),(18,'2024-06-30','2024-06-14','/linkdonxin','không kịp thời gian thực hiện',NULL,'Đã duyệt','26','GV002','QL002');
/*!40000 ALTER TABLE `DonXinGiaHan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GiangVien`
--

DROP TABLE IF EXISTS `GiangVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GiangVien` (
  `MaGV` varchar(5) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `TrinhDo` varchar(50) DEFAULT NULL,
  `MaKhoa` varchar(5) DEFAULT NULL,
  `MaTK` varchar(5) DEFAULT NULL,
  `GioiTinh` varchar(5) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Visible` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`MaGV`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `FK_GiangVien_Khoa` (`MaKhoa`),
  KEY `FK_GiangVien_TaiKhoan` (`MaTK`),
  CONSTRAINT `FK_GiangVien_Khoa` FOREIGN KEY (`MaKhoa`) REFERENCES `Khoa` (`MaKhoa`),
  CONSTRAINT `FK_GiangVien_TaiKhoan` FOREIGN KEY (`MaTK`) REFERENCES `TaiKhoan` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GiangVien`
--

LOCK TABLES `GiangVien` WRITE;
/*!40000 ALTER TABLE `GiangVien` DISABLE KEYS */;
INSERT INTO `GiangVien` VALUES ('GV001','Tấn Kiệt','tankiet281203@gmail.com','Tiến sĩ','K001','TK003','Nam','https://img1.kienthucvui.vn/uploads/2019/10/10/heo-con-de-thuong_111012347.jpg',1),('GV002','Thanh Bình','thanhbinhdang1411@gmail.com','Thạc sĩ','K001','TK004','Nam','https://img1.kienthucvui.vn/uploads/2019/10/10/heo-con-de-thuong_111012347.jpg',1),('GV003','dien','auroras.abc@gmail.com','Giáo Sư','K002','TK005','Nam','https://img1.kienthucvui.vn/uploads/2019/10/10/heo-con-de-thuong_111012347.jpg',1),('GV004','DucNhan','ducnhan279notionktkt279@gmail.com','Tiến Sĩ','K001','TK006','Nam','https://img1.kienthucvui.vn/uploads/2019/10/10/heo-con-de-thuong_111012347.jpg',1),('GV005','PhuongDung','DungHam@gv.com','Tiến Sĩ','K001','TK007','Nam','https://img1.kienthucvui.vn/uploads/2019/10/10/heo-con-de-thuong_111012347.jpg',1),('GV006','Linh','ThuyLinh@gmail.com','Thạc Sĩ','K002','TK13','Nam','https://img1.kienthucvui.vn/uploads/2019/10/10/heo-con-de-thuong_111012347.jpg',0),('GV008','Test','test@gmail.com','Tiến Sĩ','K003','TK024','Nam','https://img1.kienthucvui.vn/uploads/2019/10/10/heo-con-de-thuong_111012347.jpg',1),('GV009','Trần Đức Bo','bone@gmail.com','Thạc Sĩ','K002','MaTK','Nu','https://img1.kienthucvui.vn/uploads/2019/10/10/heo-con-de-thuong_111012347.jpg',1),('GV010','Minh Tâm','auroras1.abc@gmail.com','Thạc sĩ','K001','TK010','Nam','abchttps://img1.kienthucvui.vn/uploads/2019/10/10/heo-con-de-thuong_111012347.jpg',0);
/*!40000 ALTER TABLE `GiangVien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Khoa`
--

DROP TABLE IF EXISTS `Khoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Khoa` (
  `MaKhoa` varchar(5) NOT NULL,
  `TenKhoa` varchar(255) NOT NULL,
  PRIMARY KEY (`MaKhoa`),
  UNIQUE KEY `TenKhoa_UNIQUE` (`TenKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Khoa`
--

LOCK TABLES `Khoa` WRITE;
/*!40000 ALTER TABLE `Khoa` DISABLE KEYS */;
INSERT INTO `Khoa` VALUES ('K001','Khoa Công nghệ thông tin'),('K002','Khoa Kinh doanh'),('K003','Khoa Ngoại Ngữ');
/*!40000 ALTER TABLE `Khoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nganh`
--

DROP TABLE IF EXISTS `Nganh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nganh` (
  `MaNganh` varchar(5) NOT NULL,
  `TenNganh` varchar(255) NOT NULL,
  `MaKhoa` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`MaNganh`),
  KEY `FK_Nganh_Khoa` (`MaKhoa`),
  CONSTRAINT `FK_Nganh_Khoa` FOREIGN KEY (`MaKhoa`) REFERENCES `Khoa` (`MaKhoa`),
  CONSTRAINT `Nganh_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `Khoa` (`MaKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nganh`
--

LOCK TABLES `Nganh` WRITE;
/*!40000 ALTER TABLE `Nganh` DISABLE KEYS */;
INSERT INTO `Nganh` VALUES ('N001','Công nghệ thông tin','K001'),('N002','Quản trị kinh doanh','K002'),('N003','Ngôn ngữ Anh','K003'),('N004','Hệ thống thông tin','K001'),('N005','Kế toán','K002'),('N006','Ngôn ngữ Nhật','K003'),('N007','An toàn thông tin','K001'),('N008','Marketing','K002'),('N009','Ngôn ngữ Pháp','K003'),('N010','Quản lý dự án','K001');
/*!40000 ALTER TABLE `Nganh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nhom`
--

DROP TABLE IF EXISTS `Nhom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nhom` (
  `MaNhom` varchar(5) NOT NULL,
  `TenNhom` varchar(255) NOT NULL,
  `MaGV` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`MaNhom`),
  KEY `FK_Nhom_GiangVien` (`MaGV`),
  CONSTRAINT `FK_Nhom_GiangVien` FOREIGN KEY (`MaGV`) REFERENCES `GiangVien` (`MaGV`),
  CONSTRAINT `Nhom_ibfk_1` FOREIGN KEY (`MaGV`) REFERENCES `GiangVien` (`MaGV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nhom`
--

LOCK TABLES `Nhom` WRITE;
/*!40000 ALTER TABLE `Nhom` DISABLE KEYS */;
INSERT INTO `Nhom` VALUES ('NH001','Nhóm 1','GV001'),('NH002','Nhóm 2','GV002'),('NH003','Nhóm 3','GV003'),('NH004','Nhóm 4','GV004'),('NH005','Nhóm 5','GV005'),('NH006','Nhóm 6','GV001'),('NH007','Nhóm 7','GV002'),('NH008','Nhóm 8','GV003'),('NH009','Nhóm 9','GV004'),('NH010','Nhóm 10','GV005'),('NH011','Nhóm Kiệt','GV001'),('NH012','N11','GV002');
/*!40000 ALTER TABLE `Nhom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PhongQLKH`
--

DROP TABLE IF EXISTS `PhongQLKH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PhongQLKH` (
  `MaPhongQL` varchar(5) NOT NULL,
  `NguoiDaiDien` varchar(255) NOT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `MaTK` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`MaPhongQL`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `FK_PhongQLKH_TaiKhoan` (`MaTK`),
  CONSTRAINT `FK_PhongQLKH_TaiKhoan` FOREIGN KEY (`MaTK`) REFERENCES `TaiKhoan` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PhongQLKH`
--

LOCK TABLES `PhongQLKH` WRITE;
/*!40000 ALTER TABLE `PhongQLKH` DISABLE KEYS */;
INSERT INTO `PhongQLKH` VALUES ('QL001','Tran Van Anh Em Một Nhà','1234567890','anh@phong.com','123 ABC Street','TK001'),('QL002','Nguyen Thi Kiet','9876543210','bao@phong.com','456 XYZ Street','TK002'),('QL003','Le Van Cuong','2345678901','cuong@phong.com','789 ABC Street','TK003');
/*!40000 ALTER TABLE `PhongQLKH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SinhVien`
--

DROP TABLE IF EXISTS `SinhVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SinhVien` (
  `MaSV` varchar(5) NOT NULL,
  `MSSV` varchar(20) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `CCCD` varchar(20) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `Lop` varchar(20) DEFAULT NULL,
  `NienKhoa` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `MaNhom` varchar(5) DEFAULT NULL,
  `MaNganh` varchar(5) DEFAULT NULL,
  `Visible` int DEFAULT NULL,
  PRIMARY KEY (`MaSV`),
  KEY `FK_SinhVien_Nganh` (`MaNganh`),
  KEY `FK_SinhVien_Nhom` (`MaNhom`),
  CONSTRAINT `FK_SinhVien_Nganh` FOREIGN KEY (`MaNganh`) REFERENCES `Nganh` (`MaNganh`),
  CONSTRAINT `FK_SinhVien_Nhom` FOREIGN KEY (`MaNhom`) REFERENCES `Nhom` (`MaNhom`),
  CONSTRAINT `SinhVien_ibfk_1` FOREIGN KEY (`MaNhom`) REFERENCES `Nhom` (`MaNhom`),
  CONSTRAINT `SinhVien_ibfk_2` FOREIGN KEY (`MaNganh`) REFERENCES `Nganh` (`MaNganh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SinhVien`
--

LOCK TABLES `SinhVien` WRITE;
/*!40000 ALTER TABLE `SinhVien` DISABLE KEYS */;
INSERT INTO `SinhVien` VALUES ('SV001','2021001','Nguyen Van A','2000-01-01','a@example.com','123456789','1234567890','CNTT01','2021','123 ABC Street','NH001','N001',1),('SV002','2021002','Tran Thi B','2000-02-02','b@example.com','987654321','9876543210','CNTT02','2021','456 XYZ Street','NH002','N002',1),('SV003','2021003','Le Van C','2000-03-03','c@example.com','456789012','4567890123','CNTT03','2021','789 XYZ Street','NH003','N003',1),('SV004','2021004','Pham Thi D','2000-04-04','d@example.com','345678901','3456789012','KT01','2021','567 ABC Street','NH004','N004',1),('SV005','2021005','Ho Van E','2000-05-05','e@example.com','234567890','2345678901','KT02','2021','890 ABC Street','NH005','N005',1),('SV006','2021006','Tran Van F','2000-06-06','f@example.com','123456789','1234567890','KT03','2021','012 XYZ Street','NH006','N006',1),('SV007','2021007','Nguyen Thi G','2000-07-07','g@example.com','987654321','9876543210','NN01','2021','345 ABC Street','NH007','N007',1),('SV008','2021008','Le Van H','2000-08-08','h@example.com','456789012','4567890123','NN02','2021','678 XYZ Street','NH008','N008',1),('SV009','2021009','Pham Van I','2000-09-09','i@example.com','345678901','3456789012','NN03','2021','901 ABC Street','NH009','N009',1),('SV010','2021010','Ho Thi K','2000-10-10','k@example.com','234567890','2345678901','NN04','2021','234 XYZ Street','NH010','N010',1),('SV011','21110517','Đào Tấn Kiệt','2003-12-28','huynhthikieu01011980@gmail.com','051203005934','0926023955',NULL,'2021','Hai Bà Trưng Nè Coan','NH011','N001',1),('SV012','21110517','Đào Tấn Kiệt','2003-12-28','huynhthikieu01011980@gmail.com','051203005934','0926023955',NULL,'2021','Hai Bà Trưng','NH011','N001',0),('SV013','21110518','Đào Tấn K','2003-12-16','tankiet@gmail.com','123456789012','0926023955',NULL,'2019','Tô Vĩnh Diện','NH011','N007',0),('SV014','21110522','Đào Tấn Kiệt','2003-12-27','huynhthikieu01011980@gmail.com','051203005934','0926023955',NULL,'2021','Hai Bà Trưng','NH006','N001',0),('SV015','21110528','Đào Tấn Kiệt2','2003-12-15','tankiet@gmail.com','051203005934','0926023955',NULL,'2019','Lã Xuân Oai','NH006','N007',0),('SV016','21110528','Đào Tấn Kiệt2','2003-12-15','tankiet@gmail.com','051203005934','0926023955',NULL,'2019','Lã Xuân Oai','NH011','N007',0),('SV017','21110522','Đào Tấn Kiệt','2003-12-27','huynhthikieu01011980@gmail.com','051203005934','0926023955',NULL,'2021','Hai Bà Trưng','NH001','N001',1),('SV018','21110528','Đào Tấn Kiệt2','2003-12-15','tankiet@gmail.com','051203005934','0926023955',NULL,'2019','Lã Xuân Oai','NH001','N007',1),('SV019','21110533','Đào Tấn Kiệt','2003-12-27','huynhthikieu01011980@gmail.com','051203005934','0926023955',NULL,'2021','Hai Bà Trưng','NH010','N001',1),('SV020','21110512','Đào Tấn Kiệt2','2003-12-15','tankiet@gmail.com','051203005934','0926023955',NULL,'2019','Lã Xuân Oai','NH010','N007',1),('SV021','21110391','Đào Tấn Kiệt','2003-12-27','huynhthikieu01011980@gmail.com','051203005934','0926023955',NULL,'2021','Hai Bà Trưng','NH010','N001',1),('SV022','21110380','Đặng Thanh Bình','2003-12-15','tankiet@gmail.com','051203005934','0926023955',NULL,'2019','Lã Xuân Oai','NH010','N007',1),('SV023','21130391','Trịnh Thăng Bình','2003-12-27','huynhthikieu01011980@gmail.com','051203005934','0926023955',NULL,'2021','Hai Bà Trưng','NH012','N001',1),('SV024','21610380','Nguyễn Văn Bin','2003-12-15','tankiet@gmail.com','051203005934','0926023955',NULL,'2019','Lã Xuân Oai','NH012','N007',1),('SV025','21130381','Trịnh Thăng Bình','2003-12-27','huynhthikieu01011980@gmail.com','051203005934','0926023955',NULL,'2021','Hai Bà Trưng','NH012','N001',1),('SV026','21610382','Nguyễn Văn Bin','2003-12-15','tankiet@gmail.com','051203005934','0926023955',NULL,'2019','Lã Xuân Oai','NH012','N007',1);
/*!40000 ALTER TABLE `SinhVien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SinhVienTemp`
--

DROP TABLE IF EXISTS `SinhVienTemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SinhVienTemp` (
  `MSSV` varchar(20) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `CCCD` varchar(20) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `NienKhoa` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `MaNhom` varchar(5) DEFAULT NULL,
  `MaNganh` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`MSSV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SinhVienTemp`
--

LOCK TABLES `SinhVienTemp` WRITE;
/*!40000 ALTER TABLE `SinhVienTemp` DISABLE KEYS */;
INSERT INTO `SinhVienTemp` VALUES ('21130381','Trịnh Thăng Bình','2003-12-27','huynhthikieu01011980@gmail.com','051203005934','0926023955','2021','Hai Bà Trưng','NH012','N001'),('21610382','Nguyễn Văn Bin','2003-12-15','tankiet@gmail.com','051203005934','0926023955','2019','Lã Xuân Oai','NH012','N007');
/*!40000 ALTER TABLE `SinhVienTemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaiKhoan`
--

DROP TABLE IF EXISTS `TaiKhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TaiKhoan` (
  `MaTK` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `Status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`MaTK`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaiKhoan`
--

LOCK TABLES `TaiKhoan` WRITE;
/*!40000 ALTER TABLE `TaiKhoan` DISABLE KEYS */;
INSERT INTO `TaiKhoan` VALUES ('123','123','123','admin',0),('MaTK','user12','ps12','GV',1),('TK001','user1','123','QL',0),('TK002','user2','123','QL',1),('TK003','user3','Kiet@2002','GV',1),('TK004','user4','12','GV',1),('TK005','user5','pass5','GV',1),('TK006','user6','123','GV',1),('TK007','user7','Kiet@2002','GV',1),('TK008','user8','pass8','QL',1),('TK009','user9','123','Admin',1),('TK010','user10','pas10','GV',1),('TK011','binh','123','QL',1),('TK024','test','123','GV',1),('TK111','mrndn','123','Admin',0),('TK13','user13','ps13','GV',1),('TK193','dungne','123','Admin',0),('TK222','testnew','123','Admin',0),('TK333','new','123456','GV',1),('TK44','new4','123456','GV',0),('TK777','t77','123456','GV',0);
/*!40000 ALTER TABLE `TaiKhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ThoiGian`
--

DROP TABLE IF EXISTS `ThoiGian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ThoiGian` (
  `MaDot` varchar(5) NOT NULL,
  `TrangThai` varchar(50) NOT NULL,
  `NgayMoDangKy` date NOT NULL,
  `NgayDongDangKy` date NOT NULL,
  `NgayMoThucHien` date NOT NULL,
  `NgayDongThucHien` date NOT NULL,
  `NgayMoBaoCao` date NOT NULL,
  `NgayDongBaoCao` date NOT NULL,
  `NgayMoNghiemThu` date NOT NULL,
  `NgayDongNghiemThu` date NOT NULL,
  `NgayDongDot` date NOT NULL,
  PRIMARY KEY (`MaDot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ThoiGian`
--

LOCK TABLES `ThoiGian` WRITE;
/*!40000 ALTER TABLE `ThoiGian` DISABLE KEYS */;
INSERT INTO `ThoiGian` VALUES ('3','Đã đóng','2023-11-29','2023-12-14','2023-12-13','2023-12-15','2023-12-14','2023-12-24','2023-11-29','2023-11-29','2023-11-29'),('4','Đang mở','2023-12-05','2023-12-05','2023-12-22','2023-12-22','2024-03-04','2024-03-04','2024-04-18','2024-04-18','2024-05-04'),('5','Đã đóng','2023-11-23','2023-12-26','2023-12-26','2024-02-22','2024-02-22','2024-03-24','2024-03-24','2024-04-23','2024-04-23'),('TG001','Đã đóng','2023-12-12','2023-12-12','2023-01-15','2023-01-15','2023-06-01','2023-06-15','2023-01-15','2023-01-15','2023-01-15'),('TG002','Đã đóng','2023-03-31','2023-04-30','2023-04-30','2023-10-31','2023-10-31','2023-11-30','2023-11-30','2023-12-31','2024-01-14');
/*!40000 ALTER TABLE `ThoiGian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ThongBao`
--

DROP TABLE IF EXISTS `ThongBao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ThongBao` (
  `MaTB` varchar(5) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `NgayGui` date DEFAULT NULL,
  `NoiDung` text,
  `MaGv` varchar(5) DEFAULT NULL,
  `MaPhongQL` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`MaTB`),
  KEY `FK_ThongBao_GiangVien` (`MaGv`),
  KEY `FK_ThongBao_PhongQL` (`MaPhongQL`),
  CONSTRAINT `FK_ThongBao_GiangVien` FOREIGN KEY (`MaGv`) REFERENCES `GiangVien` (`MaGV`),
  CONSTRAINT `FK_ThongBao_PhongQL` FOREIGN KEY (`MaPhongQL`) REFERENCES `PhongQLKH` (`MaPhongQL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ThongBao`
--

LOCK TABLES `ThongBao` WRITE;
/*!40000 ALTER TABLE `ThongBao` DISABLE KEYS */;
INSERT INTO `ThongBao` VALUES ('1','hello','2023-12-13','123','GV002','QL002'),('10','test notiiiiiiii','2023-12-14','bạn có thong báo mới','GV001',NULL),('11','hello ','2023-12-14','ngày mới thật tuyệt nhấ','GV002','QL002'),('12','hello ','2023-12-14','ngày mới thật tuyệt nhấ','GV001','QL002'),('13','Xác Nhận Thông Tin','2023-12-14','Xác Nhận Thông Tin','GV004','QL002'),('14','Oke Duyệt','2023-12-14','Oke Duyệt','GV002','QL002'),('15','Oke Duyệt','2023-12-14','Oke Duyệt','GV002','QL002'),('16',' thông báo','2023-12-14','bạn có thông báo mới','GV002','QL002'),('17','thông báo 1','2023-12-14','bạn có thông báo mới','GV001','QL002'),('18','thông báo 1','2023-12-14','bạn có thông báo mới','GV002','QL002'),('19','thông báo 1','2023-12-14','bạn có thông báo mới','GV004','QL002'),('2','Hủy đơn xin gia hạn','2023-12-13','hủy hủy','GV001','QL002'),('20','thông báo 1','2023-12-14','bạn có thông báo mới','GV010','QL002'),('21','thông báo 1','2023-12-14','bạn có thông báo mới','GV003','QL002'),('22','thông báo 1','2023-12-14','bạn có thông báo mới','GV006','QL002'),('23','thông báo 1','2023-12-14','bạn có thông báo mới','GV009','QL002'),('24','thông báo 1','2023-12-14','bạn có thông báo mới','GV005','QL002'),('25','thông báo 1','2023-12-14','bạn có thông báo mới','GV008','QL002'),('26','Hello fen nhen','2023-12-14','Chào bạn, mình là  Thanh Bình','GV001','QL002'),('27','Hello fen nhen','2023-12-14','Hello các bạn','GV005',NULL),('28','Hello ','2023-12-14','Alooooooo','GV005',NULL),('29','Hello fen nhen','2023-12-14','1234566','GV005','QL002'),('3','bạn sắp hết dl ròi','2023-12-13','heheeee','GV001','QL002'),('30','hello arrt','2023-12-14','123','GV002','QL002'),('31','Hello fen 123','2023-12-14','Alo 123 456','GV005','QL002'),('32','Đăng ký đề tài thành công','2023-12-14','/linkminhchung','GV005','QL002'),('33','Hủy đơn xin gia hạn','2023-12-14','Bạn không được phép gia hạn','GV001','QL002'),('34','Duyệt đơn xin gia hạn','2023-12-14','Đơn xin gia hạn của bạn đã được duyệt,....','GV005','QL002'),('35','Hello bạn Phương Dung','2023-12-14','Thời gian đăng ký sáp hết','GV005','QL002'),('36','Đăng ký đề tài thành công','2023-12-14','/linkdetai','GV005','QL002'),('37','Duyệt đơn xin gia hạn','2023-12-14','Đơn xin gia hạn của bạn đã được duyệt,....','GV005','QL002'),('38','Thời gian nộp','2023-12-14','Thời gian nộp sắp hết','GV001','QL002'),('39','Thời gian nộp','2023-12-14','Thời gian nộp sắp hết','GV002','QL002'),('4','Duyệt đề tài ','2023-12-14','link đính kèm......','GV002','QL002'),('40','Thời gian nộp','2023-12-14','Thời gian nộp sắp hết','GV004','QL002'),('41','Thời gian nộp','2023-12-14','Thời gian nộp sắp hết','GV005','QL002'),('42','Thời gian nộp','2023-12-14','Thời gian nộp sắp hết','GV010','QL002'),('43','Thời gian nộp','2023-12-14','Thời gian nộp sắp hết','GV003','QL002'),('44','Thời gian nộp','2023-12-14','Thời gian nộp sắp hết','GV006','QL002'),('45','Thời gian nộp','2023-12-14','Thời gian nộp sắp hết','GV009','QL002'),('46','Thời gian nộp','2023-12-14','Thời gian nộp sắp hết','GV008','QL002'),('47','Duyệt đề tài ','2023-12-15','Đề tài của bạn đã được duyệt','GV004','QL002'),('48','Duyệt đơn xin gia hạn','2023-12-15','Đơn xin gia hạn của bạn đã được duyệt,....','GV004','QL002'),('49','Duyệt đề tài ','2023-12-15','duyệt','GV002','QL002'),('5','chuẩn bị báo cáo','2023-12-14','sắp đến thời gian nộp bài báo cáo','GV002','QL002'),('50','Duyệt đơn xin gia hạn','2023-12-15','Đơn xin gia hạn của bạn đã được duyệt,....','GV002','QL002'),('51','Duyệt đơn xin gia hạn','2023-12-15','Đơn xin gia hạn của bạn đã được duyệt,....','GV002','QL002'),('6','chuẩn bị báo cáo','2023-12-14','sắp đến thời gian nộp bài báo cáo','GV001','QL002'),('7','test noti','2023-12-14','bạn có thông báo mới','GV002','QL002'),('8','test noti','2023-12-14','bạn có thông báo mới','GV001','QL002'),('9','test notiiiiiiii','2023-12-14','bạn có thong báo mới','GV002',NULL);
/*!40000 ALTER TABLE `ThongBao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `VisibleGiangVien`
--

DROP TABLE IF EXISTS `VisibleGiangVien`;
/*!50001 DROP VIEW IF EXISTS `VisibleGiangVien`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VisibleGiangVien` AS SELECT 
 1 AS `MaGV`,
 1 AS `HoTen`,
 1 AS `Email`,
 1 AS `TrinhDo`,
 1 AS `MaKhoa`,
 1 AS `MaTK`,
 1 AS `GioiTinh`,
 1 AS `Image`,
 1 AS `Visible`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `VisibleTaiKhoan`
--

DROP TABLE IF EXISTS `VisibleTaiKhoan`;
/*!50001 DROP VIEW IF EXISTS `VisibleTaiKhoan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `VisibleTaiKhoan` AS SELECT 
 1 AS `MaTK`,
 1 AS `username`,
 1 AS `password`,
 1 AS `role`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'QLKH'
--
/*!50003 DROP PROCEDURE IF EXISTS `admintaikhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `admintaikhoan`(IN ad_user VARCHAR(255))
BEGIN
    SELECT * FROM Admin
    WHERE MaTK IN (
        SELECT MaTK FROM TaiKhoan WHERE username = ad_user
    ) AND MaTK IS NOT NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangeInfoGV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `ChangeInfoGV`(IN usern VARCHAR(50), IN Hoten VARCHAR(50), IN GTinh VARCHAR(5), IN email NVARCHAR(50), IN trinhDo NVarchar(50), IN MaKH nVarchar(50))
BEGIN
    UPDATE GiangVien GV Set GV.HoTen = Hoten, GV.GioiTinh = GTinh, GV.Email = email, GV.TrinhDo = trinhDo, GV.MaKhoa = MaKH
    WHERE MaTK = (SELECT MaTK from TaiKhoan where username = usern);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ChangePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `ChangePassword`(IN pass VARCHAR(50), IN Npass VARCHAR(50), IN Cpass VARCHAR(50), IN user NVARCHAR(10))
BEGIN
    DECLARE existingPass VARCHAR(50);

    -- Lấy mật khẩu hiện tại từ bảng TaiKhoan dựa trên username
    SELECT password INTO existingPass FROM TaiKhoan TK
    WHERE TK.username = user;

    -- Kiểm tra mật khẩu hiện tại có trùng khớp hay không
    IF existingPass IS NOT NULL AND existingPass = pass THEN
        -- Kiểm tra xác nhận mật khẩu
        IF Npass = Cpass THEN
            -- Cập nhật mật khẩu mới vào bảng TaiKhoan
            UPDATE TaiKhoan TK SET password = Npass 
            WHERE username = user;

            SIGNAL SQLSTATE '45001'
            SET MESSAGE_TEXT = 'Đổi mật khẩu thành công.';
        ELSE
            SIGNAL SQLSTATE '45002'
            SET MESSAGE_TEXT = 'Xác nhận mật khẩu không khớp.';
        END IF;
    ELSE
        SIGNAL SQLSTATE '45003'
            SET MESSAGE_TEXT = 'Mật khẩu hiện tại không đúng.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeTaiDaHoanThanh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `DeTaiDaHoanThanh`()
BEGIN
  
select MaDeTai From DeTai where TrangThai ="Hoàn thành";

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dkdt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `dkdt`(IN p_MaGV NVARCHAR(10), IN p_MaDeTai VARCHAR(10), IN p_MaNhom NVARCHAR(10))
BEGIN
    DECLARE currentDateTime DATETIME;
    
    -- Lấy ngày giờ hiện tại
    SET currentDateTime = NOW();
    
    IF EXISTS (
        select DK.MaGV, nh.MaNhom,  DT.TrangThai from DangKyDeTai DK Join DeTai DT ON DK.MaDeTai = DT.MaDeTai Join Nhom nh ON DK.MaNhom = nh.MaNhom where DK.MaGV = p_MaGV AND DT.TrangThai <> 'Hoàn Thành' AND nh.MaNhom = p_MaNhom
    )
    THEN
        SIGNAL SQLSTATE '45011'
        SET MESSAGE_TEXT = 'Nhóm có đề tài đang thực hiện';
    ELSE
        -- Thêm bản ghi mới vào bảng DangKyDeTai
        INSERT INTO DangKyDeTai(MaGV, MaDeTai, NgayDangKy, TrangThai, MaNhom)
        VALUES (p_MaGV, p_MaDeTai, currentDateTime, 'Đang Chờ Duyệt', p_MaNhom);
        
        UPDATE DeTai SET TrangThai = 'Đang Chờ Duyệt' WHERE MaDeTai = p_MaDeTai;
        
        SIGNAL SQLSTATE '45011'
        SET MESSAGE_TEXT = 'Đăng ký thành công';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DSDeTaiCanNghiemThu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `DSDeTaiCanNghiemThu`()
BEGIN
    SELECT MaDeTai
    FROM DeTai
    WHERE TrangThai = 'Hoàn thành'
    AND NOT EXISTS (
        SELECT 1
        FROM BienBanNghiemThu
        WHERE DeTai.MaDeTai = BienBanNghiemThu.MaDeTai
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dsdetaithongke` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `dsdetaithongke`(
    IN fromDate DATE,
    IN toDate DATE
)
BEGIN
    SELECT 
        MaDetai, 
        TenDeTai, 
        GhiChu, 
        NgayThucHien, 
        NgayKetThuc, 
        KinhPhiDuKien, 
        KetQua, 
        TrangThai, 
        LinkNopBai, 
        NgayNop
    FROM 
        DeTai
    WHERE 
        visible = 1 
        AND NgayThucHien BETWEEN fromDate AND toDate
    ORDER BY 
        TrangThai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DuyetDeTaiDK` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `DuyetDeTaiDK`(
    IN p_MaGV VARCHAR(255),
    IN p_MaDeTai VARCHAR(255),
    IN p_NgayThucHien DATE,
    IN p_NgayKetThuc DATE,
    IN p_GhiChu TEXT
)
BEGIN
    -- Cập nhật bảng DangKyDeTai
    UPDATE QLKH.DangKyDeTai
    SET TrangThai = 'Đã duyệt', GhiChu =p_GhiChu
    WHERE MaGV = p_MaGV AND MaDeTai = p_MaDeTai;

    -- Cập nhật bảng DeTai
    UPDATE QLKH.DeTai
    SET TrangThai = 'Đang thực hiện', NgayThucHien = p_NgayThucHien, NgayKetThuc = p_NgayKetThuc
    WHERE MaDeTai = p_MaDeTai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `duyetDonXinGiaHan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `duyetDonXinGiaHan`(
    IN p_MaPQL VARCHAR(255),
    IN p_MaDon VARCHAR(255),
    IN p_NgayKetThuc DATE,
    IN p_MaDeTai VARCHAR(255)
)
BEGIN
    -- Cập nhật bảng DonXinGiaHan
    UPDATE QLKH.DonXinGiaHan
    SET TrangThai = 'Đã duyệt', MaPQL = p_MaPQL
    WHERE MaDon = p_MaDon;

    -- Cập nhật bảng DeTai
    UPDATE QLKH.DeTai
    SET NgayKetThuc = p_NgayKetThuc
    WHERE MaDeTai = p_MaDeTai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dxdt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `dxdt`(IN p_MaGV NVARCHAR(10), IN p_TenDeTai VARCHAR(255), IN p_MoTa NVARCHAR(255), IN p_KinhPhiDuKien NVARCHAR(255), IN p_Link NVARCHAR(255))
BEGIN
    DECLARE currentDateTime DATETIME;
	DECLARE converted_value DECIMAL(18,0);
    -- Lấy ngày giờ hiện tại
    SET currentDateTime = NOW();
	SELECT CAST(REPLACE(p_KinhPhiDuKien, '.', '') AS DECIMAL(18,0)) INTO converted_value;
    -- Thêm bản ghi mới vào bảng DangKyDeTai
    INSERT INTO DeXuatDetai(MaGV,MaPhongQL, TenDeTai, MoTa, KinhPhiDuKien, TrangThai, NgayDeXuat, LinkDX,Visible)
    VALUES (p_MaGV, 'QL001', p_TenDeTai, p_MoTa, converted_value , 'Đang Chờ Duyệt', currentDateTime, p_Link, 1);
    SIGNAL SQLSTATE '45011'
        SET MESSAGE_TEXT = 'Đề xuất thành công';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EditSinhVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `EditSinhVien`(
	IN p_MSSV NVARCHAR(255),
    IN p_HoTen NVARCHAR(255),
    IN p_NgaySinh DATE,
    IN p_Email NVARCHAR(255),
    IN p_CCCD NVARCHAR(255),
    IN p_SDT NVARCHAR(255),
    IN p_NienKhoa NVARCHAR(255),
    IN p_DiaChi NVARCHAR(255),
    IN p_MaNhom NVARCHAR(255),
    IN p_MaNganh NVARCHAR(255)
)
BEGIN
	
	
    
    
    -- Nếu sinh viên chưa có trong nhóm, thêm vào
    
		
			
			UPDATE SinhVien
			SET
				
				HoTen = p_HoTen,
				NgaySinh = p_NgaySinh,
				Email = p_Email,
				CCCD = p_CCCD,
				SDT = p_SDT,
				NienKhoa = p_NienKhoa,
				DiaChi = p_DiaChi,
				MaNhom = p_MaNhom,
				MaNganh = p_MaNganh
				
			WHERE
				MSSV = p_MSSV AND Visible = 1;

			SIGNAL SQLSTATE '45012'
			SET MESSAGE_TEXT = 'Sửa Thành Công';
       
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `emailGVDangThucHien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `emailGVDangThucHien`()
BEGIN
    select Email from GiangVien;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gethoten` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `gethoten`(IN ad_user VARCHAR(10))
BEGIN
   SELECT HoTen FROM Admin
   WHERE MaTK IN (
        SELECT MaTK FROM TaiKhoan WHERE username = ad_user
    ) AND MaTK IS NOT NULL

   UNION

   SELECT HoTen FROM GiangVien
   WHERE MaTK IN (
        SELECT MaTK FROM TaiKhoan WHERE username = ad_user
    ) AND MaTK IS NOT NULL

   UNION

   SELECT NguoiDaiDien AS HoTen
   FROM PhongQLKH
   WHERE MaTK IN (
        SELECT MaTK FROM TaiKhoan WHERE username = ad_user
    ) AND MaTK IS NOT NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertBienBanNghiemThu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `InsertBienBanNghiemThu`(
    IN p_MaBienBan varchar(10),
    IN p_Diem float,
    IN p_DanhGia text,
    IN p_MinhChung text,
    IN p_NgayNghiemThu date,
    IN p_MaDeTai varchar(5),
    IN p_MaPQL varchar(5)
)
BEGIN
    INSERT INTO BienBanNghiemThu(MaBienBan, Diem, DanhGia, MinhChung, NgayNghiemThu, MaDeTai, MaPQL)
    VALUES (p_MaBienBan, p_Diem, p_DanhGia, p_MinhChung, p_NgayNghiemThu, p_MaDeTai, p_MaPQL);
    
    update DeTai set KetQua = p_Diem where MaDeTai = p_MaDeTai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNhom` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `InsertNhom`(IN p_TenNhom NVARCHAR(255), IN p_MaGV NVARCHAR(255))
BEGIN
    DECLARE existingCount INT;
	DECLARE newMaNhom NVARCHAR(255);

    -- Kiểm tra xem Tên Nhóm đã tồn tại hay chưa
    SELECT COUNT(*) INTO existingCount FROM Nhom WHERE TenNhom = p_TenNhom AND MaGV = p_MaGV;

    -- Nếu Tên Nhóm đã tồn tại, tạo message báo lỗi
    IF existingCount > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Tên Nhóm đã tồn tại';
    ELSE
        
        -- Nếu không, tự động tăng MaNhom
        SELECT CONCAT('NH', LPAD(IFNULL(CAST(CAST(SUBSTRING(MAX(MaNhom), 3) AS SIGNED) + 1 AS CHAR), 1), 3, '0'))
        INTO newMaNhom
        FROM Nhom;

        -- Thực hiện insert hoặc update
        INSERT INTO Nhom (MaNhom, TenNhom, MaGV) VALUES (newMaNhom, p_TenNhom, p_MaGV);
        SIGNAL SQLSTATE '45005'
        SET MESSAGE_TEXT = 'Thêm Nhóm Thành Công';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSinhVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `InsertSinhVien`(
    
    IN p_MSSV NVARCHAR(255),
    IN p_HoTen NVARCHAR(255),
    IN p_NgaySinh DATE,
    IN p_Email NVARCHAR(255),
    IN p_CCCD NVARCHAR(255),
    IN p_SDT NVARCHAR(255),
    IN p_NienKhoa NVARCHAR(255),
    IN p_DiaChi NVARCHAR(255),
    IN p_MaNhom NVARCHAR(255),
    IN p_MaNganh NVARCHAR(255)
)
BEGIN
    DECLARE memberCount INT;
	DECLARE newMaSV NVARCHAR(255);
    DECLARE mssvCount INT;
    -- Kiểm tra xem sinh viên đã có trong nhóm chưa
    SELECT COUNT(*) INTO memberCount
    FROM SinhVien
    WHERE MSSV = p_MSSV AND MaNhom = p_MaNhom AND Visible = 1;
	
    SELECT COUNT(*) INTO mssvCount
    FROM SinhVien
    WHERE MSSV = p_MSSV AND Visible = 1;
    
    -- Nếu sinh viên chưa có trong nhóm, thêm vào
    IF memberCount = 0 THEN
		IF mssvCount = 0 THEN
			SELECT CONCAT('SV', LPAD(IFNULL(CAST(CAST(SUBSTRING(MAX(MaSV), 3) AS SIGNED) + 1 AS CHAR), 1), 3, '0'))
			INTO newMaSV 
			FROM SinhVien;
			INSERT INTO SinhVien(MaSV, MSSV, HoTen, NgaySinh, Email, CCCD, SDT, NienKhoa, DiaChi, MaNhom, MaNganh, Visible)
			VALUES (newMaSV, p_MSSV, p_HoTen, p_NgaySinh, p_Email, p_CCCD, p_SDT, p_NienKhoa, p_DiaChi, p_MaNhom, p_MaNganh, 1);
			SIGNAL SQLSTATE '45012'
			SET MESSAGE_TEXT = 'Thêm Thành Công';
        ELSE
            SIGNAL SQLSTATE '45012'
			SET MESSAGE_TEXT = 'Mã số sinh viên đã tốn tại';
        END IF;
    ELSE
        SIGNAL SQLSTATE '45013'
        SET MESSAGE_TEXT = 'Sinh viên đã có trong nhóm';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSinhVienTemp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `InsertSinhVienTemp`(
    IN p_MSSV NVARCHAR(255),
    IN p_HoTen NVARCHAR(255),
    IN p_NgaySinh DATE,
    IN p_Email NVARCHAR(255),
    IN p_CCCD NVARCHAR(255),
    IN p_SDT NVARCHAR(255),
    IN p_NienKhoa NVARCHAR(255),
    IN p_DiaChi NVARCHAR(255),
    IN p_MaNhom NVARCHAR(255),
    IN p_MaNganh NVARCHAR(255)
)
BEGIN
   INSERT INTO SinhVienTemp( MSSV, HoTen, NgaySinh, Email, CCCD, SDT, NienKhoa, DiaChi, MaNhom, MaNganh)
    VALUES ( p_MSSV, p_HoTen, p_NgaySinh, p_Email, p_CCCD, p_SDT, p_NienKhoa, p_DiaChi, p_MaNhom, p_MaNganh);

    

   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertThoiGian` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `InsertThoiGian`(
    IN p_MaDot VARCHAR(5),
    IN p_TrangThai VARCHAR(50),
    IN p_NgayMoDangKy DATE,
    
    IN p_NgayMoThucHien DATE,
    
    IN p_NgayMoBaoCao DATE,
    
    IN p_NgayMoNghiemThu DATE,
    
    IN p_NgayDongDot DATE
)
BEGIN
    INSERT INTO ThoiGian (
        MaDot,
        TrangThai,
        NgayMoDangKy,
        NgayDongDangKy,
        NgayMoThucHien,
        NgayDongThucHien,
        NgayMoBaoCao,
        NgayDongBaoCao,
        NgayMoNghiemThu,
        NgayDongNghiemThu,
        NgayDongDot
    ) VALUES (
        p_MaDot,
        p_TrangThai,
        p_NgayMoDangKy,
       p_NgayMoThucHien,
        p_NgayMoThucHien,
        p_NgayMoBaoCao,
        p_NgayMoBaoCao,
         p_NgayMoNghiemThu,
        p_NgayMoNghiemThu,
        p_NgayDongDot,
        p_NgayDongDot
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `maGVDangThucHien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `maGVDangThucHien`()
BEGIN
select MaGV from GiangVien;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Newpass` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Newpass`(IN p_Pass VARCHAR(10), IN p_Email VARCHAR(255))
BEGIN
    UPDATE TaiKhoan
    SET password = p_Pass
    WHERE MaTK IN (
        SELECT MaTK FROM Admin WHERE Email = p_Email
        UNION
        SELECT MaTK FROM GiangVien WHERE Email = p_Email
        UNION
        SELECT MaTK FROM PhongQLKH WHERE Email = p_Email
    ) AND MaTK IS NOT NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Nop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `Nop`(IN p_MaDT NVARCHAR(10), IN p_Link VARCHAR(255))
BEGIN
    UPDATE DeTai set LinkNopBai = p_Link, TrangThai = 'Hoàn Thành' , NgayNop = CURDATE()
    where MaDeTai = p_MaDT;
    SIGNAL SQLSTATE '45011'
        SET MESSAGE_TEXT = 'Nộp thành công';
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaDeTai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SuaDeTai`(
    IN p_MaDeTai VARCHAR(5),
    IN p_TenDeTai VARCHAR(255),
    IN p_GhiChu TEXT,
    IN p_NgayThucHien DATE,
    IN p_NgayKetThuc DATE,
    IN p_KinhPhiDuKien DECIMAL(18,2),
    IN p_KetQua TEXT,
    IN p_TrangThai VARCHAR(50),
    IN p_LinkNopBai TEXT
)
BEGIN
    UPDATE DeTai
    SET 
        TenDeTai = p_TenDeTai,
        GhiChu = p_GhiChu,
        NgayThucHien = p_NgayThucHien,
        NgayKetThuc = p_NgayKetThuc,
        KinhPhiDuKien = p_KinhPhiDuKien,
        KetQua = p_KetQua,
        TrangThai = p_TrangThai,
        LinkNopBai = p_LinkNopBai
    WHERE MaDeTai = p_MaDeTai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaTDeTai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SuaTDeTai`(
    IN p_MaDeTai VARCHAR(5),
    IN p_TenDeTai VARCHAR(255),
    IN p_GhiChu TEXT,
    IN p_NgayThucHien DATE,
    IN p_NgayKetThuc DATE,
    IN p_KinhPhiDuKien DECIMAL(18,2),
    IN p_KetQua TEXT,
    IN p_TrangThai VARCHAR(50),
    IN p_LinkNopBai TEXT
)
BEGIN
    UPDATE DeTai
    SET 
        TenDeTai = p_TenDeTai,
        GhiChu = p_GhiChu,
        NgayThucHien = p_NgayThucHien,
        NgayKetThuc = p_NgayKetThuc,
        KinhPhiDuKien = p_KinhPhiDuKien,
        KetQua = p_KetQua,
        TrangThai = p_TrangThai,
        LinkNopBai = p_LinkNopBai
    WHERE MaDeTai = p_MaDeTai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaThongTinDeTai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `SuaThongTinDeTai`(
    IN p_MaDeTai VARCHAR(5),
    IN p_TenDeTai VARCHAR(255),
    IN p_GhiChu TEXT,
    IN p_NgayThucHien DATE,
    IN p_NgayKetThuc DATE,
    IN p_KinhPhiDuKien DECIMAL(18, 2),
    IN p_KetQua TEXT,
    IN p_TrangThai VARCHAR(50),
    IN p_LinkNopBai TEXT
)
BEGIN
    -- Bắt đầu kiểm tra và cập nhật các trường
    UPDATE DeTai
SET 
    TenDeTai = IF(p_TenDeTai IS NOT NULL, p_TenDeTai, TenDeTai),
    GhiChu = IF(p_GhiChu IS NOT NULL, p_GhiChu, GhiChu),
    NgayThucHien = IF(p_NgayThucHien IS NOT NULL, p_NgayThucHien, NgayThucHien),
    NgayKetThuc = IF(p_NgayKetThuc IS NOT NULL, p_NgayKetThuc, NgayKetThuc),
    KinhPhiDuKien = IF(p_KinhPhiDuKien IS NOT NULL, p_KinhPhiDuKien, KinhPhiDuKien),
    KetQua = IF(p_KetQua IS NOT NULL, p_KetQua, KetQua),
    TrangThai = IF(p_TrangThai IS NOT NULL, p_TrangThai, TrangThai),
    LinkNopBai = IF(p_LinkNopBai IS NOT NULL, p_LinkNopBai, LinkNopBai)
WHERE MaDeTai = p_MaDeTai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemDeTai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `ThemDeTai`(
    IN p_MaDeTai VARCHAR(255),
    IN p_TenDeTai VARCHAR(255),
    IN p_GhiChu TEXT,
    IN p_KinhPhiDuKien DECIMAL(10, 2)
   
)
BEGIN
    INSERT INTO DeTai (MaDeTai, TenDeTai, GhiChu, KinhPhiDuKien, TrangThai, visible)
    VALUES (p_MaDeTai, p_TenDeTai, p_GhiChu, p_KinhPhiDuKien, "Chưa Đăng Ký", 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemDeXuatDeTai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `ThemDeXuatDeTai`(
    IN p_MaDeTai VARCHAR(255),
    IN p_TenDeTai VARCHAR(255),
    IN p_GhiChu TEXT,
    IN p_KinhPhiDuKien DECIMAL(10, 2)
   
)
BEGIN
    INSERT INTO DeTai (MaDeTai, TenDeTai, GhiChu, KinhPhiDuKien, TrangThai, visible)
    VALUES (p_MaDeTai, p_TenDeTai, p_GhiChu, p_KinhPhiDuKien, "Chưa Đăng Ký", 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThongKeDeTai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `ThongKeDeTai`(
    IN p_NgayBatDau DATE,
    IN p_NgayKetThuc DATE
)
BEGIN
  CREATE TEMPORARY TABLE IF NOT EXISTS TempThongKeDeTai AS
    SELECT * FROM DeTai WHERE NgayThucHien > p_NgayBatDau AND NgayKetThuc < p_NgayKetThuc;

    -- Thực hiện các truy vấn sử dụng bảng tạm
    SELECT TrangThai, COUNT(*) AS SoLuong FROM TempThongKeDeTai GROUP BY TrangThai;

    SELECT KetQua, COUNT(*) AS SoLuong FROM TempThongKeDeTai GROUP BY KetQua;

    SELECT COUNT(*) AS SoLuongXoaDi FROM TempThongKeDeTai WHERE visible = 0;

    -- Xóa bảng tạm khi không cần thiết
    DROP TEMPORARY TABLE IF EXISTS TempThongKeDeTai;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `thongtintaikhoan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `thongtintaikhoan`(IN p_MaPQL VARCHAR(5))
BEGIN
    SELECT 
        TK.MaTK,
        TK.username,
        TK.password,
        TK.role,
        TK.Status,
        PQL.MaPhongQL,
        PQL.NguoiDaiDien,
        PQL.SDT,
        PQL.Email,
        PQL.DiaChi
    FROM 
        TaiKhoan TK
    JOIN 
        PhongQLKH PQL ON TK.MaTK = PQL.MaTK
    WHERE 
        PQL.MaPhongQL = p_MaPQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateThoiGian` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `UpdateThoiGian`(
    IN p_MaDot VARCHAR(5),
    IN p_TrangThai VARCHAR(50),
    IN p_NgayMoDangKy DATE,
    IN p_NgayDongDangKy DATE,
    IN p_NgayMoThucHien DATE,
    IN p_NgayDongThucHien DATE,
    IN p_NgayMoBaoCao DATE,
    IN p_NgayDongBaoCao DATE,
    IN p_NgayMoNghiemThu DATE,
    IN p_NgayDongNghiemThu DATE,
    IN p_NgayDongDot DATE
)
BEGIN
    IF p_TrangThai = 'Đang mở' THEN
        -- Kiểm tra xem có trạng thái nào đang mở không
        IF EXISTS (SELECT 1 FROM ThoiGian WHERE TrangThai = 'Đang mở' AND MaDot <> p_MaDot) THEN
            -- Có trạng thái đang mở, không thực hiện INSERT
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Không thể cập nhật trạng thái Đang mở vì đã có trạng thái khác đang mở.';
        ELSE
            -- Không có trạng thái đang mở, thực hiện UPDATE
            UPDATE ThoiGian
            SET
                TrangThai = p_TrangThai,
                NgayMoDangKy = p_NgayMoDangKy,
                NgayDongDangKy = p_NgayDongDangKy,
                NgayMoThucHien = p_NgayMoThucHien,
                NgayDongThucHien = p_NgayDongThucHien,
                NgayMoBaoCao = p_NgayMoBaoCao,
                NgayDongBaoCao = p_NgayDongBaoCao,
                NgayMoNghiemThu = p_NgayMoNghiemThu,
                NgayDongNghiemThu = p_NgayDongNghiemThu,
                NgayDongDot = p_NgayDongDot
            WHERE MaDot = p_MaDot;
        END IF;
    ELSE
        -- Trạng thái không phải là 'Đang mở', thực hiện UPDATE bình thường
        UPDATE ThoiGian
        SET
            TrangThai = p_TrangThai,
            NgayMoDangKy = p_NgayMoDangKy,
            NgayDongDangKy = p_NgayDongDangKy,
            NgayMoThucHien = p_NgayMoThucHien,
            NgayDongThucHien = p_NgayDongThucHien,
            NgayMoBaoCao = p_NgayMoBaoCao,
            NgayDongBaoCao = p_NgayDongBaoCao,
            NgayMoNghiemThu = p_NgayMoNghiemThu,
            NgayDongNghiemThu = p_NgayDongNghiemThu,
            NgayDongDot = p_NgayDongDot
        WHERE MaDot = p_MaDot;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTTTKPQL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `updateTTTKPQL`(
    IN p_MaTK VARCHAR(5),
    IN p_MaPhongQL VARCHAR(5),
    IN p_NguoiDaiDien VARCHAR(255),
    IN p_SDT VARCHAR(15),
    IN p_Email VARCHAR(255),
    IN p_DiaChi VARCHAR(255),   
    IN p_Password VARCHAR(50)
    
)
BEGIN
    START TRANSACTION;

    UPDATE PhongQLKH
    SET NguoiDaiDien = p_NguoiDaiDien,
        SDT = p_SDT,
        Email = p_Email,
        DiaChi = p_DiaChi
    WHERE MaPhongQL = p_MaPhongQL;

    UPDATE TaiKhoan
    SET  password = p_Password       
    WHERE MaTK = p_MaTK;

    
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xemDeXuatDeTai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `xemDeXuatDeTai`()
BEGIN
    SELECT MaGV, MaPhongQL, TenDeTai, MoTa, KinhPhiDuKien, LyDo, TrangThai, NgayDeXuat, LinkDX FROM QLKH.DeXuatDetai ORDER BY TrangThai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XemThongBao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `XemThongBao`()
BEGIN
  
SELECT ThongBao.TieuDe, ThongBao.NoiDung, GiangVien.HoTen as NguoiGui, ThongBao.NgayGui
FROM ThongBao
JOIN GiangVien ON ThongBao.MaGv = GiangVien.MaGV
ORDER BY ThongBao.NgayGui DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XinGiaHan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `XinGiaHan`(
    IN p_NgayGiaHan date,
    IN p_NgayHoanThanh date,
    IN p_LinkDonXin NVARCHAR(255),
    IN p_LyDoXin LONGTEXT,
    IN p_MaDT NVARCHAR(255)
    
)
BEGIN
    DECLARE dtCount INT;
	declare p_MaGV nvarchar(10);
    select MaGV into p_MaGV
    From DangKyDeTai
    where MaDeTai = p_MaDT;
    
    SELECT COUNT(*) INTO dtCount
    FROM DonXinGiaHan
    WHERE MaDeTai = p_MaDT;
	
   
    
    -- Nếu sinh viên chưa có trong nhóm, thêm vào
    IF dtCount = 0 THEN
		
			
			INSERT INTO DonXinGiaHan(NgayGiaHan, NgayHoanThanh, LinkDonXin, LyDoXin, TrangThai, MaDeTai, MaGV)
			VALUES (p_NgayGiaHan, p_NgayHoanThanh, p_LinkDonXin, p_LyDoXin, 'Đang Chờ Duyệt', p_MaDT, p_MaGV);
            
			SIGNAL SQLSTATE '45012'
			SET MESSAGE_TEXT = 'Đã gửi gia hạn, chờ duyệt!!!!!!';
        ELSE
            SIGNAL SQLSTATE '45012'
			SET MESSAGE_TEXT = 'Đề tài đã gia hạn trước đó, không được phép gia hạn tiếp';
        END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `VisibleGiangVien`
--

/*!50001 DROP VIEW IF EXISTS `VisibleGiangVien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `VisibleGiangVien` AS select `GiangVien`.`MaGV` AS `MaGV`,`GiangVien`.`HoTen` AS `HoTen`,`GiangVien`.`Email` AS `Email`,`GiangVien`.`TrinhDo` AS `TrinhDo`,`GiangVien`.`MaKhoa` AS `MaKhoa`,`GiangVien`.`MaTK` AS `MaTK`,`GiangVien`.`GioiTinh` AS `GioiTinh`,`GiangVien`.`Image` AS `Image`,`GiangVien`.`Visible` AS `Visible` from `GiangVien` where (`GiangVien`.`Visible` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VisibleTaiKhoan`
--

/*!50001 DROP VIEW IF EXISTS `VisibleTaiKhoan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013  SQL SECURITY DEFINER */
/*!50001 VIEW `VisibleTaiKhoan` AS select `TaiKhoan`.`MaTK` AS `MaTK`,`TaiKhoan`.`username` AS `username`,`TaiKhoan`.`password` AS `password`,`TaiKhoan`.`role` AS `role`,`TaiKhoan`.`Status` AS `Status` from `TaiKhoan` where (`TaiKhoan`.`Status` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 19:37:59
