-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: myschool
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `compte`
--

DROP TABLE IF EXISTS `compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `activate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmmhw4hs6ep09qqjm6cn8a0cyn` (`profile_id`),
  CONSTRAINT `FKmmhw4hs6ep09qqjm6cn8a0cyn` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte`
--

LOCK TABLES `compte` WRITE;
/*!40000 ALTER TABLE `compte` DISABLE KEYS */;
INSERT INTO `compte` VALUES (86,'karim','karim',1,'yes'),(94,'yanis','yanis',2,'yes'),(95,'sebasiane','sebasiane',2,'yes');
/*!40000 ALTER TABLE `compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) DEFAULT NULL,
  `progress` varchar(255) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Maths','0',NULL,'Cours de maths avec plusieurs chapitres: algèbre, arithmetique, etc','https://image.shutterstock.com/image-vector/creative-hand-drawn-vector-maths-260nw-461142283.jpg'),(2,'Français','0',NULL,'Cours de Français avec plusieurs chapitres: Grammaire, Orthographe etc ','https://t3.ftcdn.net/jpg/01/28/45/16/240_F_128451685_HwRiouQcs31bEtAvaixODxVpGvJRMUCU.jpg'),(3,'Physique','0',NULL,'Cours de Physique avec plusieurs chapitres: Electricité, Mécanique etc ','https://www.studyrama.com/IMG/arton89280.jpg'),(4,'Chimie','0',NULL,'Cours de Chimie avec plusieurs chapitres: les composants chimiques, réactions etc ','https://cdn.futura-sciences.com/buildsv6/images/wide1920/b/b/5/bb5ab61f3e_50151085_quiz-chimie-bac-mg-fotolia.jpg'),(5,'Anglais','0',NULL,'Cours d\' ANglais avec plusieurs chapitres: Grammaire, Speaking, reading etc ','https://vraiesecolesdelangues.com/wp-content/uploads/2013/02/learning-english.jpg'),(6,'Histoire','0',NULL,'Cours d\'Histoire avec plusieurs chapitres: Guerres mondialles, crise des années 30 etc ','https://i.f1g.fr/media/eidos/805x453_crop/2017/06/16/XVM2b5c766c-4080-11e7-a469-62c36d07d43b.jpg'),(7,'Géographie','0',NULL,'Cours de Géographie avec plusieurs chapitres: la démographie mondiale etc ','https://www.geodus.com/globe-map/tresgrand/geo_wb34083.jpg'),(8,'Biologie','0',NULL,'Cours de Biologie avec plusieurs chapitres: les plantes, la réproduction etc ','https://www.prf.upol.cz/typo3temp/assets/_processed_/d/e/csm_dna-1811955_1920_7b6c094ae2.jpg');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_content`
--

DROP TABLE IF EXISTS `course_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKknr61ctevkwqhoxi6wpem4dk6` (`course_id`),
  CONSTRAINT `FKknr61ctevkwqhoxi6wpem4dk6` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_content`
--

LOCK TABLES `course_content` WRITE;
/*!40000 ALTER TABLE `course_content` DISABLE KEYS */;
INSERT INTO `course_content` VALUES (1,'http://www.ancestralauthor.com/tutorial/tutorial.pdf','premier cours',1,1),(2,'http://www.ancestralauthor.com/download/large.pdf','deuxième cours',1,1),(3,'http://www.ancestralauthor.com/download/sample.pdf','troisième cours',1,1),(4,'http://www.ancestralauthor.com/tutorial/tutorial.pdf','Français elementaire',2,1),(5,'https://webusers.imj-prg.fr/~alessandro.chiodo/LU1MA002/exomov/F05E06.mp4','calcul fréquenciel',1,2);
/*!40000 ALTER TABLE `course_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_progress`
--

DROP TABLE IF EXISTS `course_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_course` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_progress`
--

LOCK TABLES `course_progress` WRITE;
/*!40000 ALTER TABLE `course_progress` DISABLE KEYS */;
INSERT INTO `course_progress` VALUES (1,1,1,'done'),(2,2,1,'notdone'),(3,3,1,'done'),(4,4,1,'done'),(5,5,1,'notdone');
/*!40000 ALTER TABLE `course_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercice`
--

DROP TABLE IF EXISTS `exercice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) DEFAULT NULL,
  `note` double NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqqxsl3g04gfcxxut6wnr782l8` (`course_id`),
  CONSTRAINT `FKqqxsl3g04gfcxxut6wnr782l8` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercice`
--

LOCK TABLES `exercice` WRITE;
/*!40000 ALTER TABLE `exercice` DISABLE KEYS */;
INSERT INTO `exercice` VALUES (1,'exo1',13.5,1),(2,'exo2',14,1),(3,'exo3',14,2),(4,'exo4',12,2);
/*!40000 ALTER TABLE `exercice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercice_progress`
--

DROP TABLE IF EXISTS `exercice_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercice_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_course` int(11) DEFAULT NULL,
  `id_exercice` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercice_progress`
--

LOCK TABLES `exercice_progress` WRITE;
/*!40000 ALTER TABLE `exercice_progress` DISABLE KEYS */;
INSERT INTO `exercice_progress` VALUES (1,1,1,1,'done'),(2,1,2,1,'notdone');
/*!40000 ALTER TABLE `exercice_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listchoices`
--

DROP TABLE IF EXISTS `listchoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listchoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `qcm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listchoices`
--

LOCK TABLES `listchoices` WRITE;
/*!40000 ALTER TABLE `listchoices` DISABLE KEYS */;
INSERT INTO `listchoices` VALUES (1,'A','48',1),(2,'B','28',1),(3,'C','27',1),(4,'D','30',1),(5,'A','25',2),(6,'B','27',2),(7,'C','26',2),(8,'D','30',2);
/*!40000 ALTER TABLE `listchoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_activity`
--

DROP TABLE IF EXISTS `log_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_activity` datetime(6) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe2pv8h1erkw0r69yvowo6plj5` (`user_id`),
  CONSTRAINT `FKe2pv8h1erkw0r69yvowo6plj5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_activity`
--

LOCK TABLES `log_activity` WRITE;
/*!40000 ALTER TABLE `log_activity` DISABLE KEYS */;
INSERT INTO `log_activity` VALUES (1,'2020-05-21 22:00:00.000000','premier cours',112),(2,'2020-05-24 22:00:00.000000','premier cours',120),(3,'2020-05-24 22:00:00.000000','premier cours',120),(4,'2020-05-24 22:00:00.000000','premier cours',120),(5,'2020-05-24 22:00:00.000000','premier cours',120);
/*!40000 ALTER TABLE `log_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_session`
--

DROP TABLE IF EXISTS `log_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_connexion` datetime(6) DEFAULT NULL,
  `date_deconnexion` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpesweraixtga75rqbhuepb5un` (`user_id`),
  CONSTRAINT `FKpesweraixtga75rqbhuepb5un` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_session`
--

LOCK TABLES `log_session` WRITE;
/*!40000 ALTER TABLE `log_session` DISABLE KEYS */;
INSERT INTO `log_session` VALUES (1,'2020-05-22 15:08:30.225000',NULL,NULL),(2,'2020-05-22 15:08:48.358000','2020-05-22 15:46:55.268000',112),(3,'2020-05-22 23:43:03.730000','2020-05-22 23:43:08.806000',112),(4,'2020-05-23 11:17:24.605000','2020-05-23 11:20:58.278000',112),(5,'2020-05-23 11:41:19.656000','2020-05-23 11:41:38.133000',112),(6,'2020-05-23 11:43:26.898000','2020-05-23 11:43:42.704000',112),(7,'2020-05-23 12:36:25.080000','2020-05-23 12:36:33.816000',112),(8,'2020-05-23 12:47:39.763000','2020-05-23 13:07:44.772000',112),(9,'2020-05-23 13:12:24.418000','2020-05-23 13:14:43.551000',112),(10,'2020-05-23 13:41:59.339000','2020-05-23 13:44:44.666000',112),(11,'2020-05-23 14:21:34.019000','2020-05-25 01:16:20.790000',112),(12,'2020-05-23 14:22:44.225000','2020-05-23 14:23:54.423000',112),(13,'2020-05-23 14:27:15.222000','2020-05-23 14:27:23.254000',112),(14,'2020-05-24 23:59:57.826000','2020-05-25 00:00:16.555000',112),(15,'2020-05-25 01:16:30.768000','2020-05-25 01:20:11.254000',112),(16,'2020-05-25 01:20:20.340000','2020-05-25 01:20:29.667000',112),(17,'2020-05-25 01:20:46.965000','2020-05-25 01:20:59.789000',120),(18,'2020-05-25 01:21:09.285000',NULL,120),(19,'2020-05-25 17:30:43.811000','2020-05-25 18:32:17.851000',112),(20,'2020-05-25 17:35:08.052000','2020-05-25 17:36:22.170000',112),(21,'2020-05-25 17:36:41.486000','2020-05-25 17:36:49.936000',120),(22,'2020-05-25 17:37:03.432000','2020-05-25 18:31:06.392000',112);
/*!40000 ALTER TABLE `log_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payement`
--

DROP TABLE IF EXISTS `payement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `annee_expiration` int(11) NOT NULL,
  `cryptonyme_carte` int(11) NOT NULL,
  `mois_expiration` int(11) NOT NULL,
  `nom_proprietaire` varchar(255) DEFAULT NULL,
  `numero_carte` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8s8q4ymfo3y7knm61do6o6pw` (`user_id`),
  CONSTRAINT `FK8s8q4ymfo3y7knm61do6o6pw` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payement`
--

LOCK TABLES `payement` WRITE;
/*!40000 ALTER TABLE `payement` DISABLE KEYS */;
INSERT INTO `payement` VALUES (1,2020,4356,1,'theirno barry','05999378574885',112);
/*!40000 ALTER TABLE `payement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'parent','ROLE_PARENT'),(2,'eleve','ROLE_ELEVE');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qcm`
--

DROP TABLE IF EXISTS `qcm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qcm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listchoices` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `exercice_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhxqh5yj3xwcth02qi1scimfg4` (`exercice_id`),
  CONSTRAINT `FKhxqh5yj3xwcth02qi1scimfg4` FOREIGN KEY (`exercice_id`) REFERENCES `exercice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qcm`
--

LOCK TABLES `qcm` WRITE;
/*!40000 ALTER TABLE `qcm` DISABLE KEYS */;
INSERT INTO `qcm` VALUES (1,NULL,'Combien vaut 3+5²','B',1,'calcul puissance');
/*!40000 ALTER TABLE `qcm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr`
--

DROP TABLE IF EXISTS `qr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `exercice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK16mgci74iipv2th2q8ji55v1k` (`exercice_id`),
  CONSTRAINT `FK16mgci74iipv2th2q8ji55v1k` FOREIGN KEY (`exercice_id`) REFERENCES `exercice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr`
--

LOCK TABLES `qr` WRITE;
/*!40000 ALTER TABLE `qr` DISABLE KEYS */;
/*!40000 ALTER TABLE `qr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendation`
--

DROP TABLE IF EXISTS `recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommendation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenu` varchar(255) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendation`
--

LOCK TABLES `recommendation` WRITE;
/*!40000 ALTER TABLE `recommendation` DISABLE KEYS */;
INSERT INTO `recommendation` VALUES (1,'Bossez bien, les examens approches','2020-05-15 23:35:08.000000'),(2,'Revenez sur votre cours, soyez motivé','2020-05-15 23:35:53.000000'),(3,'Ne baissez pas les bras.','2020-05-15 23:36:10.000000'),(4,'Courage, il vous reste pas beaucoup.','2020-05-15 23:36:25.000000'),(5,'La réussité vient au bout de l\'effort.','2020-05-15 23:37:49.000000'),(6,'Soyez perséverant','2020-05-15 23:37:49.000000'),(7,'Bravo, Vous êtes bien avancé.','2020-05-15 23:39:20.000000');
/*!40000 ALTER TABLE `recommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tchat`
--

DROP TABLE IF EXISTS `tchat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tchat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_send` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `reveiver_id` int(11) DEFAULT NULL,
  `transmitter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq68imj4bwyg1uw03she05ymeo` (`reveiver_id`),
  KEY `FK3sor9xyl3blvn0kbd2im0wmsx` (`transmitter_id`),
  CONSTRAINT `FK3sor9xyl3blvn0kbd2im0wmsx` FOREIGN KEY (`transmitter_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKq68imj4bwyg1uw03she05ymeo` FOREIGN KEY (`reveiver_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tchat`
--

LOCK TABLES `tchat` WRITE;
/*!40000 ALTER TABLE `tchat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tchat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `compte_id` int(11) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `parent_relation` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK55wqyp3yo78bxyge0cuswgjeg` (`compte_id`),
  KEY `FK4k8a1qa0wofm01aijepmu0d4g` (`parent_id`),
  CONSTRAINT `FK4k8a1qa0wofm01aijepmu0d4g` FOREIGN KEY (`parent_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK55wqyp3yo78bxyge0cuswgjeg` FOREIGN KEY (`compte_id`) REFERENCES `compte` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (112,'karim.dahdouh.fr@gmail.com',NULL,'karim','dahdouh',NULL,86,'null','null','null','0789876543','Montpellier',NULL),(120,'null',NULL,'Yanis','Dubois',NULL,94,'Cours élémentaire première année (CE1)','Mother','boy','null','null',112),(121,'null',NULL,'Sebasiane','Martin',NULL,95,'Cours élémentaire deuxième année (CE2)','Father','boy','null','null',112);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_course`
--

DROP TABLE IF EXISTS `user_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_course` (
  `id_user` int(11) NOT NULL,
  `id_course` int(11) NOT NULL,
  KEY `FKsdlq9odlq12vlja73ckncijrn` (`id_course`),
  KEY `FKeux29b6gyunbcxlevu1g47yqs` (`id_user`),
  CONSTRAINT `FKeux29b6gyunbcxlevu1g47yqs` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  CONSTRAINT `FKsdlq9odlq12vlja73ckncijrn` FOREIGN KEY (`id_course`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_course`
--

LOCK TABLES `user_course` WRITE;
/*!40000 ALTER TABLE `user_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-25 21:10:16
