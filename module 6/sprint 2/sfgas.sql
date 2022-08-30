-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: c1221g1_pharmacy
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,_binary '','2022-07-08','KH-00001','C1221G1');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cart_detail`
--

LOCK TABLES `cart_detail` WRITE;
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
INSERT INTO `cart_detail` VALUES (1,3,1,'T-00014'),(2,1,1,'T-00013');
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('KH-00001','Đà Nẵng','1994-02-15',0,'Khách lẻ','','09031231231',_binary '',1,NULL),('KH-00002','Đà Nẵng','1994-02-15',0,'Nguyễn Quang Hữu','N/A','0905123456',_binary '',2,NULL),('KH-00003','Quảng Nam','1997-01-18',1,'Nguyễn Nghĩa','','0905386737',_binary '',2,NULL),('KH-00004','Huế','1996-01-18',1,'Phạm Anh Tuấn','','0905386738',_binary '',1,NULL),('KH-00005','Đà Nẵng','1992-01-18',1,'Nguyễn Trình','','0905386739',_binary '',2,NULL),('KH-00006','Quảng Nam','1999-02-22',1,'Trần Giảng','','0905386747',_binary '',1,NULL),('KH-00007','Hà Tĩnh','1999-01-25',1,'Bùi Tín','','0905386757',_binary '\0',2,NULL),('KH-00008','Huế','1993-01-18',1,'Châu Mỹ','','0905386767',_binary '',1,NULL),('KH-00009','Quảng Ngãi','2000-02-18',1,'Hồ Xuân Hồng','','0905386777',_binary '',1,NULL),('KH-00010','Quảng Bình','1993-03-12',1,'Hoàng Định','','0905386787',_binary '',2,NULL),('KH-00011','Quảng Nam','2002-03-12',1,'Trần Trung','','0905386797',_binary '',1,NULL),('KH-00012','Quảng Bình','1999-04-12',1,'Lê Anh Đà','','0905386177',_binary '',2,NULL),('KH-00013','Quảng Ngãi','2002-03-15',1,'Nguyễn Tâm','','0905386277',_binary '',2,NULL),('KH-00014','Hà Tĩnh','2002-10-12',1,'Nguyễn Trường','','0905386377',_binary '',1,NULL),('KH-00015','Quảng Nam','1993-03-21',1,'Phạm Khoa','','0905386477',_binary '',1,NULL),('KH-00016','Đà Nẵng','1997-03-12',1,'Phan An','','0905386577',_binary '',2,NULL),('KH-00017','Huế','1993-03-12',1,'Trần Lê Hiển','','0905386677',_binary '',2,NULL),('KH-00018','Quy Nhơn','2003-03-12',1,'Trần Luật','','0905386877',_binary '',1,NULL),('KH-00019','Quảng Nam','1998-01-24',1,'Hoàng Long','','0905386977',_binary '',1,NULL),('KH-00020','Đà Nẵng','2000-01-01',1,'Phạm Việt Khoa','','0905007022',_binary '',2,'vietkhoa93@gmail.com'),('KH-00021','Đà nẵng','1999-01-01',0,'Chí Trung','Bị bệnh lao','0915671233',_binary '\0',2,NULL),('KH-00022','Đà Nẵng','1990-02-22',0,'Trường Quang','N/A','0905123123',_binary '',1,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer_type`
--

LOCK TABLES `customer_type` WRITE;
/*!40000 ALTER TABLE `customer_type` DISABLE KEYS */;
INSERT INTO `customer_type` VALUES (1,'Khách Lẻ'),(2,'Khách Sỉ');
/*!40000 ALTER TABLE `customer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('1',0),('C1221G1',0.1);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('NV-00001','Thành Phố Huế','2020-11-01','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022045701PMgiang.jpg?alt=media&token=9e4bae93-d019-4800-bb5e-f45e11faace7','Trần Bình Giảng','Nhân viên xuất sắc','0788868849',_binary '','tbgiang1911@gmail.com',2),('NV-00002','Thành Phố Huế','2021-05-13','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022060640PMdinh.png?alt=media&token=82fe2f29-d41a-4321-a336-1e23de5f2086','Hoàng Định','Nhân viên kì cựu','0714536869',_binary '','hoangdinh1@gmail.com',1),('NV-00003','Quảng Nam','2021-03-16','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022045723PMtam.jpg?alt=media&token=105c3ec9-3891-451f-9ac2-6b7d7fb2fcce','Nguyễn Anh Tâm','Nhân viên siêng năng','0911659957',_binary '','anhtam1@gmail.com',1),('NV-00004','Quảng Nam','2021-01-30','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022060820PMda.jpg?alt=media&token=e77843f8-16d7-46df-859c-aa696f535dd5','Lê Quang Anh Đà','Nhân viên kì cựu','0822354487',_binary '','lqad99@gmail.com',1),('NV-00005','Đà Nẵng','2020-12-31','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022060909PMlong.jpg?alt=media&token=ae769592-9ac2-4289-b3e4-24456afce079','Ngô Hoàng Long','Nhân viên kì cựu','0998774633',_binary '','hoanglong1@gmail.com',1),('NV-00006','Đà Nẵng','2021-06-25','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022045813PMan.jpg?alt=media&token=db6fb4b2-5e63-4ead-abd4-56fe7e45b48b','Phan An','Nhân viên kì cựu','09881133567',_binary '','phanan1@gmail.com',1),('NV-00007','Đà Nẵng','2022-07-04','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022045829PMtin.jpg?alt=media&token=06de3230-807f-49c6-991d-dff22c684e73','Bùi Quốc Tín','Nhân viên kì cựu','0912388668',_binary '','quoctin1@gmail.com',1),('NV-00008','Sài Gòn','2022-07-03','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022061130PMz3193405318388_ea5f622bd52a938f0cbab4be97f21bba.jpg?alt=media&token=cafbce8f-ca19-4b56-ac45-1b402efa1806','Quang Trường','Nhân viên kì cựu','0887761236',_binary '','quangtruong1@gmail.com',1),('NV-00009','Bình Định','2020-06-16','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022045903PMhai.jpg?alt=media&token=b0b3a682-d8fb-48eb-8837-003371a39a31','Nguyễn Xuân Hải','Nhân viên kì cựu','0876127753',_binary '','xuanhai1@gmail.com',1),('NV-00010','Đà Nẵng','2022-06-02','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022082659PMnghia.jpg?alt=media&token=6bc82657-5e95-4449-9949-2aec2f130e52','Nguyễn Thanh Nghĩa','Nhân viên kì cựu','0772212356',_binary '','thanhnghia1@gmail.com',1),('NV-00011','Quảng Ngãi','2021-03-05','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022082757PManh%20cv%20(1).png?alt=media&token=64f8a883-95f5-4e45-81d2-7cb3e672e0fe','Phạm Việt Khoa','Nhân viên kì cựu','0812355776',_binary '','vietkhoa1@gmail.com',2),('NV-00012','Đà Nẵng','2022-10-16','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022082840PMhuu.jpg?alt=media&token=4055f84d-fe9d-4ca1-88b9-f75967e60d0f','Nguyễn Quang Hữu','Nhân viên kì cựu','0888126755',_binary '','quanghuu1@gmail.com',1),('NV-00013','Đà Nẵng','2021-11-09','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022045954PMmy.png?alt=media&token=406493cd-0617-4143-b60c-f2d083c6604d','Châu Mỹ','Nhân viên kì cựu','0906671245',_binary '','chaumy1@gmail.com',1),('NV-00014','Quảng Nam','2021-05-09','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022082938PMluat.png?alt=media&token=b4ae2cad-a3a1-452b-ab7e-77e0b3b1ca71','Trần Ngọc Luật','Nhân viên kì cựu','0800761238',_binary '','ngocluat1@gmail.com',1),('NV-00015','Thành Phố Huế','2022-06-16','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022083119PMtrung.jpg?alt=media&token=5424074a-91ef-483d-9db5-0df847cf8c42','Trần Văn Hữu Trung','Nhân viên kì cựu','0978557622',_binary '','huutrung1@gmail.com',1),('NV-00016','Hà Tĩnh','2022-02-19','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022083050PMtuan.jpg?alt=media&token=1ffb9a5c-423b-4525-bbe6-81c1e96ebdf0','Phạm Anh Tuấn','Nhân viên kì cựu','0708914666',_binary '','anhtuan1@gmail.com',1),('NV-00017','Sài Gòn','2020-04-06','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022083758PMdefault-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg?alt=media&token=1e0f51da-e08e-45b1-a502-1f88431f0073','Trần Lê Duy Hiển','Nhân viên kì cựu','0774677239',_binary '','duyhien1@gmail.com',1),('NV-00018','Hà Nội','2020-10-27','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022051030PMtrinh.jpg?alt=media&token=72890266-b2b3-4c32-8a37-476e91ff043c','Nguyễn Nghĩa Trình','Nhân viên kì cựu','0806572658',_binary '','nghiatrinh1@gmail.com',1),('NV-00019','Quảng Trị','2021-11-28','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022083758PMdefault-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg?alt=media&token=1e0f51da-e08e-45b1-a502-1f88431f0073','Chánh Trần Văn','Nhân viên kì cựu','0909999999',_binary '','chanhtran1@gmail.com',1),('NV-00020','Quảng Nam','2022-09-11','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/07-07-2022052256PMImage%20from%20iOS%20(9).jpg?alt=media&token=32a904f2-1a2f-4e4f-bb99-bc270b1adaa0','Xuân Hồng','Nhân viên kì cựu','0808765432',_binary '','xuanhong1@gmail.com',1),('NV-00021','Quảng Nam','2022-07-08','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022105352AMtien-nvt.png?alt=media&token=0eecca0e-6329-42c0-b9df-695e5b676128','Nguyễn Vũ Thành Tiến','Quản lý xuất sắc','0914079401',_binary '\0','thanhtien1@gmail.com',2),('NV-00022','Đà Nẵng','2022-07-07','https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022121148PMtuan.jpg?alt=media&token=6900ed46-a64d-4057-b7f1-1f31bf4f7ce9','Anh Tuấn','','0905123987',_binary '','thanhtien2@gmail.com',2);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `import_invoice`
--

LOCK TABLES `import_invoice` WRITE;
/*!40000 ALTER TABLE `import_invoice` DISABLE KEYS */;
INSERT INTO `import_invoice` VALUES ('HDN-00001',_binary '','2022-12-02','15:22',453,7000000,12500000,'NV-00001','NCC-00015'),('HDN-00002',_binary '','2021-11-12','10:00',453,980000,980000,'NV-00002','NCC-00016'),('HDN-00003',_binary '','2022-12-04','09:30',453,1500000,2089800,'NV-00002','NCC-00017'),('HDN-00004',_binary '','2019-09-14','17:34',453,4090800,4090800,'NV-00003','NCC-00018'),('HDN-00005',_binary '','2022-08-21','07:00',453,800000,888000,'NV-00004','NCC-00019'),('HDN-00006',_binary '','2018-07-12','08:45',453,6578800,6578800,'NV-00007','NCC-00020'),('HDN-00007',_binary '','2021-02-15','14:37',453,450000,980000,'NV-00009','NCC-00016'),('HDN-00008',_binary '','2022-07-06','12:40',453,600000,600000,'NV-00016','NCC-00017'),('HDN-00009',_binary '','2018-03-17','08:40',453,500000,550000,'NV-00012','NCC-00018'),('HDN-00010',_binary '','2022-04-10','15:40',453,1500000,1578000,'NV-00014','NCC-00015'),('HDN-00011',_binary '','2019-05-06','13:40',453,578000,578000,'NV-00013','NCC-00017'),('HDN-00012',_binary '\0','2022-07-08','10:30',10002,11364460.8,11364460.8,'NV-00011','NCC-00015');
/*!40000 ALTER TABLE `import_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `import_invoice_medicine`
--

LOCK TABLES `import_invoice_medicine` WRITE;
/*!40000 ALTER TABLE `import_invoice_medicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_invoice_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES ('HD-00001',_binary '\0','07:30','2022-07-07','trẻ em','KH-00001','NV-00001',1),('HD-00002',_binary '','08:00','2022-07-07','người lớn','KH-00002','NV-00002',1),('HD-00003',_binary '','08:15','2022-07-06',NULL,'KH-00003','NV-00003',1),('HD-00004',_binary '','08:30','2022-07-05','','KH-00004','NV-00004',1),('HD-00005',_binary '','08:20','2022-07-03','trẻ em','KH-00005','NV-00003',1),('HD-00006',_binary '','08:40','2022-07-03','trẻ em','KH-00006','NV-00001',1),('HD-00007',_binary '','08:55','2022-07-03','người lớn','KH-00001','NV-00003',1),('HD-00008',_binary '','09:00','2022-07-01','người lớn','KH-00005','NV-00001',1),('HD-00009',_binary '','09:10','2022-06-30','người lớn','KH-00006','NV-00004',1),('HD-00010',_binary '','09:20','2022-06-29','người lớn','KH-00007','NV-00005',1),('HD-00011',_binary '','09:45','2022-06-28','trẻ em','KH-00006','NV-00001',1),('HD-00012',_binary '\0','10:00','2022-06-27','trẻ em','KH-00008','NV-00004',1),('HD-00013',_binary '','11:00','2022-06-27',NULL,'KH-00001','NV-00006',3),('HD-00014',_binary '','12:00','2022-06-26','trẻ em','KH-00008','NV-00001',3),('HD-00015',_binary '','13:15','2022-06-25','người lớn','KH-00002','NV-00006',3),('HD-00016',_binary '','14:20','2022-06-24','người lớn','KH-00007','NV-00002',2),('HD-00017',_binary '','15:00','2022-06-23','trẻ em','KH-00005','NV-00005',2),('HD-00018',_binary '','16:00','2022-06-22','trẻ em','KH-00001','NV-00006',2),('HD-00019',_binary '','16:30','2022-06-21','người lớn','KH-00008','NV-00005',2),('HD-00020',_binary '','17:00','2022-06-20','trẻ em','KH-00005','NV-00002',2),('HD-00021',_binary '','17:15','2022-06-20',NULL,'KH-00007','NV-00006',2),('HD-00022',_binary '','17:30','2022-06-19',NULL,'KH-00002','NV-00002',2),('HD-00023',_binary '','10:42','2022-07-08',NULL,'KH-00001','NV-00011',1),('HD-00024',_binary '','10:43','2022-07-08','no comment','KH-00001','NV-00011',1),('HD-00025',_binary '','10:44','2022-07-08','lô nhập giá cao','KH-00007','NV-00001',2),('HD-00026',_binary '',NULL,'2022-05-05',NULL,'KH-00003','NV-00002',1),('HD-00027',_binary '',NULL,'2022-05-06',NULL,'KH-00003','NV-00002',1),('HD-00028',_binary '',NULL,'2022-05-07',NULL,'KH-00003','NV-00002',1),('HD-00029',_binary '',NULL,'2022-05-08',NULL,'KH-00003','NV-00002',1),('HD-00030',_binary '',NULL,'2022-05-09',NULL,'KH-00003','NV-00002',1),('HD-00031',_binary '',NULL,'2022-05-10',NULL,'KH-00003','NV-00002',1),('HD-00032',_binary '',NULL,'2022-05-11',NULL,'KH-00003','NV-00002',1),('HD-00033',_binary '',NULL,'2022-05-12',NULL,'KH-00003','NV-00002',1),('HD-00034',_binary '',NULL,'2022-05-13',NULL,'KH-00003','NV-00002',1),('HD-00035',_binary '',NULL,'2022-05-14',NULL,'KH-00003','NV-00002',1),('HD-00036',_binary '',NULL,'2022-05-15',NULL,'KH-00003','NV-00002',1),('HD-00037',_binary '',NULL,'2022-05-16',NULL,'KH-00003','NV-00002',1),('HD-00038',_binary '',NULL,'2022-05-17',NULL,'KH-00003','NV-00002',1),('HD-00039',_binary '',NULL,'2022-05-18',NULL,'KH-00003','NV-00002',1),('HD-00040',_binary '',NULL,'2022-05-19',NULL,'KH-00003','NV-00002',1),('HD-00041',_binary '',NULL,'2022-05-20',NULL,'KH-00003','NV-00002',1),('HD-00042',_binary '',NULL,'2022-05-21',NULL,'KH-00003','NV-00002',1),('HD-00043',_binary '',NULL,'2022-05-22',NULL,'KH-00003','NV-00002',1),('HD-00044',_binary '',NULL,'2022-05-23',NULL,'KH-00003','NV-00002',1),('HD-00045',_binary '',NULL,'2022-05-24',NULL,'KH-00003','NV-00002',1),('HD-00046',_binary '',NULL,'2022-05-25',NULL,'KH-00003','NV-00002',1),('HD-00047',_binary '',NULL,'2022-05-26',NULL,'KH-00003','NV-00002',1),('HD-00048',_binary '',NULL,'2022-05-27',NULL,'KH-00003','NV-00002',1),('HD-00049',_binary '',NULL,'2022-05-28',NULL,'KH-00003','NV-00002',1),('HD-00050',_binary '',NULL,'2022-05-29',NULL,'KH-00003','NV-00002',1),('HD-00051',_binary '',NULL,'2022-05-30',NULL,'KH-00003','NV-00002',1),('HD-00052',_binary '',NULL,'2022-05-31',NULL,'KH-00003','NV-00002',1),('HD-00061',_binary '',NULL,'2022-06-20',NULL,'KH-00002','NV-00001',1),('HD-00062',_binary '',NULL,'2021-05-20',NULL,'KH-00004','NV-00002',1),('HD-00063',_binary '',NULL,'2021-04-20',NULL,'KH-00002','NV-00002',1),('HD-00064',_binary '',NULL,'2021-01-20',NULL,'KH-00002','NV-00002',1),('HD-00065',_binary '',NULL,'2021-06-20',NULL,'KH-00002','NV-00002',1),('HD-00066',_binary '',NULL,'2021-07-20',NULL,'KH-00002','NV-00002',1),('HD-00067',_binary '',NULL,'2021-08-20',NULL,'KH-00002','NV-00002',1),('HD-00068',_binary '',NULL,'2022-02-21',NULL,'KH-00002','NV-00002',2),('HD-00069',_binary '',NULL,'2021-03-20',NULL,'KH-00003','NV-00002',1),('HD-00070',_binary '',NULL,'2021-04-20',NULL,'KH-00002','NV-00001',1),('HD-00071',_binary '',NULL,'2021-01-22',NULL,'KH-00002','NV-00001',1),('HD-00072',_binary '',NULL,'2021-10-20',NULL,'KH-00002','NV-00001',1),('HD-00073',_binary '',NULL,'2021-02-20',NULL,'KH-00002','NV-00001',1),('HD-00074',_binary '',NULL,'2021-09-20',NULL,'KH-00002','NV-00001',1),('HD-00075',_binary '',NULL,'2021-11-20',NULL,'KH-00003','NV-00001',1),('HD-00076',_binary '',NULL,'2021-12-20',NULL,'KH-00002','NV-00002',2),('HD-00077',_binary '',NULL,'2022-03-20',NULL,'KH-00002','NV-00002',1),('HD-00078',_binary '',NULL,'2021-02-20',NULL,'KH-00002','NV-00002',1),('HD-00079',_binary '',NULL,'2022-01-20',NULL,'KH-00002','NV-00002',1),('HD-00080',_binary '',NULL,'2022-03-20',NULL,'KH-00002','NV-00002',1),('HD-00081',_binary '',NULL,'2022-04-20',NULL,'KH-00003','NV-00002',1),('HD-00082',_binary '',NULL,'2022-05-01',NULL,'KH-00003','NV-00002',1),('HD-00083',_binary '',NULL,'2022-05-02',NULL,'KH-00003','NV-00002',1),('HD-00084',_binary '',NULL,'2022-05-03',NULL,'KH-00003','NV-00002',1),('HD-00085',_binary '',NULL,'2022-05-04',NULL,'KH-00003','NV-00002',1),('HD-00086',_binary '','12:22','2022-07-08','no comment','KH-00001','NV-00011',1),('HD-00087',_binary '','13:27','2022-07-08',NULL,'KH-00001','NV-00011',1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `invoice_medicine`
--

LOCK TABLES `invoice_medicine` WRITE;
/*!40000 ALTER TABLE `invoice_medicine` DISABLE KEYS */;
INSERT INTO `invoice_medicine` VALUES (1,10,'HD-00001','T-00005'),(2,30,'HD-00001','T-00006'),(3,10,'HD-00003','T-00007'),(4,15,'HD-00003','T-00008'),(5,11,'HD-00005','T-00009'),(6,9,'HD-00006','T-00010'),(7,7,'HD-00002','T-00011'),(8,5,'HD-00002','T-00012'),(9,3,'HD-00004','T-00013'),(10,2,'HD-00004','T-00014'),(11,7,'HD-00011','T-00006'),(12,10,'HD-00011','T-00005'),(13,11,'HD-00011','T-00008'),(14,30,'HD-00012','T-00007'),(15,11,'HD-00012','T-00008'),(16,34,'HD-00012','T-00009'),(17,1,'HD-00023','T-00008'),(18,1,'HD-00023','T-00009'),(19,12,'HD-00023','T-00011'),(20,75,'HD-00024','T-00010'),(21,100,'HD-00025','T-00007'),(22,20,'HD-00082','T-00007'),(23,10,'HD-00083','T-00007'),(24,11,'HD-00084','T-00007'),(25,10,'HD-00085','T-00007'),(26,10,'HD-00026','T-00007'),(27,20,'HD-00027','T-00007'),(28,30,'HD-00028','T-00007'),(29,30,'HD-00029','T-00008'),(30,20,'HD-00030','T-00008'),(31,15,'HD-00031','T-00008'),(32,25,'HD-00032','T-00008'),(33,50,'HD-00033','T-00008'),(34,50,'HD-00034','T-00008'),(35,10,'HD-00036','T-00008'),(36,50,'HD-00037','T-00008'),(37,10,'HD-00038','T-00008'),(38,10,'HD-00039','T-00008'),(39,60,'HD-00040','T-00008'),(40,40,'HD-00041','T-00008'),(41,10,'HD-00042','T-00008'),(42,60,'HD-00043','T-00009'),(43,10,'HD-00044','T-00009'),(44,60,'HD-00045','T-00009'),(45,10,'HD-00046','T-00009'),(46,40,'HD-00047','T-00009'),(47,50,'HD-00048','T-00009'),(48,80,'HD-00049','T-00009'),(49,60,'HD-00050','T-00009'),(50,30,'HD-00051','T-00010'),(51,60,'HD-00001','T-00010'),(52,20,'HD-00052','T-00010'),(53,80,'HD-00035','T-00008'),(61,10,'HD-00061','T-00006'),(62,30,'HD-00062','T-00006'),(63,10,'HD-00063','T-00007'),(64,60,'HD-00064','T-00006'),(65,20,'HD-00065','T-00006'),(66,10,'HD-00066','T-00006'),(67,10,'HD-00067','T-00006'),(68,10,'HD-00068','T-00006'),(69,10,'HD-00069','T-00006'),(70,100,'HD-00070','T-00005'),(71,50,'HD-00071','T-00005'),(72,10,'HD-00072','T-00005'),(73,20,'HD-00022','T-00005'),(74,100,'HD-00021','T-00005'),(75,100,'HD-00020','T-00005'),(76,20,'HD-00019','T-00005'),(77,30,'HD-00018','T-00005'),(78,20,'HD-00017','T-00006'),(79,60,'HD-00016','T-00007'),(80,10,'HD-00015','T-00007'),(81,20,'HD-00014','T-00007'),(82,75,'HD-00013','T-00010'),(83,1,'HD-00087','T-00005');
/*!40000 ALTER TABLE `invoice_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES ('T-00005',_binary '','Được tinh chiết từ muối biển tự nhiên, giàu khoáng chất và nguyên tố vi lượng như Ca++, Na+, Cu++, Zn++.','Trẻ em trên 9 tuổi',10,'Acnes 25+ Tinh Chất Chuyên Biệt Cho Da Mụn với dạng gel lỏng sẽ giúp hỗ trợ giảm mụn và tình trạng các nốt mụn sưng đỏ, giúp làm sáng vết thâm và giúp da trở nên săn chắc.',12,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P16517_1_l-thumbnail-255x255.webp',900000,'Đưa nhẹ vòi phun vào mũi cho vừa khít. Ấn nhanh gọn vòi xịt 3-6 lần vào mỗi bên mũi. Để dung dịch thừa chảy ra ngoài sau đó xì mũi.','Catalent (Australia)','Dung dịch vệ sinh mũi Nose Hygiene Spray',20,12,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,1,2,'2',1),('T-00006',_binary '','Calcium lactate Pentahydrate: 300mg','Trẻ em trên 9 tuổi',10,'*Thuốc chỉ dùng theo đơn của bác sĩ',0.2,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/products/P00070_1_l.webp',1200000,'*Thuốc chỉ dùng theo đơn của bác sĩ','REMEDICA LTD','Calcium Lactate 300mg',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,2,1,'2',3),('T-00007',_binary '','Sắt 10mg','Trẻ em trên 9 tuổi',10,'Tăng cường hệ miễn dịch, giảm tần suất và các triệu chứng dị ứng...',0.2,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P16517_1_l-thumbnail-255x255.webp',3600000,'*Thuốc chỉ dùng theo đơn của bác sĩ','Catalent (Australia)','Dasbrain ',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,2,3,'2',2),('T-00008',_binary '','Sắt 10mg','Trẻ em trên 9 tuổi',10,'Maltofer là thuốc điều trị thiếu sắt tiềm ẩn và thiếu máu',0.2,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P17238_1_l-thumbnail-255x255.webp',2100000,'Điều trị dự phòng thiếu sắt để đáp ứng theo liều khuyến cáo hàng ngày ','Vifor SA ','Maltofer ',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,1,1,'2',1),('T-00009',_binary '','Hydroxid Polymaltose sắt (III) 50mg','Trẻ em trên 9 tuổi',10,'Điều trị thiếu máu do thiếu sắt cho đối tượng là phụ nữ có thai và cho con bú',0.12,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P02072_1_l-thumbnail-255x255.webp',3100000,'Điều trị thiếu máu do thiếu sắt cho đối tượng là phụ nữ có thai và cho con bú','Glenmark','Saferon Drop 15ml',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,2,2,'2',3),('T-00010',_binary '','Sắt 10mg','Trẻ em trên 9 tuổi',10,'Điều trị tiêu chảy kéo dài',0.2,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P11136_1_l-thumbnail-255x255.webp',2500000,'*Thuốc chỉ dùng theo đơn của bác sĩ','Công ty Cổ phần Dược Hậu Giang (Việt Nam)','Zinc 70mg ',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,2,2,'4',2),('T-00011',_binary '','Sắt 10mg','Trẻ em trên 9 tuổi',10,'Phòng và hỗ trợ bệnh loãng xương, bổ sung canxi để tăng cường phát triển xương ở lứa tuổi đang phát triển và trưởng thành',0.2,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P17041_1_l-thumbnail-255x255.webp',3600000,'*Thuốc chỉ dùng theo đơn của bác sĩ','Sphere Healthcare Pty Ltd (Úc)','AB Extra Bone-Care ',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,2,4,'3',1),('T-00012',_binary '','Sắt 10mg','Trẻ em trên 9 tuổi',10,'Điều trị triệu chứng buồn nôn và nôn nặng',0.2,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P17147_1_l-thumbnail-255x255.webp',5400000,'*Thuốc chỉ dùng theo đơn của bác sĩ','AGIMEXPHARM','Agimoti Agimexpharm ',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,2,4,'4',1),('T-00013',_binary '','Sắt 10mg','Trẻ em trên 9 tuổi',10,' Điều trị các chứng đau và sốt từ nhẹ đến vừa, có tác dụng giảm thân nhiệt ở người bệnh sốt.',0.2,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P11630_1_l-thumbnail-255x255.webp',6900000,'*Thuốc chỉ dùng theo đơn của bác sĩ','Công ty cổ phẩn Dược - Trang thiết bị y tế Bình Định (Bidiphar - Việt Nam)','Biragan Kids 325mg ',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,2,2,'3',1),('T-00014',_binary '','Sắt 10mg','Trẻ em trên 9 tuổi',10,'Dùng trong các trường hợp thiếu calci hoặc vitamin C do kém dinh dưỡng hoặc tăng nhu cầu calci và vitamin C,.',0.2,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P01709_1_l-thumbnail-255x255.webp',1400000,'*Thuốc chỉ dùng theo đơn của bác sĩ','GSK (Pháp)','CalSource Ca-C 1000 Orange Effer ',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,2,3,'2',1),('T-00015',_binary '','Sắt 10mg','Trẻ em trên 9 tuổi',10,' Điều trị viêm loét dạ dày và làm giảm triệu chứng ợ nóng, khó tiêu, rối loạn dạ dày',0.2,'https://data-service.pharmacity.io/pmc-upload-media/production/pmc-ecm-core/__sized__/products/P15356_1_l-thumbnail-255x255.webp',3600000,'*Thuốc chỉ dùng theo đơn của bác sĩ','Công Ty Cổ Phần Dược Phẩm Đạt Vi Phú (Việt Nam)','Chalme 15g ',20,0.1,'Làm sạch các tạp chất và dịch nhầy từ đường mũi, cải thiện hô hấp.',10,2,1,'2',1),('T-00016',_binary '','Vintamin 6','trên 18 tuổi',10,'',5,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022102910AMabrocto-2.jpg?alt=media&token=178801ae-0941-49cb-b580-1fb48daa1e6d',50000,'Theo đơn bác sĩ','Daphaco Việt Nam','Brocto 2',20,5,'Trị ho',10,3,2,'4',2),('T-00017',_binary '','Acyclovir 800mg Lactose','trên 18 tuổi',10,' Với bệnh nhân suy thận: Phải chỉnh liều theo độ thanh thải creatinin',5,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022125216PMacyclovir.webp?alt=media&token=7320b283-92a6-4ebd-8537-ec15adceda2d',120000,'Người lớn: Uống mỗi lần 1 viên x 5 lần/ngày, trong 7 ngày','Công ty liên doanh Meyer-BPC','Acyclovir Stada',5,5,'Ðiều trị nhiễm Herpes zoster (bệnh zona) cấp tính',5,3,1,'4',2),('T-00018',_binary '','Vitamin B1, Vitamin B6, Vitamin B12','trên 16 tuổi',20,'Mẫn cảm với một trong các thành phần của thuốc.\n- U ác tính: Do vitamin B12 làm tăng trưởng các mô có tốc độ tăng trưởng các mô có tốc độ sinh trưởng cao, nên có nguy cơ làm u tiến triển.\n- Tiền sử dị ứng với Vitamin B12 và các chất liên quan.\n- Không kết hợp với Levodopa.\n- Người bệnh có cơ địa dị ứng (hen, eczema).',3,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022125440PM3btp.jpg?alt=media&token=eb6d4f6d-3cc4-4a34-a78c-5f6fd5a4e643',60000,'uống theo dạng viên nén','Daphaco Việt Nam','3BTP',5,3,'Điều trị các triệu chứng dô thiếu vitamin B1, B6, B12',5,3,1,'1',3),('T-00019',_binary '','Adrenalin 1mg','trên 20 tuổi',10,'Các thuốc kích thích giao cảm có thể gây ra rất nhiều tác dụng có hại khác nhau . Phần lớn các tác dụng không mong muốn này giống như những gì xảy ra khi kích thích quá mạnh lên hệ thần kinh giao cảm.',5,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022125750PMadrenalin.webp?alt=media&token=f41788c6-4191-4117-9409-aab30e792525',1000000,'Dung dịch tiêm adrenalin có thể dùng để tiêm bắp, tiêm tĩnh mạch, tiêm nội nhãn cầu, tiêm dưới da','Công ty Cổ phần Dược Vĩnh Phúc','Adrenalin',5,5,'Cấp cứu choáng phản vệ và choáng dạng phản vệ',5,1,1,'4',1),('T-00020',_binary '','Furosemid 40mg','trên 20 tuổi',12,'Tác dụng không mong muốn chủ yếu xảy ra khi điều trị liều cao, hay gặp nhất là mất cân bằng nước và điện giải, đặc biệt ở người suy gan, suy thận',5,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022010100PMagifuros.webp?alt=media&token=78f02969-62a8-4b19-b94e-8f3b99969c95',80000,'Thuốc dùng đường uống.','Agimexpharm','Agifuros',5,5,'Phù phổi cấp, phù do tim, gan, thận và các loại phù khác',5,3,3,'4',2),('T-00021',_binary '','Paracetamol 500mg','trên 18 tuổi',12,'Thuốc paracetamol thường không có tác dụng phụ',5,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022010332PMacemol.webp?alt=media&token=af5c8d79-522d-46de-879b-ee5f335003fd',39000,'Có thể uống cùng hoặc không cùng đồ ăn.','Công ty Cổ phần Dược phẩm 2/9 ','Acemol',5,5,'Hạ sốt và giảm đau',5,3,1,'4',3),('T-00022',_binary '','Paracetamol 325mg, Ibuprofen 200mg','trên 18 tuổi, đàn ông trưởng thành',12,'Ibuprofen + paracetamol ít có tác dụng phụ khi được dùng với liều và thời gian đề nghị.',5,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022010556PMalaxan.jpg?alt=media&token=c8811a5f-873c-4c04-96e4-60278495d577',100000,'uống 1 viên mỗi 6 giờ khi cần, hoặc theo hướng dẫn của bác sĩ.','Công ty THHN UNITED INTERNATIONAL PHARMA','Alaxan',5,5,'Giảm các cơn đau cơ xương nhẹ đến trung bình như đau cổ, đau vai, đau lưng, căng cơ bắp tay hoặc bắp chân, cứng cơ cổ, viêm khớp, thấp khớp, viêm bao hoạt dịch, bong gân, viêm gân.',5,3,1,'4',3),('T-00023',_binary '','Ibuprofen 400mg','Người lớn, trẻ em từ 12 tuổi trở lên',15,'5 - 15% người bệnh có tác dụng phụ về tiêu hóa.',3,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022010812PMbidivon.webp?alt=media&token=78280610-ec21-40e6-b25a-b313def8aeee',60000,'Uống trong thời gian ngắn để hạn chế các tác dụng không mong muốn của thuốc.','Công ty Cổ phần Dược – TTBYT Bình Định','Bidivon',3,3,'Chống viêm, giảm đau từ nhẹ đến vừa trong một số bệnh như: Đau thấp khớp, đau cơ bắp, đau lưng, đau thần kinh…',3,3,1,'4',2),('T-00024',_binary '','Paracetamol 80mg/1,5g','Trẻ sơ sinh , người lớn',6,'Đối với người bị phenylceton - niệu và người phải hạn chế lượng phenylalanin đưa vào cơ thể nên tránh dùng Paracetamol với thuốc hoặc thực phẩm có chứa Aspartam.',3,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022010956PMacepron.webp?alt=media&token=93f2899b-f7ab-4681-88ce-5c3bd43d5bba',10000,'Hòa tan thuốc vào lượng nước','Pharimexco','Acepron 80',3,3,'Giảm đau cho trẻ trong các trường hợp: cảm lạnh, cảm cúm, đau đầu, sốt xuất huyết, nhiễm khuẩn, nhiễm siêu vi, mọc răng, đau răng, đau sau tiêm ngừa…',3,3,1,'4',3),('T-00025',_binary '','Paracetamol 325 mg','Trẻ em trên 6 tuổi',12,'Ít gặp\n- Ban da.\n- Buồn nôn, nôn.\n- Bệnh thận, độc tính thận khi lạm dụng dài ngày.\n- Giảm bạch cầu trung tính, giảm toàn thể huyết cầu, thiếu máu.',5,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022011147PMharacol.webp?alt=media&token=be2f0ad8-1a94-4495-af81-89fba8a2aa4d',21000,'Thuốc Hapacol Child 325 mg được dùng đường uống.','Công ty Cổ phần Dược Hậu Giang','Hapacol Child',5,5,'Điều trị sốt, đau đầu, đau nửa đầu, đau răng,...',5,3,1,'4',3),('T-00026',_binary '','Acetaminophen 80mg','không giới hạn độ tuổi',12,'không sử dụng thuốc cho phụ nữ có thai và cho con bú',3,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022011406PMtydol.webp?alt=media&token=da54a844-36bb-4b8a-8da4-b5b9e1386606',17000,'uống theo đường tiêu hóa','Công ty Cổ phần Dược phẩm OPV','Tydol Sachet Powder',3,3,'Hạ sốt, giảm đau do: cảm lạnh, cảm cúm, nhức đầu, ...',3,3,1,'4',3),('T-00027',_binary '','Acetaminophen 325mg, Ibuprofen 200mg','trên 12 tuổi',24,'Agiparofen ít có tác dụng phụ khi được dùng với liều và thời gian đề nghị',6,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022011558PMagiparofen.webp?alt=media&token=8953e897-5ffe-43b3-b89f-c7a98d9d9342',50000,'Uống thuốc sau bữa ăn.','Nhà Máy Sản Xuất Dược Phẩm Agimexpharm','Agiparofen 525mg',6,6,'Giảm đau từ nhẹ đến vừa các chứng đau liên quan đến đau đầu, đau lưng, đau bụng kinh...',6,3,1,'3',3),('T-00028',_binary '','Musk Ambrette 0.1mg, Extractum Antirheumatici et Analgesic Liquidum 97.0mg, Methysalicylate 29.0mg, Mentholum 39.0mg, Borneolum syntheticum 19.5mg, Camphora 39.0mg, Extractum cymbopogonis 24.0mg.','trên 12 tuổi',10,'Chưa có nghiên cứu đầy đủ.',8,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022011814PMcaotrangcot.webp?alt=media&token=c9b7f4ee-91b1-4f29-80b3-c8ca6c8a7394',850000,'uống theo đường tiêu hóa','Chongqing Peidu Pharmaceutical Co., Ltd','Cao Tráng Cốt Chỉ Thống Xạ Hương',8,8,'Điều trị làm giảm đau, tăng cường tuần hoàn máu, được dùng giảm đau trong các trường hợp đau nhức xương khớp, đau do viêm khớp, đau cơ, đau do bong gân,...',8,3,4,'2',2),('T-00029',_binary '','Paracetamol 150mg','trẻ em',24,'Ban da và những phản ứng dị ứng khác thỉnh thoảng xảy ra. Thường là ban đỏ hoặc mày đay, đôi khi nặng hơn và có thể kèm theo sốt do thuốc và tổn thương niêm mạc.',5,'https://firebasestorage.googleapis.com/v0/b/c1221g1-pharmacy.appspot.com/o/08-07-2022011955PMcemofar.webp?alt=media&token=c64eb06a-0207-4b04-baff-06ce5e2bed52',11000,'uống theo đường tiêu hóa sau khi ăn','Công ty Cổ phần Dược phẩm Dược liệu Pharmedic','Cemofar 150',5,5,'Giảm đau nhức và hạ sốt ở trẻ em',5,3,1,'4',3);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine_conversion_unit`
--

LOCK TABLES `medicine_conversion_unit` WRITE;
/*!40000 ALTER TABLE `medicine_conversion_unit` DISABLE KEYS */;
INSERT INTO `medicine_conversion_unit` VALUES (1,'lọ'),(2,'vỉ'),(3,'viên');
/*!40000 ALTER TABLE `medicine_conversion_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine_origin`
--

LOCK TABLES `medicine_origin` WRITE;
/*!40000 ALTER TABLE `medicine_origin` DISABLE KEYS */;
INSERT INTO `medicine_origin` VALUES (1,'Việt Nam'),(2,'USA'),(3,'Nhật Bản'),(4,'Trung Quốc'),(5,'Hàn Quốc'),(6,'Nga');
/*!40000 ALTER TABLE `medicine_origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine_prescription`
--

LOCK TABLES `medicine_prescription` WRITE;
/*!40000 ALTER TABLE `medicine_prescription` DISABLE KEYS */;
INSERT INTO `medicine_prescription` VALUES (1,3,2,'T-00006','DT-00002'),(2,3,2,'T-00007','DT-00002'),(3,3,2,'T-00008','DT-00002'),(4,3,5,'T-00010','DT-00001');
/*!40000 ALTER TABLE `medicine_prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine_storage`
--

LOCK TABLES `medicine_storage` WRITE;
/*!40000 ALTER TABLE `medicine_storage` DISABLE KEYS */;
INSERT INTO `medicine_storage` VALUES (1,_binary '',999,'T-00005'),(2,_binary '',1000,'T-00006'),(3,_binary '',1000,'T-00007'),(4,_binary '',1000,'T-00008'),(5,_binary '',1000,'T-00009'),(6,_binary '',925,'T-00010'),(7,_binary '',1000,'T-00011'),(8,_binary '',1000,'T-00012'),(9,_binary '',1000,'T-00013'),(10,_binary '',1000,'T-00014'),(11,_binary '',1000,'T-00015'),(12,_binary '',1000,'T-00016'),(13,_binary '',1000,'T-00017'),(14,_binary '',1000,'T-00018'),(15,_binary '',1000,'T-00019'),(16,_binary '',1000,'T-00020'),(17,_binary '',1000,'T-00021'),(18,_binary '',1000,'T-00022'),(19,_binary '',1000,'T-00023'),(20,_binary '',1000,'T-00024'),(21,_binary '',1000,'T-00025'),(22,_binary '',1000,'T-00026'),(23,_binary '',1000,'T-00027'),(24,_binary '',1000,'T-00028'),(25,_binary '',1000,'T-00029');
/*!40000 ALTER TABLE `medicine_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine_type`
--

LOCK TABLES `medicine_type` WRITE;
/*!40000 ALTER TABLE `medicine_type` DISABLE KEYS */;
INSERT INTO `medicine_type` VALUES ('1','Vitamin'),('2','Bổ'),('3','An thần'),('4','Kháng sinh'),('5','Ho');
/*!40000 ALTER TABLE `medicine_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine_unit`
--

LOCK TABLES `medicine_unit` WRITE;
/*!40000 ALTER TABLE `medicine_unit` DISABLE KEYS */;
INSERT INTO `medicine_unit` VALUES (1,'thùng'),(2,'hộp'),(3,'lọ');
/*!40000 ALTER TABLE `medicine_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment_online`
--

LOCK TABLES `payment_online` WRITE;
/*!40000 ALTER TABLE `payment_online` DISABLE KEYS */;
INSERT INTO `payment_online` VALUES ('HDO-00001',NULL,'2022-07-08 10:18',1);
/*!40000 ALTER TABLE `payment_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Nhân viên'),(2,'Quản lý');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES ('DT-00001',_binary '','Viêm họng TE','Cấm trẻ sơ sinh.',5,'Đau họng, ho.','Trẻ em'),('DT-00002',_binary '','Viêm họng NL','Cấm trẻ em dưới 10 tuổi.',5,'Đau họng','Người lớn'),('DT-00003',_binary '','Cảm cúm TE','Cấm trẻ sơ sinh.',3,'Sốt, đau đầu, sổ mũi.','Trẻ em'),('DT-00004',_binary '\0','Cảm cúm NL','Cấm trẻ em dưới 10 tuổi.',3,'Sốt, đau đầu, sổ mũi.','Người lớn'),('DT-00005',_binary '','Rối loạn tiền đình','Cấm trẻ em dưới 15 tuổi.',3,'Hay buồn nôn, chóng mặt','Người lớn'),('DT-00006',_binary '','Say tàu xe','Người lớn và trẻ em đều được.',3,'Buồn nôn, chóng mặt khi đi tàu xe','Người lớn'),('DT-00007',_binary '','Trầm cảm','Tránh xa tầm tay của trẻ em',7,'suy nghĩ tiêu cực','Người lớn');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_EMPLOYEE'),(3,'ROLE_MANAGER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('NCC-00015',_binary '','Thuốc Rất Đạt Chuẩn Chất Lượng, Nhân Viên Giao Hàng Rất Chuyên Nghiệp','15 Nguyễn Hữu Thọ ','giadinh@gmail.com','Bệnh Viện Châu Diệu','0903265955'),('NCC-00016',_binary '','Thuốc Rất Đạt Chuẩn Chất Lượng','12 Nguyễn Tất Thành, Núi Thành ','hamyato@gmail.com','Nhà Thuốc  Hả Mỳ ','0827520111'),('NCC-00017',_binary '','','16 TP Huế ,Thừa Thiên Huế','lelaihue@gmail.com','Thuốc Tây  Lê Lai ','0827520111'),('NCC-00018',_binary '','Vì 1 khó khăn nào đó mà đến trể giờ đã hẹn giao thuốc ','Tam Phú, Tam Kỳ, Quảng Nam ','minnhtam@gmail.com','Nhà Thuốc Minh Tâm','0827664224'),('NCC-00019',_binary '','','81 Mẹ Thứ Cẩm Lệ Đà Nẵng','tranvantho@gmail.com','Nhà Thuốc Trần Văn Thọ ','0909027270'),('NCC-00020',_binary '','Nhà Thuốc Số 5 Hưng Yên đang bảo dưởng kho nên chưa cung cấp hàng kiệp ','10 Nguyễn Hoàng , Tam Kỳ Quảng Nam ','so6nguyenhoang@gmail.com','Nhà Thuốc Văn Xuân','0827664224'),('NCC-00021',_binary '','Bệnh viện Cung cấp đầy đủ thuốc và chất lượng cao ','15 Nguyễn Hữu Thọ ,Cẩm Lệ','giadinh@gmail.com','Bệnh Viện Gia Đình','0827524224'),('NCC-00022',_binary '','Đã Kiểm Tra Chất Lượng Thuốc : Tốt , Bảo Quản Tốt ','Ngô Tất Tố , Đà Nẵng','thienan@gmail.com','Nhà Thuốc Thiên An ','0903265955'),('NCC-00023',_binary '','Vì 1 khó khăn nào đó mà đến trể giờ đã hẹn giao thuốc ','63 Phạm Vinh , Cẩm Lệ , Đà Nẵng ','minhlinhtran@gmail.com','Nhà Thuốc Minh Linnh','0929978333'),('NCC-00024',_binary '','Thuốc Rất Đạt Chuẩn Chất Lượng','17 Hòa Thuận Nam ,Hải Châu','chualienlai@gmail.com','Nhà Thuốc Châu Liên Lai','0827664224'),('NCC-00025',_binary '','Việc Chuyên Giao Thuốc Do Người Khác Vận Chuyển Chứ Không Phải Chủ Tiệm Thuốc ','Tam Kỳ, Tam Thanh , Quảng Nam ','minhthienthi@gmail.com','Nhà Thuốc Minh Thiện ','0928278333'),('NCC-00026',_binary '','Thuốc  Rất Đạt Chuẩn Chất Lượng','Tam Tiến, Núi Thành , Quảng Nam ','luatzxcxv@gmail.com','Trung Tâm Thuốc  Linh Trần','0999099909'),('NCC-00028',_binary '','Việc Chuyên Giao Thuốc Do Người Khác Vận Chuyển Chứ Không Phải Chủ Tiệm Thuốc ','Núi Thành Quảng Nam ','anhnguyet@gmail.com','Nhà Thuốc Ánh Nguyệt ','0905256255'),('NCC-00029',_binary '','Thuốc Rất Đạt Chuẩn Chất Lượng','36 Điện Nam  Hội An ','thanhNghgia@gmial.com','Thuốc Đông Y Minh An ','0905338886'),('NCC-00030',_binary '','Việc Chuyên Giao Thuốc Do Người Khác Vận Chuyển Chứ Không Phải Chủ Tiệm Thuốc ','15 Duy Nghĩa, Duy Xuyên, Quảng Nam ','thanhNghia@gmail.com','Nhà Thuốc Thanh Nghĩa','0352222989'),('NCC-00031',_binary '','','39 Nguyễn Văn Linh, Đà Nẵng ','chaulien@gmail.com','Bệnh Viện Châu Liên','0903265955'),('NCC-00034',_binary '','','Tam Tiến Núi Thành Quảng Nam','lelaiquangnam@gmail.com','Nhà Thuốc Minh Châu ','0827520111'),('NCC-00035',_binary '\0','Thuốc  Rất Đạt Chuẩn Chất Lượng','16 Phạm Vinh  Cẩm Lệ Đà Nẵng','luatzxcv@gmial.com','Bệnh Viện Dưỡng Lão Minh Thiện','0333167149'),('NCC-00036',_binary '','Công ty sản xuất dược phẩm miền trung','LA, USA','daphaco123@gmail.com','Công ty Daphaco Nước Ngoài','0907895675');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `type_of_invoice`
--

LOCK TABLES `type_of_invoice` WRITE;
/*!40000 ALTER TABLE `type_of_invoice` DISABLE KEYS */;
INSERT INTO `type_of_invoice` VALUES (1,'Bán lẻ'),(2,'Bán sỉ'),(3,'Hoàn trả');
/*!40000 ALTER TABLE `type_of_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,2,'anhtam1@gmail.com'),(2,2,'xuanhong1@gmail.com'),(3,2,'chanhtran1@gmail.com'),(4,2,'nghiatrinh1@gmail.com'),(5,2,'duyhien1@gmail.com'),(6,2,'tbgiang1911@gmail.com'),(7,2,'hoangdinh1@gmail.com'),(8,2,'lqad99@gmail.com'),(9,2,'phanan1@gmail.com'),(10,2,'quoctin1@gmail.com'),(11,2,'quangtruong1@gmail.com'),(12,2,'xuanhai1@gmail.com'),(13,2,'thanhnghia1@gmail.com'),(14,3,'vietkhoa1@gmail.com'),(15,2,'quanghuu1@gmail.com'),(16,2,'chaumy1@gmail.com'),(17,2,'ngocluat1@gmail.com'),(18,2,'huutrung1@gmail.com'),(19,2,'hoanglong1@gmail.com'),(20,2,'anhtuan1@gmail.com'),(21,1,'vietkhoa93@gmail.com'),(22,3,'thanhtien1@gmail.com'),(23,3,'thanhtien2@gmail.com');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('anhtam1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('anhtuan1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('chanhtran1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('chaumy1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('duyhien1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('hoangdinh1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('hoanglong1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('huutrung1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('lqad99@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('nghiatrinh1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('ngocluat1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('phanan1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('quanghuu1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('quangtruong1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('quoctin1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('tbgiang1911@gmail.com',_binary '','$2a$10$J55v1zX41HZR2.bjkMvvUO.KF8hNwkT5Vzv8UVN9xGbRvbwueOFfC',NULL),('thanhnghia1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('thanhtien1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('thanhtien2@gmail.com',_binary '','12345',NULL),('vietkhoa1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('vietkhoa93@gmail.com',_binary '','$2a$10$E3kVy5snJme8/.KD/quZO.e46z43Xdx4S.tqFrfhcxIpSAeC6mLOC',NULL),('xuanhai1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL),('xuanhong1@gmail.com',_binary '','$2a$10$X0e3BuF8.SHAS2xZUMEyaepdMW8pskhtkRtDDTFhS6xxTyvJZdvaW',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
user_roleusers/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-08 13:42:43
