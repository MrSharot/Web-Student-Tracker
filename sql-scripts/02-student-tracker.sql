CREATE DATABASE  IF NOT EXISTS `web_student_tracker`;
USE `web_student_tracker`;
--

-- ------------------------------------------------------




--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Mushfiqur','Rahman','sharot@nomail.com'),(2,'Shajid','Miraj','arabi@vai.com'),(3,'Mushfiqur','Muhit','shaom@vai.com'),(4,'Jamius','Siam','siam@bondhu.com'),(5,'Ahmed','Nafisul','bari@bondhu.com');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;


select * from student;
