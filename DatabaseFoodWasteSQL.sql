-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: food_waste
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `annuncio`
--

DROP TABLE IF EXISTS `annuncio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `annuncio` (
  `ID_ANNUNCIO` int NOT NULL AUTO_INCREMENT,
  `prezzo_originale` double NOT NULL,
  `sconto_partenza` int NOT NULL,
  `sconto_massimo` int NOT NULL,
  `data_scadenza` date NOT NULL,
  `data_annuncio` date NOT NULL,
  `quantita` int NOT NULL,
  `ID_UTENTE` varchar(105) NOT NULL,
  `ID_PRODOTTI` varchar(105) NOT NULL,
  `ID_ORDINE` int NOT NULL,
  PRIMARY KEY (`ID_ANNUNCIO`),
  KEY `annuncio_ordine_idx` (`ID_ORDINE`),
  KEY `annuncio_prodotti_idx` (`ID_PRODOTTI`),
  KEY `annuncio_vendita_idx` (`ID_UTENTE`),
  CONSTRAINT `annuncio_ordine` FOREIGN KEY (`ID_ORDINE`) REFERENCES `ordine` (`ID_ORDINE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `annuncio_prodotti` FOREIGN KEY (`ID_PRODOTTI`) REFERENCES `prodotti` (`ID_PRODOTTI`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `annuncio_vendita` FOREIGN KEY (`ID_UTENTE`) REFERENCES `attivita_vendita` (`ID_UTENTE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annuncio`
--

LOCK TABLES `annuncio` WRITE;
/*!40000 ALTER TABLE `annuncio` DISABLE KEYS */;
INSERT INTO `annuncio` VALUES (1,3.5,35,65,'2024-01-02','2023-12-31',2,'10000000001','84729103',42),(2,4.1,25,50,'2023-10-30','2023-10-28',4,'10000000002','57382910',18),(3,2.8,25,60,'2024-02-04','2024-02-02',10,'10000000003','39284756',55),(4,1.5,20,60,'2023-09-18','2023-09-16',3,'10000000004','92837465',3),(5,5,20,70,'2023-11-22','2023-11-20',1,'10000000005','81726354',27),(6,2.2,30,50,'2023-10-18','2023-10-16',4,'10000000006','84756192',14),(7,1.8,25,65,'2024-01-22','2024-01-20',8,'10000000007','82930415',50),(8,3.9,20,50,'2023-10-05','2023-10-03',2,'10000000008','37485920',9),(9,6.5,20,55,'2023-12-20','2023-12-18',5,'10000000009','29384756',38),(10,2.1,25,50,'2023-09-12','2023-09-10',6,'10000000010','65748293',1),(11,4.5,25,65,'2023-12-10','2023-12-08',12,'10000000011','10928374',34),(12,1.9,20,45,'2023-10-12','2023-10-10',3,'10000000012','84756291',12),(13,3.2,25,60,'2024-01-10','2024-01-08',2,'10000000013','56478392',45),(14,2.5,25,55,'2023-11-12','2023-11-10',7,'10000000014','39485716',23),(15,1.75,20,60,'2023-12-03','2023-12-01',4,'10000000015','92837164',31),(16,4,20,45,'2023-09-20','2023-09-18',5,'10000000016','18294368',4),(17,2.9,30,60,'2023-11-02','2023-10-31',2,'10000000017','74839201',19),(18,5.5,25,60,'2023-11-28','2023-11-26',1,'10000000018','56372819',29),(19,3.4,35,50,'2024-01-18','2024-01-16',8,'10000000019','29384710',48),(20,1.2,30,70,'2023-10-02','2023-09-30',10,'10000000020','84756392',8),(21,2.6,35,65,'2023-11-20','2023-11-18',3,'10000000021','10293856',26),(22,4.8,20,50,'2024-01-28','2024-01-26',4,'10000000022','57483920',52),(23,3.1,35,60,'2023-10-08','2023-10-06',2,'10000000023','93847561',10),(24,1.5,30,70,'2023-12-12','2023-12-10',5,'10000000024','28475639',35),(25,2,35,65,'2023-10-25','2023-10-23',6,'10000000025','75648392',16),(26,5.2,30,45,'2023-12-29','2023-12-27',1,'10000000026','19283756',41),(27,3.8,35,55,'2023-09-21','2023-09-19',2,'10000000027','84756201',5),(28,1.9,20,55,'2023-11-10','2023-11-08',15,'10000000028','56473892',22),(29,2.4,30,55,'2024-01-12','2024-01-10',4,'10000000029','39284710',46),(30,4.6,30,70,'2023-10-10','2023-10-08',3,'10000000030','91827354',11),(31,2.7,30,70,'2023-12-22','2023-12-20',5,'10000000031','47582910',39),(32,3.3,30,60,'2023-09-15','2023-09-13',2,'10000000032','10293867',2),(33,1.8,20,45,'2023-10-21','2023-10-19',8,'10000000033','56473849',15),(34,2.5,20,45,'2023-12-08','2023-12-06',6,'10000000034','28374679',33),(35,5.9,20,45,'2024-01-20','2024-01-18',1,'10000000035','65748312',49),(36,3.6,25,50,'2023-09-25','2023-09-23',4,'10000000001','34928155',6),(37,2.1,35,65,'2023-11-05','2023-11-03',10,'10000000002','92837445',20),(38,4.2,25,65,'2024-01-08','2024-01-06',2,'10000000003','81726334',44),(39,1.4,25,55,'2023-10-15','2023-10-13',5,'10000000004','58493001',13),(40,3.9,25,50,'2023-11-15','2023-11-13',3,'10000000005','19283726',24),(41,2.8,25,45,'2023-12-15','2023-12-13',4,'10000000006','74658372',36),(42,5.1,35,60,'2024-01-30','2024-01-28',1,'10000000007','28394031',53),(43,2.3,25,65,'2023-09-28','2023-09-26',6,'10000000008','45678921',7),(44,1.7,30,55,'2023-12-01','2023-11-29',8,'10000000009','38475632',30),(45,4.4,25,50,'2023-12-27','2023-12-25',2,'10000000010','95847382',40),(46,2.9,30,45,'2023-11-18','2023-11-16',5,'10000000011','12394877',25),(47,3.5,20,70,'2023-10-28','2023-10-26',3,'10000000012','84756112',17),(48,1.6,20,70,'2024-01-05','2024-01-03',7,'10000000013','49586711',43),(49,5.8,35,50,'2023-12-05','2023-12-03',1,'10000000014','58694011',32),(50,2.4,30,70,'2024-01-25','2024-01-23',4,'10000000015','73829124',51),(51,3.7,30,50,'2023-11-25','2023-11-23',2,'10000000016','19203867',28),(52,1.9,35,60,'2023-12-18','2023-12-16',10,'10000000017','56473839',37),(53,4.1,35,55,'2024-01-15','2024-01-13',3,'10000000018','82930435',47),(54,2.6,20,55,'2024-02-02','2024-01-31',5,'10000000019','37485940',54),(55,1.5,35,45,'2023-11-08','2023-11-06',8,'10000000020','91028314',21);
/*!40000 ALTER TABLE `annuncio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attivita_vendita`
--

DROP TABLE IF EXISTS `attivita_vendita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attivita_vendita` (
  `ID_UTENTE` varchar(105) NOT NULL,
  `tipologia_vendita` varchar(105) DEFAULT NULL,
  PRIMARY KEY (`ID_UTENTE`),
  CONSTRAINT `vendita_utente` FOREIGN KEY (`ID_UTENTE`) REFERENCES `utenti` (`ID_UTENTE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attivita_vendita`
--

LOCK TABLES `attivita_vendita` WRITE;
/*!40000 ALTER TABLE `attivita_vendita` DISABLE KEYS */;
INSERT INTO `attivita_vendita` VALUES ('10000000001','ingrosso alimentare'),('10000000002','ingrosso alimentare'),('10000000003','ingrosso alimentare'),('10000000004','ingrosso alimentare'),('10000000005','ingrosso alimentare'),('10000000006','ingrosso alimentare'),('10000000007','ingrosso alimentare'),('10000000008','supermercato'),('10000000009','supermercato'),('10000000010','supermercato'),('10000000011','supermercato'),('10000000012','supermercato'),('10000000013','supermercato'),('10000000014','supermercato'),('10000000015','supermercato'),('10000000016','supermercato'),('10000000017','supermercato'),('10000000018','supermercato'),('10000000019','supermercato'),('10000000020','minimarket'),('10000000021','minimarket'),('10000000022','minimarket'),('10000000023','minimarket'),('10000000024','minimarket'),('10000000025','minimarket'),('10000000026','minimarket'),('10000000027','minimarket'),('10000000028','minimarket'),('10000000029','minimarket'),('10000000030','minimarket'),('10000000031','minimarket'),('10000000032','minimarket'),('10000000033','minimarket'),('10000000034','minimarket'),('10000000035','minimarket');
/*!40000 ALTER TABLE `attivita_vendita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `catalogo_annuncio`
--

DROP TABLE IF EXISTS `catalogo_annuncio`;
/*!50001 DROP VIEW IF EXISTS `catalogo_annuncio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `catalogo_annuncio` AS SELECT 
 1 AS `id_annuncio`,
 1 AS `data_annuncio`,
 1 AS `nome_utente`,
 1 AS `nome`,
 1 AS `marca`,
 1 AS `quantita`,
 1 AS `data_scadenza`,
 1 AS `prezzo_originale`,
 1 AS `prezzo_finale`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clienti`
--

DROP TABLE IF EXISTS `clienti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienti` (
  `ID_UTENTE` varchar(105) NOT NULL,
  `tipologia_clienti` varchar(105) NOT NULL,
  `Agevolazione` tinyint NOT NULL,
  PRIMARY KEY (`ID_UTENTE`),
  CONSTRAINT `cliente_utente` FOREIGN KEY (`ID_UTENTE`) REFERENCES `utenti` (`ID_UTENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_agevolazione_privato` CHECK ((((`tipologia_clienti` = _utf8mb4'privato') and (`agevolazione` = 0)) or (`tipologia_clienti` = _utf8mb4'azienda')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienti`
--

LOCK TABLES `clienti` WRITE;
/*!40000 ALTER TABLE `clienti` DISABLE KEYS */;
INSERT INTO `clienti` VALUES ('20000000001','azienda',0),('20000000002','azienda',0),('20000000003','azienda',0),('20000000004','azienda',0),('20000000005','azienda',0),('20000000006','azienda',0),('20000000007','azienda',0),('20000000008','azienda',0),('20000000009','azienda',0),('20000000010','azienda',0),('20000000011','azienda',0),('20000000012','azienda',0),('20000000013','azienda',0),('20000000014','azienda',0),('20000000015','azienda',0),('20000000016','azienda',0),('20000000017','azienda',0),('20000000018','azienda',0),('20000000019','azienda',0),('20000000020','azienda',0),('20000000021','azienda',1),('20000000022','azienda',1),('20000000023','azienda',1),('20000000024','azienda',1),('20000000025','azienda',1),('20000000026','azienda',1),('20000000027','azienda',1),('20000000028','azienda',1),('20000000029','azienda',1),('20000000030','azienda',1),('20000000031','azienda',1),('20000000032','azienda',1),('20000000033','azienda',1),('20000000034','azienda',1),('20000000035','azienda',1),('20000000036','azienda',1),('20000000037','azienda',1),('20000000038','azienda',1),('20000000039','azienda',1),('20000000040','azienda',1),('BLLFBR83L12F205F','privato',0),('BNCGPP85B12F205B','privato',0),('BNCGPP86G27F205U','privato',0),('BRBGLI81J10H501J','privato',0),('BSSGNN95A31H501I','privato',0),('BSSSST78E25H501Y','privato',0),('CLNSRN86I29D122I','privato',0),('CRBMRT93S19H501S','privato',0),('CSTCHR82B12F205J','privato',0),('CSTPLA78F26D122F','privato',0),('CSTPLA81H08D122V','privato',0),('CSTSRN91M23D122G','privato',0),('DNNMCC78C23D122K','privato',0),('DNNMCH87N04H501H','privato',0),('DNTLCU94I19H501W','privato',0),('DNTLSS80T30F205T','privato',0),('FBRMCH88G07H501G','privato',0),('FBRSRN89J30F205X','privato',0),('FLCMTT94K21F205K','privato',0),('FRNGLI79O15F205I','privato',0),('FRNGLL88D04H501L','privato',0),('FRRMRT88F06F205Z','privato',0),('GLLFNC95D04H501D','privato',0),('GLLGLI83K11D122Y','privato',0),('GLLNDR96P26D122J','privato',0),('GLLSST92E15F205M','privato',0),('GRGELN81I09F205C','privato',0),('GTTMRA96Q27F205Q','privato',0),('LMBMTT91L22H501Z','privato',0),('LMBRTA89L02D122L','privato',0),('LNNMRA84Q07H501K','privato',0),('LNNMRT86F26D122N','privato',0),('MNTCHR90B22H501V','privato',0),('MRNNCL82E15F205E','privato',0),('MRRLRN81G07H501O','privato',0),('MRRMCC93R18F205L','privato',0),('MRZFRD91N24F205N','privato',0),('MRZRTA87M03F205A','privato',0),('MZZDRD94J20D122D','privato',0),('NCLGNN85A11D122U','privato',0),('NCLNND79N14D122B','privato',0),('NGRSMN94H18F205P','privato',0),('NGRSST80S29D122M','privato',0),('PCCFRD96O25H501C','privato',0),('PCCGLL82D14D122X','privato',0),('PRRVCN84R08D122R','privato',0),('PRTCHR85T10H501N','privato',0),('PRTELN89I29D122Q','privato',0),('PSSLRA87O05D122O','privato',0),('PZZSMN86H28H501B','privato',0),('QRTDRD83J10H501R','privato',0),('QRTGNN90A21F205O','privato',0),('RMNLCU92H18F205H','privato',0),('RNDVNT89K01H501E','privato',0),('RSSLSS95B02D122P','privato',0),('RSSMRA80A01H501A','privato',0),('RSSVNT91K21F205S','privato',0),('RZZLRA84P06F205D','privato',0),('RZZSNT79P16H501P','privato',0),('SNTFBR87L02D122T','privato',0),('SNTGNN83M13H501M','privato',0),('SNTMRA93Q17D122E','privato',0),('SNTMRT82C13H501Q','privato',0),('TRVLGU78D24F205R','privato',0),('TRVSRN79M13H501U','privato',0),('TRVVCN80R28H501F','privato',0),('TSSLRN92G17D122A','privato',0),('VLLFNC88E05D122S','privato',0),('VLLMCH96N24F205V','privato',0),('VLLMRT85S09F205G','privato',0),('VLPMCC95C03F205W','privato',0),('VRDLGU90C23D122C','privato',0),('ZNNGLI84O05D122W','privato',0),('ZNNLSS90T20D122H','privato',0),('ZNNMCH92F16H501T','privato',0);
/*!40000 ALTER TABLE `clienti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `ID_ORDINE` int NOT NULL AUTO_INCREMENT,
  `data_ordine` date NOT NULL,
  `ID_UTENTE` varchar(105) DEFAULT NULL,
  `sconto_applicato` int NOT NULL,
  `tipo_pagamento` varchar(105) DEFAULT NULL,
  PRIMARY KEY (`ID_ORDINE`),
  KEY `ordine_utente_idx` (`ID_UTENTE`),
  CONSTRAINT `ordine_cliente` FOREIGN KEY (`ID_UTENTE`) REFERENCES `clienti` (`ID_UTENTE`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
INSERT INTO `ordine` VALUES (1,'2023-09-12','RSSMRA80A01H501A',25,'carta'),(2,'2023-09-15','BNCGPP85B12F205B',30,'satispay'),(3,'2023-09-18','20000000021',60,'paypal'),(4,'2023-09-20','VRDLGU90C23D122C',20,'contanti'),(5,'2023-09-21','GLLFNC95D04H501D',35,'carta'),(6,'2023-09-25','20000000022',50,'paypal'),(7,'2023-09-28','MRNNCL82E15F205E',25,'satispay'),(8,'2023-10-02','CSTPLA78F26D122F',30,'carta'),(9,'2023-10-05','20000000001',20,'paypal'),(10,'2023-10-08','FBRMCH88G07H501G',35,'contanti'),(11,'2023-10-10','20000000023',70,'carta'),(12,'2023-10-12','RMNLCU92H18F205H',20,'satispay'),(13,'2023-10-15','CLNSRN86I29D122I',25,'paypal'),(14,'2023-10-18','BRBGLI81J10H501J',30,'carta'),(15,'2023-10-21','20000000024',45,'contanti'),(16,'2023-10-25','FLCMTT94K21F205K',35,'satispay'),(17,'2023-10-28','LMBRTA89L02D122L',20,'carta'),(18,'2023-10-30','20000000002',25,'paypal'),(19,'2023-11-02','SNTGNN83M13H501M',30,'contanti'),(20,'2023-11-05','20000000025',65,'carta'),(21,'2023-11-08','MRZFRD91N24F205N',35,'satispay'),(22,'2023-11-10','PSSLRA87O05D122O',20,'paypal'),(23,'2023-11-12','20000000026',55,'carta'),(24,'2023-11-15','RZZSNT79P16H501P',25,'contanti'),(25,'2023-11-18','GTTMRA96Q27F205Q',30,'satispay'),(26,'2023-11-20','20000000003',35,'paypal'),(27,'2023-11-22','PRRVCN84R08D122R',20,'carta'),(28,'2023-11-25','20000000027',50,'satispay'),(29,'2023-11-28','CRBMRT93S19H501S',25,'contanti'),(30,'2023-12-01','DNTLSS80T30F205T',30,'carta'),(31,'2023-12-03','20000000028',60,'paypal'),(32,'2023-12-05','NCLGNN85A11D122U',35,'satispay'),(33,'2023-12-08','MNTCHR90B22H501V',20,'carta'),(34,'2023-12-10','20000000004',25,'contanti'),(35,'2023-12-12','VLPMCC95C03F205W',30,'paypal'),(36,'2023-12-15','20000000029',45,'carta'),(37,'2023-12-18','PCCGLL82D14D122X',35,'satispay'),(38,'2023-12-20','BSSSST78E25H501Y',20,'paypal'),(39,'2023-12-22','20000000030',70,'contanti'),(40,'2023-12-27','FRRMRT88F06F205Z',25,'carta'),(41,'2023-12-29','TSSLRN92G17D122A',30,'satispay'),(42,'2024-01-02','20000000005',35,'paypal'),(43,'2024-01-05','PZZSMN86H28H501B',20,'contanti'),(44,'2024-01-08','20000000031',65,'carta'),(45,'2024-01-10','GRGELN81I09F205C',25,'satispay'),(46,'2024-01-12','MZZDRD94J20D122D',30,'paypal'),(47,'2024-01-15','20000000032',55,'carta'),(48,'2024-01-18','RNDVNT89K01H501E',35,'contanti'),(49,'2024-01-20','BLLFBR83L12F205F',20,'satispay'),(50,'2024-01-22','20000000006',25,'carta'),(51,'2024-01-25','CSTSRN91M23D122G',30,'paypal'),(52,'2024-01-28','20000000033',50,'carta'),(53,'2024-01-30','DNNMCH87N04H501H',35,'contanti'),(54,'2024-02-02','FRNGLI79O15F205I',20,'satispay'),(55,'2024-02-04','20000000034',60,'paypal'),(56,'2024-02-06','GLLNDR96P26D122J',25,'carta'),(57,'2024-02-09','LNNMRA84Q07H501K',30,'satispay'),(58,'2024-02-11','20000000007',35,'contanti'),(59,'2024-02-14','MRRMCC93R18F205L',20,'carta'),(60,'2024-02-16','20000000035',45,'paypal'),(61,'2024-02-18','NGRSST80S29D122M',25,'satispay'),(62,'2024-02-20','PRTCHR85T10H501N',30,'carta'),(63,'2024-02-23','20000000036',70,'contanti'),(64,'2024-02-25','QRTGNN90A21F205O',35,'paypal'),(65,'2024-02-28','RSSLSS95B02D122P',20,'satispay'),(66,'2024-03-01','20000000008',25,'carta'),(67,'2024-03-03','SNTMRT82C13H501Q',30,'contanti'),(68,'2024-03-05','20000000037',65,'paypal'),(69,'2024-03-08','TRVLGU78D24F205R',35,'satispay'),(70,'2024-03-10','VLLFNC88E05D122S',20,'carta'),(71,'2024-03-12','20000000038',55,'contanti'),(72,'2024-03-15','ZNNMCH92F16H501T',25,'paypal'),(73,'2024-03-17','BNCGPP86G27F205U',30,'satispay'),(74,'2024-03-19','20000000009',35,'carta'),(75,'2024-03-22','CSTPLA81H08D122V',20,'contanti'),(76,'2023-09-14','DNTLCU94I19H501W',25,'paypal'),(77,'2023-09-17','20000000039',50,'carta'),(78,'2023-09-22','FBRSRN89J30F205X',30,'satispay'),(79,'2023-09-26','GLLGLI83K11D122Y',35,'contanti'),(80,'2023-09-30','20000000040',60,'paypal'),(81,'2023-10-03','LMBMTT91L22H501Z',20,'carta'),(82,'2023-10-06','20000000010',25,'satispay'),(83,'2023-10-09','MRZRTA87M03F205A',30,'contanti'),(84,'2023-10-13','NCLNND79N14D122B',35,'paypal'),(85,'2023-10-16','20000000021',70,'carta'),(86,'2023-10-20','PCCFRD96O25H501C',20,'satispay'),(87,'2023-10-23','RZZLRA84P06F205D',25,'contanti'),(88,'2023-10-26','20000000022',45,'paypal'),(89,'2023-10-31','SNTMRA93Q17D122E',30,'carta'),(90,'2023-11-03','20000000011',35,'satispay'),(91,'2023-11-06','TRVVCN80R28H501F',20,'contanti'),(92,'2023-11-09','VLLMRT85S09F205G',25,'paypal'),(93,'2023-11-13','20000000023',65,'carta'),(94,'2023-11-16','ZNNLSS90T20D122H',30,'satispay'),(95,'2023-11-19','BSSGNN95A31H501I',35,'contanti'),(96,'2023-11-23','20000000024',55,'paypal'),(97,'2023-11-26','CSTCHR82B12F205J',20,'carta'),(98,'2023-11-29','20000000012',25,'satispay'),(99,'2023-12-02','DNNMCC78C23D122K',30,'contanti'),(100,'2023-12-06','FRNGLL88D04H501L',35,'paypal'),(101,'2023-12-09','20000000025',50,'carta'),(102,'2023-12-13','GLLSST92E15F205M',20,'satispay'),(103,'2023-12-16','LNNMRT86F26D122N',25,'contanti'),(104,'2023-12-19','20000000026',60,'paypal'),(105,'2023-12-23','MRRLRN81G07H501O',30,'carta'),(106,'2023-12-28','20000000013',35,'satispay'),(107,'2023-12-30','NGRSMN94H18F205P',20,'contanti'),(108,'2024-01-03','PRTELN89I29D122Q',25,'paypal'),(109,'2024-01-06','20000000027',70,'carta'),(110,'2024-01-09','QRTDRD83J10H501R',30,'satispay'),(111,'2024-01-13','RSSVNT91K21F205S',35,'contanti'),(112,'2024-01-16','20000000028',45,'paypal'),(113,'2024-01-19','SNTFBR87L02D122T',20,'carta'),(114,'2024-01-23','20000000014',25,'satispay'),(115,'2024-01-26','TRVSRN79M13H501U',30,'contanti'),(116,'2024-01-29','VLLMCH96N24F205V',35,'paypal'),(117,'2024-02-01','20000000029',65,'carta'),(118,'2024-02-05','ZNNGLI84O05D122W',20,'satispay'),(119,'2024-02-08','RSSMRA80A01H501A',25,'contanti'),(120,'2024-02-12','20000000030',55,'paypal'),(121,'2024-02-15','BNCGPP85B12F205B',30,'carta'),(122,'2024-02-19','20000000015',35,'satispay'),(123,'2024-02-21','VRDLGU90C23D122C',20,'contanti'),(124,'2024-02-24','GLLFNC95D04H501D',25,'paypal'),(125,'2024-02-27','20000000031',50,'carta'),(126,'2024-03-02','MRNNCL82E15F205E',30,'satispay'),(127,'2024-03-06','CSTPLA78F26D122F',35,'contanti'),(128,'2024-03-09','20000000032',60,'paypal'),(129,'2024-03-11','FBRMCH88G07H501G',20,'carta'),(130,'2024-03-14','20000000016',25,'satispay'),(131,'2024-03-16','RMNLCU92H18F205H',30,'contanti'),(132,'2024-03-18','CLNSRN86I29D122I',35,'paypal'),(133,'2024-03-20','20000000033',70,'carta'),(134,'2024-03-21','BRBGLI81J10H501J',20,'satispay'),(135,'2024-03-22','FLCMTT94K21F205K',25,'contanti'),(136,'2023-10-11','20000000034',45,'paypal'),(137,'2023-11-01','LMBRTA89L02D122L',30,'carta'),(138,'2023-11-21','20000000017',35,'satispay'),(139,'2023-12-11','SNTGNN83M13H501M',20,'contanti'),(140,'2024-01-04','MRZFRD91N24F205N',25,'paypal'),(141,'2024-01-24','20000000035',65,'carta'),(142,'2024-02-13','PSSLRA87O05D122O',30,'satispay'),(143,'2024-03-04','RZZSNT79P16H501P',35,'contanti'),(144,'2024-03-13','20000000036',55,'paypal'),(145,'2023-09-19','GTTMRA96Q27F205Q',20,'carta'),(146,'2023-10-01','20000000018',25,'satispay'),(147,'2023-10-24','PRRVCN84R08D122R',30,'contanti'),(148,'2023-11-04','CRBMRT93S19H501S',35,'paypal'),(149,'2023-11-27','20000000037',50,'carta'),(150,'2023-12-14','DNTLSS80T30F205T',20,'satispay');
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posizione`
--

DROP TABLE IF EXISTS `posizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posizione` (
  `ID_POSIZIONE` int NOT NULL AUTO_INCREMENT,
  `indirizzo` varchar(105) NOT NULL,
  `ID_UTENTE` varchar(105) NOT NULL,
  PRIMARY KEY (`ID_POSIZIONE`),
  KEY `posizione_utente_idx` (`ID_UTENTE`),
  CONSTRAINT `posizione_utente` FOREIGN KEY (`ID_UTENTE`) REFERENCES `utenti` (`ID_UTENTE`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posizione`
--

LOCK TABLES `posizione` WRITE;
/*!40000 ALTER TABLE `posizione` DISABLE KEYS */;
INSERT INTO `posizione` VALUES (1,'Via del Corso 12','RSSMRA80A01H501A'),(2,'Via Montenapoleone 8','BNCGPP85B12F205B'),(3,'Via Toledo 45','VRDLGU90C23D122C'),(4,'Via Roma 112','GLLFNC95D04H501D'),(5,'Piazza della Signoria 4','MRNNCL82E15F205E'),(6,'Via dell\'Indipendenza 22','CSTPLA78F26D122F'),(7,'Via Maqueda 88','FBRMCH88G07H501G'),(8,'Via XX Settembre 15','RMNLCU92H18F205H'),(9,'Piazza San Marco 44','CLNSRN86I29D122I'),(10,'Corso Vittorio Emanuele 10','BRBGLI81J10H501J'),(11,'Via Nazionale 55','FLCMTT94K21F205K'),(12,'Corso Buenos Aires 30','LMBRTA89L02D122L'),(13,'Spaccanapoli 12','SNTGNN83M13H501M'),(14,'Piazza Castello 9','MRZFRD91N24F205N'),(15,'Via de\' Tornabuoni 3','PSSLRA87O05D122O'),(16,'Via Zamboni 18','RZZSNT79P16H501P'),(17,'Corso Vittorio Emanuele 200','GTTMRA96Q27F205Q'),(18,'Via Garibaldi 1','PRRVCN84R08D122R'),(19,'Rialto 14','CRBMRT93S19H501S'),(20,'Lungomare Nazario Sauro 5','DNTLSS80T30F205T'),(21,'Via Appia Nuova 100','NCLGNN85A11D122U'),(22,'Viale Monza 50','MNTCHR90B22H501V'),(23,'Corso Umberto I 80','VLPMCC95C03F205W'),(24,'Via Po 25','PCCGLL82D14D122X'),(25,'Piazza della Repubblica 2','BSSSST78E25H501Y'),(26,'Via Ugo Bassi 15','FRRMRT88F06F205Z'),(27,'Via Roma 300','TSSLRN92G17D122A'),(28,'Piazza De Ferrari 10','PZZSMN86H28H501B'),(29,'Cannaregio 100','GRGELN81I09F205C'),(30,'Via Sparano 40','MZZDRD94J20D122D'),(31,'Viale Trastevere 80','RNDVNT89K01H501E'),(32,'Corso Vercelli 12','BLLFBR83L12F205F'),(33,'Via Chiaia 60','CSTSRN91M23D122G'),(34,'Corso Vittorio Emanuele II 50','DNNMCH87N04H501H'),(35,'Via Calzaiuoli 18','FRNGLI79O15F205I'),(36,'Piazza Maggiore 6','GLLNDR96P26D122J'),(37,'Via Liberta 40','LNNMRA84Q07H501K'),(38,'Via Balbi 5','MRRMCC93R18F205L'),(39,'Dorsoduro 50','NGRSST80S29D122M'),(40,'Piazza Umberto I 12','PRTCHR85T10H501N'),(41,'Via Cola di Rienzo 90','QRTGNN90A21F205O'),(42,'Via Dante 15','RSSLSS95B02D122P'),(43,'Via Luca Giordano 30','SNTMRT82C13H501Q'),(44,'Via Garibaldi 45','TRVLGU78D24F205R'),(45,'Borgo Ognissanti 10','VLLFNC88E05D122S'),(46,'Via Rizzoli 8','ZNNMCH92F16H501T'),(47,'Viale Strasburgo 100','BNCGPP86G27F205U'),(48,'Corso Italia 20','CSTPLA81H08D122V'),(49,'Santa Croce 15','DNTLCU94I19H501W'),(50,'Corso Cavour 55','FBRSRN89J30F205X'),(51,'Via Tuscolana 500','GLLGLI83K11D122Y'),(52,'Viale Certosa 110','LMBMTT91L22H501Z'),(53,'Via Epomeo 70','MRZRTA87M03F205A'),(54,'Corso Francia 200','NCLNND79N14D122B'),(55,'Viale Giannotti 30','PCCFRD96O25H501C'),(56,'Via Mazzini 150','RZZLRA84P06F205D'),(57,'Via Notarbartolo 25','SNTMRA93Q17D122E'),(58,'Via San Vincenzo 40','TRVVCN80R28H501F'),(59,'San Polo 80','VLLMRT85S09F205G'),(60,'Via Giulio Petroni 90','ZNNLSS90T20D122H'),(61,'Via Tiburtina 600','BSSGNN95A31H501I'),(62,'Via Padova 120','CSTCHR82B12F205J'),(63,'Corso Garibaldi 150','DNNMCC78C23D122K'),(64,'Corso Giulio Cesare 88','FRNGLL88D04H501L'),(65,'Via Aretina 200','GLLSST92E15F205M'),(66,'Via San Felice 60','LNNMRT86F26D122N'),(67,'Via Leonardo da Vinci 120','MRRLRN81G07H501O'),(68,'Via Cantore 30','NGRSMN94H18F205P'),(69,'Castello 200','PRTELN89I29D122Q'),(70,'Viale Unita d Italia 45','QRTDRD83J10H501R'),(71,'Via Ostiense 150','RSSVNT91K21F205S'),(72,'Viale Corsica 80','SNTFBR87L02D122T'),(73,'Via Posillipo 200','TRVSRN79M13H501U'),(74,'Corso Trapani 110','VLLMCH96N24F205V'),(75,'Via Baracca 150','ZNNGLI84O05D122W'),(76,'Viale dell\'Industria 10','10000000001'),(77,'Via dei Mercati Generali 5','10000000002'),(78,'Zona Industriale Roveri 1','10000000003'),(79,'Strada Settimo 150','10000000004'),(80,'Via delle Industrie 20','10000000005'),(81,'Polo Artigianale 3','10000000006'),(82,'Osmannoro Viale 5','10000000007'),(83,'Viale Europa 40','10000000008'),(84,'Via Lorenteggio 200','10000000009'),(85,'Via Larga 10','10000000010'),(86,'Corso Romania 46','10000000011'),(87,'Via Venezia 100','10000000012'),(88,'Corso Milano 80','10000000013'),(89,'Via Fiumara 15','10000000014'),(90,'Centro Commerciale Forum 1','10000000015'),(91,'Strada Santa Caterina 20','10000000016'),(92,'Viale Gelso Bianco 5','10000000017'),(93,'Centro Direzionale Isola A','10000000018'),(94,'Viale Nenni 12','10000000019'),(95,'Via Solari 30','10000000020'),(96,'Via Marsala 29','10000000021'),(97,'Via Prenestina 150','10000000022'),(98,'Via San Donato 45','10000000023'),(99,'Via dei Mille 10','10000000024'),(100,'Via Marconi 12','10000000025'),(101,'Via Tortona 5','10000000026'),(102,'Via Ghibellina 40','10000000027'),(103,'Piazza Principe 2','10000000028'),(104,'Via Roma 150','10000000029'),(105,'Piazza Testaccio 8','10000000030'),(106,'Via Madama Cristina 20','10000000031'),(107,'Via Toledo 120','10000000032'),(108,'Via Amendola 50','10000000033'),(109,'Via Saragozza 45','10000000034'),(110,'Strada Nova 100','10000000035'),(111,'Via Giovanni Agnelli 200','20000000001'),(112,'Via delle Scuole 1','20000000002'),(113,'Viale del Policlinico 155','20000000003'),(114,'Via del Lavoro 30','20000000004'),(115,'Piazza Garibaldi 10','20000000005'),(116,'Viale Fanti 4','20000000006'),(117,'Piazza Navona 50','20000000007'),(118,'Corso Como 15','20000000008'),(119,'Via D\'Azeglio 20','20000000009'),(120,'Viale Regione Siciliana 100','20000000010'),(121,'Piazza Vittorio Veneto 12','20000000011'),(122,'Campo Santa Margherita 5','20000000012'),(123,'Via Caracciolo 22','20000000013'),(124,'Via Veneto 100','20000000014'),(125,'Piazza Santo Spirito 8','20000000015'),(126,'Via Cavour 40','20000000016'),(127,'Via Mecenate 76','20000000017'),(128,'Via Ostica 55','20000000018'),(129,'Trastevere 15','20000000019'),(130,'Via Tribunali 30','20000000020'),(131,'Piazza San Giovanni 1','20000000021'),(132,'Via dell\'Accoglienza 10','20000000022'),(133,'Piazza Inferiore di S. Francesco 2','20000000023'),(134,'Via Toscana 12','20000000024'),(135,'Piazza di Sant\'Egidio 3','20000000025'),(136,'Viale Toscana 28','20000000026'),(137,'Via dei Medici 5','20000000027'),(138,'Via Volturno 58','20000000028'),(139,'Via della Conciliazione 1','20000000029'),(140,'Via della Solidarieta 4','20000000030'),(141,'Via Sammartini 120','20000000031'),(142,'Via del Carmine 14','20000000032'),(143,'Via di Ripoli 200','20000000033'),(144,'Via Mambretti 33','20000000034'),(145,'Viale Piave 2','20000000035'),(146,'Borgo Paggeria 15','20000000036'),(147,'Piazza San Pietro 1','20000000037'),(148,'Via Ulpiano 11','20000000038'),(149,'Valdocco 32','20000000039'),(150,'Via Stella 20','20000000040');
/*!40000 ALTER TABLE `posizione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodotti`
--

DROP TABLE IF EXISTS `prodotti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotti` (
  `ID_PRODOTTI` varchar(105) NOT NULL,
  `nome` varchar(105) NOT NULL,
  `tipo` varchar(105) NOT NULL,
  `marca` varchar(105) NOT NULL,
  PRIMARY KEY (`ID_PRODOTTI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotti`
--

LOCK TABLES `prodotti` WRITE;
/*!40000 ALTER TABLE `prodotti` DISABLE KEYS */;
INSERT INTO `prodotti` VALUES ('10293816','macinato scelto di manzo 300gr','carne','macelleria tradizione'),('10293817','merluzzo fresco filetti 400gr','pesce','pescato d oro'),('10293818','tonno all olio di oliva 3x80gr','conserva','mare blu'),('10293836','aceto di vino bianco 1L','condimento','acetaia ducale'),('10293837','penne rigate di grano duro 500gr','pasta','pastaia d italia'),('10293847','uova allevate a terra 6pz','uova','rurale'),('10293856','cipolle bianche 1kg','ortofrutta','terra buona'),('10293857','latte scremato UHT 1L','latte','mucca felice'),('10293858','cannella in polvere 20gr','condimento','orto rosso'),('10293859','cicoria fresca 500gr','ortofrutta','verde foglia'),('10293867','pomodori datterino 250gr','ortofrutta','verde foglia'),('10293877','banane equosolidali 1kg','ortofrutta','tropicana'),('10293897','riso carnaroli per risotti 1kg','cereali','chicco bianco'),('10928314','albicocche 500gr','ortofrutta','frutteto reale'),('10928334','olio di semi di girasole 2L','condimento','valle del sole'),('10928354','prezzemolo fresco mazzetto','ortofrutta','verde foglia'),('10928374','mozzarella fiordilatte 3x100gr','latticino','caseificio del borgo'),('12394817','fagioli borlotti secchi 500gr','legumi','campo verde'),('12394837','pan bauletto grano duro 400gr','pane','gran forno'),('12394857','farina di riso 500gr','farina','riso scotti'),('12394877','finocchi freschi 1kg','ortofrutta','verde foglia'),('18294318','sale iodato fino 1kg','condimento','saline d italia'),('18294338','origano essiccato 20gr','condimento','orto rosso'),('18294368','patate a pasta bianca 2kg','ortofrutta','terra buona'),('18294388','sovracosce di pollo 500gr','carne','macelleria tradizione'),('19203818','pancarre classico 24 fette','pane','gran forno'),('19203847','lievito di birra fresco 25gr','lievito','forno attivo'),('19203867','mele golden 1kg','ortofrutta','frutteto reale'),('19203887','fave secche decorticate 400gr','legumi','campo verde'),('19283711','spaghetti integrali 500gr','pasta','natura viva'),('19283716','arista di maiale intera 800gr','carne','carni sceltissime'),('19283726','spinaci freschi sfusi 500gr','ortofrutta','orto sole'),('19283732','fagiolini finissimi surgelati 1kg','surgelato','orto freddo'),('19283736','polpa di pomodoro a cubetti 3x400gr','conserva','orto rosso'),('19283746','farina 0 1kg','farina','mulino bianco'),('19283756','zucchine scure 500gr','ortofrutta','orto sole'),('19283758','uvetta sultanina 200gr','ortofrutta','frutteto reale'),('19283786','platessa surgelata filetti 400gr','pesce','capitan mare'),('19284717','filetti di acciughe all olio 80gr','conserva','mare blu'),('19284756','burro classico 500gr','latticino','cremerie unite'),('19284776','limoni non trattati 1kg','ortofrutta','agrumi d oro'),('19284796','avena in fiocchi 500gr','cereali','natura viva'),('28371911','caffe in grani 500gr','caffe','torrefazione alba'),('28371940','latte intero UHT 1L','latte','mucca felice'),('28371960','pere kaiser 1kg','ortofrutta','frutteto reale'),('28371980','riso originario per minestre 1kg','cereali','chicco bianco'),('28374611','branzino fresco eviscerato 600gr','pesce','pescato d oro'),('28374612','olio extravergine di oliva 5L','condimento','oro verde'),('28374619','mascarpone fresco 250gr','latticino','cremerie unite'),('28374631','fusilli di grano duro 500gr','pasta','pastaia d italia'),('28374639','uva nera 500gr','ortofrutta','vigna del sole'),('28374652','asparagi freschi mazzetto 500gr','ortofrutta','orto sole'),('28374659','uova allevate all aperto 6pz','uova','gallina d oro'),('28374670','brodo vegetale in dadi 10pz','condimento','natura viva'),('28374679','pomodori da salsa 2kg','ortofrutta','orto rosso'),('28394011','lenticchie secche giganti 500gr','legumi','campo verde'),('28394031','broccoletti verdi 500gr','ortofrutta','terra buona'),('28394033','fusilli integrali 500gr','pasta','natura viva'),('28394051','farina di grano tenero tipo 1 1kg','farina','natura viva'),('28394054','misto funghi con porcini surgelato 300gr','surgelato','orto freddo'),('28475619','fettine di vitello 400gr','carne','carni sceltissime'),('28475639','carote fresche 500gr','ortofrutta','verde foglia'),('28475659','passata di pomodoro 700gr','conserva','orto rosso'),('28475679','nocciole sgusciate 100gr','ortofrutta','frutteto reale'),('29384710','cipolle dorate 1kg','ortofrutta','terra buona'),('29384717','sgombro all olio di oliva 125gr','conserva','mare blu'),('29384730','macinato di tacchino 400gr','carne','carni sceltissime'),('29384750','zucchero di canna grezzo 500gr','zucchero','natura viva'),('29384756','burro classico 125gr','latticino','cremerie unite'),('29384770','pepe nero in grani 30gr','condimento','orto rosso'),('29384776','arance da spremuta 3kg','ortofrutta','agrumi d oro'),('29384796','farro perlato secco 500gr','cereali','natura viva'),('34928115','salmone fresco trancio 300gr','pesce','pescato d oro'),('34928135','farfalle di grano duro 500gr','pasta','pastaia d italia'),('34928155','insalata gentilina 250gr','ortofrutta','verde foglia'),('34928156','zuppa di legumi e cereali secca 500gr','legumi','campo verde'),('34928175','uova di quaglia 12pz','uova','rurale'),('37485920','latte intero fresco alta qualita 1L','latte','bianco latte'),('37485940','mele smith verdi 1kg','ortofrutta','frutteto reale'),('37485960','fagioli borlotti in scatola 400gr','legumi','orto rosso'),('37485980','caffe macinato per moka 250gr','caffe','torrefazione alba'),('38475612','farina di semola rimacinata 1kg','farina','grano d oro'),('38475632','sedano verde 1 pz','ortofrutta','orto sole'),('38475652','ceci secchi 500gr','legumi','campo verde'),('38475672','pane bauletto integrale 400gr','pane','gran forno'),('38475692','tranci di verdesca surgelati 400gr','pesce','capitan mare'),('38495012','ricotta di mucca fresca 250gr','latticino','caseificio del borgo'),('38495032','kiwi 500gr','ortofrutta','frutteto reale'),('38495052','olio extravergine di oliva 1L','condimento','oro verde'),('38495072','olive nere denocciolate 150gr','conserva','orto rosso'),('39284710','melanzane lunghe 1kg','ortofrutta','orto sole'),('39284730','costine di maiale 600gr','carne','carni sceltissime'),('39284750','spaghetti n.5 di grano duro 500gr','pasta','pastaia d italia'),('39284756','uova fresche medie 10pz','uova','cascina del sole'),('39284770','patate dolci americane 1kg','ortofrutta','terra buona'),('39485716','pecorino romano 200gr','latticino','pastori uniti'),('39485736','petto di pollo a fette 400gr','carne','macelleria tradizione'),('39485756','sale marino grosso 1kg','condimento','saline d italia'),('39485776','salvia fresca vaschetta','ortofrutta','verde foglia'),('45678901','farina integrale 1kg','farina','il mugnaio'),('45678921','verza 1 pz','ortofrutta','terra buona'),('45678931','lenticchie rosse decorticate 500gr','legumi','campo verde'),('45678951','pane bauletto bianco 400gr','pane','gran forno'),('45678971','filetti di nasello surgelati 400gr','pesce','capitan mare'),('47582910','pomodori ciliegino 250gr','ortofrutta','verde foglia'),('47582930','uova fresche bio 4pz','uova','natura viva'),('47582931','coniglio a pezzi 800gr','carne','carni sceltissime'),('47582951','spaghettini n.3 500gr','pasta','pastaia d italia'),('47582971','bieta a coste fresche 500gr','ortofrutta','verde foglia'),('48576920','burro classico 250gr','latticino','cremerie unite'),('48576940','limoni gialli 500gr','ortofrutta','agrumi d oro'),('48576960','orzo perlato secco 500gr','cereali','natura viva'),('48576980','sardine all olio di oliva 120gr','conserva','mare blu'),('49586711','peperoni gialli 500gr','ortofrutta','orto sole'),('49586731','farina di ceci 500gr','farina','legumi d italia'),('49586751','fagioli neri secchi 500gr','legumi','campo verde'),('49586771','pane grattugiato 1kg','pane','gran forno'),('56372819','patate novelle 1kg','ortofrutta','orto sole'),('56372839','fesa di tacchino a fette 400gr','carne','carni sceltissime'),('56372859','zucchero semolato bianco 500gr','zucchero','dolcezza pura'),('56372879','pepe nero macinato 30gr','condimento','orto rosso'),('56473810','merluzzo surgelato cuori 400gr','pesce','capitan mare'),('56473812','salsiccia di maiale 400gr','carne','macelleria tradizione'),('56473819','lievito di birra secco 3x7gr','lievito','forno attivo'),('56473829','uova allevate a terra 10pz','uova','rurale'),('56473830','penne rigate di grano duro 1kg','pasta','pastaia d italia'),('56473832','concentrato di pomodoro 130gr','conserva','orto rosso'),('56473839','mele fuji 1kg','ortofrutta','frutteto reale'),('56473849','pomodori cuore di bue 500gr','ortofrutta','orto sole'),('56473851','porri freschi 2pz','ortofrutta','orto sole'),('56473852','prugne secche denocciolate 250gr','ortofrutta','frutteto reale'),('56473859','lenticchie in scatola 400gr','legumi','orto rosso'),('56473879','pane casereccio a fette 500gr','pane','forno attivo'),('56473892','melanzane tonde 500gr','ortofrutta','verde foglia'),('56478312','petto di pollo intero 500gr','carne','macelleria tradizione'),('56478332','olio di semi di arachide 1L','condimento','valle del sole'),('56478352','rosmarino fresco vaschetta','ortofrutta','verde foglia'),('56478392','grana padano 16 mesi 300gr','latticino','re dei formaggi'),('57382910','uova fresche grandi 6pz','uova','fattoria felice'),('57483920','aglio bianco 3 teste','ortofrutta','orto sole'),('57483940','macinato misto manzo maiale 500gr','carne','macelleria tradizione'),('57483960','aceto di vino rosso 1L','condimento','acetaia ducale'),('57483980','noci sgusciate 100gr','ortofrutta','frutteto reale'),('57683920','burro chiarificato 200gr','latticino','cremerie unite'),('57683940','mandarini clementine 1kg','ortofrutta','agrumi d oro'),('57683960','olio extravergine di oliva 750ml','condimento','oro verde'),('57683980','capperi sotto sale 100gr','conserva','orto rosso'),('58493001','spinaci freschi in busta 300gr','ortofrutta','verde foglia'),('58493021','farina 00 5kg','farina','il mugnaio'),('58493031','sarde fresche 400gr','pesce','pescato d oro'),('58493051','pastina stelline 500gr','pasta','pastaia d italia'),('58493071','piselli finissimi surgelati 1kg','surgelato','orto freddo'),('58694011','zucca mantovana 1kg','ortofrutta','terra buona'),('58694031','farina di farro 500gr','farina','natura viva'),('58694051','fagioli dall occhio secchi 500gr','legumi','campo verde'),('58694071','piadina romagnola 3pz 360gr','pane','gran forno'),('59684731','latte senza lattosio fresco 1L','latte','digeribile'),('59684751','arance tarocco 1kg','ortofrutta','agrumi d oro'),('59684771','riso basmati 500gr','cereali','chicco bianco'),('59684791','tonno all olio di oliva 6x80gr','conserva','mare blu'),('64758211','pere williams 1kg','ortofrutta','frutteto reale'),('64758231','piselli fini in scatola 400gr','legumi','orto rosso'),('64758251','caffe macinato decaffeinato 250gr','caffe','torrefazione alba'),('64758291','latte scremato fresco 1L','latte','bianco latte'),('65748213','pesche gialle 1kg','ortofrutta','frutteto reale'),('65748233','olio di semi di girasole 1L','condimento','valle del sole'),('65748253','brodo di carne in dadi 10pz','condimento','carni sceltissime'),('65748293','mozzarella fiordilatte 125gr','latticino','caseificio del borgo'),('65748312','insalata iceberg 1 pz','ortofrutta','verde foglia'),('65748332','orata fresca eviscerata 600gr','pesce','pescato d oro'),('65748352','maccheroni di grano duro 500gr','pasta','pastaia d italia'),('65748372','carciofi freschi 4pz','ortofrutta','orto sole'),('65748392','uova fresche extra 12pz','uova','cascina del sole'),('73829104','farina per pizza 1kg','farina','il mugnaio'),('73829124','fagiolini verdi freschi 500gr','ortofrutta','verde foglia'),('73829144','piselli secchi spezzati 500gr','legumi','campo verde'),('73829164','piadina integrale 3pz 360gr','pane','gran forno'),('74658312','lenticchie secche mignon 500gr','legumi','campo verde'),('74658332','penne rigate integrali 500gr','pasta','natura viva'),('74658352','carciofi a spicchi surgelati 400gr','surgelato','orto freddo'),('74658372','cavolfiore bianco 1 pz','ortofrutta','terra buona'),('74658392','farina 0 5kg','farina','mulino bianco'),('74839201','patate rosse 1kg','ortofrutta','terra buona'),('74839221','pollo intero eviscerato 1.2kg','carne','macelleria tradizione'),('74839241','zucchero semolato bianco 1kg','zucchero','dolcezza pura'),('74839261','peperoncino frantumato 20gr','condimento','orto rosso'),('75648312','bistecca di manzo senz osso 400gr','carne','macelleria tradizione'),('75648332','passata di pomodoro rustica 700gr','conserva','orto rosso'),('75648352','pinoli sgusciati 50gr','ortofrutta','frutteto reale'),('75648392','carote fresche 1kg','ortofrutta','verde foglia'),('75849302','latte parz scremato UHT 1L','latte','mucca felice'),('75849322','banane 1kg','ortofrutta','tropicana'),('75849342','riso arborio per risotti 1kg','cereali','chicco bianco'),('75849362','orzo solubile 200gr','caffe','natura viva'),('81726314','alici fresche 300gr','pesce','pescato d oro'),('81726334','radicchio tondo 500gr','ortofrutta','orto sole'),('81726335','ditalini rigati per minestre 500gr','pasta','pastaia d italia'),('81726354','farina 00 1kg','farina','il mugnaio'),('81726355','spinaci in foglia surgelati 1kg','surgelato','orto freddo'),('82930415','latte intero fresco 1L','latte','bianco latte'),('82930435','mele annurca 1kg','ortofrutta','frutteto reale'),('82930455','ceci in scatola 400gr','legumi','orto rosso'),('82930475','pane arabo 4pz 400gr','pane','forno attivo'),('83746512','arance navel 2kg','ortofrutta','agrumi d oro'),('83746532','riso integrale 1kg','cereali','chicco bianco'),('83746552','tonno al naturale 3x80gr','conserva','mare blu'),('83746592','latte di capra intero 500ml','latte','pastori uniti'),('84729103','uova fresche medie 6pz','uova','fattoria felice'),('84756112','peperoni rossi 500gr','ortofrutta','orto sole'),('84756132','fagioli cannellini secchi 500gr','legumi','campo verde'),('84756152','pane grattugiato 500gr','pane','gran forno'),('84756192','farina di mais per polenta 1kg','farina','valle bio'),('84756201','zucchine chiare 1kg','ortofrutta','orto sole'),('84756211','susine 500gr','ortofrutta','frutteto reale'),('84756221','braciole di maiale con osso 500gr','carne','macelleria tradizione'),('84756231','olio di semi di mais 1L','condimento','valle del sole'),('84756241','pomodori pelati interi 400gr','conserva','orto rosso'),('84756251','basilico fresco mazzetto','ortofrutta','verde foglia'),('84756261','fichi secchi 200gr','ortofrutta','frutteto reale'),('84756291','parmigiano reggiano 24 mesi 250gr','latticino','re dei formaggi'),('84756312','macinato di vitello 400gr','carne','carni sceltissime'),('84756332','zucchero di canna integrale 500gr','zucchero','natura viva'),('84756352','noce moscata intera 2pz','condimento','orto rosso'),('84756392','cipolle rosse 500gr','ortofrutta','orto sole'),('91028314','pere abate 1kg','ortofrutta','frutteto reale'),('91028334','fagioli cannellini in scatola 400gr','legumi','orto rosso'),('91028354','caffe macinato intenso 2x250gr','caffe','torrefazione alba'),('91028374','latte parzialmente scremato fresco 1L','latte','bianco latte'),('91827314','fegato di vitello a fette 300gr','carne','macelleria tradizione'),('91827334','spaghetti n.5 di grano duro 1kg','pasta','pastaia d italia'),('91827354','pomodori ramati 1kg','ortofrutta','orto sole'),('91827355','cime di rapa fresche 500gr','ortofrutta','verde foglia'),('91827364','uova fresche grandi 10pz','uova','cascina del sole'),('92837114','sale marino fino 1kg','condimento','saline d italia'),('92837134','menta fresca mazzetto','ortofrutta','verde foglia'),('92837164','patate a pasta gialla 1.5kg','ortofrutta','terra buona'),('92837184','cosce di pollo 600gr','carne','macelleria tradizione'),('92837415','salmone fresco filetti 250gr','pesce','pescato d oro'),('92837435','rigatoni di grano duro 500gr','pasta','pastaia d italia'),('92837445','insalata trocadero 1 pz','ortofrutta','verde foglia'),('92837455','minestrone di verdure surgelato 1kg','surgelato','orto freddo'),('92837465','farina 00 500gr','farina','il mugnaio'),('93847511','aceto di mele 500ml','condimento','acetaia ducale'),('93847531','mandorle sgusciate 100gr','ortofrutta','frutteto reale'),('93847561','aglio rosso 3 teste','ortofrutta','orto sole'),('93847581','spezzatino di manzo 500gr','carne','carni sceltissime'),('94857612','ricotta di pecora fresca 250gr','latticino','pastori uniti'),('94857632','uva bianca 500gr','ortofrutta','vigna del sole'),('94857652','olio extravergine di oliva estratto a freddo 1L','condimento','oro verde'),('94857672','olive verdi denocciolate 150gr','conserva','orto rosso'),('95847312','ceci secchi 1kg','legumi','campo verde'),('95847332','pane bauletto ai cereali 400gr','pane','gran forno'),('95847352','preparato per risotto di mare surgelato 300gr','pesce','capitan mare'),('95847362','farina manitoba 1kg','farina','il mugnaio'),('95847382','finocchi freschi 500gr','ortofrutta','verde foglia');
/*!40000 ALTER TABLE `prodotti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `storico_acquisti`
--

DROP TABLE IF EXISTS `storico_acquisti`;
/*!50001 DROP VIEW IF EXISTS `storico_acquisti`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `storico_acquisti` AS SELECT 
 1 AS `data_ordine`,
 1 AS `id_ordine`,
 1 AS `sconto_applicato`,
 1 AS `NOME_UTENTE`,
 1 AS `tipologia_clienti`,
 1 AS `Agevolazione`,
 1 AS `nome`,
 1 AS `marca`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `utenti`
--

DROP TABLE IF EXISTS `utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utenti` (
  `ID_UTENTE` varchar(105) NOT NULL,
  `NOME_UTENTE` varchar(105) NOT NULL,
  `EMAIL` varchar(105) DEFAULT NULL,
  `ETA` int NOT NULL,
  `Categoria` varchar(105) NOT NULL,
  PRIMARY KEY (`ID_UTENTE`),
  CONSTRAINT `chk_privato_solo_acquisto` CHECK ((((length(`id_utente`) = 16) and (`categoria` = _utf8mb4'acquisto')) or ((length(`id_utente`) = 11) and (`categoria` in (_utf8mb4'acquisto',_utf8mb4'vendita'))))),
  CONSTRAINT `chk_registrazione` CHECK (((length(`ID_UTENTE`) = 11) or (length(`ID_UTENTE`) = 16))),
  CONSTRAINT `utenti_chk_1` CHECK ((`ETA` >= 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utenti`
--

LOCK TABLES `utenti` WRITE;
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
INSERT INTO `utenti` VALUES ('10000000001','Metro Cash and Carry Srl','info@metro.it',50,'vendita'),('10000000002','Ingrosso Alimentare Roma','ordini@ingrossoroma.it',45,'vendita'),('10000000003','Gros Distribuzione Srl','contatti@gros.it',60,'vendita'),('10000000004','Food Wholesale Spa','info@foodwholesale.it',55,'vendita'),('10000000005','Cadoro Ingrosso','ordini@cadoro.it',42,'vendita'),('10000000006','Centro Ingrosso Alimentari','cia@ingrosso.it',48,'vendita'),('10000000007','Docks Market Srl','info@docksmarket.it',52,'vendita'),('10000000008','Supermercato Conad','conad.roma@conad.it',35,'vendita'),('10000000009','Supermercato Esselunga','info@esselunga.it',40,'vendita'),('10000000010','Coop Alleanza 3.0','coop@alleanza.it',38,'vendita'),('10000000011','Carrefour Iper','iper@carrefour.it',41,'vendita'),('10000000012','Pam Panorama','pam@panorama.it',44,'vendita'),('10000000013','Supermercati Deco','deco@supermercati.it',39,'vendita'),('10000000014','Eurospin Discount','info@eurospin.it',36,'vendita'),('10000000015','Lidl Italia Srl','info@lidl.it',33,'vendita'),('10000000016','MD Discount','info@md.it',47,'vendita'),('10000000017','Aldi Supermercati','info@aldi.it',34,'vendita'),('10000000018','CRAI Supermercati','info@crai.it',51,'vendita'),('10000000019','Despar Supermercati','info@despar.it',49,'vendita'),('10000000020','Minimarket Express','express@minimarket.it',30,'vendita'),('10000000021','Bangla Shop Termini','bangla.termini@gmail.com',28,'vendita'),('10000000022','Alimentari Da Gino','gino@alimentari.it',58,'vendita'),('10000000023','Minimarket H24','h24@minimarket.it',32,'vendita'),('10000000024','Bottega di Quartiere','bottega@quartiere.it',45,'vendita'),('10000000025','Market Etnico Centrale','etnico@market.it',35,'vendita'),('10000000026','Alimentari Notturno','notturno@alimentari.it',29,'vendita'),('10000000027','Il Piccolo Minimarket','piccolo@minimarket.it',43,'vendita'),('10000000028','Spesa Veloce Snc','veloce@spesa.it',37,'vendita'),('10000000029','Minimarket Sole','sole@minimarket.it',41,'vendita'),('10000000030','Alimentari La Piazzetta','piazzetta@alimentari.it',50,'vendita'),('10000000031','Market Punto Blu','puntoblu@market.it',36,'vendita'),('10000000032','Alimentari Fratelli Russo','russo@alimentari.it',46,'vendita'),('10000000033','Minimarket 7 Giorni','7giorni@minimarket.it',31,'vendita'),('10000000034','Food Store Da Ali','ali@foodstore.it',34,'vendita'),('10000000035','Minimarket Stella','stella@minimarket.it',38,'vendita'),('20000000001','Mensa Aziendale Fiat','mensa@fiat.it',45,'acquisto'),('20000000002','Gestione Mense Scolastiche','mense@scuole.it',50,'acquisto'),('20000000003','Mensa Ospedaliera Srl','mensa@ospedale.it',55,'acquisto'),('20000000004','Servizi Ristorazione Mense','info@ristorazionemense.it',48,'acquisto'),('20000000005','Bar Centrale','info@barcentrale.it',35,'acquisto'),('20000000006','Bar dello Sport','sport@bar.it',42,'acquisto'),('20000000007','Caffe Roma Snc','roma@caffe.it',38,'acquisto'),('20000000008','Lounge Bar Il Chiosco','chiosco@loungebar.it',30,'acquisto'),('20000000009','Gastronomia Emiliana','info@gastroemiliana.it',46,'acquisto'),('20000000010','Rosticceria Express','rosti@express.it',40,'acquisto'),('20000000011','Gastronomia F.lli Rossi','flli.rossi@gastronomia.it',52,'acquisto'),('20000000012','Il Buongustaio Gastronomia','buongustaio@gastro.it',44,'acquisto'),('20000000013','Pasticceria Bellavista','info@bellavista.it',49,'acquisto'),('20000000014','Pasticceria Dolce Vita','dolcevita@pasticceria.it',39,'acquisto'),('20000000015','Antico Forno e Pasticceria','forno@pasticceria.it',60,'acquisto'),('20000000016','Pasticceria Siciliana','siciliana@pasticceria.it',43,'acquisto'),('20000000017','Catering Grandi Eventi','eventi@catering.it',37,'acquisto'),('20000000018','Ristorante La Brace','labrace@ristorante.it',51,'acquisto'),('20000000019','Trattoria Romana','romana@trattoria.it',47,'acquisto'),('20000000020','Pizzeria Da Gianni','gianni@pizzeria.it',41,'acquisto'),('20000000021','Caritas Diocesana','acquisti@caritas.it',58,'acquisto'),('20000000022','Banco Alimentare Onlus','info@bancoalimentare.it',45,'acquisto'),('20000000023','Mensa dei Poveri S. Francesco','mensa@sanfrancesco.it',62,'acquisto'),('20000000024','Croce Rossa Italiana','acquisti@cri.it',50,'acquisto'),('20000000025','Comunita di Sant Egidio','info@santegidio.it',55,'acquisto'),('20000000026','Associazione Pane Quotidiano','pane@quotidiano.it',48,'acquisto'),('20000000027','Emergenza Sorrisi Onlus','sorrisi@onlus.it',36,'acquisto'),('20000000028','Save the Children Italia','acquisti@savethechildren.it',42,'acquisto'),('20000000029','Azione Cattolica','info@azionecattolica.it',49,'acquisto'),('20000000030','Mensa Solidale Citta','mensa@solidale.it',53,'acquisto'),('20000000031','Rifugio Senzatetto Onlus','rifugio@onlus.it',44,'acquisto'),('20000000032','Associazione Volontariato','volontariato@assoc.it',39,'acquisto'),('20000000033','Centro Aiuto Vita','cav@aiutovita.it',46,'acquisto'),('20000000034','Fondazione Progetto Arca','arca@fondazione.it',41,'acquisto'),('20000000035','Opera San Francesco','osf@operasanfrancesco.it',57,'acquisto'),('20000000036','Emporio Solidale','emporio@solidale.it',38,'acquisto'),('20000000037','Parrocchia San Pietro','parrocchia@sanpietro.it',65,'acquisto'),('20000000038','Protezione Civile','acquisti@protezionecivile.it',52,'acquisto'),('20000000039','Missioni Don Bosco','missioni@donbosco.it',47,'acquisto'),('20000000040','Centro Accoglienza Onlus','accoglienza@onlus.it',40,'acquisto'),('BLLFBR83L12F205F','Fabrizio Belli','fabrizio.belli@email.it',41,'acquisto'),('BNCGPP85B12F205B','Giuseppe Bianchi','g.bianchi@email.it',39,'acquisto'),('BNCGPP86G27F205U','Giuseppe Benci','giuseppe.benci@email.it',38,'acquisto'),('BRBGLI81J10H501J','Giulia Barbieri','giulia.barb@email.it',43,'acquisto'),('BSSGNN95A31H501I','Gianni Bassi','gianni.bassi@email.it',29,'acquisto'),('BSSSST78E25H501Y','Stefano Bassi','stefano.bassi@email.it',46,'acquisto'),('CLNSRN86I29D122I','Serena Colonna','sere.colonna@email.it',38,'acquisto'),('CRBMRT93S19H501S','Marta Carbone','marta.c@email.it',31,'acquisto'),('CSTCHR82B12F205J','Chiara Costa','chiara.costa2@email.it',42,'acquisto'),('CSTPLA78F26D122F','Paola Costa','paola.costa@email.it',46,'acquisto'),('CSTPLA81H08D122V','Paola Casati','paola.casati@email.it',43,'acquisto'),('CSTSRN91M23D122G','Serena Casti','serena.casti@email.it',33,'acquisto'),('DNNMCC78C23D122K','Marco Dini','marco.dini@email.it',46,'acquisto'),('DNNMCH87N04H501H','Michele Dini','michele.dini@email.it',37,'acquisto'),('DNTLCU94I19H501W','Luca Donti','luca.donti@email.it',30,'acquisto'),('DNTLSS80T30F205T','Alessandro Donti','ale.donti@email.it',44,'acquisto'),('FBRMCH88G07H501G','Michela Fabbri','mich.fabbri@email.it',36,'acquisto'),('FBRSRN89J30F205X','Serena Fabbri','serena.fabbri@email.it',35,'acquisto'),('FLCMTT94K21F205K','Matteo Felici','matteo.f@email.it',30,'acquisto'),('FRNGLI79O15F205I','Giulia Forni','giulia.forni@email.it',45,'acquisto'),('FRNGLL88D04H501L','Giulia Forni','giulia.forni2@email.it',36,'acquisto'),('FRRMRT88F06F205Z','Martina Ferri','marti.ferri@email.it',36,'acquisto'),('GLLFNC95D04H501D','Francesca Gialli','franci95@email.it',29,'acquisto'),('GLLGLI83K11D122Y','Giulia Galli','giulia.galli2@email.it',41,'acquisto'),('GLLNDR96P26D122J','Andrea Galli','andrea.galli@email.it',28,'acquisto'),('GLLSST92E15F205M','Stefano Galli','stefano.galli@email.it',32,'acquisto'),('GRGELN81I09F205C','Elena Giorgi','elena.giorgi@email.it',43,'acquisto'),('GTTMRA96Q27F205Q','Maria Gatti','maria.gatti@email.it',28,'acquisto'),('LMBMTT91L22H501Z','Matteo Lombardi','matteo.lombardi@email.it',33,'acquisto'),('LMBRTA89L02D122L','Rita Lombardi','rita.lombardi@email.it',35,'acquisto'),('LNNMRA84Q07H501K','Maria Lenzi','maria.lenzi@email.it',40,'acquisto'),('LNNMRT86F26D122N','Martina Lenzi','martina.lenzi@email.it',38,'acquisto'),('MNTCHR90B22H501V','Chiara Monti','chiara.monti@email.it',34,'acquisto'),('MRNNCL82E15F205E','Nicola Marini','n.marini@email.it',42,'acquisto'),('MRRLRN81G07H501O','Lorenzo Marra','lorenzo.marra@email.it',43,'acquisto'),('MRRMCC93R18F205L','Marco Marra','marco.marra@email.it',31,'acquisto'),('MRZFRD91N24F205N','Federico Marzi','fede.marzi@email.it',33,'acquisto'),('MRZRTA87M03F205A','Rita Marzi','rita.marzi@email.it',37,'acquisto'),('MZZDRD94J20D122D','Edoardo Mazza','edo.mazza@email.it',30,'acquisto'),('NCLGNN85A11D122U','Gianni Nicoli','gianni.n@email.it',39,'acquisto'),('NCLNND79N14D122B','Nando Nicoli','nando.nicoli@email.it',45,'acquisto'),('NGRSMN94H18F205P','Simone Negri','simone.negri@email.it',30,'acquisto'),('NGRSST80S29D122M','Stefano Negri','stefano.negri@email.it',44,'acquisto'),('PCCFRD96O25H501C','Federico Paci','fede.paci@email.it',28,'acquisto'),('PCCGLL82D14D122X','Giulia Paci','giulia.paci@email.it',42,'acquisto'),('PRRVCN84R08D122R','Vincenzo Parri','vince.parri@email.it',40,'acquisto'),('PRTCHR85T10H501N','Chiara Porti','chiara.porti@email.it',39,'acquisto'),('PRTELN89I29D122Q','Elena Porti','elena.porti@email.it',35,'acquisto'),('PSSLRA87O05D122O','Laura Passeri','laura.p@email.it',37,'acquisto'),('PZZSMN86H28H501B','Simone Pozzi','simo.pozzi@email.it',38,'acquisto'),('QRTDRD83J10H501R','Edoardo Quarti','edo.quarti@email.it',41,'acquisto'),('QRTGNN90A21F205O','Giovanni Quarti','gio.quarti@email.it',34,'acquisto'),('RMNLCU92H18F205H','Luca Romano','luca.romano92@email.it',32,'acquisto'),('RNDVNT89K01H501E','Valentina Renda','vale.renda@email.it',35,'acquisto'),('RSSLSS95B02D122P','Alessia Rossi','alessia.rossi@email.it',29,'acquisto'),('RSSMRA80A01H501A','Mario Rossi','mario.rossi@email.it',44,'acquisto'),('RSSVNT91K21F205S','Valentina Rossi','vale.rossi@email.it',33,'acquisto'),('RZZLRA84P06F205D','Laura Rizzo','laura.rizzo@email.it',40,'acquisto'),('RZZSNT79P16H501P','Santo Rizzo','santo.rizzo@email.it',45,'acquisto'),('SNTFBR87L02D122T','Fabrizio Santi','fabri.santi@email.it',37,'acquisto'),('SNTGNN83M13H501M','Giovanni Santoro','gio.santoro@email.it',41,'acquisto'),('SNTMRA93Q17D122E','Maria Santi','maria.santi2@email.it',31,'acquisto'),('SNTMRT82C13H501Q','Martina Santi','martina.santi@email.it',42,'acquisto'),('TRVLGU78D24F205R','Luigi Trevi','luigi.trevi@email.it',46,'acquisto'),('TRVSRN79M13H501U','Serena Trevi','serena.trevi@email.it',45,'acquisto'),('TRVVCN80R28H501F','Vincenzo Trevi','vincenzo.trevi@email.it',44,'acquisto'),('TSSLRN92G17D122A','Lorenzo Tassi','lorenzo.t@email.it',32,'acquisto'),('VLLFNC88E05D122S','Franco Valli','franco.valli@email.it',36,'acquisto'),('VLLMCH96N24F205V','Michele Valli','michele.valli@email.it',28,'acquisto'),('VLLMRT85S09F205G','Marta Valli','marta.valli@email.it',39,'acquisto'),('VLPMCC95C03F205W','Marco Volpi','marco.volpi@email.it',29,'acquisto'),('VRDLGU90C23D122C','Luigi Verdi','luigi.v@email.it',34,'acquisto'),('ZNNGLI84O05D122W','Giulia Zanni','giulia.zanni@email.it',40,'acquisto'),('ZNNLSS90T20D122H','Alessandro Zanni','ale.zanni@email.it',34,'acquisto'),('ZNNMCH92F16H501T','Michela Zanni','michela.zanni@email.it',32,'acquisto');
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'food_waste'
--
/*!50003 DROP FUNCTION IF EXISTS `Totale_Ordine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Totale_Ordine`(prezzo_partenza DOUBLE, sconto INT, quantita INT) RETURNS double
    DETERMINISTIC
BEGIN
	SET @prezzoscontato = (prezzo_partenza - (prezzo_partenza * sconto / 100 ));

	RETURN ROUND((@prezzoscontato * quantita),2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Aggiungi_Utente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Aggiungi_Utente`(IN ID_UTENT varchar(105), IN NOME_UTENT VARCHAR(105), IN ET int, IN CATEGORI VARCHAR(105), IN  tipologi VARCHAR(105), IN agevolazion TINYINT)
BEGIN 
	SET @verificautente = (SELECT ID_UTENTE from utenti WHERE ID_UTENTE = ID_UTENT);
    IF @verificautente IS NOT NULL THEN SELECT "Utente già registrato";
    ELSE INSERT INTO utenti ( id_utente, nome_utente, eta, categoria) VALUES (id_utent, nome_utent, et, categori);
    END IF;
    SET @verificacategoria = (SELECT Categoria FROM utenti WHERE ID_UTENTE = ID_UTENT);
    IF @verificacategoria = "Vendita" THEN insert into attivita_vendita( id_utente, tipologia_vendita) VALUES (id_utent, tipologi);
    ELSEIF @verificacategoria = "Acquisto" THEN INSERT INTO clienti(id_utente, tipologia_clienti, agevolazione) VALUES (id_utent, tipologi, agevolazion);
	ELSE SELECT "Non esiste questa categoria";
    END IF; 
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `catalogo_annuncio`
--

/*!50001 DROP VIEW IF EXISTS `catalogo_annuncio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `catalogo_annuncio` AS select `annuncio`.`ID_ANNUNCIO` AS `id_annuncio`,`annuncio`.`data_annuncio` AS `data_annuncio`,`utenti`.`NOME_UTENTE` AS `nome_utente`,`prodotti`.`nome` AS `nome`,`prodotti`.`marca` AS `marca`,`annuncio`.`quantita` AS `quantita`,`annuncio`.`data_scadenza` AS `data_scadenza`,`annuncio`.`prezzo_originale` AS `prezzo_originale`,`totale_ordine`(`annuncio`.`prezzo_originale`,`ordine`.`sconto_applicato`,`annuncio`.`quantita`) AS `prezzo_finale` from ((((`prodotti` join `annuncio` on((`prodotti`.`ID_PRODOTTI` = `annuncio`.`ID_PRODOTTI`))) join `attivita_vendita` on((`attivita_vendita`.`ID_UTENTE` = `annuncio`.`ID_UTENTE`))) join `utenti` on((`utenti`.`ID_UTENTE` = `attivita_vendita`.`ID_UTENTE`))) join `ordine` on((`annuncio`.`ID_ORDINE` = `ordine`.`ID_ORDINE`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `storico_acquisti`
--

/*!50001 DROP VIEW IF EXISTS `storico_acquisti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `storico_acquisti` AS select 1 AS `data_ordine`,1 AS `id_ordine`,1 AS `sconto_applicato`,1 AS `NOME_UTENTE`,1 AS `tipologia_clienti`,1 AS `Agevolazione`,1 AS `nome`,1 AS `marca` */;
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

-- Dump completed on 2026-04-09 12:42:07
