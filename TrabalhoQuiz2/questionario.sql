# Host: localhost  (Version: 5.6.24-log)
# Date: 2017-07-20 20:53:15
# Generator: MySQL-Front 5.3  (Build 4.187)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "pergunta"
#

CREATE TABLE `pergunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(80) DEFAULT NULL,
  `comentario` varchar(120) DEFAULT NULL,
  `resposta_certa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "pergunta"
#


#
# Structure for table "resposta"
#

CREATE TABLE `resposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `id_pergunta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pergunta` (`id_pergunta`),
  CONSTRAINT `resposta_ibfk_1` FOREIGN KEY (`id_pergunta`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "resposta"
#

