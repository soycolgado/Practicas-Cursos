# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.35)
# Base de datos: Pruebas
# Tiempo de Generación: 2019-05-14 23:34:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla disco
# ------------------------------------------------------------

DROP TABLE IF EXISTS `disco`;

CREATE TABLE `disco` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `disco` WRITE;
/*!40000 ALTER TABLE `disco` DISABLE KEYS */;

INSERT INTO `disco` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`)
VALUES
	(1,'WD5000LPCX','disco rigido p/notebook serial ata 500 gb wd sata 6 16mb blue','WESTER DIGITAL',38.4095,'ELIT'),
	(2,'HDWL110UZSVA','disco 2.5\" 1tb toshiba 5400 rpm  sata iii 7mm','TOSHIBA',45,'HDC'),
	(3,'WD10JPVX','disco 2.5 sata iii 1tb 5400rpm 9mm wd 8mb','WESTER DIGITAL',49.126,'ELIT'),
	(4,'WD10SPZX','disco rigido p/notebook serial ata 1tb western digital','WESTER DIGITAL',50.63,'AIR'),
	(5,'WD10JPLX','disco interno notebook black 1tb sata 6 gb/s 32m','WESTER DIGITAL',52.21,'PCARTS'),
	(6,'ST1000LX015','disco hdd seagate s 1 tb 5400 s-ata notebook firecuda','SEAGATE',63.4192,'FREE'),
	(7,'WD20SPZX','disco  2 tb p/notebook wd s-ata iii 5400 8mb - 9mm','WESTER DIGITAL',85.38,'AIR'),
	(8,'ASX950USS-120GT-C ','disco ssd 2.5 120gb','ADATA',29,'STYLUS'),
	(9,'WD10EZEX-R','disco hdd wd s 1 tb s-ata3 recertified','WESTER DIGITAL',35.28,'N.BYTES'),
	(10,'DT01ACA050','disco  500 gb toshiba sata iii 32mb 7200rpm','TOSHIBA',35.91,'AIR'),
	(11,'ST1000DM010','disco sata iii 1tb seagate barracuda','SEAGATE',38.52,'AIR'),
	(12,'WD10EZEX','disco sata iii 1tb wd blue','WESTER DIGITAL',39.743,'ELIT'),
	(13,'HDDTOSH1TB','disco pc 1t toshiba 7200rpm 32mb 6gb/s','TOSHIBA',43,'CEVEN'),
	(14,'ST1000VX005','disco sata iii 1tb seagate skyhawk','SEAGATE',43.1471,'FREE'),
	(15,'DT01ACA100','disco 3.5\" 1tb toshiba 7200 rpm  sata iii','TOSHIBA',44.07,'HDC'),
	(16,'WD10PURZ','disco sata iii 1tb wd purple','WESTER DIGITAL',44.11,'ELIT'),
	(17,'HDD1TBBLUE','disco pc 1t wd blue sata3 7200rpm','WESTER DIGITAL',45,'CEVEN'),
	(18,'AGAMMIXS5-256GT-C','disco ssd gaming m.2 pcie 256g','ADATA',51.2,'STYLUS'),
	(19,'DT01ACA200','disco rigido toshiba 2tb sata 3','TOSHIBA',54,'STYLUS'),
	(20,'WD20EZRZ','disco sata iii 2tb wd blue','WESTER DIGITAL',58.19,'ELIT'),
	(21,'ST1000VN002','disco sata iii 1tb seagate ironwolf','SEAGATE',59.42,'PCARTS'),
	(22,'ST1000DX002-SP','disco hdd seagate s 1 tb s-ata firecuda hybrid','SEAGATE',61.5,'N.BYTES'),
	(23,'WD10EFRX','disco sata iii 1tb wd red','WESTER DIGITAL',62.755,'ELIT'),
	(24,'ST2000VX008','disco sata iii 2tb seagate skyhawk','SEAGATE',64.9994,'FREE'),
	(25,'WD20PURZ','disco sata iii 2tb wd purple','WESTER DIGITAL',65.472,'ELIT'),
	(26,'HDD2TBBLUE','disco pc 2t wd blue sata3 7200rpm','WESTER DIGITAL',66,'CEVEN'),
	(27,'ST2000DM006','disco pc 2t seagate 7200rpm 64mb 6gb/s','SEAGATE',66,'CEVEN'),
	(28,'WD1003FZEX','disco sata iii 1tb wd black','WESTER DIGITAL',76.714,'ELIT'),
	(29,'ST1000DX002','disco  1 tb seagate  sata 6gb/s  firecuda 3.5','SEAGATE',77.5,'AIR'),
	(30,'ST2000VN004','disco sata iii 2tb seagate ironwolf','SEAGATE',79.93,'PCARTS'),
	(31,'WD30PURX','disco rigido wd 3tb sata surveillance purple','WESTER DIGITAL',85,'STYLUS'),
	(32,'WD30PURZ','disco sata iii 3tb wd purple','WESTER DIGITAL',88.825,'ELIT'),
	(33,'AGAMMIXS5-512GT-C','disco ssd gaming m.2 pcie 512g','ADATA',89.5,'STYLUS'),
	(34,'ST3000VX009','disco duro int 3tb sata 6 gb/s 64mb skyhawk','SEAGATE',89.5312,'ELIT'),
	(35,'ST3000VX010','disco rigido seagate 3tb int sata3 skyhawk\n','ADATA',90.7185,'POLYTECH'),
	(36,'WD20EFRX','disco hdd wd s 2 tb s-ata red edition','WESTER DIGITAL',91.66,'N.BYTES'),
	(37,'ST3000DM008','disco rigido 3 tb seagate barracuda','SEAGATE',93.7674,'POLYTECH'),
	(38,'ST2000DX002-SP','disco hdd seagate s 2 tb s-ata firecuda hybrid','SEAGATE',102.63,'N.BYTES'),
	(39,'ST2000LX001','disco  2 tb seagate  sata 6gb/s firecuda - 2.5','SEAGATE',102.86,'AIR'),
	(40,'ST3000VN007','disco rigido 3 tb seagate ironwolf nas','SEAGATE',104.629,'POLYTECH'),
	(41,'WD30EFRX','disco sata iii 3tb wd red','WESTER DIGITAL',106.782,'ELIT'),
	(42,'WD40PURZ','disco rigido 4 tb western digital purple videovigilancia','WESTER DIGITAL',108.009,'ELIT'),
	(43,'ST4000DM004','disco rigido 4 tb seagate barracuda','SEAGATE',109.316,'POLYTECH'),
	(44,'ST4000VX007','disco rigido seagate 4tb int sata3 skyhawk\n','SEAGATE',111.396,'FREE'),
	(45,'WD40EZRZ','disco rigido 4 tb western digital blue','WESTER DIGITAL',116.066,'POLYTECH'),
	(46,'WD2003FZEX','disco rigido 2 tb western digital black','WESTER DIGITAL',124.3,'ELIT'),
	(47,'ST4000VN008','disco rigido 4 tb seagate ironwolf nas','SEAGATE',128.556,'POLYTECH'),
	(48,'WD40EFRX','disco sata iii 4tb red wd','WESTER DIGITAL',133.463,'ELIT'),
	(49,NULL,'disco  wester digital s 2 tb s-ata gold refurbished','WESTER DIGITAL',139.5,'N.BYTES'),
	(50,'WD60PURZ','disco sata iii 6tb wd purple','WESTER DIGITAL',171.38,'ELIT'),
	(51,'WD60EZRZ','disco sata iii 6tb wd blue','WESTER DIGITAL',171.47,'PCARTS'),
	(52,'ST6000VX001/023','disco  6 tb seagate  sata 6gbxseg 5400  skyhawk','SEAGATE',175.74,'AIR'),
	(53,'WD4005FZBX','disco rigido 4 tb western digital black','WESTER DIGITAL',188.919,'ELIT'),
	(54,'WD60EFRX','disco sata iii 6tb wd red','WESTER DIGITAL',193.017,'ELIT'),
	(55,'ST6000VN0041','disco rigido 6 tb seagate ironwolf nas','SEAGATE',202.764,'POLYTECH'),
	(56,'ST8000VX0022','disco rigido seagate 8tb int sata3 skyhawk\n','SEAGATE',220.848,'FREE'),
	(57,'WD81PURZ','disco rigido 8 tb western digital purple videovigilancia','WESTER DIGITAL',236.995,'ELIT'),
	(58,'ST8000VN0022','disco rigido 8 tb seagate ironwolf nas','SEAGATE',245.937,'POLYTECH'),
	(59,'WD6003FZBX','disco sata iii 6tb black wd','WESTER DIGITAL',254.66,'AIR'),
	(60,'WD80EFAX','disco rigido 8 tb western digital red nas','WESTER DIGITAL',273.539,'POLYTECH'),
	(61,'ST10000VX0004','disco rigido seagate 10tb int sata3 skyhawk\n','SEAGATE',306.424,'ELIT'),
	(62,'WD101PURZ','disco  10 tb wd s-ata iii intellipower 256 mb purple','WESTER DIGITAL',313.46,'AIR'),
	(63,'ST10000VN0004','disco rigido 10 tb seagate ironwolf nas','SEAGATE',335.147,'POLYTECH'),
	(64,'WD100EFAX','disco rigido 10 tb western digital red nas','WESTER DIGITAL',343.504,'POLYTECH'),
	(65,'WD100PURZ','disco rigido 10 tb western digital purple videovigilancia','WESTER DIGITAL',354.561,'POLYTECH'),
	(66,'ST14000VN0008','disco sata iii 14tb ironwolf seagate','SEAGATE',509.95,'PCARTS'),
	(67,'CT120BX500SSD1','disco ssd crucial bx500 120gb','CRUCIAL',18.6619,'ELIT'),
	(68,'ASU650SS-120GT-R','disco ssd adata retail su650 2.5 120gb','ADATA',18.92,'AIR'),
	(69,'GP-GSTFS31120GNTD','disco ssd gigabyte ssd 120gb','GIGABYTE',19.42,'AIR'),
	(70,'WDS120G2G0B','disco ssd wd 120gb m2 green sata 3','WESTER DIGITAL',19.855,'ELIT'),
	(71,'WDS120G2G0A','disco ssd wd green 120gb','WESTER DIGITAL',19.8585,'ELIT'),
	(72,'SA400S37/120G','disco solido ssd 120 gb kingston a400','KINGSTON',20.1857,'ELIT'),
	(73,'SA400M8/120G','disco ssd 120gb a400 m.2 2280','KINGSTON',20.3215,'ELIT'),
	(74,'ASU800NS38-128GT-C','dsico ssd adata 128gb m.2 2280 asu800ns38','SEAGATE',21.8,'STYLUS'),
	(75,'ASX6000LNP-128GT-C','disco ssd adata xpg sx6000 lite lnp m.2 128gb','ADATA',25.65,'N.BYTES'),
	(76,'SDSSDA-120G-','disco ssd sandisk 120gb plus 530 mb/s','SANDISK',26,'CEVEN'),
	(77,'ASU630SS-240GQ-R','disco ssd 240gb adata su630 blister','ADATA',27.7,'AIR'),
	(78,'SUV500M8/120G','disco solido ssd m2 120 gb kingston uv500','KINGSTON',28.4195,'POLYTECH'),
	(79,'WDS240G2G0A','disco ssd wd green 240gb','WESTER DIGITAL',28.7815,'ELIT'),
	(80,'CT240BX500SSD1','disco ssd crucial bx500 240gb','CRUCIAL',28.8056,'ELIT'),
	(81,'WDS240G2G0B','disco ssd wd 240gb m.2 green','WESTER DIGITAL',28.974,'ELIT'),
	(82,'SA400S37/240G','disco ssd a400 240gb kingston','KINGSTON',29.0348,'ELIT'),
	(83,'SA400M8/240G','disco ssd 240gb a400 m.2 2280','KINGSTON',29.6355,'ELIT'),
	(84,'ASU650SS-240GT-R','disco ssd adata retail su650 2.5 240gb','ADATA',29.67,'AIR'),
	(85,'GP-GSM2NE8128GNTD','disco solido ssd m2 128 gb gigabyte','GIGABYTE',30.6005,'POLYTECH'),
	(86,'GP-GSTFS31240GNTD','disco ssd gigabyte gigabyte 240gb','GIGABYTE',31.39,'PCARTS'),
	(87,'BX500240GB','disco solido ssd 240 gb crucial bx500','CRUCIAL',31.5215,'POLYTECH'),
	(88,'WDS240G2G0BI','disco ssd wd 240gb m2 green sata 3','WESTER DIGITAL',32.3,'STYLUS'),
	(89,'ASX6000NP-128GT-C','disco ssd adata xpg sx6000 m.2 128gb','ADATA',39.75,'N.BYTES'),
	(90,'CSSD-F120GBMP300','disco ssd corsair force mp300 m.2 120gb','CORSAIR',39.88,'N.BYTES'),
	(91,'GP-GSM2NE8256GNTD','disco solido ssd m2 256 gb gigabyte','GIGABYTE',43.8286,'POLYTECH'),
	(92,'GP-GSTFS30256GTTD','disco solido ssd 256 gb gigabyte ud pro','GIGABYTE',44.4832,'POLYTECH'),
	(93,'SSDSC2KW256G8X1','disco ssd 256gb intel 545s sata gb/s 2.5','INTEL',45.77,'AIR'),
	(94,'WDS250G2B0A','disco ssd wd blue 250gb','WESTER DIGITAL',48.371,'ELIT'),
	(95,'WDS250G2B0B','disco solido ssd m2 250 gb western digital blue','WESTER DIGITAL',48.5057,'ELIT'),
	(96,'ASX8200PNP-256GT-C','disco ssd adata s xpg sx8200 pro pnp m.2 256gb gt','ADATA',51.43,'N.BYTES'),
	(97,'CT480BX500SSD1','disco ssd crucial bx500 480gb','CRUCIAL',52.6077,'ELIT'),
	(98,'WDS480G2G0B','disco ssd wd 480gb m2 green sata 3','WESTER DIGITAL',53.845,'ELIT'),
	(99,'WDS480G2G0A','disco solido ssd 480 gb western digital green','WESTER DIGITAL',54.043,'ELIT'),
	(100,'ASU650SS-480GT','dsico ssd solido adata 480gb ultimate su650','SEAGATE',55.5882,'FREE'),
	(101,'CSSD-F240GBLE200B','disco ssd corsair force le200b 240gb','CORSAIR',57.14,'N.BYTES'),
	(102,'SA400S37/480G','disco ssd a400 480gb kingston','KINGSTON',58.22,'AIR'),
	(103,'ASU630SS-480GQ-R','disco ssd 480gb adata su630 blister','ADATA',58.33,'AIR'),
	(104,'ASX6000NP-256GT-C','dsico ssd adata 256gb m.2 2280 sx6000np','ADATA',58.8116,'FREE'),
	(105,'SA1000M8/240G','disco ssd 240gb a1000 m.2 2280 nvme','KINGSTON',58.846,'ELIT'),
	(106,'BX500480GB','disco solido ssd 480 gb crucial bx500','CRUCIAL',58.8685,'POLYTECH'),
	(107,'GP-GSTFS31480GNTD','disco ssd gigabyte 480 gb','GIGABYTE',60.375,'POLYTECH'),
	(108,'ASX7000NPC-128GT-C','dsico ssd gammix s10 adata xpg 128gb m.2 2280','ADATA',60.7647,'FREE'),
	(109,'ASU650SS-480GT-R','disco ssd adata retail su650 2.5 480gb','ADATA',61.55,'N.BYTES'),
	(110,'SHFR200/240G   ','disco ssd 240gb hyperx fury rgb 2.5\"','KINGSTON',63.1702,'ELIT'),
	(111,'ASU800NS38-512GT-C','dsico ssd m.2 sata','ADATA',63.3,'STYLUS'),
	(112,'ASX6000PNP-256GT-C','disco ssd adata xpg sx6000 pnp m.2 256gb','ADATA',66.76,'N.BYTES'),
	(113,'STGS500401','dsico ssd solido seagate 500gb barracuda stgs500401','ADATA',68.8821,'FREE'),
	(114,'WDS500G2B0A','disco solido ssd 500 gb western digital blue','WESTER DIGITAL',69.19,'ELIT'),
	(115,'GP-GSTFS30512GTTD','disco ssd gigabyte ssd 512gb','GIGABYTE',69.79,'HDC'),
	(116,'WDS500G2B0B','disco solido ssd m2 500 gb western digital blue','WESTER DIGITAL',72.85,'AIR'),
	(117,'SUV500M8/480G','disco solido ssd m2 480 gb kingston uv500','KINGSTON',73.2205,'POLYTECH'),
	(118,'IM2S3334-128GD','disco ssd adata m.2 128gb 3d nand flash/compatible con','ADATA',76.15,'N.BYTES'),
	(119,'WDS500G1B0C','disco ssd 500gb blue m.2 2280','WESTER DIGITAL',77.6185,'ELIT'),
	(120,'WDS250G2XOC','disco ssd wd 250gb black pcie gen3 8 gb/s m2 ','WESTER DIGITAL',90.9033,'G.NUCLEO'),
	(121,'SHFR200/480G   ','disco ssd 480gb hyperx fury rgb 2.5\"','KINGSTON',91.3712,'ELIT'),
	(122,'CSSD-F480GBMP510','disco ssd m2 corsair 480gb force mp510','CORSAIR',94.08,'HDC'),
	(123,'ASU650SS-960GT-R','dsico ssd solido adata 960gb ultimate su650','SEAGATE',103.063,'FREE'),
	(124,'SA1000M8/480G','disco ssd 480gb a1000 m.2 2280 nvme','KINGSTON',104.267,'ELIT'),
	(125,'WDS100T2G0A','disco 1tb sata green wester digital','WESTER DIGITAL',110.165,'ELIT'),
	(126,'WDS100T2B0A','disco ssd wd 1tb blue sata 3 3d 2.5\" ','WESTER DIGITAL',113.79,'AIR'),
	(127,'MKNSSDSR1TB','disco solido ssd 1 tb mushkin','MUSHKIN',115.304,'POLYTECH'),
	(128,'CSSD-F120GBMP500','disco ssd corsair force mp500 m.2 120gb','CORSAIR',115.82,'N.BYTES'),
	(129,'SA400S37/960G','disco ssd 960gb a400 sata3 2.5\"','KINGSTON',118.115,'ELIT'),
	(130,'IM2S3334-256GD','disco ssd adata m.2 256gb 3d nand flash/compatible con','ADATA',126.21,'N.BYTES'),
	(131,'WDS500G2X0C','disco solido ssd nvme 500 gb western digital black','WESTER DIGITAL',142.227,'POLYTECH'),
	(132,'WDS100T2B0B','disco solido ssd m2 1 tb western digital blue','WESTER DIGITAL',144.19,'AIR'),
	(133,'WDS200T2B0A','disco solido ssd 2 tb western digital blue','WESTER DIGITAL',310.148,'POLYTECH'),
	(134,'WDS100T1B0A','disco ssd wd 1tb blue sata iii interna','WESTER DIGITAL',342.95,'N.BYTES'),
	(135,'WDS200T2B0B','disco solido ssd m2 2 tb western digital blue','WESTER DIGITAL',348.578,'POLYTECH'),
	(136,'CSSD-N400GBNX500','disco ssd pci-e corsair 400 gb neutron nx500','CORSAIR',381.78,'HDC');

/*!40000 ALTER TABLE `disco` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla memoria
# ------------------------------------------------------------

DROP TABLE IF EXISTS `memoria`;

CREATE TABLE `memoria` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `memoria` WRITE;
/*!40000 ALTER TABLE `memoria` DISABLE KEYS */;

INSERT INTO `memoria` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`)
VALUES
	(1,'991964','memoria mushkin essentials 2gb ddr2 pc2-6400','MUSHKIN',10.8003,'POLYTECH'),
	(2,'D2LD2G80BK','memoria ddr2 2gb  800mhz pc6400 generica (8x128) -16chips','GENERICA',11.18,'AIR'),
	(3,NULL,'memoria pcbox ddr3 4gb 1600mhz lv (4gbddr3-1600oem)','PCBOX',15.0299,'G.NUCLEO'),
	(4,'AD3U1600W4G11-S','memoria  adata ddr3 4gb/1600 mhz','ADATA',17.506,'FREE'),
	(5,'MEMDDR3OEM','memoria ram 4gb ddr3-1600 oem micron *armado','GENERICA',21,'CEVEN'),
	(6,'D3LD4G16BK','memoria ddr3 4gb 1600mhz pc6400 generica pc 12800','GENERICA',21.91,'AIR'),
	(7,'CT51264BD160BJ','memoria pc 4gb ddr3l-1600 udimm single ranked','CRUCIAL',22.015,'ELIT'),
	(8,'KVR16N11S8/4','memoria ddr3 4gb 1600mhz dimm (kvr16n11s8/4) kingston','KINGSTON',22.3605,'ELIT'),
	(9,'KVR13N9S8/4','memoria pc ddr3 4gb 1333mhz valueram 1.5v','KINGSTON',22.5874,'ELIT'),
	(10,'CMV4GX3M1A1600C11','memoria ddr3 4gb 1600 mhz corsair value','CORSAIR',22.99,'HDC'),
	(11,'HX318C10FB/4','memoria pc hyperx fury ddr3 4gb 1866mhz black','KINGSTON',23.0926,'ELIT'),
	(12,'992030','memoria mushkin essentials udimm ddr3 4gb 1600mhz 1.35v pc3l-12800','MUSHKIN',23.1192,'POLYTECH'),
	(13,'HX318C10FR/4','memoria pc hyperx fury ddr3 4gb 1866mhz red','KINGSTON',24.917,'ELIT'),
	(14,'ADDU1600W8G11-B','memoria ddr3 8gb adata 1600mhz 1.35v bulk','ADATA',40.85,'AIR'),
	(15,'CT102464BD160B','memoria pc 8gb ddr3l-1600 udimm','CRUCIAL',41.2343,'ELIT'),
	(16,'KVR16N11/8','memoria ddr3 8gb 1600mhz dimm (kvr16n11/8) kingston','KINGSTON',42.6547,'ELIT'),
	(17,'HX316C10FB/8','memoria pc hyperx fury ddr3 8gb 1600mhz black','KINGSTON',45.0505,'ELIT'),
	(18,'AD3U1600W8G1','memoria adata ddr3 dimm 8gb 1600','ADATA',51.18,'N.BYTES'),
	(19,'992031','memoria mushkin essentials udimm ddr3 8gb 1600mhz 1.35v pc3-12800','MUSHKIN',51.5536,'POLYTECH'),
	(20,'CMY16GX3M2A2400C11R','memoria corsair vengeance pro 16gb ddr3 2400mhz (2x8gb)','CORSAIR',161.934,'POLYTECH'),
	(21,'AD4U2400W4G17-S','memoria adata ddr4 u-dimm 4gb/ 2400 mhz ad4u2400w4g17-s','ADATA',20.7696,'FREE'),
	(22,'CT4G4DFS8266','memoria 4gb d4 dimm crucial 2666mhz','CRUCIAL',21.4506,'ELIT'),
	(23,'CT4G4DFS824A','memoria 4gb d4 dimm crucial 2400mhz','CRUCIAL',21.4963,'G.NUCLEO'),
	(24,'AD4U2400J4G17-S','memoria adata ddr4 u-dimm 4gb/ 2400 mhz','ADATA',21.7614,'FREE'),
	(25,'MES4U240HF4G','memoria mushkin essentials 4gb ddr4 2400mhz cl17','MUSHKIN',23.1309,'POLYTECH'),
	(26,'MES4U266KF4G','memoria mushkin essentials 4gb ddr4 2666mhz','MUSHKIN',23.2297,'POLYTECH'),
	(27,NULL,'memoria pcbox ddr4 4gb 2400mhz (4gbddr4-2400oem)','PCBOX',23.3331,'G.NUCLEO'),
	(28,'AD4U2666W4G19-S','memoria adata ddr4 u-dimm 4gb/ 2666 mhz ad4u2666w4g19-s','ADATA',23.5382,'FREE'),
	(29,'CMV4GX4M1A2133C15','memoria ddr4 4gb 2133 mhz corsair value','CORSAIR',23.99,'HDC'),
	(30,'KVR24N17S6/4','memoria 4gb dimm d4 2400mhz kingston','KINGSTON',24,'PCARTS'),
	(31,'HX424C15FB/4','memoria pc hyperx fury ddr4 4gb 2400mhz black','KINGSTON',24.4345,'ELIT'),
	(32,'BLS4G4D240FSC','memoria crucial ddr4 4gb 2400mhz ballistix white (pc4-19200) cl16 ','CRUCIAL',24.5611,'G.NUCLEO'),
	(33,'BLS4G4D240FSE','memoria crucial ddr4 4gb 2400mhz ballistix red (pc4-19200) cl16 ','CRUCIAL',24.5611,'G.NUCLEO'),
	(34,'HX421C14FB/4','memoria pc hyper x fury ddr4 4gb 2133mhz','KINGSTON',24.6502,'ELIT'),
	(35,'CMV4GX4M1A2666C18','memoria d4 corsair 4gb 2666 mhz value','CORSAIR',25.68,'PCARTS'),
	(36,'BLS4G4D26BFSC','memoria crucial ballistix sport lt udimm ddr4 4gb 2666 white','CRUCIAL',25.789,'G.NUCLEO'),
	(37,'BLS4G4D26BFSE','memoria crucial ballistix sport lt udimm ddr4 4gb 2666 red','CRUCIAL',25.789,'G.NUCLEO'),
	(38,'CMK4GX4M1A2400C14','memoria 4gb d4 corsair 2400 mhz ven lpx bl','CORSAIR',27.43,'PCARTS'),
	(39,'HX426C15FB/4','memoria ddr4 4gb kingston 2666mhz hyperx fury black','KINGSTON',28.4,'AIR'),
	(40,'BLS4G4D26BFSB','memoria crucial ballistix sport lt udimm ddr4 4gb 2666 grey','CRUCIAL',29.4723,'POLYTECH'),
	(41,'MEMDDR4OEM','memoria ram 4gb ddr4-2400 oem micron *armado','GENERICA',31,'CEVEN'),
	(42,'AD4U240038G17-S','memoria adata ddr4 u-dimm 8gb/ 2400 mhz','ADATA',40.5507,'FREE'),
	(43,'CMV8GX4M1A2400C16','memoria ddr4 8gb 2400 mhz corsair value','CORSAIR',41.99,'HDC'),
	(44,'CT8G4DFS8266','memoria 8gb d4 dimm crucial 2666mhz','CRUCIAL',42.901,'ELIT'),
	(45,'CT8G4DFS824A','memoria 8gb d4 dimm 2400 crucial','CRUCIAL',42.9819,'G.NUCLEO'),
	(46,'KVR24N17S8/8','memoria 8gb dimm d4 2400mhz kingston','KINGSTON',44.418,'ELIT'),
	(47,'AX4U2400W4G16-SBG','memoria adata ddr4 xpg 4gb/2400 mhz gammix d10','ADATA',44.8778,'FREE'),
	(48,'BLS8G4D240FSC','memoria crucial ddr4 8gb 2400mhz ballistix white (pc4-19200) cl16 ','CRUCIAL',45.438,'G.NUCLEO'),
	(49,'BLS8G4D240FSCK','memoria crucial ddr4 8gb 2400mhz ballistix white (pc4-19200) cl16 srx8 ','CRUCIAL',45.438,'G.NUCLEO'),
	(50,'BLS8G4D240FSEK','memoria crucial ddr4 8gb 2400mhz ballistix red (pc4-19200) cl16 ','CRUCIAL',45.438,'G.NUCLEO'),
	(51,'MES4U266KF8G','memoria mushkin essentials 8gb ddr4 2666mhz','MUSHKIN',45.6488,'POLYTECH'),
	(52,'BLS8G4D240FSE','memoria pc ballistix sport lt red 8gb ddr4-2400 ud','KINGSTON',46.1331,'ELIT'),
	(53,'HX424C15FB2/8','memoria 8gb d4 2400 king hyperx fury','KINGSTON',46.145,'ELIT'),
	(54,'BLS8G4D30CESTK','memoria pc ballistix sport 8gb ddr4-3000 ud','BALLISTIX',46.3877,'ELIT'),
	(55,'CMV8GX4M1A2666C18','memoria corsair value pc 8gb ddr4 2666mhz (1x8gb)','CORSAIR',46.392,'POLYTECH'),
	(56,'MES4U240HF8G','memoria mushkin essentials 8gb ddr4 2400mhz cl17 1.2v','MUSHKIN',46.4478,'POLYTECH'),
	(57,'AD4U266638G19-S','memoria adata ddr4 u-dimm 8gb/ 2666 mhz ad4u266638g19-s','ADATA',46.6838,'FREE'),
	(58,'BLS8G4D26BFSEK','memoria crucial ballistix sport lt udimm ddr4 8gb 2666 red','CRUCIAL',47.97,'AIR'),
	(59,'AX4U240038G16-SBG','memoria adata dimm xpg gammix d10 black ddr4 8gb 2400','ADATA',49.16,'N.BYTES'),
	(60,'AX4U320038G16-SB30','memoria adata ddr4 xpg 8gb/3200 mhz gammix d30','ADATA',49.2315,'FREE'),
	(61,'AX4U240038G16-SBF','memoria adata ddr4 xpg flame 8gb/ 2400 mhz','ADATA',49.7257,'FREE'),
	(62,'BLS8G4D26BFSBK','memoria crucial ballistix sport lt udimm ddr4 8gb 2666 grey','CRUCIAL',51.6204,'POLYTECH'),
	(63,'HX432C18FB2/8','memoria hyperx fury black ddr4-3200 c18 8gb','KINGSTON',53.0177,'ELIT'),
	(64,'MEM8GDDR4240','memoria ram 8gb ddr4-2400 oem bulk','GENERICA',55,'CEVEN'),
	(65,'HX430C15PB3/8','memoria 8gb d4 dimm 3000 king predator','KINGSTON',55.34,'PCARTS'),
	(66,'AX4U300038G16-SRG','memoria ddr4 8gb adata xpg 3000mhz gammix d10','ADATA',59.38,'AIR'),
	(67,'AX4U300038G16-SR41','memoria adata ddr4 xpg 8gb 3000mhz spectrix rgb d41','ADATA',61.3703,'FREE'),
	(68,'AX4U300038G16-SB41','memoria adata ddr4 xpg 8gb 3000mhz spectrix rgb d41','ADATA',61.4182,'FREE'),
	(69,'HX432C16PB3A/8','memoria hyperx predator rgb ddr4-3200 c16 8gb','KINGSTON',62.042,'ELIT'),
	(70,'AX4U2400W4G16-DRG ','2 memoria ram ddr4 2400 4gb gammix d10 dual','ADATA',63.2,'STYLUS'),
	(71,'GALS48GB2400C17SC','memoria geil ddr4 8gb 2400mhz superluce rgb rtl ','GEIL',63.49,'G.NUCLEO'),
	(72,'AX4U300038G16-SB80','memoria adata dimm xpg spectrix d80 rgb ddr4 8gb 3000 mhz','ADATA',63.69,'N.BYTES'),
	(73,'AX4U300038G16-SR80','memoria adata ddr4 xpg 8gb 3000mhz spectrix rgb sr80','ADATA',65.5243,'FREE'),
	(74,'AX4U320038G16-SB80','memoria adata ddr4 xpg 8gb 3200mhz spectrix rgb sb80','ADATA',65.8354,'FREE'),
	(75,'BLT8G4D30BET4K','memoria ddr4 8gb crucial 3000mhz cl16 tracer rgb','CRUCIAL',69.22,'AIR'),
	(76,'CT16G4DFD824A','memoria pc 16gb ddr4-2400 udimm','CRUCIAL',79.3098,'ELIT'),
	(77,'AD4U2400316G17-S','memoria adata ddr4 dimm 16gb 2400','ADATA',87.36,'AIR'),
	(78,'HX436C17PB3A/8','memoria hyperx predator rgb ddr4-3600 c17 8gb','KINGSTON',88.8088,'ELIT'),
	(79,'AX4U2666W4G16-DRZ','2 memoria ram ddr4 2666 4gb red z1','ADATA',89.8,'STYLUS'),
	(80,'CMV16GX4M1A2666C18','memoria corsair value pc 16gb ddr4 2666mhz (1x16gb) cl18','CORSAIR',91.536,'POLYTECH'),
	(81,'AD4U2400316cG17-S','memoria ram ddr4 2400mhz 16g udimm','ADATA',92,'STYLUS'),
	(82,'AX4U3000316G16-SBF','memoria adata ddr4 xpg flame 16gb/ 3000mhz','ADATA',94.9641,'FREE'),
	(83,'AX4U360038G17-SRZ1','memoria ram ddr4 3600 8gb red z1','ADATA',99,'STYLUS'),
	(84,'BLS16G4D240FSB','memoria crucial ballistix sport lt udimm ddr4 16gb 2400 grey','CRUCIAL',99.9337,'POLYTECH'),
	(85,'BLS16G4D240FSE','memoria crucial ballistix sport lt udimm ddr4 16gb 2400 roja','CRUCIAL',99.9337,'POLYTECH'),
	(86,'CMK16GX4M1B3000C15','memoria corsair vengeance lpx 16gb ddr4 3000mhz negro (1x16gb)','CORSAIR',99.99,'HDC'),
	(87,'MES4U266KF16G','memoria mushkin essentials 16gb ddr4 2666mhz','MUSHKIN',100.303,'POLYTECH'),
	(88,'HX424C15FB/16','memoria hyperx fury black ddr4-2400 c15 16gb','KINGSTON',100.734,'ELIT'),
	(89,'AX4U360038G17-SR80','memoria ram ddr4 3600 8gb red+ rgb liquid d80','ADATA',109.1,'STYLUS'),
	(90,'KVR24N17D8/16','memoria ddr4 16gb kingston 2400mhz cl17 kvr','KINGSTON',109.32,'AIR'),
	(91,'AX4U266638G16-DT41','memoria adata dimm xpg spectrix d41 rgb ddr4 8gb 2666 2x4','ADATA',109.91,'N.BYTES'),
	(92,'CMK16GX4M2B3000C15','memoria corsair vengeance lpx 16gb ddr4 3000mhz negro (2x8gb)','CORSAIR',116.144,'POLYTECH'),
	(93,'BLT16G4D30BET4','memoria crucial ddr4 16gb 3000mhz ballistix rgb (pc4-24000) cl16 sr x8 ','CRUCIAL',116.373,'G.NUCLEO'),
	(94,'AX4U320016G16-ST41','memoria adata ddr4 xpg 16gb 3200mhz spectrix rgb d41','ADATA',117.046,'FREE'),
	(95,'AX4U2400316G16-SRG ','memoria ram ddr4 2400 16gb gammix d10','ADATA',122.45,'STYLUS'),
	(96,'HX432C18FB/16','memoria hyperx fury black ddr4-3200 c18 16gb','KINGSTON',122.589,'ELIT'),
	(97,'AX4U3200316G16-SB80','memoria adata ddr4 xpg 16gb/3200 mhz spectrix rgb d80','ADATA',123.764,'FREE'),
	(98,'AX4U2400316G16-SRZ ','memoria ram ddr4 2400 16gb red z1','ADATA',124,'STYLUS'),
	(99,'HX432C16PB3AK2/16','memoria hyperx predator rgb x2 ddr4-3200 c16 16gb','KINGSTON',124.084,'ELIT'),
	(100,'CMW16GX4M2A2666C16','memoria corsair vengeance rgb pro 16gb ddr4 2666 mhz negro (2x8 gb)','CORSAIR',124.566,'POLYTECH'),
	(101,'CMK16GX4M2B3200C16','memoria 16gb d4 3200mhz corsair','CORSAIR',126.69,'PCARTS'),
	(102,'GP-GR26C16S8K2HU416','memoria 16gb(2x8gb) dimm d4 2666mhz gigabyte','GIGABYTE',132.55,'AIR'),
	(103,'CMR16GX4M2C3000C15','memoria corsair vengeance rgb 16gb ddr4 3000 mhz (2x8gb)','CORSAIR',134.792,'POLYTECH'),
	(104,'CMW16GX4M2C3200C16','memoria corsair ven rgb pro 16gb (2x8) 3200','CORSAIR',135.99,'HDC'),
	(105,'CMW16GX4M2C3200C16W','memoria corsair ven rgb pro 3200 16gb (2x8)w','CORSAIR',135.99,'HDC'),
	(106,'AX4U300038G16-DRG','2 memoria ram ddr4 3000 8gb gammix d10 dual','ADATA',141,'STYLUS'),
	(107,'CMU16GX4M2C3200C16','memoria corsair vengeance led 16gb ddr4 3200mhz (2x8gb)','CORSAIR',143.479,'POLYTECH'),
	(108,'CMW16GX4M2C3000C15','memoria corsair vengeance rgb pro 16gb ddr4 3000mhz negro (2x8 gb)','CORSAIR',145.006,'POLYTECH'),
	(109,'CMW16GX4M2C3000C15W','memoria corsair vengeance rgb pro 16gb ddr4 3000mhz white (2x8 gb)','CORSAIR',145.309,'POLYTECH'),
	(110,'AX4U3200316G16-SR10 ','memoria ram ddr4 3200 16gb gammix d10 ','ADATA',151,'STYLUS'),
	(111,'AX4U320038G16-DR10','2 memoria ram ddr4 3200 8gb gammix d10 dual','ADATA',151,'STYLUS'),
	(112,'AX4U320038G16-DRZ1',' 2 memoria ram ddr4 3200 8gb red z1','ADATA',151,'STYLUS'),
	(113,'AX4U320038G16-DRS','memoria adata ddr4 16gb 3200mhz (2x8gb kit) rgb spectrix','ADATA',155.459,'FREE'),
	(114,'AX4U3200316G16-SR80','memoria ram ddr4 3200 16gb red+ rgb liquid d80','ADATA',165,'STYLUS'),
	(115,'F4-2133C15D-16GVR','memoria ddr4 16gb g.skill pc4-17000 2133mhz ripjawsv 2x8g','G.SKILL',177.03,'AIR'),
	(116,'HX436C17PB3AK2/16','memoria hyperx predator rgb x2 ddr4-3600 c17 16gb','KINGSTON',183.641,'ELIT'),
	(117,'GP-AR32C16S8K2HU416RD','memoria gigabyte 16 gb ddr4 3200 mhz aorus rgb 2x8 + 2 dummies','GIGABYTE',184.42,'AIR'),
	(118,'AX4U360038G17-DR41','memoria adata ddr4 xpg 16gb 3600mhz (2x8gb kit) rgb spectrix','ADATA',193.892,'FREE'),
	(119,'CMW16GX4M2C3600C18','memoria corsair ven rgb pro 16gb (2x8) 3600','CORSAIR',196.99,'HDC'),
	(120,'CMW16GX4M2C3600C18W','memoria corsair ven rgb pro 3600 16gb (2x8)w','CORSAIR',204.24,'PCARTS'),
	(121,'F4-3200C16D-16GTZR','memoria ddr4 16gb g.skill 3200mhz trident z rgb 2x8gb','G.SKILL',269.15,'AIR'),
	(122,NULL,'memoria novatech sodimm 512mb 333 mhbox','NOVATECH',10.9,'N.BYTES'),
	(123,NULL,'memoria novatech sodimm ddr2 512 800mhbox','NOVATECH',6,'N.BYTES'),
	(124,NULL,'memoria pcbox ddr3 sodimm 2gb 1600 mhz lv gn','PCBOX',8.9962,'G.NUCLEO'),
	(125,'MEM1600SODDL','memoria sodim 4gb ddr3l-1600 ','GENERICA',15,'CEVEN'),
	(126,NULL,'memoria pcbox ddr3 sodimm 4gb 1600 mhz lv gn','PCBOX',15.9909,'G.NUCLEO'),
	(127,'CT51264BF160BJ','memoria crucial ddr3 4gb 1600mhz (pc3l-12800) cl11 sodimm ','CRUCIAL',22.015,'ELIT'),
	(128,'KVR16LS11/4','memoria sodimm ddr3 4gb 1600mhz valueram 1.35v','KINGSTON',23.7516,'ELIT'),
	(129,'ADDS1600W4G11-S','memoria adata sodimm ddr3 4gb 1600 1.35v','ADATA',33.78,'N.BYTES'),
	(130,'CT102464BF160B','memoria sodimm ddr3l 8gb 1600mhz 1.35v','CRUCIAL',41.9979,'ELIT'),
	(131,'AD3S1333W8G9-S','memoria adata ddr3 so-dimm 8gb/1333 mhz','ADATA',59.9573,'FREE'),
	(132,'CT4G4SFS8266','memoria 4gb d4 sodimm crucial 2666mhz','CRUCIAL',21.4506,'ELIT'),
	(133,'CT4G4SFS824A','memoria crucial ddr4 4gb 2400mhz (pc4-19200) cl17 sodimm srx8 ','CRUCIAL',21.4571,'ELIT'),
	(134,'KVR24S17S6/4','memoria sodimm ddr4 4gb 2400mhz','KINGSTON',22.3153,'ELIT'),
	(135,'AD4S2400J4G17-S','memoria ram ddr4 2400mhz 4g sodimm','ADATA',22.5,'STYLUS'),
	(136,'CMSO4GX4M1A2133C15','memoria sodimm ddr4 4gb 2133 mhz corsair value','CORSAIR',23.99,'HDC'),
	(137,'CMSX4GX4M1A2400C16','memoria corsair ddr4 sodimm 4gb 2400','CORSAIR',31.27,'N.BYTES'),
	(138,'AX4S2400W4G15-SBF ','memoria ram ddr4 2400 4gb flame sodimm','ADATA',32.8,'STYLUS'),
	(139,'AD4S2400W4G1','memoria adata sodimm ddr4 4gb 2400','ADATA',38.4,'N.BYTES'),
	(140,'AD4S240038G17-S','memoria adata ddr4 so-dimm 8gb/2400 mhz','ADATA',41.2656,'FREE'),
	(141,'CT8G4SFS8266','memoria 8gb d4 sodimm crucial 2666mhz','CRUCIAL',42.901,'ELIT'),
	(142,'CT8G4SFS824A','memoria crucial ddr4 8gb sodimm 2400','CRUCIAL',42.9818,'G.NUCLEO'),
	(143,'KVR24S17S8/8','memoria kingston ddr4 sodimm 8g 2400','KINGSTON',47.528,'ELIT'),
	(144,'CMSX8GX4M1A2400C16','memoria corsair vengeance sodimm 8gb ddr4 2400mh','CORSAIR',54.53,'N.BYTES'),
	(145,'AD4S2400316G17-S','memoria adata ddr4 so-dimm 16gb/2400 mhz','ADATA',82.8421,'FREE'),
	(146,'CT16G4SFD824A','memoria crucial ddr4 16gb 2400mhz (pc4-19200) sodimm ','CRUCIAL',84.4899,'ELIT'),
	(147,'CT16G4SFD8266','memoria sodimm 16gb ddr4-2666','CRUCIAL',86.931,'ELIT'),
	(148,'CMSO16GX4M1A2133C15','memoria sodimm ddr4 16gb 2133 mhz corsair value','CORSAIR',89,'HDC'),
	(149,'KVR24S17D8/16','memoria 16gb sodimm d4 2400 kingston','KINGSTON',113.69,'PCARTS');

/*!40000 ALTER TABLE `memoria` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla mother
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mother`;

CREATE TABLE `mother` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mother` WRITE;
/*!40000 ALTER TABLE `mother` DISABLE KEYS */;

INSERT INTO `mother` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`)
VALUES
	(1,'GA-B250-FINTECH','motherboard gigabyte ga-b250-fintech 1.0 1151','GIGABYTE',35,'ELIT'),
	(2,'H110M-HDV','motherboard intel (1151) asrock h110m-hdv vga/hdmi ddr4x2 2133mhz 4sata3 4usb3.0 ','ASROCK',42.3089,'G.NUCLEO'),
	(3,'B150M-HDS','motherboard asrock b150m-hds (1151)','ASRCOK',43,'STYLUS'),
	(4,'H110M PRO-VH PLUS','motherboard (1151) h110m pro-vh plus','GIGABYTE',45.177,'ELIT'),
	(5,'GA-H110M-H','motherboard gigabyte ga-h110m-h ddr4 1151','GIGABYTE',48.42,'PCARTS'),
	(6,'PRIME H110M-P','motherboard asus prime h110m-p (1151)','ASUS',48.6505,'ELIT'),
	(7,'H110MHC','motherboard biostar s1151 h110mhc 7ma gen 1151','BIOSTAR',49.9,'CEVEN'),
	(8,'H110M-D','motherboard asus h110m-d puerto paralelo s1151 m-atx','ASUS',55.197,'ELIT'),
	(9,'PRIME H310M-E R2.0','motherboard (1151 v.2) prime h310m-e r2.0','ASUS',55.266,'ELIT'),
	(10,'H310M PRO-VH PLUS','motherboard (1151 v.2) h310m pro-vh plus','MSI',56.474,'ELIT'),
	(11,'H310M S2 2,0','motherboard gigabyte s1151 h310m s2 2,0 box m-atx','GIGABYTE',56.53,'AIR'),
	(12,'H310M-HDV','motherboard asrock h310m-hdv  m-atx s1151','ASROCK',56.99,'HDC'),
	(13,'PRIME H310M-E','motherboard asus intel 8gen 1151 h310 prime-e','ASUS',58,'STYLUS'),
	(14,'H310M H','motherboard intel (1151) gigabyte h310m h ddr4 8va gen 1pcie, usb 3.1,  vga hdmi','GIGABYTE',61.8317,'G.NUCLEO'),
	(15,'B360M PRO-VH','motherboard msi 1151 8th gen b360m pro-vh','MSI',62.16,'AIR'),
	(16,'B250M PRO-VH','motherboard msi s1151 b250m pro-vh box m-atx','MSI',63.82,'AIR'),
	(17,'PRIME B360-K ','motherboard asus intel 8gen 1151 b360 prime','ASUS',66,'STYLUS'),
	(18,'PRIME B360-A ','motherboard asus intel 8gen 1151 b360 prime','ASUS',68,'STYLUS'),
	(19,'PRIME B250M-A','motherboard asus prime b250m-a s1151','ASUS',69.49,'HDC'),
	(20,'B360M DS3H','motherboard intel (1151) gigabyte b360m ds3h ddr4 usb 3.1 hdmi m.2 d-sub-dvi p/8va gen','GIGABYTE',70.25,'AIR'),
	(21,'B250 MINING EXPERT BITCOIN','motherboard intel (1151) asus b250 mining expert bitcoin ','ASUS',70.9501,'G.NUCLEO'),
	(22,'PRIME H310M-D','motherboard asus intel 8gen 1151 h310 prime-d','ASUS',71.56,'STYLUS'),
	(23,'GA-H370M-DS3H','motherboard gigabyte ga-h370m-ds3h 1151','GIGABYTE',72.64,'PCARTS'),
	(24,'B250M-HDV','motherboard asrock b250m-hdv 1151','ASROCK',74,'CEVEN'),
	(25,'B250M BAZOOKA','motherboard msi 1151 b250m bazooka\n','MSI',74.585,'FREE'),
	(26,'B250M GAMING PRO','motherboard msi 1151 b250m gaming pro\n','MSI',74.585,'FREE'),
	(27,'B360M GAMING PLUS','motherboard (1151 v.2) b360m gaming plus','MSI',80.07,'AIR'),
	(28,'H110PROBTC+','motherboard intel (1151) asrock h110probtc+ bitcoin 1pciex16 3.0 12 pcie 2.0 x1 ddr4 dvi-d','ASROCK',81.086,'G.NUCLEO'),
	(29,'GA-B360M DS3H','motherboard gigabyte ga-b360m-ds3h ddr4 socket 1151 - solo compatible 8º gen','GIGABYTE',81.192,'POLYTECH'),
	(30,'TUF H310M-PLUS GAMING','motherboard asus intel 8gen 1151 h310 tuf-plu','ASUS',82.89,'STYLUS'),
	(31,'Z370M-DS3H','motherboard gigabyte z370m-ds3h 1151 - solo compatible 8º gen','GIGABYTE',87.7681,'POLYTECH'),
	(32,'Z370M DS3H','motherboard gigabyte s1151 z370m ds3h box m-atx','GIGABYTE',87.96,'AIR'),
	(33,'B150M Pro4S','motherboard 1151 asrock b150m pro4s dvi-d, hdmi','ASROCK',88.1504,'FREE'),
	(34,'Z170A-X1/3.1','motherboard 1151 asrock z170a-x1 dvi-d','ASROCK',88.1504,'FREE'),
	(35,'TUF H310-PLUS GAMING','motherboard asus tuf h310-plus gaming 1151','ASUS',88.97,'PCARTS'),
	(36,'H310M-ITXAC','motherboard asrock h310m-itx ac 1151','ASROCK',94,'CEVEN'),
	(37,'H170M Pro4S','motherboard 1151 asrock h170m pro4s dvi-d, hdmi','ASROCK',94.147,'FREE'),
	(38,'B250 KRAIT GAMING','motherboard msi 1151 b250 krait gaming','MSI',96.2991,'FREE'),
	(39,'PRIME H370-PLUS','motherboard (1151 v.2) prime h370-plus','ASUS',98.35,'ELIT'),
	(40,'TUF B360-PRO GAMING WIFI','motherboard (1151 v.2) tuf b360-pro gaming wifi','ASUS',100.15,'ELIT'),
	(41,'Fatal1ty H270M','motherboard 1151 asrock fatal1ty h270m performance','ASROCK',101,'FREE'),
	(42,'H370M-PRO4','motherboard asrock h370m-pro4 1151','ASROCK',105,'CEVEN'),
	(43,'H370 GAMING PRO CARBON','motherboard (1151 v.2) h370 gaming pro carbon','MSI',105.74,'ELIT'),
	(44,'B360 AORUS GAMING 3','motherboard gigabyte aorus gaming 3 1151','GIGABYTE',106.16,'PCARTS'),
	(45,'TUF B360M-PLUS GAMING','motherboard asus intel 8gen 1151 b360 b360-pl','ASUS',106.47,'STYLUS'),
	(46,'H270M MORTAR ARTIC','motherboard msi h270m mortar artic s1151','MSI',106.68,'HDC'),
	(47,'TUF H370-PRO GAMING','motherboard asus tuf h370-pro gaming (wi-fi) s1151','ASUS',108.58,'ELIT'),
	(48,'Z170M Pro4S','motherboard 1151 asrock z170m pro4s dvi-d, hdmi','ASROCK',109.831,'FREE'),
	(49,'B250 GAMING M3','motherboard msi 1151 b250 gaming m3','MSI',109.907,'FREE'),
	(50,'Z270 Pro4','motherboard 1151 asrock z270 pro4 hdmi, dvi-d,vga','ASROCK',110.275,'FREE'),
	(51,'Z270M Pro4','motherboard 1151 asrock z270m pro4 hdmi, dvi-d,vga','ASROCK',110.275,'FREE'),
	(52,'Z170 Pro4S','motherboard 1151 asrock z170 pro4s dvi-d, hdmi','ASROCK',110.656,'FREE'),
	(53,'B360 AORUS GAMING 3 WIFI','motherboard gigabyte aorus b360 gaming 3 wifi 1151','GIGABYTE',110.68,'PCARTS'),
	(54,'Z370-A PRO','motherboard msi 1151 8th gen z370-a pro','MSI',111.906,'FREE'),
	(55,'GA-B360 AORUS GAMING 3 WIFI','motherboard gigabyte ga-b360-aorus gaming 3 wi fi ddr4 socket 1151 - solo compatible 8º gen','GIGABYTE',112.871,'POLYTECH'),
	(56,'B360N-AORUS-GAM','motherboard (1151 v.2) b360n aorus gaming wifi','GIGABYTE',113.224,'ELIT'),
	(57,'Z370M MORTAR','motherboard msi 1151 8th gen z370m mortar','MSI',118.28,'FREE'),
	(58,'H270 GAMING M3','motherboard msi 1151 h270 gaming m3','MSI',118.28,'FREE'),
	(59,'ROG STRIX B360-H GAMING','motherboard asus intel 8gen 1151 b360-h rog','ASUS',121.76,'STYLUS'),
	(60,'Z370 GAMING PLUS','motherboard msi 1151 8th gen z370 gaming plus','MSI',123.21,'FREE'),
	(61,'Z390-A PRO','motherboard msi s1151 z390-a pro box atx','MSI',132.29,'AIR'),
	(62,'FATALITY H370 PERFORMANCE','motherboard asrock fatality h370 performance 1151','ASROCK',135,'CEVEN'),
	(63,'PRIME Z370-P','motherboard asus intel 8gen 1151 z370-p prime','ASUS',135,'STYLUS'),
	(64,'Z390 UD','motherboard gigabyte z390 ud 1151','GIGABYTE',136.41,'AIR'),
	(65,'Z170A GAMING M3','motherboard msi 1151 z170a gaming m3','MSI',137.214,'FREE'),
	(66,'Z270 Extreme4 ','motherboard 1151 asrock z270 extreme4 hdmi, dvi-d, vga','ASROCK',139.132,'FREE'),
	(67,'Z270M Extreme4','motherboard 1151 asrock z270m extreme4 hdmi, dvi-d, d-sub','ASROCK',139.132,'FREE'),
	(68,'Z170-K','motherboard asus intel 1151 z170 z170-k','ASUS',140,'STYLUS'),
	(69,'Z270 GAMING M3','motherboard msi z270 gaming m3 s1151','MSI',140.249,'FREE'),
	(70,'Z370 SLI PLUS','motherboard msi 1151 8th gen z370 sli plus','MSI',141.935,'FREE'),
	(71,'TUF Z370-PLUS GAMING','motherboard asus intel 8gen 1151 z370 tufz370','ASUS',142.634,'ELIT'),
	(72,'MPG Z390 GAMING PLUS','motherboard msi s1151 mpg z390 gaming plus box atx','MSI',142.74,'AIR'),
	(73,'Z270 GAMING','motherboard msi 1151 z270 gaming pro carbon','MSI',157.009,'FREE'),
	(74,'Fatal1tyZ270 GamingK6','motherboard 1151 asrock fatal1tyz270 gamingk6 hdmi,dvi-d,vga','ASROCK',159.003,'FREE'),
	(75,'MAXIMUS VIII RANGER','motherboard asus intel 1151 maximus ranger','ASUS',160,'STYLUS'),
	(76,'Z390 M GAMING','motherboard gigabyte z390 m gaming socket 1151 - solo compatible 8º gen y 9º gen','GIGABYTE',160.362,'POLYTECH'),
	(77,'Z390 GAMING X','motherboard gigabyte s1151 z390 gaming x box atx','GIGABYTE',160.96,'AIR'),
	(78,'GA-Z170X UD3','motherboard gigabyte ga-z170x ud3 d 1151','GIGABYTE',164,'CEVEN'),
	(79,'PRIME Z370-A','motherboard asus intel 8gen 1151 z370-a prime','ASUS',167.145,'ELIT'),
	(80,'GA-Z370AORUSG3','motherboard (1151 v.2) ga-z370 aorus gaming 3','GIGABYTE',168.044,'ELIT'),
	(81,'Z370-AORUS-GAM','motherboard (1151 v.2) z370 aorus gaming 3 1.0','GIGABYTE',168.706,'ELIT'),
	(82,'TUF Z390-PLUS GAMING WIFI','motherboard (1151 v.2) tuf z390-plus gaming wifi','ASUS',176.499,'ELIT'),
	(83,'Z170 FATALITY GK6','motherboard 1151 asrock z170 fatalitygk6 dvi-d,hdmi,dispor\n','ASROCK',177.756,'FREE'),
	(84,'SABERTOOTH Z170 S','motherboard asus intel 1151 z170 sabertooh','ASUS',180,'STYLUS'),
	(85,'Z270 GAMING PRO CARBON','motherboard msi z270 gaming pro carbon s1151','MSI',185.11,'HDC'),
	(86,'Z270 TAICHI','motherboard 1151 asrock z270 taichi hdmi, display port','ASROCK',186.728,'FREE'),
	(87,'Z370 GAMING M5','motherboard msi 1151 8th gen z370 gaming m5','MSI',189.247,'FREE'),
	(88,'MPG Z390 GAMING PRO','motherboard msi s1151 mpg z390 gaming pro carbon box atx','MSI',193.8,'AIR'),
	(89,'Z390 AORUS ELITE','motherboard gigabyte z390 aorus elite 1151','GIGABYTE',196.11,'AIR'),
	(90,'B250 MINING EXPERT','motherboard asus intel 1151 b250 mining e','ASUS',203.43,'STYLUS'),
	(91,'Z390 AORUS PRO WIFI','motherboard gigabyte z390 aorus pro 1151','GIGABYTE',214.28,'AIR'),
	(92,'Z270 GAMING M7','motherboard msi 1151 z270 gaming m7','MSI',219.813,'FREE'),
	(93,'MAXIMUS VIII EXTREME','motherboard asus intel 1151 maximus extreme','ASUS',255,'STYLUS'),
	(94,'Z390 AORUS ULTRA','motherboard gigabyte z390 aorus ultra 1151','GIGABYTE',269.02,'PCARTS'),
	(95,'ROG MAXIMUS X HERO','motherboard asus rog maximus x hero (z370) 1151','ASUS',269.51,'HDC'),
	(96,'Z390 DESIGNARE','motherboard gigabyte z390 designare socket 1151 - solo compatible 8º gen y 9º gen','GIGABYTE',294.345,'POLYTECH'),
	(97,'Z390 AORUS MASTER','motherboard gigabyte z390 aorus master socket 1151 - solo compatible 8º gen y 9º gen','GIGABYTE',303.205,'POLYTECH'),
	(98,'Z390 AORUS XTREME','motherboard gigabyte z390 aorus xtreme 1151','GIGABYTE',651.63,'PCARTS'),
	(99,'X299 GAMING K6','motherboard asrock x299 gaming k6 (2066)','ASRCOK',257.94,'PCARTS'),
	(100,'A320M-HDV','motherboard asrock a320m-hdv sam4 m-atx am4','ASROCK',50.3,'PCARTS'),
	(101,'A320M PRO-M2','motherboard (am4) a320m pro-m2','MSI',54.26,'AIR'),
	(102,'PRIME A320M-K M.2','motherboard (am4) prime a320m-k m.2','ASUS',56.9643,'ELIT'),
	(103,'PRIME A320M-K','motherboard asus prime a320m-k ddr4 - am4','ASUS',66.3188,'POLYTECH'),
	(104,'B450M DS3H','motherboard gigabyte b450m ds3h am4','GIGABYTE',69.172,'ELIT'),
	(105,'A320M-PRO-VH-PLUS','motherboard msi a320m-pro vh plus ddr4 socket am4','MSI',71.981,'POLYTECH'),
	(106,'B450M PRO-M2','motherboard msi am4 b450m pro-m2 box m-atx','MSI',72.69,'AIR'),
	(107,'PRIME B450M-A/CSM','motherboard (am4) prime b450m-a/csm','ASUS',73.5414,'ELIT'),
	(108,'GA-AB350-GAMING 3','motherboard amd (am4) gigabyte ga-ab350-gaming 3 hdmi ddr4 usb 3.1 sonido pdif','GIGABYTE',82.5648,'G.NUCLEO'),
	(109,'TUF B450-PLUS GAMING','motherboard asus tuf b450-plus gaming am4','ASUS',100.381,'ELIT'),
	(110,'Fatal1ty B450 GAMING','motherboard asrock fatal1ty b450 gaming wifi itx (am4)','ASROCK',128.37,'HDC'),
	(111,'X370 GAMING PRO','motherboard msi am4 x370 gaming pro','MSI',131.183,'FREE'),
	(112,'X470 GAMING PLUS','motherboard msi am4 x470 gaming plus box atx','MSI',132.29,'AIR'),
	(113,'X470 AORUS ULTRA GAM','motherboard gigabyte am4 x470 aorus ultra gaming','GIGABYTE',154.98,'AIR'),
	(114,'GA-X470 Aorus Ultra Gaming','motherboard gigabyte ga-x470- aorus ultra gaming socket am4','GIGABYTE',162.086,'POLYTECH'),
	(115,'GA-X470 AORUS GAMING 5 WIFI','motherboard gigabyte ga-x470- aorus gaming 5 wifi socket am4','GIGABYTE',206.029,'POLYTECH'),
	(116,'ROG STRIX X470-F','motherboard (am4) rog strix x470-f gaming','ASUS',208.179,'ELIT'),
	(117,'FATAL1TY X370 PROFESIONA','motherboard am4 asrock fatal1ty x370 profesional gaming ','ASROCK',217.584,'FREE'),
	(118,'ROG CROSSHAIR VI HERO','mother asus amd am4 x370 crosshairvi','ASUS',225.8,'STYLUS'),
	(119,'X470 AORUS GAMING 7 WIFI','motherboard gigabyte ga-x470- aorus gaming 7 wifi socket am4','GIGABYTE',263.409,'POLYTECH'),
	(120,'FM2A68M-DG3+','motherboard asrock fm2a68m-dg3+ fm2+','ASROCK',32.83,'PCARTS'),
	(121,'A68HM-E33V2','motherboard msi fm2+ a68hm-e33 v2 m-atx box vga/hdmi 1pci','MSI',40.45,'AIR'),
	(122,'GA-F2A68HM-H','motherboard gigabyte ga-f2a68hm-h socket fm2+','GIGABYTE',45.2699,'POLYTECH');

/*!40000 ALTER TABLE `mother` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla procesador
# ------------------------------------------------------------

DROP TABLE IF EXISTS `procesador`;

CREATE TABLE `procesador` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `procesador` WRITE;
/*!40000 ALTER TABLE `procesador` DISABLE KEYS */;

INSERT INTO `procesador` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`)
VALUES
	(62,'AD9500AGABBOX','microprocesador amd (am4) a6 9500 bristol 1m 3800mhz','AMD',40.66,'N.BYTES'),
	(63,'AD9500AHABBOX','microprocesador amd (am4) a6 9500e bristol ridge 3400mhz','AMD',44.34,'N.BYTES'),
	(64,'AD9600AGABBOX','microprocesador amd a8 9600','AMD',50.904,'ELIT'),
	(65,'YD200GC6FBBOX','microprocesador amd athlon 200ge am4','AMD',55.4288,'ELIT'),
	(66,'YD220GC6FBBOX','microprocesador amd athlon 220ge vega 3 am4 3.2ghz','AMD',61.677,'POLYTECH'),
	(67,'AD9700AGABBOX','microprocesador amd a10 9700','AMD',73.528,'ELIT'),
	(68,'YD240GC6FBBOX','microprocesador amd athlon 240ge vega 3 am4 3.5 ghz','AMD',72.5113,'POLYTECH'),
	(69,'AD9700AGABMP','microprocesador amd apu a10 9700 65w 3,8ghz am4 bulk','AMD',73.13,'AIR'),
	(70,'YD2200C5FBMPK','microprocesador amd ryzen 3 2200g 3.5 ghz radeon vega 8 (am4) multipack','AMD',96.514,'POLYTECH'),
	(71,'YD2200C5FBBOX','microprocesador amd ryzen 3 2200g','AMD',100.333,'ELIT'),
	(72,'YD1200BBAEBOX','microprocesador amd (am4) ryzen 3 1200 3400mhz','AMD',102.69,'N.BYTES'),
	(73,'YD2400C5FBMPK','microprocesador amd ryzen 5 2400g 3.6 ghz radeon vega 11 (am4) multipack oem','AMD',148.457,'POLYTECH'),
	(74,'YD2400C5FBBOX','microprocesador amd ryzen 5 2400g','AMD',154.68,'ELIT'),
	(75,'YD150XBBAEBOX','microprocesador amd ryzen 5 1500x am4 3.6ghz \n','AMD',171.791,'FREE'),
	(76,'YD2600BBAFBOX','microprocesador amd ryzen 5 2600, with wraith stea','AMD',184.272,'ELIT'),
	(77,'YD2600BBAFMPK','microprocesador amd ryzen 5 2600 3,9ghz mpk','AMD',204.59,'AIR'),
	(78,'YD260XBCAFBOX','microprocesador amd ryzen 5 2600x with wraith spi','AMD',216.421,'ELIT'),
	(79,'YD170XBCAEWOF','microprocesador amd ryzen 7 1700x am4 3800mhz 8cores','AMD',229.73,'AIR'),
	(80,'YD260XBCAFMPK','microprocesador amd ryzen 5 2600x 4,25ghz mpk','AMD',231.34,'AIR'),
	(81,'YD2700BBAFBOX','microprocesador amd ryzen 7 2700, with wraith spir','AMD',256.917,'ELIT'),
	(82,'YD2700BBAFMPK','microprocesador amd ryzen 7 2700 4,1ghz bulk','AMD',319.9,'AIR'),
	(83,'YD2700BBAFBBOX','microprocesador amd ryzen 7 2700 4.1ghz 4mb l2 socket am4 2da gen','AMD',322.536,'POLYTECH'),
	(84,'YD270XBGAFBOX','microprocesador amd ryzen 7 2700x with wraith pri','AMD',329.541,'ELIT'),
	(85,'AD540KOKHJBOX','microprocesador amd (fm2) x2 a6 5400k 3.6ghz','AMD',39.6,'N.BYTES'),
	(86,'AD6300OKHLBOX','microprocesador amd a4-6300 apu 3.7ghz - amd radeon hd 8370d - 1mb 65w - socket fm2','AMD',29.97,'AIR'),
	(87,'AD7480ACABBOX','microprocesador amd kaveri apu a6 series 7480k','AMD',33.936,'ELIT'),
	(88,'AD7680ACABBOX','microprocesador apu a8-7680  4mb 3.5 ghz fm2+','AMD',50.904,'ELIT'),
	(89,'YD295XA8AFWOF','microprocesador amd (tr4) ryzen 7 2950x 4400mhz','AMD',1028.36,'N.BYTES'),
	(90,'YD297XAZAFWOF','microprocesador amd (tr4) ryzen threadripper rt-2970wx 4.2 s/cooler','AMD',1465.5,'N.BYTES'),
	(91,'BX80684G4900','microprocesador intel celeron g4900 2mb 3.10 ghz socket 1151 ddr4 8º gen','INTEL',36.71,'AIR'),
	(92,'BX80677G3930','microprocesador int celeron g3930 kabylake box','INTEL',42.11,'PCARTS'),
	(93,'BX880677G3930','microprocesador intel celeron g3930 2mb 2.90 ghz socket 1151 fclga14c - 7° gen','INTEL',44.667,'POLYTECH'),
	(94,'CM8067702867064','microprocesador  intel pent g4560 d.core kabylake oem sin fan','INTEL',54.88,'AIR'),
	(95,'BX80684G5400','microprocesador int pentium g5400 8va 1151','INTEL',56.54,'AIR'),
	(96,'BX80662G4500','microprocesador int pentium g4500 socket 1151','INTEL',65.51,'PCARTS'),
	(97,'BX80677G4600','microprocesador pentium gold g4600 dual core 3mb 3.6ghz','INTEL',92.0903,'ELIT'),
	(98,'BX80684G5600','microprocesador intel (1151) pentium gold dual core g5600 3.9ghz','INTEL',103.851,'ELIT'),
	(99,'BX80662I36100','microprocesador intel core i3 (1151) 6100 3.7 ghz','INTEL',128.6,'N.BYTES'),
	(100,'BX80684I38100','microprocesador intel core i3-8100 3.6 ghz 6m (1151)','INTEL',139.88,'HDC'),
	(101,'BX80677I37350K','microprocesador intel (1151) core i3 7350k 4.2 ghs/cooler','INTEL',142.75,'AIR'),
	(102,'BX80677I3735','microprocesador intel core i3 7350k 4.2ghz 1151','INTEL',149.5,'STYLUS'),
	(103,'BX80684I59400F','microprocesador int core i5 9400f 9gen sin video','INTEL',170,'ELIT'),
	(104,'BX80662I56400','microprocesador intel core i5-6400 3.30 ghz 6m (1151)','INTEL',176.41,'AIR'),
	(105,'CM8068403358811S','microprocesador intel 8va core i5 8400 2.8ghz tray','INTEL',177.41,'AIR'),
	(106,'BX80684I58400','microprocesador intel core i5-8400 4.0 ghz 9m (1151)','INTEL',181.79,'AIR'),
	(107,'BX80662E31220V5','microprocesador intel (1151) xeon 3.0ghe3-1220v5','INTEL',192.43,'N.BYTES'),
	(108,'CM8066201920506','microprocesador intel core i5-6400 s1151 oem sin fan','INTEL',197.39,'AIR'),
	(109,'BX80677I57400','microprocesador intel core i5-7400 3.50ghz 6m (1151)','INTEL',197.42,'AIR'),
	(110,'BX80677I57500','microprocesador intel (1151) core i5 7500 3.4 ghz','INTEL',221.33,'AIR'),
	(111,'BX80684I59600K','microprocesador intel core i5-9600k 9gen 4.60ghz','INTEL',276.58,'POLYTECH'),
	(112,'BX80684I58600K','microprocesador core i5-8600k six core 9m 3.6ghz 1151v2','INTEL',277.601,'ELIT'),
	(113,'BX80677I77700','microprocesador core i7-7700 quad core 8mb 4.2 ghz 1151','INTEL',329,'ELIT'),
	(114,'BX80684I7870','microprocesador intel core i7 8700 3.2ghz 1151','INTEL',331.52,'AIR'),
	(115,'BX80684I78700K','microprocesador i7-8700k 6-core 3.7 ghz lga1151 intel uhd graphics 630 sin cooler','INTEL',397.807,'POLYTECH'),
	(116,'BX80684I79700K','microprocesador int core i7 9700k 9a gen','INTEL',421.252,'POLYTECH'),
	(117,'BX80677I77700K','microprocesador intel (1151) core i7 7700k 4.2 ghs/cooler','INTEL',428.36,'N.BYTES'),
	(118,'BX80684I99900K','microprocesador i9-9900k 16m 5.0 ghz fclga1151 sin cooler','INTEL',533,'AIR'),
	(119,'BX80671I76800K','microprocesador intel (2011) core i7 6800k 3.4 ghs/cooler','INTEL',370.16,'N.BYTES'),
	(120,'BX80677I57640X','microprocesador intel (2066) core i5 7640x 4.0 ghs/cooler','INTEL',202.95,'N.BYTES'),
	(121,'BX80673I77800X','microprocesador intel (2066) core i7 7800x 4.3 gh/ s/cooler','INTEL',437.48,'N.BYTES'),
	(122,'BX80673I97900X','microprocesador intel (2066) core i9 7900x 3.3 ghz/s cooler','INTEL',1105.59,'N.BYTES');

/*!40000 ALTER TABLE `procesador` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla usuarios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL DEFAULT '',
  `mail` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;

INSERT INTO `usuarios` (`id`, `nombre`, `mail`)
VALUES
	(1,'Nestor','nestor@elgroso.com'),
	(2,'Miriam','Miri@prueba.com'),
	(3,'Master','master@logic.com');

/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
