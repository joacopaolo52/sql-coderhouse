-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sql_coder
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Dumping data for table `confederations`
--

LOCK TABLES `confederations` WRITE;
/*!40000 ALTER TABLE `confederations` DISABLE KEYS */;
INSERT INTO `confederations` VALUES (1,' AFC ',3),(2,' CAF ',4),(3,' CONCACAF ',1),(4,' CONMEBOL ',1),(5,' OFC ',5),(6,' UEFA ',2);
/*!40000 ALTER TABLE `confederations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `continental_tournaments`
--

LOCK TABLES `continental_tournaments` WRITE;
/*!40000 ALTER TABLE `continental_tournaments` DISABLE KEYS */;
INSERT INTO `continental_tournaments` VALUES (1,' CAF Champions League ',2),(2,' Copa Libertadores ',4),(3,' AFC Champions League ',1),(4,' Copa de Oro ',3),(5,' Copa Sudamericana ',4),(6,' Champions League ',6),(7,' Leagues Cup  ',3),(8,' Europa League ',6),(9,' Conference League ',6);
/*!40000 ALTER TABLE `continental_tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `continents`
--

LOCK TABLES `continents` WRITE;
/*!40000 ALTER TABLE `continents` DISABLE KEYS */;
INSERT INTO `continents` VALUES (1,'America'),(2,'Europe'),(3,'Asia'),(4,'Africa'),(5,'Oceania'),(6,'Antarctica');
/*!40000 ALTER TABLE `continents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,' Brazil ',4),(2,' Germany ',6),(3,' Argentina ',4),(4,' Italy ',6),(5,' France ',6),(6,' Spain ',6),(7,' Netherlands Bajos ',6),(8,' Uruguay ',4),(9,' England ',6),(10,' Portugal ',6),(11,' Belgium ',6),(12,' Croatia ',6),(13,' Mexico ',3),(14,' Colombia ',4),(15,' Chile ',4),(16,' Nigeria ',2),(17,' Japan ',1),(18,' Australia ',5),(19,' Turkey ',6),(20,' Russia ',1),(21,' Ivory Coast ',2),(22,' Ghana ',2),(23,' Denmark ',6),(24,' United States ',3),(25,' South Korea ',1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country_tournaments`
--

LOCK TABLES `country_tournaments` WRITE;
/*!40000 ALTER TABLE `country_tournaments` DISABLE KEYS */;
INSERT INTO `country_tournaments` VALUES (1,' Premier League ',2),(2,' LaLiga',6),(3,' Serie A Brasil ',1),(4,' Serie A ',4),(5,' Bundesliga ',2),(6,' Liga NOS ',10),(7,' Ligue 1  ',5),(8,' Primera División Argentina ',3),(9,' NPFL ',16),(10,' Liga BetPlay Dimayor ',14),(11,' Jupiler Pro League ',11),(12,' J1 League ',17);
/*!40000 ALTER TABLE `country_tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Santiago','Rodriguez','15/04/2000',22,'Forward',6,3,1.78),(2,'Oscar','Silva','22/09/1999',23,'Midfielder',9,1,1.75),(3,'Ahmed','Opeka','10/03/1998',24,'Defender',5,16,1.82),(4,'Jose','Torres','03/08/2001',20,'Goalkeeper',1,6,1.9),(5,'Kim','Lee','18/07/2000',22,'Midfielder',11,25,1.76),(7,'Hiroshi','Tanaka','18/09/1999',23,'Forward',11,17,1.79),(8,'Milton','Ramirez','10/06/2002',20,'Goalkeeper',10,5,1.88),(9,'Antonio','Hernandez','08/11/2001',21,'Midfielder',1,13,1.77),(10,'Aisha','Khan','20/03/2002',20,'Defender',3,18,1.84),(11,'Diego','Fernandez','22/07/1998',24,'Goalkeeper',6,3,1.87),(12,'Ying','Chen','03/05/2001',21,'Forward',7,25,1.81),(13,'Antonio','Rossi','17/11/1997',25,'Midfielder',8,4,1.78),(14,'Meca','Ivanov','14/09/2002',20,'Defender',7,20,1.76),(15,'Juan','Eriksen','09/06/2001',21,'Goalkeeper',12,23,1.88),(99,'Rupert','Greenwood',NULL,22,'Forward',NULL,NULL,1.87),(102,'Robert','Greenwood',NULL,23,'Midfielder',NULL,NULL,1.78),(200,'Alex','Johnson','1998-05-15',24,'Defender',NULL,NULL,1.98),(220,'Alex','Johnson','1998-05-15',24,'Defender',NULL,NULL,1.98);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` VALUES (1,12,7,2,0,3,1),(2,15,1,2,1,5,2),(3,7,0,0,0,4,3),(4,25,0,0,0,1,4),(5,22,1,9,0,3,5),(7,30,27,9,0,7,7),(8,0,0,0,0,0,8),(9,13,4,7,0,3,9),(10,32,2,0,3,7,10);
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,' Real Madrid  ',2,6),(2,' Bayern Múnich',5,6),(3,' Liverpool FC ',1,6),(4,' PSG  ',7,6),(5,' Benfica',6,8),(6,' Boca Juniors ',8,2),(7,'RIVER PLATE',8,2),(8,' Roma ',4,8),(9,' Santos ',3,2),(10,' Independiente ',8,5),(11,' Gamba Osaka ',12,1),(12,' América de Cali ',10,5);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `value`
--

LOCK TABLES `value` WRITE;
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
INSERT INTO `value` VALUES (1,18000000,1,25000000,100000,1),(2,20000000,1,30000000,120000,2),(3,15000000,0,NULL,90000,3),(4,25000000,1,30000000,150000,4),(5,28000000,0,NULL,160000,5),(7,24000000,1,40000000,150000,7),(8,30000000,0,NULL,1,8),(9,32000000,1,25000000,130000,9),(10,27000000,1,28000000,160000,10),(11,23000000,0,NULL,170000,11),(12,26000000,1,35000000,150000,12),(13,29000000,1,42000000,180000,13),(14,20000000,1,17000000,110000,14),(15,25000000,1,31000000,130000,15);
/*!40000 ALTER TABLE `value` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12  4:02:54
