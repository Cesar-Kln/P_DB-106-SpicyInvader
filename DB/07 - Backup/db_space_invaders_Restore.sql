-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: db_space_invaders
-- ------------------------------------------------------
-- Server version	8.0.30

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

DROP DATABASE IF EXISTS db_space_invaders;
CREATE DATABASE db_space_invaders;
USE db_space_invaders;
--
-- Table structure for table `t_arme`
--

DROP TABLE IF EXISTS `t_arme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_arme` (
  `arme_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `prix` int NOT NULL,
  `force` int NOT NULL,
  `max_utilisation` int DEFAULT NULL,
  PRIMARY KEY (`arme_id`),
  UNIQUE KEY `nom` (`nom`),
  KEY `idx_prix` (`prix`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_arme`
--

LOCK TABLES `t_arme` WRITE;
/*!40000 ALTER TABLE `t_arme` DISABLE KEYS */;
INSERT INTO `t_arme` VALUES (1,'Fusil d\'assaut','FAMAS','Le FAMAS est un fusil d\'assaut bullpup franais, utilis par l\'arme franaise. Il est connu pour sa cadence de tir leve.',2500,25,8000),(2,'Fusil d\'assaut','AK-47','L\'AK-47 est un fusil d\'assaut sovitique, rput pour sa robustesse et sa simplicit d\'utilisation.',2300,30,10500),(3,'Fusil d\'assaut','M16','Fusil d\'assaut amricain, lger et prcis, utilis par les forces armes amricaines.',2200,28,10700),(4,'Fusil d\'assaut','M4A1','Version moderne et amliore du M16, plus compact et adapt aux oprations spciales.',2400,30,9700),(5,'Fusil de prcision','Barrett M82','Le Barrett M82 est un fusil de prcision semi-automatique de gros calibre, capable de tirer sur des cibles  trs longue distance.',3500,100,6200),(6,'Fusil de prcision','Dragunov','Le Dragunov est un fusil de sniper sovitique utilis dans de nombreuses forces armes du monde.',2800,85,9000),(7,'Pistolet','Glock 17','Le Glock 17 est un pistolet semi-automatique autrichien, reconnu pour sa fiabilit et sa simplicit d\'utilisation.',600,10,8700),(8,'Pistolet','Beretta 92','Le Beretta 92 est un pistolet semi-automatique italien, trs utilis par les forces de l\'ordre et l\'arme.',650,12,9800),(9,'Pistolet','Desert Eagle','Le Desert Eagle est un pistolet semi-automatique de gros calibre, souvent utilis pour les tirs  grande distance.',1200,25,3500),(10,'Pistolet','SIG Sauer P226','Le SIG Sauer P226 est un pistolet trs prcis, utilis par de nombreuses units spciales et forces de police.',700,15,6500),(11,'Mitraillette','MP5','Le MP5 est une mitraillette compacte et fiable, trs populaire dans les forces spciales et la police.',2000,25,8000),(12,'Mitraillette','Uzi','L\'Uzi est une mitraillette compacte, trs populaire dans les annes 1980 et encore utilise par certains corps militaires et policiers.',1500,20,8500),(13,'Mitraillette','Thompson','La Thompson, surnomme la \"Tommy Gun\", est une mitraillette emblmatique de la Seconde Guerre mondiale.',1700,22,7200),(14,'Fusil  pompe','Remington 870','Le Remington 870 est un fusil  pompe trs utilis par les forces de police et dans le cadre de la chasse.',800,35,5500),(15,'Fusil  pompe','Benelli M4','Le Benelli M4 est un fusil  pompe semi-automatique, rput pour sa fiabilit et sa rapidit de tir.',1200,40,6000),(16,'Fusil  pompe','Mossberg 500','Le Mossberg 500 est un fusil  pompe polyvalent, utilis dans des contextes militaires et civils.',900,38,5300),(17,'Mitrailleuse','M240','La M240 est une mitrailleuse lourde utilise par l\'arme amricaine, capable de tirer en rafale  grande cadence.',4500,50,7000),(18,'Mitrailleuse','M60','La M60 est une mitrailleuse de soutien, utilise principalement pendant les annes 1960 et 1970 dans de nombreuses armes.',5000,55,3300),(19,'Mitrailleuse','PKM','Le PKM est une mitrailleuse sovitique qui a t largement utilise dans les armes du Pacte de Varsovie et les conflits modernes.',4800,60,5400),(20,'Fusil de chasse','Winchester Model 70','Le Winchester Model 70 est un fusil de chasse prcis et populaire dans les comptitions de tir sportif.',1300,35,7000),(21,'Fusil de chasse','Remington 700','Le Remington 700 est un fusil de chasse, galement utilis pour le tir sportif et la chasse de gros gibier.',1400,40,9500),(22,'Fusil de chasse','Browning A-Bolt','Le Browning A-Bolt est un fusil de chasse robuste, conu pour le tir de gros gibier.',1600,42,9700),(23,'Arbalte','Barnett Jackal','L\'arbalte Barnett Jackal est une arbalte  haute vitesse, idale pour la chasse et les comptitions.',500,15,12250),(24,'Arbalte','Excalibur Matrix','L\'Excalibur Matrix est une arbalte puissante, trs utilise pour la chasse au gros gibier.',700,20,11950),(25,'Arbalte','Parker Hale','L\'arbalte Parker Hale est une arme de prcision, trs prise pour la chasse sportive.',600,18,10750),(26,'Lance-roquettes','RPG-7','Le RPG-7 est un lance-roquettes portable, utilis par de nombreuses armes et groupes insurgs dans le monde.',3500,150,10900),(27,'Lance-roquettes','AT4','L\'AT4 est un lance-roquettes antichar utilis par les forces militaires, idal pour dtruire des vhicules blinds.',4000,180,10095),(28,'Lance-roquettes','M72 LAW','Le M72 LAW est un lance-roquettes lger  usage unique, utilis par les armes pour dtruire des cibles blindes.',2500,100,13235),(29,'Grenade','M67','La grenade M67 est une grenade  fragmentation utilise par les armes amricaines.',200,30,11320),(30,'Grenade','RGD-5','La grenade RGD-5 est une grenade  fragmentation de conception sovitique, couramment utilise dans les anciennes rpubliques sovitiques.',150,28,11140),(31,'Grenade','F1','La grenade F1 est une grenade  fragmentation utilise par l\'arme franaise.',180,32,12225),(32,'Lance-flammes','M2 Flamethrower','Le M2 Flamethrower est un lance-flammes utilis par l\'arme amricaine pendant la Seconde Guerre mondiale.',3000,75,13000),(33,'Lance-flammes','FLA-100','Le FLA-100 est un lance-flammes portable utilis pour dtruire les positions ennemies et les vhicules.',3500,85,15000),(34,'Lance-flammes','L1A1','Le L1A1 est un lance-flammes britannique, utilis par les forces armes britanniques et du Commonwealth.',4000,90,8900),(35,'Couteau','Ka-Bar','Le Ka-Bar est un couteau de combat amricain, utilis depuis la Seconde Guerre mondiale.',150,10,20000),(36,'Couteau','Gerber StrongArm','Le Gerber StrongArm est un couteau de survie, conu pour une utilisation dans des conditions extrmes.',120,8,15000),(37,'Couteau','SOG Seal Pup','Le SOG Seal Pup est un couteau de combat lger et polyvalent, souvent utilis par les Navy SEALs.',130,9,17000),(38,'Dague','Fairbairn-Sykes','La dague Fairbairn-Sykes est une arme blanche de combat utilise par les troupes spciales britanniques pendant la Seconde Guerre mondiale.',100,12,8972),(39,'Dague','Bowie','Le couteau Bowie est une dague  large lame, utilise par les pionniers amricains au 19me sicle.',90,10,10000),(40,'Dague','Push Dagger','La Push Dagger est une dague de combat compacte, idale pour les situations de self-dfense.',75,8,14000),(41,'Arc','Hoyt Carbon RX-7','L\'Hoyt Carbon RX-7 est un arc de chasse haut de gamme, connu pour sa prcision et sa lgret.',1200,40,13000),(42,'Arc','Bowtech Revolt','Le Bowtech Revolt est un arc de chasse moderne, avec une grande puissance de tir.',1300,42,13500),(43,'Arc','Mathews VXR','Le Mathews VXR est un arc  poulies, utilis par les archers de comptition et pour la chasse.',1400,45,14050),(44,'Fusil de prcision','CheyTac M200','Le CheyTac M200 est un fusil de sniper de trs haute prcision, utilis pour des tirs  longue distance.',9000,120,15050),(45,'Fusil de prcision','AI Arctic Warfare','L\'Arctic Warfare est un fusil de prcision de haute qualit, souvent utilis dans des environnements froids et extrmes.',8500,110,18060),(46,'Mitrailleuse','FN MAG','La FN MAG est une mitrailleuse belge de calibre 7,62 mm, utilise par de nombreuses armes  travers le monde.',4000,60,13000),(47,'Mitrailleuse','Minimi','Le Minimi est une mitrailleuse lgre  munitions de calibre 5,56 mm, utilise par de nombreuses forces armes, notamment les tats-Unis.',3700,55,13900),(48,'Pistolet-mitrailleur','PP-19 Bizon','Le PP-19 Bizon est un pistolet-mitrailleur russe, connu pour son chargeur tambour de grande capacit.',1800,25,15500),(49,'Lance-grenades','M203','Le M203 est un lance-grenades  main mont sous un fusil d\'assaut, trs utilis par les forces militaires amricaines.',1500,40,14000),(50,'Fusil de prcision','AWP','L AWP est un fusil de prcision  verrou utilis principalement par les tireurs d lite pour sa grande porte et sa puissance de feu.',2700,10,15000);
/*!40000 ALTER TABLE `t_arme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_commande`
--

DROP TABLE IF EXISTS `t_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_commande` (
  `commande_id` int NOT NULL AUTO_INCREMENT,
  `_date` date NOT NULL,
  `joueur_fk` int NOT NULL,
  PRIMARY KEY (`commande_id`),
  KEY `joueur_fk` (`joueur_fk`),
  CONSTRAINT `t_commande_ibfk_1` FOREIGN KEY (`joueur_fk`) REFERENCES `t_joueur` (`joueur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_commande`
--

LOCK TABLES `t_commande` WRITE;
/*!40000 ALTER TABLE `t_commande` DISABLE KEYS */;
INSERT INTO `t_commande` VALUES (1,'2024-11-11',11),(2,'2024-11-02',34),(3,'2024-10-30',13),(4,'2024-11-21',18),(5,'2024-03-07',48),(6,'2024-05-21',16),(7,'2024-01-18',50),(8,'2024-11-06',34),(9,'2024-01-09',36),(10,'2024-01-15',21),(11,'2024-04-28',11),(12,'2024-11-17',11),(13,'2024-05-08',28),(14,'2024-03-26',45),(15,'2024-07-14',32),(16,'2024-10-06',46),(17,'2024-06-03',46),(18,'2024-11-01',17),(19,'2024-04-01',6),(20,'2024-07-15',3),(21,'2024-08-11',19),(22,'2024-08-04',3),(23,'2024-01-13',24),(24,'2024-03-18',30),(25,'2024-12-16',12),(26,'2023-12-22',11),(27,'2024-10-16',1),(28,'2024-12-01',27),(29,'2024-11-24',8),(30,'2024-02-13',46),(31,'2024-09-13',45),(32,'2024-07-31',33),(33,'2024-03-30',25),(34,'2024-04-27',19),(35,'2024-06-05',14),(36,'2024-03-06',9),(37,'2024-02-03',28),(38,'2024-02-18',43),(39,'2024-02-03',15),(40,'2024-09-11',39),(41,'2024-07-07',1),(42,'2024-06-17',47),(43,'2024-12-13',28),(44,'2024-02-05',5),(45,'2024-03-24',9),(46,'2024-10-04',42),(47,'2024-04-13',28),(48,'2024-01-28',46),(49,'2024-04-18',32),(50,'2024-08-07',50);
/*!40000 ALTER TABLE `t_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_joueur`
--

DROP TABLE IF EXISTS `t_joueur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_joueur` (
  `joueur_id` int NOT NULL AUTO_INCREMENT,
  `pseudonyme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nombre_points` int NOT NULL,
  PRIMARY KEY (`joueur_id`),
  UNIQUE KEY `pseudonyme` (`pseudonyme`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_joueur`
--

LOCK TABLES `t_joueur` WRITE;
/*!40000 ALTER TABLE `t_joueur` DISABLE KEYS */;
INSERT INTO `t_joueur` VALUES (1,'sidgeiser',32869324),(2,'yvavoirol',36819747),(3,'juldelvalle',39101352),(4,'hadaymont',27699067),(5,'timvenries',31879361),(6,'liawalsky',31208126),(7,'cesklein',4233215),(8,'sroose7',7770734),(9,'eshenfisch8',7694528),(10,'bjeanon9',41075803),(11,'hbeeswinga',11519927),(12,'gmeeganb',23921347),(13,'dgiggc',6745267),(14,'emooreyd',25089326),(15,'gkaradzase',10504492),(16,'jfladgatef',151909),(17,'avowellsg',27791587),(18,'ctynewellh',111289),(19,'shaddyi',2515577),(20,'rranyj',3718988),(21,'rghelardik',486014),(22,'acourvertl',251440),(23,'gwendenm',305672),(24,'jcoultonn',479732),(25,'wdavidmano',770380),(26,'dvirrp',235407),(27,'mdallywaterq',122312),(28,'dmuzzir',39519),(29,'lshirrells',529683),(30,'barthargt',260262),(31,'bclairu',364734),(32,'ablockv',73000),(33,'uskinw',3034972),(34,'ameighanx',686397),(35,'lsainery',399196),(36,'adellcasaz',3536341),(37,'omatic10',1181766),(38,'twinslow11',117985),(39,'thonacker12',1541435),(40,'mmidford13',1803461),(41,'wfuggle14',262625),(42,'rlaurenson15',622455),(43,'gcapstack16',15087),(44,'bclouston17',2706158),(45,'dpeinke18',157017),(46,'cczajkowska19',198089),(47,'bcurless1a',15623),(48,NULL,226831),(49,'cosipov1c',33981),(50,'sbeakes1d',382994);
/*!40000 ALTER TABLE `t_joueur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_suivre`
--

DROP TABLE IF EXISTS `t_suivre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_suivre` (
  `arme_fk` int NOT NULL,
  `commande_fk` int NOT NULL,
  `quantite` int DEFAULT NULL,
  PRIMARY KEY (`arme_fk`,`commande_fk`),
  KEY `commande_fk` (`commande_fk`),
  CONSTRAINT `t_suivre_ibfk_1` FOREIGN KEY (`arme_fk`) REFERENCES `t_arme` (`arme_id`),
  CONSTRAINT `t_suivre_ibfk_2` FOREIGN KEY (`commande_fk`) REFERENCES `t_commande` (`commande_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_suivre`
--

LOCK TABLES `t_suivre` WRITE;
/*!40000 ALTER TABLE `t_suivre` DISABLE KEYS */;
INSERT INTO `t_suivre` VALUES (1,1,37),(2,2,7),(3,3,24),(4,4,2),(5,5,18),(6,6,1),(7,7,9),(8,8,30),(9,9,2),(10,10,29),(11,11,26),(12,12,19),(13,13,38),(14,14,22),(15,15,37),(16,16,21),(17,17,28),(18,18,21),(19,19,5),(20,20,28),(21,21,41),(22,22,7),(23,23,30),(24,24,11),(25,25,45),(26,26,6),(27,27,20),(28,28,42),(29,29,3),(30,30,22),(31,31,7),(32,32,42),(33,33,50),(34,34,20),(35,35,10),(36,36,1),(37,37,19),(38,38,36),(39,39,28),(40,40,17),(41,41,47),(42,42,17),(43,43,28),(44,44,43),(45,45,48),(46,46,3),(47,47,16),(48,48,14),(49,49,46),(50,50,36);
/*!40000 ALTER TABLE `t_suivre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_utiliser`
--

DROP TABLE IF EXISTS `t_utiliser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_utiliser` (
  `joueur_fk` int NOT NULL,
  `arme_fk` int NOT NULL,
  `coup_restant` smallint DEFAULT NULL,
  PRIMARY KEY (`joueur_fk`,`arme_fk`),
  KEY `arme_fk` (`arme_fk`),
  CONSTRAINT `t_utiliser_ibfk_1` FOREIGN KEY (`joueur_fk`) REFERENCES `t_joueur` (`joueur_id`),
  CONSTRAINT `t_utiliser_ibfk_2` FOREIGN KEY (`arme_fk`) REFERENCES `t_arme` (`arme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_utiliser`
--

LOCK TABLES `t_utiliser` WRITE;
/*!40000 ALTER TABLE `t_utiliser` DISABLE KEYS */;
INSERT INTO `t_utiliser` VALUES (1,1,7111),(2,2,9659),(3,3,9209),(4,4,401),(5,5,58),(6,6,3639),(7,7,3070),(8,8,7704),(9,9,197),(10,10,2277),(11,11,5593),(12,12,7992),(13,13,3350),(14,14,3393),(15,15,1468),(16,16,2520),(17,17,1624),(18,18,8258),(19,19,3966),(20,20,5531),(21,21,224),(22,22,8469),(23,23,1978),(24,24,8834),(25,25,4995),(26,26,2760),(27,27,5359),(28,28,8936),(29,29,2544),(30,30,3528),(31,31,5728),(32,32,6721),(33,33,8568),(34,34,3935),(35,35,1540),(36,36,2820),(37,37,8950),(38,38,8131),(39,39,6516),(40,40,963),(41,41,1489),(42,42,6865),(43,43,5493),(44,44,3910),(45,45,7617),(46,46,2781),(47,47,6588),(48,48,8474),(49,49,7940),(50,50,7761);
/*!40000 ALTER TABLE `t_utiliser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-18 12:22:17
