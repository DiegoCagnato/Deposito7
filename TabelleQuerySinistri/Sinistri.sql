/*
SQLyog Community v12.09 (64 bit)
MySQL - 10.4.14-MariaDB : Database - sinistri
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sinistri` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sinistri`;

/*Table structure for table `assicurazione` */

DROP TABLE IF EXISTS `assicurazione`;

CREATE TABLE `assicurazione` (
  `CodAss` char(10) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Sede` varchar(50) NOT NULL,
  PRIMARY KEY (`CodAss`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `assicurazione` */

insert  into `assicurazione`(`CodAss`,`Nome`,`Sede`) values ('0138658351','SARA','Roma'),('1456780210','UnipolSai','Verona'),('2389919190','SARA','Roma'),('7654389210','Prima','Milano'),('9987327189','UnipolSai','Verona'),('9998352617','SARA','Roma'),('9999999999','Prima','Milano');

/*Table structure for table `auto` */

DROP TABLE IF EXISTS `auto`;

CREATE TABLE `auto` (
  `Targa` char(7) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Cilindrata` int(11) NOT NULL,
  `Potenza` int(11) NOT NULL,
  `CodFiscaleProprietario` char(16) NOT NULL,
  `CodAss` char(10) NOT NULL,
  PRIMARY KEY (`Targa`),
  UNIQUE KEY `CodAss` (`CodAss`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `auto` */

insert  into `auto`(`Targa`,`Marca`,`Cilindrata`,`Potenza`,`CodFiscaleProprietario`,`CodAss`) values ('AA123BB','BMW',2000,150,'ghjyt45689012swr','0138658351'),('AS999DF','Fiat',1600,100,'ghsa43jjje128ikd','9998352617'),('AU567RY','Fiat',1200,70,'rethafgmiortsfki','2389919190'),('CV782GH','Chevrolet',3000,200,'fgsb32bnnn389103','9987327189'),('DC000MN','TOYOTA',2000,120,'bgads43kurio4568','7654389210'),('FR000RT','Audi',2200,170,'ghjyt45689012swr','9999999999'),('GR345GT','Reanault',1600,90,'retsdfgta567iu51','1456780210');

/*Table structure for table `autocoinvolte` */

DROP TABLE IF EXISTS `autocoinvolte`;

CREATE TABLE `autocoinvolte` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CodS` char(5) DEFAULT NULL,
  `Targa` char(7) DEFAULT NULL,
  `ImportoDelDanno` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `autocoinvolte` */

insert  into `autocoinvolte`(`Id`,`CodS`,`Targa`,`ImportoDelDanno`) values (1,'78123','AU567RY',3000),(2,'78123','CV782GH',2000),(3,'78123','AA123BB',3500),(4,'38901','DC000MN',1000),(5,'38901','GR345GT',2000),(6,'03471','AU567RY',1500),(7,'03471','GR345GT',1000),(8,'44789','DC000MN',1500),(9,'44789','CV782GH',4000);

/*Table structure for table `proprietario` */

DROP TABLE IF EXISTS `proprietario`;

CREATE TABLE `proprietario` (
  `CodFiscale` char(16) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Residenza` varchar(50) NOT NULL,
  PRIMARY KEY (`CodFiscale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `proprietario` */

insert  into `proprietario`(`CodFiscale`,`Nome`,`Residenza`) values ('bgads43kurio4568','GabrielBatistuta','Argentina'),('fgsb32bnnn389103','LewisHamilton','Inghilterra'),('ghjyt45689012swr','ValentinaVezzali','Marche'),('ghsa43jjje128ikd','YelenaIsinbaieva','Russia'),('rethafgmiortsfki','ValentinoRossi','Tavullia'),('retsdfgta567iu51','TotoSchillaci','Sicilia');

/*Table structure for table `sinistro` */

DROP TABLE IF EXISTS `sinistro`;

CREATE TABLE `sinistro` (
  `CodS` char(5) NOT NULL,
  `Localita` varchar(50) NOT NULL,
  `DataSinistro` date NOT NULL,
  PRIMARY KEY (`CodS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sinistro` */

insert  into `sinistro`(`CodS`,`Localita`,`DataSinistro`) values ('03471','Foggia','2020-02-21'),('38901','Verona','2019-12-25'),('44789','Aosta','2020-01-02'),('78123','Messina','2019-09-14');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
