-- MySQL dump 10.13  Distrib 5.7.13, for Win64 (x86_64)
--
-- Host: localhost    Database: beipro
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `pro_bigtable`
--

DROP TABLE IF EXISTS `pro_bigtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_bigtable` (
  `date` varchar(90) NOT NULL,
  `adduserCount` varchar(90) DEFAULT NULL,
  `visitCount` varchar(90) DEFAULT NULL,
  `userCount` varchar(90) DEFAULT NULL,
  `addmemberCount` varchar(90) DEFAULT NULL,
  `activeCount` varchar(90) DEFAULT NULL,
  `memberCount` varchar(90) DEFAULT NULL,
  `sessionnumberCount` varchar(90) DEFAULT NULL,
  `sessionlengthCount` varchar(90) DEFAULT NULL,
  `averagesessionlength` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_bigtable`
--

LOCK TABLES `pro_bigtable` WRITE;
/*!40000 ALTER TABLE `pro_bigtable` DISABLE KEYS */;
INSERT INTO `pro_bigtable` VALUES ('2017-06-19','20','22','22','2','9','2','30','33.54','1.12'),('2017-06-20','8','17','39','1','1','3','17','15.88','0.93'),('2017-06-21','0','13','52','1','1','4','13','6.76','0.52'),('2017-06-22','0','15','67','1','3','5','15','8.46','0.56'),('2017-06-23','5','16','83','1','2','6','16','9.92','0.62');
/*!40000 ALTER TABLE `pro_bigtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_bigtablebrowser`
--

DROP TABLE IF EXISTS `pro_bigtablebrowser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_bigtablebrowser` (
  `date` varchar(90) NOT NULL,
  `browser` varchar(90) NOT NULL,
  `adduserCount` varchar(90) DEFAULT NULL,
  `visitCount` varchar(90) DEFAULT NULL,
  `userCount` varchar(90) DEFAULT NULL,
  `addmemberCount` varchar(90) DEFAULT NULL,
  `activeCount` varchar(90) DEFAULT NULL,
  `memberCount` varchar(90) DEFAULT NULL,
  `sessionnumberCount` varchar(90) DEFAULT NULL,
  `sessionlengthdvalue` varchar(90) DEFAULT NULL,
  `sessionlengthCount` varchar(90) DEFAULT NULL,
  `averagesessionLength` varchar(90) DEFAULT NULL,
  `browserPv` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`date`,`browser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_bigtablebrowser`
--

LOCK TABLES `pro_bigtablebrowser` WRITE;
/*!40000 ALTER TABLE `pro_bigtablebrowser` DISABLE KEYS */;
INSERT INTO `pro_bigtablebrowser` VALUES ('2017-06-19','Android browser','1','1','1','0','0','0','1','18','1','18.00','2'),('2017-06-19','Chrome','3','4','4','1','2','1','4','76217','4','19054.25','66'),('2017-06-19','Firefox','15','15','15','2','2','2','16','1047918','16','65494.88','1325'),('2017-06-19','IE','1','3','3','2','2','2','10','887513','10','88751.30','82'),('2017-06-19','unkonwn','0','0','0','0','7','0','0','0','0','0.00','18'),('2017-06-20','Chrome','1','1','5','1','1','2','1','74175','1','74175.00','344'),('2017-06-20','Firefox','7','15','30','1','1','3','15','878600','15','58573.33','1604'),('2017-06-20','IE','0','1','4','0','0','2','1','0','1','0.00','1'),('2017-06-21','Chrome','0','5','10','1','1','3','5','179038','5','35807.60','505'),('2017-06-21','Firefox','0','7','37','1','1','4','7','217630','7','31090.00','1954'),('2017-06-21','IE','0','1','5','1','1','3','1','8894','1','8894.00','10'),('2017-06-22','Chrome','0','7','17','1','1','4','7','264297','7','37756.71','965'),('2017-06-22','Firefox','0','7','44','1','1','5','7','205359','7','29337.00','716'),('2017-06-22','IE','0','1','6','1','1','4','1','37794','1','37794.00','28'),('2017-06-22','unkonwn','0','0','0','0','2','0','0','0','0','0.00','32'),('2017-06-23','Chrome','4','8','25','1','2','5','8','381785','8','47723.13','1264'),('2017-06-23','Firefox','1','7','51','1','1','6','7','202910','7','28987.14','508'),('2017-06-23','IE','0','1','7','0','1','4','1','10407','1','10407.00','8');
/*!40000 ALTER TABLE `pro_bigtablebrowser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_externallink`
--

DROP TABLE IF EXISTS `pro_externallink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_externallink` (
  `date` varchar(90) NOT NULL,
  `p_url` varchar(90) NOT NULL,
  `external` varchar(90) DEFAULT NULL,
  `externalJump` varchar(90) DEFAULT NULL,
  `jumpRate` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`date`,`p_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_externallink`
--

LOCK TABLES `pro_externallink` WRITE;
/*!40000 ALTER TABLE `pro_externallink` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_externallink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_order`
--

DROP TABLE IF EXISTS `pro_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_order` (
  `date` varchar(90) NOT NULL,
  `oid` varchar(90) DEFAULT NULL,
  `successCount` varchar(90) DEFAULT NULL,
  `refundCount` varchar(90) DEFAULT NULL,
  `orderNumber` varchar(90) DEFAULT NULL,
  `orderCount` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_order`
--

LOCK TABLES `pro_order` WRITE;
/*!40000 ALTER TABLE `pro_order` DISABLE KEYS */;
INSERT INTO `pro_order` VALUES ('2017-06-19','123456','9','9','1','159296.0'),('2017-06-20','123456','0','0','1','178684.0'),('2017-06-21','123456','0','0','1','248376.0'),('2017-06-22','123456','16','16','1','238944.0'),('2017-06-23','123456','0','0','1','229512.0');
/*!40000 ALTER TABLE `pro_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_region`
--

DROP TABLE IF EXISTS `pro_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_region` (
  `date` varchar(90) NOT NULL,
  `region` varchar(90) NOT NULL,
  `regioncount` varchar(90) DEFAULT NULL,
  `sessionnumber` varchar(90) DEFAULT NULL,
  `sessionjumpnumber` varchar(90) DEFAULT NULL,
  `jumprate` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`date`,`region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_region`
--

LOCK TABLES `pro_region` WRITE;
/*!40000 ALTER TABLE `pro_region` DISABLE KEYS */;
INSERT INTO `pro_region` VALUES ('2017-06-19','中国 上海市','1493','30','1','0.03'),('2017-06-20','中国 上海市','1949','17','1','0.06'),('2017-06-21','中国 上海市','2469','13','0','0.00'),('2017-06-22','中国 上海市','1741','15','0','0.00'),('2017-06-23','中国 上海市','1780','16','0','0.00');
/*!40000 ALTER TABLE `pro_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_visitdepth`
--

DROP TABLE IF EXISTS `pro_visitdepth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_visitdepth` (
  `date` varchar(90) NOT NULL,
  `u_ud` varchar(90) NOT NULL,
  `count` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`date`,`u_ud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_visitdepth`
--

LOCK TABLES `pro_visitdepth` WRITE;
/*!40000 ALTER TABLE `pro_visitdepth` DISABLE KEYS */;
INSERT INTO `pro_visitdepth` VALUES ('2017-06-19','0034F7C8-B331-4F23-8A6C-810F00FA469A','4'),('2017-06-19','069C6246-4390-4FB3-890A-CCC25BE919BA','4'),('2017-06-19','136B4123-52FD-41ED-913C-0E7C6F79FC85','4'),('2017-06-19','24BB693C-F4A1-44A0-8B91-1F9E58F7BF63','2'),('2017-06-19','31F1CE34-37D0-43E4-9FE9-DB2FA1E8D580','4'),('2017-06-19','3DBE91DE-0EF0-47E9-B74F-E34811030D7F','4'),('2017-06-19','45117046-7A6D-44F1-9BCA-4AE9BEC925A8','4'),('2017-06-19','47E783A6-774B-46E9-951B-D4257DFEC734','1'),('2017-06-19','5132C981-389D-431B-94CA-92F4D1D02CBA','4'),('2017-06-19','550DE3C3-3923-4C36-BDBD-45784A6E314E','4'),('2017-06-19','7800EE31-9FCC-4589-85CA-66C9D3177BA3','4'),('2017-06-19','790C2B1C-22DC-43AE-96F5-16D726331974','4'),('2017-06-19','857317C2-DE1F-44B9-BB3A-B9BEC06BC00F','4'),('2017-06-19','8BA73999-EC79-4996-9357-10C49BD18984','4'),('2017-06-19','9C6E6916-E4FE-43D0-9D01-34FD2DB0FDE9','4'),('2017-06-19','AD0B0AF8-6BBA-4216-AF9D-324AB4C1AB59','4'),('2017-06-19','BDABF45E-EF5A-4DFB-9A06-F30021617D82','4'),('2017-06-19','E96992B4-7D62-4A5A-BC50-6B23F6D6A978','4'),('2017-06-19','F9A4D239-73D2-492C-A135-4EA81C5F126E','4'),('2017-06-19','F9BC0C10-E7A4-4C6F-A19D-8F30534DA38C','1'),('2017-06-19','FB5555B0-5553-479E-A0DB-4970BFBC5A47','1'),('2017-06-19','FC06D5B1-BE05-4A1C-860B-A043484B2EF6','4'),('2017-06-20','069C6246-4390-4FB3-890A-CCC25BE919BA','4'),('2017-06-20','31F1CE34-37D0-43E4-9FE9-DB2FA1E8D580','4'),('2017-06-20','46D24E64-658D-4D79-822A-6FF72B8383FF','4'),('2017-06-20','5132C981-389D-431B-94CA-92F4D1D02CBA','4'),('2017-06-20','566A121E-C2A6-4B8F-9D07-B3579B027D66','4'),('2017-06-20','59C00F61-6F72-406F-AD94-DE1C11FAC6F3','4'),('2017-06-20','64200873-2992-42B8-9314-5377A1CC44BB','4'),('2017-06-20','790C2B1C-22DC-43AE-96F5-16D726331974','4'),('2017-06-20','8BA73999-EC79-4996-9357-10C49BD18984','4'),('2017-06-20','9C6E6916-E4FE-43D0-9D01-34FD2DB0FDE9','4'),('2017-06-20','B4B0A6A5-EF9E-4749-BCBA-28E2E8F3F151','4'),('2017-06-20','D8330C8A-8916-4F02-BBD6-C11D8D9CE195','4'),('2017-06-20','DC778E0F-2897-453C-A07E-15AB54A0FBDA','4'),('2017-06-20','E96992B4-7D62-4A5A-BC50-6B23F6D6A978','4'),('2017-06-20','F876E839-1FF1-4F0D-A51A-88A7B33007F1','1'),('2017-06-20','F9A4D239-73D2-492C-A135-4EA81C5F126E','4'),('2017-06-20','F9BC0C10-E7A4-4C6F-A19D-8F30534DA38C','1'),('2017-06-21','077D20C8-815D-40C0-829C-83CCC6C9EA68','4'),('2017-06-21','0CF33A6F-36E6-4851-9336-84A28B4370CC','4'),('2017-06-21','136B4123-52FD-41ED-913C-0E7C6F79FC85','4'),('2017-06-21','31F1CE34-37D0-43E4-9FE9-DB2FA1E8D580','4'),('2017-06-21','550DE3C3-3923-4C36-BDBD-45784A6E314E','4'),('2017-06-21','790C2B1C-22DC-43AE-96F5-16D726331974','4'),('2017-06-21','8996C8F6-A85E-45BB-9A57-3BE90EA3131D','3'),('2017-06-21','8AB63B0A-F555-4CDA-B5D9-85EFFD1261C3','4'),('2017-06-21','8BA73999-EC79-4996-9357-10C49BD18984','3'),('2017-06-21','9294D755-3C9B-4403-A725-7D777FD33237','4'),('2017-06-21','C4D67EFC-37E6-4AF8-8AAA-847B15727D7D','4'),('2017-06-21','E96992B4-7D62-4A5A-BC50-6B23F6D6A978','2'),('2017-06-21','F9A4D239-73D2-492C-A135-4EA81C5F126E','4'),('2017-06-22','077D20C8-815D-40C0-829C-83CCC6C9EA68','4'),('2017-06-22','0CF33A6F-36E6-4851-9336-84A28B4370CC','4'),('2017-06-22','136B4123-52FD-41ED-913C-0E7C6F79FC85','4'),('2017-06-22','31F1CE34-37D0-43E4-9FE9-DB2FA1E8D580','4'),('2017-06-22','550DE3C3-3923-4C36-BDBD-45784A6E314E','4'),('2017-06-22','8996C8F6-A85E-45BB-9A57-3BE90EA3131D','4'),('2017-06-22','8AB63B0A-F555-4CDA-B5D9-85EFFD1261C3','4'),('2017-06-22','8BA73999-EC79-4996-9357-10C49BD18984','4'),('2017-06-22','9294D755-3C9B-4403-A725-7D777FD33237','1'),('2017-06-22','BB2034F0-4383-400C-BCE9-0FD3D93E450D','2'),('2017-06-22','C4D67EFC-37E6-4AF8-8AAA-847B15727D7D','4'),('2017-06-22','DC778E0F-2897-453C-A07E-15AB54A0FBDA','2'),('2017-06-22','E96992B4-7D62-4A5A-BC50-6B23F6D6A978','2'),('2017-06-22','F9A4D239-73D2-492C-A135-4EA81C5F126E','4'),('2017-06-23','0034F7C8-B331-4F23-8A6C-810F00FA469A','3'),('2017-06-23','077D20C8-815D-40C0-829C-83CCC6C9EA68','4'),('2017-06-23','0CF33A6F-36E6-4851-9336-84A28B4370CC','4'),('2017-06-23','136B4123-52FD-41ED-913C-0E7C6F79FC85','4'),('2017-06-23','1BA076C4-259E-4553-8C47-5FA0165694F1','3'),('2017-06-23','31F1CE34-37D0-43E4-9FE9-DB2FA1E8D580','4'),('2017-06-23','790C2B1C-22DC-43AE-96F5-16D726331974','3'),('2017-06-23','8996C8F6-A85E-45BB-9A57-3BE90EA3131D','3'),('2017-06-23','8AB63B0A-F555-4CDA-B5D9-85EFFD1261C3','4'),('2017-06-23','8BA73999-EC79-4996-9357-10C49BD18984','4'),('2017-06-23','9294D755-3C9B-4403-A725-7D777FD33237','4'),('2017-06-23','9C6E6916-E4FE-43D0-9D01-34FD2DB0FDE9','4'),('2017-06-23','BB2034F0-4383-400C-BCE9-0FD3D93E450D','4'),('2017-06-23','C4D67EFC-37E6-4AF8-8AAA-847B15727D7D','4'),('2017-06-23','DC778E0F-2897-453C-A07E-15AB54A0FBDA','4'),('2017-06-23','E96992B4-7D62-4A5A-BC50-6B23F6D6A978','4');
/*!40000 ALTER TABLE `pro_visitdepth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-03 21:24:05
