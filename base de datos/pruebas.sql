-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2019 a las 20:41:25
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disco`
--

CREATE TABLE `disco` (
  `id` int(11) UNSIGNED NOT NULL,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `disco`
--

INSERT INTO `disco` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`) VALUES
(4459, 'WD5000LPCX', 'disco 2.5 sata iii 500gb 5400rpm 7mm wd', 'WESTER DIGITAL', 38.643, 'ELIT'),
(4460, 'HDWL110UZSVA', 'disco 2.5\" 1tb toshiba 5400 rpmÂ  sata iii 7mm', 'TOSHIBA', 45.12, 'HDC'),
(4461, 'WD10JPVX', 'disco 2.5 sata iii 1tb 5400rpm 9mm wd 8mb', 'WESTER DIGITAL', 49.126, 'ELIT'),
(4462, 'HDDTOSH1TBNB', 'disco nb 1t toshiba 5400rpm 8mb 3gb/s', 'TOSHIBA', 50, 'CEVEN'),
(4463, 'WD10SPZX', 'disco rigido p/notebook serial ata 1tb western digital', 'WESTER DIGITAL', 50.6127, 'G.NUCLEO'),
(4464, 'WD10JPLX', 'disco 2.5 sata iii 1tb 7200rpm wd', 'WESTER DIGITAL', 52.21, 'PCARTS'),
(4465, 'ST1000LX015', 'disco hdd seagate s 1 tb 5400 s-ata notebook firecuda', 'SEAGATE', 63.4192, 'FREE'),
(4466, 'WD20SPZX', 'disco 2 tb p/notebook wd s-ata iii 5400 8mb - 9mm', 'WESTER DIGITAL', 85.38, 'AIR'),
(4467, 'WD10EZEX-R', 'disco hdd wd s 1 tb s-ata3 recertified', 'WESTER DIGITAL', 36.16, 'N.BYTES'),
(4468, 'DT01ACA050', 'disco 500 gb toshiba sata iii 32mb 7200rpm', 'TOSHIBA', 36.81, 'AIR'),
(4469, 'ST1000DM010', 'disco rigido 1 tb seagate barracuda', 'SEAGATE', 37.5, 'ELIT'),
(4470, 'WD10EZEX', 'disco hdd wd s 1 tb s-ata3 blue', 'WESTER DIGITAL', 39, 'ELIT'),
(4471, 'HDWD110UZSVA', 'disco 3.5\" 1tb toshiba 7200 rpmÂ  sata iii', 'TOSHIBA', 39.9, 'HDC'),
(4472, 'ST1000VX005', 'disco rigido 1 tb seagate skyhawk videovigilancia', 'SEAGATE', 42.6831, 'FREE'),
(4473, 'DT01ACA100', 'disco 3.5\" 1tb toshiba 7200 rpmÂ  sata iii', 'TOSHIBA', 44.07, 'HDC'),
(4474, 'WD10PURZ', 'disco hdd wd s 1 tb 5400 s-ata3 purple surveillance 64mb', 'WESTER DIGITAL', 44.11, 'ELIT'),
(4475, 'HDDTOSH1TB', 'disco pc 1t toshiba 7200rpm 32mb 6gb/s', 'TOSHIBA', 47, 'CEVEN'),
(4476, 'HDD1TBBLUE', 'disco pc 1t wd blue sata3 7200rpm', 'WESTER DIGITAL', 50, 'CEVEN'),
(4477, 'DT01ACA200', 'disco toshiba 2tb sata 3', 'TOSHIBA', 54, 'STYLUS'),
(4478, 'WD20EZRZ', 'disco hdd wd s 2 tb s-ata3 blue', 'WESTER DIGITAL', 59.2699, 'G.NUCLEO'),
(4479, 'ST1000VN002', 'disco sata iii 1tb seagate ironwolf', 'SEAGATE', 59.42, 'PCARTS'),
(4480, 'WD10EFRX', 'disco hdd wd s 1 tb s-ata red edition', 'WESTER DIGITAL', 62.755, 'ELIT'),
(4481, 'ST1000DX002-SP', 'disco hdd seagate s 1 tb s-ata firecuda hybrid', 'SEAGATE', 63.04, 'N.BYTES'),
(4482, 'ST2000VX008', 'disco rigido 2 tb seagate skyhawk videovigilancia', 'SEAGATE', 64.9651, 'ELIT'),
(4483, 'WD20PURZ', 'disco hdd wd s 2 tb 5400 s-ata3 purple surveillance 64mb', 'WESTER DIGITAL', 65.879, 'ELIT'),
(4484, 'ST2000DM006', 'disco pc 2t seagate 7200rpm 64mb 6gb/s', 'SEGATE', 74, 'CEVEN'),
(4485, 'WD1003FZEX', 'disco rigido 1 tb western digital black', 'WESTER DIGITAL', 76.714, 'ELIT'),
(4486, 'ST2000VN004', 'disco rigido 2 tb seagate ironwolf nas', 'SEAGATE', 78.7184, 'ELIT'),
(4487, 'WD20EFRX', 'disco hdd wd s 2 tb s-ata red edition', 'WESTER DIGITAL', 84.183, 'ELIT'),
(4488, 'WD30PURX', 'disco wd 3tb sata surveillance purple', 'WESTER DIGITAL', 85, 'STYLUS'),
(4489, 'ST3000VX010', 'disco rigido 3 tb seagate skyhawk videovigilancia', 'SEAGATE', 87.0929, 'ELIT'),
(4490, 'WD30PURZ', 'disco rigido 3 tb western digital purple videovigilancia', 'WESTER DIGITAL', 92.833, 'POLYTECH'),
(4491, 'ST3000DM007', 'disco rigido 3 tb seagate barracuda', 'SEAGATE', 93.3606, 'POLYTECH'),
(4492, 'ST3000VN007', 'disco duro int 3tb sata de 6 gb/s ironwolf', 'SEAGATE', 100.994, 'ELIT'),
(4493, 'ST2000LX001', 'disco 2 tb seagate  sata 6gb/s firecuda - 2.5', 'SEAGATE', 102.86, 'AIR'),
(4494, 'ST2000DX002-SP', 'disco hdd seagate s 2 tb s-ata firecuda hybrid', 'SEAGATE', 105.19, 'N.BYTES'),
(4495, 'WD30EFRX', 'disco rigido 3 tb western digital red nas', 'WESTER DIGITAL', 107.459, 'ELIT'),
(4496, 'WD40PURZ', 'disco hdd wd s 4 tb s-ata3 purple surveillance 64mb', 'WESTER DIGITAL', 108.009, 'ELIT'),
(4497, 'ST4000VX007', 'disco rigido 4 tb seagate skyhawk videovigilancia', 'SEAGATE', 110.072, 'ELIT'),
(4498, 'WDS100T2G0A', 'disco 1tb sata green', 'WESTER DIGITAL', 110.165, 'ELIT'),
(4499, 'WD40EZRZ', 'disco rigido 4 tb western digital blue', 'WESTER DIGITAL', 117.135, 'POLYTECH'),
(4500, 'ST4000VN008', 'disco sata iii 4tb seagate ironwolf', 'SEAGATE', 119.717, 'ELIT'),
(4501, 'WD2003FZEX', 'disco rigido 2 tb western digital black', 'WESTER DIGITAL', 124.3, 'ELIT'),
(4502, 'HDDST4T', 'disco pc 4t seagate 64mb barracuda st4000dm', 'SEGATE', 127, 'CEVEN'),
(4503, 'WD40EFRX', 'disco hdd wd s 4 tb s-ata red edition', 'WESTER DIGITAL', 133.463, 'ELIT'),
(4504, NULL, 'disco hdd wd s 2 tb s-ata gold refurbished', 'WESTER DIGITAL', 142.99, 'N.BYTES'),
(4505, 'ST6000VX0023', 'disco duro int 6tb sata 6 gb/s 256mb skyhawk', 'SEAGATE', 169.079, 'ELIT'),
(4506, 'WD60PURZ', 'disco rigido serial ata 6tb wd sata 6 64mb purple ', 'WESTER DIGITAL', 171.38, 'ELIT'),
(4507, 'ST6000VX001/023', 'disco 6 tb seagate  sata 6gbxseg 5400  skyhawk', 'SEAGATE', 180.13, 'AIR'),
(4508, 'ST6000VN0041', 'disco duro int 6tb sata de 6 gb/s  ironwolf', 'SEAGATE', 192.91, 'ELIT'),
(4509, 'WD4005FZBX', 'disco rigido 4 tb western digital black', 'WESTER DIGITAL', 208.141, 'POLYTECH'),
(4510, 'WD60EFRX', 'disco rigido 6 tb western digital red nas', 'WESTER DIGITAL', 211.77, 'PCARTS'),
(4511, 'ST8000VN0022', 'disco duro int 8tb sata de 6 gb/s ironwolf', 'SEAGATE', 220.848, 'FREE'),
(4512, 'ST6000DM004', 'disco hdd seagate s 6 tb 7200 s-ata 256mb barracuda pro', 'SEAGATE', 232.33, 'N.BYTES'),
(4513, 'WD81PURZ', 'disco rigido 8 tb western digital purple videovigilancia', 'WESTER DIGITAL', 237.369, 'ELIT'),
(4514, 'ST8000VX0022', 'disco 8 tb seagate  sata 6gb/s 5400 256mb skyhawk', 'SEAGATE', 246.82, 'AIR'),
(4515, 'WD6003FZBX', 'disco 6 tb wd sata iii 7200rpm 128mb caviar black', 'WESTER DIGITAL', 261.02, 'AIR'),
(4516, 'WD80EFAX', 'disco rigido 8 tb western digital red nas', 'WESTER DIGITAL', 269.971, 'POLYTECH'),
(4517, 'ST10000VX0004', 'disco rigido 10 tb seagate skyhawk videovigilancia', 'SEAGATE', 305.93, 'FREE'),
(4518, 'WD101PURZ', 'disco 10 tb wd s-ata iii intellipower 256 mb purple', 'WESTER DIGITAL', 313.46, 'AIR'),
(4519, 'ST10000VN0004', 'disco rigido 10 tb seagate ironwolf nas', 'SEAGATE', 330.512, 'POLYTECH'),
(4520, 'WD100PURZ', 'disco rigido 10 tb western digital purple videovigilancia', 'WESTER DIGITAL', 353.012, 'POLYTECH'),
(4521, 'WD101KFBX', 'disco sata 10tb wd red pro', 'WESTER DIGITAL', 456.59, 'PCARTS'),
(4522, 'ST14000VN0008', 'disco sata iii 14tb ironwolf seagate', 'SEAGATE', 509.95, 'PCARTS'),
(4523, 'CT120BX500SSD1', 'disco ssdÂ  120gb crucial bx500', 'CRUCIAL', 18.7576, 'ELIT'),
(4524, 'GP-GSTFS31120GNTD', 'disco ssd gigabyte 120gb', 'GIGABYTE', 18.9398, 'POLYTECH'),
(4525, 'ASU650SS-120GTÂ  ', 'disco ssd sata 2,5', 'ADATA', 19, 'STYLUS'),
(4526, 'WDS120G2G0B', 'disco solido ssd m2 120 gb western digital green', 'WESTER DIGITAL', 19.855, 'ELIT'),
(4527, 'WDS120G2G0A', 'disco solido ssd 120 gb western digital green', 'WESTER DIGITAL', 19.8585, 'ELIT'),
(4528, 'SA400S37/120G', 'disco solido ssd 120 gb kingston a400', 'KINGSTON', 20.1857, 'ELIT'),
(4529, 'SA400M8/120G', 'disco ssd 120gb a400 m.2 2280', 'KINGSTON', 20.3215, 'ELIT'),
(4530, 'ASU800NS38-128GT-C', 'disco ssd adata 128gb m.2 2280 asu800ns38', 'ADATA', 21.5, 'STYLUS'),
(4531, 'ASU630SS-240GT', 'disco ssd solido adata 240gb ultimate su630', 'ADATA', 25.52, 'FREE'),
(4532, 'SDSSDA-120G-', 'disco ssd sandisk 120gb plus 530 mb/s', 'SANDISK', 26, 'CEVEN'),
(4533, 'ASX6000LNP-128GT-C', 'disco ssd adata xpg sx6000 lite lnp m.2 128gb', 'ADATA', 26.29, 'N.BYTES'),
(4534, 'SUV500M8/120G', 'disco solido ssd m2 120 gb kingston uv500', 'KINGSTON', 26.7295, 'POLYTECH'),
(4535, 'WDS240G2G0A', 'disco solido ssd 240 gb western digital green', 'WESTER DIGITAL', 28.7815, 'ELIT'),
(4536, 'CT240BX500SSD1', 'disco ssdÂ  240gb crucial bx500', 'CRUCIAL', 28.8056, 'ELIT'),
(4537, 'SA400S37/240G', 'disco solido ssd 240 gb kingston a400', 'KINGSTON', 29.0348, 'ELIT'),
(4538, 'GP-GSTFS31240GNTD', 'disco ssd gigabyte 240gb', 'GIGABYTE', 29.54, 'AIR'),
(4539, 'ASU630SS-240GQ-R', 'disco ssd sata 2,5', 'ADATA', 29.58, 'STYLUS'),
(4540, 'SA400M8/240G', 'disco ssd 240gb a400 m.2 2280', 'KINGSTON', 29.6355, 'ELIT'),
(4541, 'ASU650SS-240GT-R', 'disco ssd 240gb adata su650ss blister', 'ADATA', 30.41, 'AIR'),
(4542, 'BX500240GB', 'disco solido ssd 240 gb crucial bx500', 'CRUCIAL', 30.5194, 'POLYTECH'),
(4543, 'WDS240G2G0B', 'disco solido ssd m2 240 gb western digital green', 'WESTER DIGITAL', 30.7097, 'POLYTECH'),
(4544, 'WDS240G2G0BI', 'disco ssd wd 240gb m2 green sata 3', 'WESTER DIGITAL', 38.98, 'CEVEN'),
(4545, 'ASX6000NP-128GT-C', 'disco ssd adata xpg sx6000 m.2 128gb', 'ADATA', 40.75, 'N.BYTES'),
(4546, 'GP-GSTFS30256GTTD', 'disco solido ssd 256 gb gigabyte ud pro', 'GIGABYTE', 42.3108, 'POLYTECH'),
(4547, 'CSSD-F120GBMP300', 'disco ssd corsair force mp300 m.2 120gb', 'CORSAIR', 42.77, 'N.BYTES'),
(4548, 'CSSD-F120GBLE200B', 'disco ssd corsair force le200b 120gb', 'CORSAIR', 44.56, 'N.BYTES'),
(4549, 'SA400S37240G', 'disco ssd kingston 240gb a400 2.5\" sata 3', 'KINGSTON', 45.66, 'CEVEN'),
(4550, 'SSDSC2KW256G8X1', 'disco ssd 256gb intel 545s sata gb/s 2.5', 'INTEL', 45.77, 'AIR'),
(4551, 'WDS250G2B0A', 'disco solido ssd 250 gb western digital blue', 'WESTER DIGITAL', 48.371, 'ELIT'),
(4552, 'WDS250G2B0B', 'disco solido ssd m2 250 gb western digital blue', 'WESTER DIGITAL', 48.5057, 'ELIT'),
(4553, 'AGAMMIXS5-256GT-C', 'disco ssd gaming m.2 pcie 256g', 'ADATA', 51.2, 'STYLUS'),
(4554, 'CT480BX500SSD1', 'disco ssdÂ  480gb crucial bx500', 'CRUCIAL', 52.6077, 'ELIT'),
(4555, 'ASX8200PNP-256GT-C', 'disco ssd adata s xpg sx8200 pro pnp m.2 256gb gt', 'ADATA', 52.71, 'N.BYTES'),
(4556, 'WDS250G1B0C', 'disco ssd m.2 250gb western digital blue pcie', 'WESTER DIGITAL', 52.81, 'AIR'),
(4557, 'WDS480G2G0A', 'disco solido ssd 480 gb western digital green', 'WESTER DIGITAL', 54.043, 'ELIT'),
(4558, 'ASU650SS-480GT', 'disco ssd solido adata 480gb ultimate su650', 'ADATA', 55.5882, 'FREE'),
(4559, 'WDS480G2G0B', 'disco solido ssd m2 480 gb western digital green', 'WESTER DIGITAL', 56.17, 'AIR'),
(4560, 'BX500480GB', 'disco solido ssd 480 gb crucial bx500', 'CRUCIAL', 56.18, 'POLYTECH'),
(4561, 'SA400S37/480G', 'disco solido ssd 480 gb kingston a400', 'KINGSTON', 58.0505, 'POLYTECH'),
(4562, 'ASU630SS-480GQ-R', 'disco ssd 480gb adata su630 blister', 'ADATA', 58.76, 'AIR'),
(4563, 'ASX6000NP-256GT-C', 'disco ssd adata 256gb m.2 2280 sx6000np', 'ADATA', 58.8116, 'FREE'),
(4564, 'GP-GSTFS31480GNTD', 'disco ssd gigabyte 480gb', 'GIGABYTE', 58.94, 'AIR'),
(4565, 'ASX7000NPC-128GT-C', 'disco ssd gammix s10 adata xpg 128gb m.2 2280', 'ADATA', 60.7647, 'FREE'),
(4566, 'SA400S37480G', 'disco ssd kingston 480gb a400 2.5\" sata 3', 'KINGSTON', 62.14, 'HDC'),
(4567, 'SHFR200/240GÂ  Â ', 'disco ssd 240gb hyperx fury rgb 2.5\"', 'KINGSTON', 63.1702, 'ELIT'),
(4568, 'ASU800NS38-512GT-C', 'disco ssd m.2 sata', 'ADATA', 63.3, 'STYLUS'),
(4569, 'STGS500401', 'disco solido ssd 500 gb seagate barracuda', 'SEAGATE', 67.4007, 'FREE'),
(4570, 'ASX6000PNP-256GT-C', 'disco ssd adata xpg sx6000 pnp m.2 256gb', 'ADATA', 68.43, 'N.BYTES'),
(4571, 'GP-GSTFS30512GTTD', 'disco ssd gigabyte ssd 512gb', 'GIGABYTE', 69.97, 'HDC'),
(4572, 'WDS500G2B0A', 'disco solido ssd 500 gb western digital blue', 'WESTER DIGITAL', 73.68, 'AIR'),
(4573, 'WDS500G2B0B', 'disco solido ssd m2 500 gb western digital blue', 'WESTER DIGITAL', 74.67, 'AIR'),
(4574, 'WDS500G1B0C', 'disco ssd 500gb blue m.2 2280', 'WESTER DIGITAL', 77.6185, 'ELIT'),
(4575, 'IM2S3334-128GD', 'disco ssd adata m.2 128gb 3d nand', 'ADATA', 78.05, 'N.BYTES'),
(4576, 'CSSD-F240GBMP510', 'disco ssd corsair force mp510 m.2 240gb', 'CORSAIR', 81.56, 'N.BYTES'),
(4577, 'WDS250G2X0C', 'disco solido ssd nvme 250 gb western digital black', 'WESTER DIGITAL', 84.7703, 'G.NUCLEO'),
(4578, 'AGAMMIXS5-512GT-C', 'disco ssd gaming m.2 pcie 512g', 'ADATA', 89.5, 'STYLUS'),
(4579, 'SHFR200/480GÂ  Â ', 'disco ssd 480gb hyperx fury rgb 2.5\"', 'KINGSTON', 91.3712, 'ELIT'),
(4580, 'CSSD-F480GBMP510', 'disco ssd m2 corsair 480gb force mp510', 'CORSAIR', 94.32, 'HDC'),
(4581, 'ASU630SS-960GQ-R', 'disco ssd solido adata 960gb ultimate su630', 'ADATA', 94.9656, 'FREE'),
(4582, 'ASX7000NPC-256GT-C', 'disco ssd gammix s10 adata xpg 256gb m.2 2280', 'ADATA', 99.1607, 'FREE'),
(4583, 'SA1000M8/480G', 'disco ssd 480gb a1000 m.2 2280 nvme', 'KINGSTON', 103.319, 'ELIT'),
(4584, 'MKNSSDSR1TB', 'disco solido ssd 1 tb mushkin', 'MUSHKIN', 110.811, 'POLYTECH'),
(4585, 'WDS100T2B0A', 'disco ssd wd 1tb blue sata 3 3d 2.5\" ', 'WESTER DIGITAL', 115.16, 'AIR'),
(4586, 'SA400S37/960G', 'disco solido ssd 960 gb kingston a400', 'KINGSTON', 117.71, 'PCARTS'),
(4587, 'CSSD-F120GBMP500', 'disco ssd corsair force mp500 m.2 120gb', 'CORSAIR', 118.71, 'N.BYTES'),
(4588, 'IM2S3334-256GD', 'disco ssd adata m.2 256gb 3d nand', 'ADATA', 129.37, 'N.BYTES'),
(4589, 'WDS100T2B0B', 'disco ssd m.2 1tb western digital blue 6gb/s', 'WESTER DIGITAL', 147.8, 'AIR'),
(4590, 'WDS500G2X0C', 'disco solido ssd nvme 500 gb western digital black', 'WESTER DIGITAL', 164.749, 'POLYTECH'),
(4591, 'WDS200T2B0A', 'disco solido ssd 2 tb western digital blue', 'WESTER DIGITAL', 318.32, 'POLYTECH'),
(4592, 'WDS100T1B0A', 'disco ssd wd 1tb blue sata iii interna', 'WESTER DIGITAL', 351.53, 'N.BYTES'),
(4593, 'CSSD-N400GBNX500', 'disco ssd pci-e corsair 400 gb neutron nx500', 'CORSAIR', 382.74, 'HDC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuente`
--

CREATE TABLE `fuente` (
  `id` int(11) UNSIGNED NOT NULL,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `fuente`
--

INSERT INTO `fuente` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`) VALUES
(5967, 'CP-9020102-NA', 'fuente corsair cx550m 550w 80 plus bronze semi modular (8049)', 'CORSAIR', 56.32, 'INVID'),
(5968, 'CP-9020177-NA', 'fuente corsair rm550x 550w 80 plus gold fully modular (4708)', 'CORSAIR', 88.01, 'INVID'),
(5969, 'CP-9020178-NA', 'fuente corsair rm650x 650w 80 plus gold fully modular (4876)', 'CORSAIR', 93.94, 'INVID'),
(5970, 'P1-750B-BEFX', 'fuente xfx 750w xtr full modular 80+ gold easy rail (8804)', 'CORSAIR', 91.63, 'INVID');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gabinete`
--

CREATE TABLE `gabinete` (
  `id` int(11) UNSIGNED NOT NULL,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `gabinete`
--

INSERT INTO `gabinete` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`) VALUES
(5963, 'CC-9011101-WW\r\n', 'Gabinete Corsair Crystal 460X RGB Black Mid-Tower S/Fuente (3590)\r\n', 'Corsair', 123.02, 'INVID'),
(5964, 'CC-9011129-WW', 'Gabinete Corsair Crystal 460X RGB White Mid-Tower S/Fuente (4231)', 'Corsair', 123.51, 'INVID'),
(5965, 'CC-9011126-WW', 'Gabinete Corsair Crystal 570X RGB Mirror Black Mid-Tower S/F (3111)', 'Corsair', 170.72, 'INVID'),
(5966, 'CS3-1356-CB.', 'G18 POWER KIT  WITH BCP500-XS', 'SENTEY', 36.2, 'SENTEY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memoria`
--

CREATE TABLE `memoria` (
  `id` int(11) UNSIGNED NOT NULL,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `memoria`
--

INSERT INTO `memoria` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`) VALUES
(4938, '991964', 'memoria mushkin essentials 2gb ddr2 pc2-6400', 'MUSHKIN', 10.6862, 'POLYTECH'),
(4939, 'D2LD2G80BK', 'memoria ddr2 2gb  800mhz pc6400 generica (8x128) -16chips', 'GENERICA', 11.18, 'AIR'),
(4940, 'AD3U1600W4G11-S', 'memoria  adata ddr3 4gb/1600 mhz', 'ADATA', 17.506, 'FREE'),
(4941, 'D3LD4G16BK', 'memoria ddr3 4gb 1600mhz pc6400 generica pc 12800', 'GENERICA', 21.91, 'AIR'),
(4942, 'CT51264BD160BJ', 'memoria pc ddr3l 4gb 1600mhz udimm single ranked', 'CRUCIAL', 22.015, 'ELIT'),
(4943, 'KVR16N11S8/4', 'memoria pc ddr3 4gb 1600mhz valueram 1.5v', 'KINGSTON', 22.3605, 'ELIT'),
(4944, 'HX318C10FB/4', 'memoria pc hyperx fury ddr3 4gb 1866mhz black', 'KINGSTON', 23.0926, 'ELIT'),
(4945, '992030', 'memoria mushkin essentials udimm ddr3 4gb 1600mhz 1.35v pc3l-12800', 'MUSHKIN', 23.1309, 'POLYTECH'),
(4946, 'CMV4GX3M1A1600C11', 'memoria ddr3 4gb 1600 mhz corsair value', 'CORSAIR', 23.58, 'HDC'),
(4947, 'KVR13N9S8/4', 'memoria ddr3 4gb 1333mhz (kvr13n9s8/4) kingston', 'KINGSTON', 24.5817, 'POLYTECH'),
(4948, 'HX318C10FR/4', 'memoria pc hyperx fury ddr3 4gb 1866mhz red', 'KINGSTON', 24.917, 'ELIT'),
(4949, 'AD3U1600W8G11-S', 'memoria adata ddr3 8gb/1600 mhz', 'ADATA', 37.05, 'FREE'),
(4950, 'CT102464BD160B', 'memoria pc ddr3l 8gb 1600mhz udimm', 'CRUCIAL', 41.2343, 'ELIT'),
(4951, 'ADDU1600W8G11-B', 'memoria ddr3 8gb adata 1600mhz 1.35v bulk', 'ADATA', 41.87, 'AIR'),
(4952, 'KVR16N11/8', 'memoria ddr3 8gb 1600mhz dimm (kvr16n11/8) kingston', 'KINGSTON', 42.6547, 'ELIT'),
(4953, '992031', 'memoria mushkin essentials udimm ddr3 8gb 1600mhz 1.35v pc3-12800', 'MUSHKIN', 43.384, 'POLYTECH'),
(4954, 'HX316C10FB/8', 'memoria pc hyperx ddr3 8gb 1600mhz fury black', 'KINGSTON', 45.0505, 'ELIT'),
(4955, 'KVR1333D3N9/8G', 'memoria ddr3 8gb 1333mhz (kvr1333d3n9/8g) kingston oem', 'KINGSTON', 46.056, 'POLYTECH'),
(4956, 'AD3U1600W8G1', 'memoria adata ddr3 dimm 8gb 1600', 'ADATA', 52.45, 'N.BYTES'),
(4957, 'CMV8GX3M1A1600C11', 'memoria ddr3 8gb 1600 mhz corsair value', 'CORSAIR', 59.61, 'HDC'),
(4958, 'CMY16GX3M2A2400C11R', 'memoria corsair vengeance pro 16gb ddr3 2400mhz (2x8gb)', 'CORSAIR', 145.907, 'POLYTECH'),
(4959, 'AD4U2400W4G17-S', 'memoria adata ddr4 u-dimm 4gb/ 2400 mhz ad4u2400w4g17-s', 'ADATA', 20.7696, 'FREE'),
(4960, 'BLS4G4D26BFSE', 'memoria crucial ballistix sport lt udimm ddr4 4gb 2666 red', 'CRUCIAL', 21.069, 'G.NUCLEO'),
(4961, 'CT4G4DFS8266', 'memoria 4gb d4 dimm crucial 2666mhz', 'CRUCIAL', 21.4506, 'ELIT'),
(4962, 'AD4U2400J4G17-S', 'memoria adata ddr4 u-dimm 4gb/ 2400 mhz', 'ADATA', 21.5, 'STYLUS'),
(4963, 'KVR26N19S6/4', 'memoria 4gb dimm d4 2666mhz kingston', 'KINGSTON', 21.5038, 'ELIT'),
(4964, NULL, 'memoria pcbox ddr4 4gb 2400mhz (4gbddr4-2400oem)', 'PCBOX', 22.2762, 'G.NUCLEO'),
(4965, 'BLS4G4D26BFSC', 'memoria crucial ballistix sport lt udimm ddr4 4gb 2666 white', 'CRUCIAL', 23.429, 'G.NUCLEO'),
(4966, 'AD4U2666W4G19-S', 'memoria adata ddr4 u-dimm 4gb/ 2666 mhz ad4u2666w4g19-s', 'ADATA', 23.5382, 'FREE'),
(4967, 'KVR24N17S6/4', 'memoria ddr4 4gb 2400mhz (kvr24n17s6/4) kingston', 'KINGSTON', 24, 'PCARTS'),
(4968, 'CT4G4DFS824A', 'memoria pc ddr4 4gb 2400mhz udimm', 'CRUCIAL', 24.2, 'AIR'),
(4969, 'HX424C15FB/4', 'memoria hyperx fury ddr4 2400 cl 15 4gb kingston', 'KINGSTON', 24.4345, 'ELIT'),
(4970, 'CMV4GX4M1A2400C16', 'memoria ddr4 4gb 2400 mhz corsair value', 'CORSAIR', 26.21, 'HDC'),
(4971, 'CMV4GX4M1A2666C18', 'memoria corsair value pc 4gb ddr4 2666mhz (1x4gb)', 'CORSAIR', 26.28, 'PCARTS'),
(4972, 'BLS4G4D26BFSB', 'memoria crucial ballistix sport lt udimm ddr4 4gb 2666 grey', 'CRUCIAL', 29.5982, 'POLYTECH'),
(4973, 'MEMDDR4OEM', 'memoria ram 4gb ddr4-2400 oem armado', 'GENERICA', 31, 'CEVEN'),
(4974, 'CMV4GX4M1A2133C15', 'memoria ddr4 4gb 2133 mhz corsair value', 'CORSAIR', 32.09, 'HDC'),
(4975, 'AD4U240038G17-S', 'memoria adata ddr4 u-dimm 8gb/ 2400 mhz', 'ADATA', 40.5507, 'FREE'),
(4976, 'BLS8G4D240FSEK', 'memoria crucial ddr4 8gb 2400mhz ballistix red (pc4-19200) cl16 ', 'CRUCIAL', 40.718, 'G.NUCLEO'),
(4977, 'CT8G4DFS8266', 'memoria 8gb d4 dimm crucial 2666mhz', 'CRUCIAL', 42.901, 'ELIT'),
(4978, 'KVR26N19S8/8', 'memoria pc ddr4 8gb 2666mhz 1.2v valueram', 'KINGSTON', 43.0075, 'ELIT'),
(4979, 'CT8G4DFS824A', 'memoria pc ddr4 8gb 2400mhz udimm', 'CRUCIAL', 43.5, 'AIR'),
(4980, 'CMK8GX4M1D3000C16', 'memoria ddr4 8gb 3000 mhz corsair vengeance lpx black (negro)', 'CORSAIR', 44.2249, 'POLYTECH'),
(4981, 'CMK8GX4M1A2666C16', 'memoria corsair vengeance lpx 8gb ddr4 2666 mhz (1x8 gb)', 'CORSAIR', 44.2365, 'POLYTECH'),
(4982, 'CMK8GX4M1A2666C16R', 'memoria corsair vengeance lpx 8gb ddr4 2666 mhz red (1x8 gb)', 'CORSAIR', 44.3818, 'POLYTECH'),
(4983, 'KVR24N17S8/8', 'memoria kingston ddr4 8gb 2400mhz (kvr24n17s8/8)', 'KINGSTON', 44.418, 'ELIT'),
(4984, 'MES4U240HF8G', 'memoria mushkin essentials 8gb ddr4 2400mhz cl17 1.2v', 'MUSHKIN', 44.5324, 'POLYTECH'),
(4985, 'BLS8G4D26BFSEK', 'memoria crucial ballistix sport lt udimm ddr4 8gb 2666 red', 'CRUCIAL', 44.7, 'AIR'),
(4986, 'AX4U2400W4G16-SBG', 'memoria adata ddr4 xpg 4gb/2400 mhz gammix d10', 'ADATA', 44.8778, 'FREE'),
(4987, 'CMV8GX4M1A2400C16', 'memoria ddr4 8gb 2400 mhz corsair value', 'CORSAIR', 44.9, 'HDC'),
(4988, 'AX4U2400W4G16-SBF', 'memoria adata dimm xpg flame ddr4 4gb 2400', 'ADATA', 45.97, 'N.BYTES'),
(4989, 'BLS8G4D240FSE', 'memoria pc ballistix 8gb ddr4 2400 ud sport lt red', 'BALLISTIX', 46.1331, 'ELIT'),
(4990, 'HX424C15FB2/8', 'memoria hyperx fury ddr4 2400 cl 15 8gb (hx424c15fb2/8) kingston', 'KINGSTON', 46.145, 'ELIT'),
(4991, 'BLS8G4D30CESTK', 'memoria pc ballistix ddr4 8gb 3000mhz ud sport', 'BALLISTIX', 46.3877, 'ELIT'),
(4992, 'KVR26N19S6/8', 'memoria 8gb dimm d4 2666mhz kingston', 'KINGSTON', 46.67, 'PCARTS'),
(4993, 'AD4U266638G19-S', 'memoria adata ddr4 u-dimm 8gb/ 2666 mhz ad4u266638g19-s', 'ADATA', 46.6838, 'FREE'),
(4994, 'GALS48GB2400C17SC', 'memoria geil ddr4 8gb 2400mhz superluce rgb rtl ', 'GEIL', 47.2398, 'G.NUCLEO'),
(4995, 'AX4U320038G16-SB30', 'memoria adata ddr4 xpg 8gb/3200 mhz gammix d30', 'ADATA', 49.2396, 'FREE'),
(4996, 'AX4U240038G16-SBG', 'memoria adata dimm xpg gammix d10 black ddr4 8gb 2400', 'ADATA', 50.39, 'N.BYTES'),
(4997, 'BLS8G4D26BFSBK', 'memoria crucial ballistix sport lt udimm ddr4 8gb 2666 grey', 'CRUCIAL', 51.841, 'POLYTECH'),
(4998, 'AX4U240038G16-SBF', 'memoria adata ddr4 xpg flame 8gb/ 2400 mhz', 'ADATA', 51.8644, 'FREE'),
(4999, 'HX430C15PB3/8', 'memoria 8gb d4 dimm 3000 king predator', 'KINGSTON', 52.39, 'PCARTS'),
(5000, 'BLT8G4D30BET4K', 'memoria ddr4 8gb crucial 3000mhz cl16 tracer rgb', 'CRUCIAL', 54.99, 'AIR'),
(5001, 'CMK8GX4M1A2400C14', 'memoria ddr4 8gb 2400 mhz corsair vengeance lpx black (negro)', 'CORSAIR', 56.55, 'HDC'),
(5002, 'HX432C16PB3A/8', 'memoria 8gb kingston hyperx pred rgb 3200mhz', 'KINGSTON', 59.94, 'PCARTS'),
(5003, 'GP-GR26C16S8K1HU408', 'memoria gigabyte ddr4 2666mhz 8gb', 'GIGABYTE', 60.68, 'PCARTS'),
(5004, 'AX4U300038G16-SRG', 'memoria ddr4 8gb adata xpg 3000mhz gammix d10', 'ADATA', 60.86, 'AIR'),
(5005, 'AX4U300038G16-SR41', 'memoria adata ddr4 xpg 8gb 3000mhz spectrix rgb d41', 'ADATA', 61.3703, 'FREE'),
(5006, 'AX4U300038G16-SB41', 'memoria adata ddr4 xpg 8gb 3000mhz spectrix rgb d41', 'ADATA', 61.4182, 'FREE'),
(5007, 'AX4U2400W4G16-DRG', 'memoria adata dimm xpg d10 ddr4 8gb 2400 red 2 x 4', 'ADATA', 63.2, 'STYLUS'),
(5008, 'AX4U300038G16-SB80', 'memoria adata dimm xpg spectrix d80 rgb ddr4 8gb 3000 mhz', 'ADATA', 65.29, 'N.BYTES'),
(5009, 'AX4U300038G16-SR80', 'memoria adata ddr4 xpg 8gb 3000mhz spectrix rgb sr80', 'ADATA', 65.5243, 'FREE'),
(5010, 'AX4U320038G16-SB80', 'memoria adata ddr4 xpg 8gb 3200mhz spectrix rgb sb80', 'ADATA', 65.8354, 'FREE'),
(5011, 'CT16G4DFD824A', 'memoria ddr4 16gb 2400 mhz crucial value', 'CRUCIAL', 73.4908, 'ELIT'),
(5012, 'CMV16GX4M1A2666C18', 'memoria corsair value pc 16gb ddr4 2666mhz (1x16gb) cl18', 'CORSAIR', 85.1007, 'POLYTECH'),
(5013, 'AD4U2400316G17-S', 'memoria adata ddr4 dimm 16gb 2400', 'ADATA', 88, 'STYLUS'),
(5014, 'HX436C17PB3A/8', 'memoria pc ddr4 8gb 3600 c17 hyperx predator rgb', 'KINGSTON', 88.8088, 'ELIT'),
(5015, 'KVR24N17D8/16', 'memoria ddr4 16gb 2400mhz cl17 (kvr24n17d8/16) kingston', 'KINGSTON', 88.98, 'AIR'),
(5016, 'AX4U2666W4G16-DRZ', '2 modulo memoria ram ddr4 2666 4gb red z1', 'ADATA', 89.8, 'STYLUS'),
(5017, 'BLS16G4D240FSE', 'memoria crucial ballistix sport lt udimm ddr4 16gb 2400 roja', 'CRUCIAL', 98.5959, 'POLYTECH'),
(5018, 'BLS16G4D240FSB', 'memoria crucial ballistix sport lt udimm ddr4 16gb 2400 grey', 'CRUCIAL', 98.6427, 'POLYTECH'),
(5019, 'AX4U360038G17-SRZ1', 'memoria ram ddr4 3600 8gb red z1', 'ADATA', 99, 'STYLUS'),
(5020, 'AX4U3000316G16-SBF', 'memoria adata ddr4 xpg flame 16gb/ 3000mhz', 'ADATA', 99.0485, 'FREE'),
(5021, 'CMK16GX4M1B3000C15', 'memoria ddr4 16gb 3000 mhz corsair vengeance lpx black (negro)', 'CORSAIR', 106.78, 'HDC'),
(5022, 'AX4U360038G17-SR80', 'memoria ram ddr4 3600 8gb red+ rgb liquid d80', 'ADATA', 109.1, 'STYLUS'),
(5023, 'CMK16GX4M2B3000C15', 'memoria corsair vengeance lpx 16gb ddr4 3000mhz negro (2x8gb)', 'CORSAIR', 111.507, 'POLYTECH'),
(5024, 'AX4U266638G16-DT41', 'memoria adata dimm xpg spectrix d41 rgb ddr4 8gb 2666 2x4', 'ADATA', 112.65, 'N.BYTES'),
(5025, 'BLT16G4D30BET4', 'memoria crucial ddr4 16gb 3000mhz ballistix rgb (pc4-24000) cl16 sr x8 ', 'CRUCIAL', 116.373, 'G.NUCLEO'),
(5026, 'AX4U320016G16-ST41', 'memoria adata ddr4 xpg 16gb 3200mhz spectrix rgb d41', 'ADATA', 117.046, 'FREE'),
(5027, 'CMW16GX4M2A2666C16', 'memoria corsair vengeance rgb pro 16gb ddr4 2666 mhz negro (2x8 gb)', 'CORSAIR', 121.23, 'POLYTECH'),
(5028, 'AX4U2400316G16-SRG ', 'memoria ram ddr4 2400 16gb gammix d10', 'ADATA', 122.45, 'STYLUS'),
(5029, 'HX432C18FB/16', 'memoria pc hyperx ddr4 16gb 3200 c18 fury black', 'KINGSTON', 122.589, 'ELIT'),
(5030, 'AX4U3200316G16-SB80', 'memoria adata ddr4 xpg 16gb/3200 mhz spectrix rgb d80', 'ADATA', 123.764, 'FREE'),
(5031, 'AX4U2400316G16-SRZ ', 'memoria ram ddr4 2400 16gb red z1', 'ADATA', 124, 'STYLUS'),
(5032, 'CMW16GX4M2C3000C15', 'memoria corsair vengeance rgb pro 16gb ddr4 3000mhz negro (2x8 gb)', 'CORSAIR', 125.021, 'POLYTECH'),
(5033, 'CMK16GX4M2B3200C16', 'memoria 16gb d4 3200mhz corsair', 'CORSAIR', 126.69, 'PCARTS'),
(5034, 'CMW16GX4M2C3200C16', 'memoria ddr4 2x8gb 3200 mhz corsair vengeance led rgb pro (negro)', 'CORSAIR', 129.374, 'POLYTECH'),
(5035, 'CMR16GX4M2C3000C15', 'memoria corsair vengeance rgb 16gb ddr4 3000 mhz (2x8gb)', 'CORSAIR', 129.376, 'POLYTECH'),
(5036, 'CMW16GX4M2C3200C16W', 'memoria ddr4 2x8gb 3200 mhz corsair vengeance led rgb pro (blanco)', 'CORSAIR', 131.606, 'POLYTECH'),
(5037, 'CMU16GX4M2C3200C16', 'memoria corsair vengeance led 16gb ddr4 3200mhz (2x8gb)', 'CORSAIR', 134.495, 'POLYTECH'),
(5038, 'AX4U300038G16-DRG', '2 modulo memoria ram ddr4 3000 8gb gammix d10 dual', 'ADATA', 141, 'STYLUS'),
(5039, 'CMW16GX4M2C3000C15W', 'memoria corsair vengeance rgb pro 16gb ddr4 3000mhz white (2x8 gb)', 'CORSAIR', 141.417, 'POLYTECH'),
(5040, 'GP-GR26C16S8K2HU416', 'memoria 16gb(2x8gb) dimm d4 2666mhz gigabyte', 'GIGABYTE', 148.8, 'PCARTS'),
(5041, 'AX4U3200316G16-SR10 ', 'memoria ram ddr4 3200 16gb gammix d10 ', 'ADATA', 151, 'STYLUS'),
(5042, 'AX4U320038G16-DR10', '2 modulo memoria ram ddr4 3200 8gb gammix d10 dual', 'ADATA', 151, 'STYLUS'),
(5043, 'AX4U320038G16-DRZ1', 'Â 2 modulo memoria ram ddr4 3200 8gb red z1', 'ADATA', 151, 'STYLUS'),
(5044, 'AX4U320038G16-DRS', 'memoria adata ddr4 16gb 3200mhz (2x8gb kit) rgb spectrix', 'ADATA', 155.459, 'FREE'),
(5045, 'AX4U3200316G16-SR80', 'memoria ram ddr4 3200 16gb red+ rgb liquid d80', 'ADATA', 165, 'STYLUS'),
(5046, 'HX436C17PB3AK2/', 'memoria pc ddr4 16gb 3600 c17 hyperx predator rgb', 'KINGSTON', 183.641, 'ELIT'),
(5047, 'GP-AR32C16S8K2HU416RD', 'memoria gigabyte aorus rgb memoriaory 3200mhz', 'GIGABYTE', 191.96, 'PCARTS'),
(5048, 'AX4U360038G17-DR41', 'memoria adata ddr4 xpg 16gb 3600mhz (2x8gb kit) rgb spectrix', 'ADATA', 193.892, 'FREE'),
(5049, 'CMW16GX4M2C3600C18', 'memoria ddr4 2x8gb 3600 mhz corsair vengeance led rgb pro (negro)', 'CORSAIR', 204.24, 'PCARTS'),
(5050, 'CMW16GX4M2C3600C18W', 'memoria corsair ven rgb pro 3600 16gb (2x8)w', 'CORSAIR', 204.24, 'PCARTS'),
(5051, NULL, 'memoria novatech sodimm 512mb 333 mhbox', 'NOVATECH', 11.17, 'N.BYTES'),
(5052, NULL, 'memoria novatech sodimm ddr2 512 800mhbox', 'NOVATECH', 6.15, 'N.BYTES'),
(5053, NULL, 'memoria pcbox ddr3 sodimm 2gb 1600 mhz lv gn', 'PCBOX', 8.9962, 'G.NUCLEO'),
(5054, 'CT51264BF160BJ', 'memoria crucial ddr3 4gb 1600mhz (pc3l-12800) cl11 sodimm ', 'CRUCIAL', 22.015, 'ELIT'),
(5055, 'MEM1600SODDL', 'memoria sodim 4gb ddr3l-1600', 'GENERICA', 25, 'CEVEN'),
(5056, 'ADDS1600W4G11-S', 'memoria adata sodimm ddr3 4gb 1600 1.35v', 'ADATA', 34.62, 'N.BYTES'),
(5057, 'KCP3L16SS8-4', 'memoria sodimm ddr3 4gb 1600 mhz kingston value', 'KINGSTON', 40.42, 'HDC'),
(5058, 'CT102464BF160B', 'memoria sodimm ddr3l 8gb 1600mhz 1.35v', 'CRUCIAL', 41.9979, 'ELIT'),
(5059, 'AD3S1333W8G9-S', 'memoria adata ddr3 so-dimm 8gb/1333 mhz', 'ADATA', 59.9573, 'FREE'),
(5060, 'MEM16008GL', 'memoria sodim 8gb ddr3l-1600 / kingston', 'KINGSTON', 72, 'CEVEN'),
(5061, 'CT4G4SFS8266', 'memoria sodimm ddr4 4gb 2666mhz', 'CRUCIAL', 21.4506, 'ELIT'),
(5062, 'CT4G4SFS824A', 'memoria sodimm ddr4 4gb 2400 mhz crucial value', 'CRUCIAL', 21.4571, 'ELIT'),
(5063, 'AD4S2400J4G17-S', 'memoria adata sodimm ddr4 4gb 2400 g17', 'ADATA', 21.6, 'STYLUS'),
(5064, 'CMSX4GX4M1A2400C16', 'memoria corsair sodimm ddr4 4gb 2400 mhz', 'CORSAIR', 28.46, 'N.BYTES'),
(5065, 'CMSO4GX4M1A2133C15', 'memoria sodimm ddr4 4gb 2133 mhz corsair value', 'CORSAIR', 28.57, 'HDC'),
(5066, 'AX4S2400W4G15-SBF ', 'memoria ram ddr4 2400 4gb flame sodimm', 'ADATA', 32.8, 'STYLUS'),
(5067, 'KVR24S17S6/4', 'memoria kingston ddr4 sodimm 4g 2400', 'KINGSTON', 35.39, 'N.BYTES'),
(5068, 'AD4S240038G17-S', 'memoria adata sodimm ddr4 8gb 2400', 'ADATA', 37.4244, 'FREE'),
(5069, 'AD4S2400W4G1', 'memoria adata sodimm ddr4 4gb 2400', 'ADATA', 39.36, 'N.BYTES'),
(5070, 'CT8G4SFS824A', 'memoria crucial ddr4 8gb sodimm 2400', 'CRUCIAL', 39.6843, 'ELIT'),
(5071, 'BLS8G4D240FSCK', 'memoria crucial ddr4 8gb 2400mhz ballistix white (pc4-19200) cl16 srx8', 'CRUCIAL', 40.718, 'G.NUCLEO'),
(5072, 'CT8G4SFS8266', 'memoria sodimm ddr4 8gb 2666mhz', 'CRUCIAL', 42.901, 'ELIT'),
(5073, 'CMSX8GX4M1A2400C16', 'memoria corsair vengeance sodimm ddr4 8gb 2400 mhz', 'CORSAIR', 55.9, 'N.BYTES'),
(5074, 'CMSO8GX4M1A2133C15', 'memoria sodimm ddr4 8gb 2133 mhz corsair value', 'CORSAIR', 57.11, 'HDC'),
(5075, 'KVR24S17S8/8', 'memoria kingston ddr4 sodimm 8g 2400', 'KINGSTON', 62.93, 'N.BYTES'),
(5076, 'AD4S2400316G17-S', 'memoria adata ddr4 so-dimm 16gb/2400 mhz', 'ADATA', 82.8421, 'FREE'),
(5077, 'CT16G4SFD824A', 'memoria crucial ddr4 16gb 2400mhz (pc4-19200) sodimm ', 'CRUCIAL', 84.4899, 'ELIT'),
(5078, 'CT16G4SFD8266', 'memoria sodimm ddr4 16gb 2666mhz', 'CRUCIAL', 86.931, 'ELIT'),
(5079, 'CMSO16GX4M1A2133C15', 'memoria sodimm ddr4 16gb 2133 mhz corsair value', 'CORSAIR', 93.11, 'HDC'),
(5080, 'KVR24S17D8/16', 'memoria 16gb sodimm d4 2400 kingston', 'KINGSTON', 107, 'PCARTS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mother`
--

CREATE TABLE `mother` (
  `id` int(11) UNSIGNED NOT NULL,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mother`
--

INSERT INTO `mother` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`) VALUES
(5423, 'GA-B250-FINTECH', 'motherboard gigabyte (1151) ga-b250-fintech', 'GIGABYTE', 30, 'ELIT'),
(5424, 'B150M-HDS', 'motherboard 1151 asrock b150m-hds dvi-d, hdmi', 'ASROCK', 42, 'STYLUS'),
(5425, 'H110M-HDV', 'motherboard intel (1151) asrock h110m-hdv vga/hdmi ddr4x2 2133mhz 4sata3 4usb3.0', 'ASROCK', 42.3089, 'G.NUCLEO'),
(5426, 'H110M PRO-VH PLUS', 'motherboard (1151) h110m pro-vh plus', 'MSI', 45.177, 'ELIT'),
(5427, 'PRIME H110M-P', 'motherboard asus intel 1151 h110 prime h110 h110m-p', 'ASUS', 48.6505, 'ELIT'),
(5428, 'H110MHC', 'motherboard biostar s1151 h110mhc 7ma gen', 'BIOSTAR', 49.9, 'CEVEN'),
(5429, 'GA-H110M-H', 'motherboard gigabyte (1151) ga-h110m-h ddr4', 'GIGABYTE', 50.4465, 'ELIT'),
(5430, 'H110M-D', 'motherboard asus (1151) h110m-d', 'ASUS', 55.197, 'ELIT'),
(5431, 'H310M-HDV', 'motherboard asrock h310m-hdvÂ  m-atx s1151', 'ASROCK', 57.13, 'HDC'),
(5432, 'H310CM-HDV', 'motherboard asrock h310cm-hdvÂ  m-atx s1151', 'ASROCK', 57.75, 'HDC'),
(5433, 'H310M DS2', 'motherboard gigabyte s1151 h310m ds2 box 2.0 serie/paralel', 'GIGABYTE', 57.94, 'AIR'),
(5434, 'H310M-H', 'motherboard gigabyte (1151) h310m h', 'GIGABYTE', 57.94, 'AIR'),
(5435, 'PRIME H310M-E', 'motherboard asus (1151) prime h310m-e', 'ASUS', 63.51, 'N.BYTES'),
(5436, 'B250M PRO-VH', 'motherboard msi s1151 b250m pro-vh box m-atx', 'MSI', 63.83, 'AIR'),
(5437, 'PRIME B360-K ', 'motherboard asus intel 8gen 1151 b360 prime', 'ASUS', 66, 'STYLUS'),
(5438, 'B250M BAZOOKA', 'motherboard msi 1151 b250m bazooka_x005f_x005f_x005f_x005f_x000d_', 'MSI', 68, 'FREE'),
(5439, 'B250M GAMING PRO', 'motherboard msi 1151 b250m gaming pro_x005f_x005f_x005f_x005f_x000d_', 'MSI', 68, 'FREE'),
(5440, 'GA-H310M-DS2', 'motherboard gigabyte ga-h310m-ds2 - solo compatible 8Âº gen 1151', 'GIGABYTE', 68.6464, 'POLYTECH'),
(5441, 'H310M A', 'motherboard gigabyte (1151) h310m a', 'GIGABYTE', 68.72, 'N.BYTES'),
(5442, 'PRIME B250M-A', 'motherboard (1151) prime b250m-a', 'ASUS', 69.66, 'HDC'),
(5443, 'B360M DS3H ', 'motherboard intel (1151) gigabyte b360m ds3h ddr4 usb 3.1 hdmi m.2 d-sub-dvi p/8va gen', 'GIGABYTE', 70.571, 'G.NUCLEO'),
(5444, 'PRIME H310M-D', 'motherboard asus prime h310m-d puerto paralelo (8va gen intel) s1151', 'ASUS', 71.2, 'STYLUS'),
(5445, 'B250MHDV', 'motherboard asrock b250m-hdv', 'ASROCK', 74, 'CEVEN'),
(5446, 'H310M GAMING PLUS', 'motherboard msi (1151) h310m gaming plus', 'MSI', 75.51, 'N.BYTES'),
(5447, 'H310M GAMING ARCTIC', 'motherboard msi (1151) h310m gaming arctic', 'MSI', 80.08, 'N.BYTES'),
(5448, 'TUF H310M-PLUS GAMING', 'motherboard asus intel 8gen 1151 h310 tuf-plu', 'ASUS', 81.5, 'STYLUS'),
(5449, 'B150M Pro4S', 'motherboard 1151 asrock b150m pro4s dvi-d, hdmi', 'ASROCK', 81.56, 'FREE'),
(5450, 'Z170A-X1/3.1', 'motherboard 1151 asrock z170a-x1 dvi-d', 'ASROCK', 81.56, 'FREE'),
(5451, 'B360M AORUS GAMING 3 ', 'motherboard gigabyte s1151 b360m aorus gaming 3 box', 'GIGABYTE', 83.95, 'AIR'),
(5452, 'H170M Pro4S', 'motherboard 1151 asrock h170m pro4s dvi-d, hdmi', 'ASROCK', 87.56, 'FREE'),
(5453, 'Z370M-DS3H', 'motherboard gigabyte z370m-ds3h 1151 - solo compatible 8Âº gen', 'GIGABYTE', 88.0396, 'POLYTECH'),
(5454, 'GA-H370M-DS3H', 'motherboard gigabyte ga-h370m-ds3h 1151', 'GIGABYTE', 88.61, 'PCARTS'),
(5455, 'GA-H110MSTX-HD3', 'motherboard gigabyte (1151) h110mstx-hd3 intel 2', 'GIGABYTE', 88.93, 'N.BYTES'),
(5456, 'TUF H310-PLUS GAMING', 'motherboard asus tuf h310-plus gaming (8va gen intel) s1151', 'ASUS', 88.97, 'PCARTS'),
(5457, 'B250 KRAIT GAMING', 'motherboard msi 1151 b250 krait gaming', 'MSI', 89.71, 'FREE'),
(5458, 'H310M-ITXAC', 'motherboard asrock h310m-itx ac', 'ASROCK', 94, 'CEVEN'),
(5459, 'H270M PERFORMANCE', 'motherboard 1151 asrock fatal1ty h270m performance', 'ASROCK', 94.41, 'FREE'),
(5460, 'PRIME H370M-PLUS/CSM', 'motherboard asus (1151) prime h370m-plus/csm', 'ASUS', 100.02, 'N.BYTES'),
(5461, 'B360M MORTAR', 'motherboard msi (1151) b360m mortar', 'MSI', 100.67, 'N.BYTES'),
(5462, 'H370M BAZOOKA', 'motherboard msi (1151) h370m bazooka', 'MSI', 100.67, 'N.BYTES'),
(5463, 'Z170M Pro4S', 'motherboard 1151 asrock z170m pro4s dvi-d, hdmi', 'ASROCK', 103.24, 'FREE'),
(5464, 'B250 GAMING M3', 'motherboard msi 1151 b250 gaming m3', 'MSI', 103.32, 'FREE'),
(5465, 'Z270 Pro4', 'motherboard 1151 asrock z270 pro4 hdmi, dvi-d,vga', 'ASROCK', 103.69, 'FREE'),
(5466, 'Z270M Pro4', 'motherboard 1151 asrock z270m pro4 hdmi, dvi-d,vga', 'ASROCK', 103.69, 'FREE'),
(5467, 'H370 GAMING PRO CARBON', 'motherboard (1151 v.2) h370 gaming pro carbon', 'MSI', 104.032, 'ELIT'),
(5468, 'Z170 Pro4S', 'motherboard 1151 asrock z170 pro4s dvi-d, hdmi', 'ASROCK', 104.07, 'FREE'),
(5469, 'Z370-A PRO', 'motherboard msi 1151 8th gen z370-a pro', 'MSI', 104.26, 'FREE'),
(5470, 'H370M-PRO4', 'motherboard asrock h370m-pro4', 'ASROCK', 105, 'CEVEN'),
(5471, 'TUF B360M-PLUS GAMING', 'motherboard asus (1151) tuf b360m-plus gaming', 'ASUS', 105, 'STYLUS'),
(5472, 'B360M MORTAR TITANIUM', 'motherboard msi (1151) b360m mortar titanium', 'MSI', 105.26, 'N.BYTES'),
(5473, 'B360 AORUS GAMING 3', 'motherboard gigabyte (1151) ga-b360 aorus gaming 3', 'GIGABYTE', 106.16, 'PCARTS'),
(5474, 'H270M MORTAR ARTIC', 'motherboard msi h270m mortar artic s1151', 'MSI', 106.95, 'HDC'),
(5475, 'ROG STRIX B360-G GAMING', 'motherboard asus (1151) rog strix b360-g gaming', 'ASUS', 109.33, 'N.BYTES'),
(5476, 'B360 AORUS GAMING 3 WIFI', 'motherboard gigabyte aorus b360 gaming 3 wifi 1151', 'GIGABYTE', 110.48, 'PCARTS'),
(5477, 'GA-B360 AORUS GAMING 3 WIFI', 'motherboard gigabyte ga-b360-aorus gaming 3 wi fi ddr4 socket 1151 - solo compatible 8Âº gen', 'GIGABYTE', 111.554, 'POLYTECH'),
(5478, 'H270 GAMING M3', 'motherboard msi 1151 h270 gaming m3', 'MSI', 111.69, 'FREE'),
(5479, 'PRIME H370-PLUS', 'motherboard asus (1151) prime h370-plus', 'ASUS', 115.02, 'N.BYTES'),
(5480, 'Z370 GAMING PLUS', 'motherboard msi 1151 8th gen z370 gaming plus', 'MSI', 115.5, 'FREE'),
(5481, 'ROG STRIX B360-H GAMING', 'motherboard asus intel 8gen 1151 b360-h rog', 'ASUS', 121.76, 'STYLUS'),
(5482, 'Z370XP SLI', 'motherboard gigabyte (1151) z370xp sli', 'GIGABYTE', 123.04, 'N.BYTES'),
(5483, 'Z370M MORTAR', 'motherboard msi (1151) z370m mortar', 'MSI', 123.45, 'N.BYTES'),
(5484, 'B360N AORUS GAMING WIFI', 'motherboard gigabyte (1151) ga-b360n aorus gaming wi fi', 'GIGABYTE', 125.73, 'N.BYTES'),
(5485, 'TUF Z370-PLUS GAMING', 'motherboard asus tuf z370-plus gaming 1151', 'ASUS', 128.37, 'ELIT'),
(5486, 'MS-7978/Z170A GA', 'motherboard msi 1151 z170a gaming m3', 'MSI', 130.62, 'FREE'),
(5487, 'TUF B360M-PRO GAMING (WI-FI)', 'motherboard asus (1151) tuf b360-pro gaming (wi-fi)', 'ASUS', 131.82, 'N.BYTES'),
(5488, 'Z270 Extreme4', 'motherboard 1151 asrock z270 extreme4 hdmi, dvi-d, vga', 'ASROCK', 132.54, 'FREE'),
(5489, 'Z270M Extreme4', 'motherboard 1151 asrock z270m extreme4 hdmi, dvi-d, d-sub', 'ASROCK', 132.54, 'FREE'),
(5490, 'Z270 GAMING M3', 'motherboard msi z270 gaming m3 s1151', 'MSI', 133.66, 'FREE'),
(5491, 'Z370 SLI PLUS', 'motherboard msi 1151 8th gen z370 sli plus', 'MSI', 134.13, 'FREE'),
(5492, 'Fatality H370 Performance', 'motherboard asrock fatality h370 performance', 'ASROCK', 135, 'CEVEN'),
(5493, 'PRIME Z370-P', 'motherboard asus intel 8gen 1151 z370-p prime', 'ASUS', 135, 'STYLUS'),
(5494, 'Z170-K', 'motherboard asus intel 1151 z170 z170-k', 'ASUS', 135, 'STYLUS'),
(5495, 'Z370 AORUS ULTRA GAMING', 'motherboard gigabyte z370 aorus ultra gaming 1151', 'GIGABYTE', 135.42, 'PCARTS'),
(5496, 'Z390-A', 'motherboard msi s1151 z390-a pro box atx', 'MSI', 135.6, 'AIR'),
(5497, 'Z390 UD', 'motherboard gigabyte (1151) z390 ud', 'GIGABYTE', 135.84, 'AIR'),
(5498, 'Z370 PC PRO', 'motherboard msi (1151) z370 pc pro', 'MSI', 136.61, 'N.BYTES'),
(5499, 'TUF H370-PRO GAMING', 'motherboard asus tuf h370-pro gaming (wi-fi) s1151', 'ASUS', 138.49, 'HDC'),
(5500, 'Z390 GAMING PLUS', 'motherboard msi s1151 mpg z390 gaming plus box atx', 'MSI', 146.31, 'AIR'),
(5501, 'TUF Z370-PRO GAMING', 'motherboard asus (1151) tuf z370-pro gaming', 'ASUS', 147.97, 'N.BYTES'),
(5502, 'MAXIMUS VIII RANGER', 'motherboard asus intel 1151 maximus ranger', 'ASUS', 150, 'STYLUS'),
(5503, 'Z270 GAMING', 'motherboard msi 1151 z270 gaming pro carbon', 'MSI', 150.42, 'FREE'),
(5504, 'PRIME Z370-A', 'motherboard asus intel 8gen 1151 z370-a prime', 'ASUS', 150.43, 'ELIT'),
(5505, 'Z270 GAMING K6', 'motherboard 1151 asrock fatal1tyz270 gamingk6 hdmi,dvi-d,vga', 'ASROCK', 152.41, 'FREE'),
(5506, 'Z390 PHANTOM GAMING 4', 'motherboard asrock z390 phantom gaming 4', 'ASROCK', 159.68, 'HDC'),
(5507, 'Z370 Killer', 'motherboard asrock z370 killer sli/ac', 'ASROCK', 160, 'CEVEN'),
(5508, 'Z390 GAMING X', 'motherboard gigabyte (1151) z390 gaming x', 'GIGABYTE', 160.72, 'AIR'),
(5509, 'Z390 M GAMING', 'motherboard gigabyte (1151) z390 m gaming', 'GIGABYTE', 161.839, 'POLYTECH'),
(5510, 'GA-Z170X UD3', 'motherboard gigabyte ga-z170x ud3 d', 'GIGABYTE', 164, 'CEVEN'),
(5511, 'Z370 AORUS GAMING 3', 'motherboard gigabyte (1151) z370 aorus gaming 3', 'GIGABYTE', 165.51, 'N.BYTES'),
(5512, 'SABERTOOTH Z170 S', 'motherboard asus intel 1151 z170 sabertooh', 'ASUS', 170, 'STYLUS'),
(5513, 'Z170 FATALITY GK6', 'motherboard 1151 asrock z170 fatalitygk6 dvi-d,hdmi,dispor', 'ASROCK', 171.17, 'FREE'),
(5514, 'TUF Z390-PLUS GAMING WIFI', 'motherboard (1151 v.2) tuf z390-plus gaming wifi', 'ASUS', 176.499, 'ELIT'),
(5515, 'Z270 Taichi', 'motherboard 1151 asrock z270 taichi hdmi, display port', 'ASROCK', 180.14, 'FREE'),
(5516, 'Z370 GAMING M5', 'motherboard msi (1151) z370 gaming m5', 'MSI', 181.19, 'FREE'),
(5517, 'Z370 GAMING PRO CARBON', 'motherboard msi (1151) z370 gaming pro carbon', 'MSI', 185.47, 'N.BYTES'),
(5518, 'Z270 GAMING PRO CARBON', 'motherboard msi z270 gaming pro carbon s1151', 'MSI', 185.57, 'HDC'),
(5519, 'TUF Z390-PRO GAMING', 'motherboard asus (1151) tuf z390-pro gaming', 'ASUS', 192.08, 'N.BYTES'),
(5520, 'Z390 AORUS ELITE', 'motherboard gigabyte (1151) z390 aorus elite', 'GIGABYTE', 195.64, 'PCARTS'),
(5521, 'B250 MINING EXPERT', 'motherboard asus intel 1151 b250 mining e', 'ASUS', 198.2, 'STYLUS'),
(5522, 'Z390 GAMING PRO CARBON', 'motherboard msi s1151 mpg z390 gaming pro carbon box atx', 'MSI', 198.65, 'AIR'),
(5523, 'Z270 GAMING M7', 'motherboard msi 1151 z270 gaming m7', 'MSI', 213.22, 'FREE'),
(5524, 'Z390 AORUS PRO WIFI', 'motherboard gigabyte (1151) z390 aorus pro wifi', 'GIGABYTE', 215.42, 'AIR'),
(5525, 'ROG STRIX Z390-I GAMING', 'motherboard asus (1151) rog strix z390-i gaming', 'ASUS', 238.52, 'N.BYTES'),
(5526, 'ROG MAXIMUS X HERO', 'motherboard asus (1151) rog maximus x hero / z370', 'ASUS', 241.39, 'N.BYTES'),
(5527, 'ROG MAXIMUS X HERO (WI-FI AC)', 'motherboard asus (1151) rog maximus x hero wi-fi ac / z370', 'ASUS', 251.77, 'N.BYTES'),
(5528, 'MAXIMUS VIII EXTREME', 'motherboard asus intel 1151 maximus extreme', 'ASUS', 255, 'STYLUS'),
(5529, 'STRIX Z390-E GAMING', 'motherboard asus s1151 rog strix z390-e gaming box atx', 'ASUS', 262.62, 'AIR'),
(5530, 'ROG MAXIMUS X CODE', 'motherboard asus (1151) rog maximus x code / z370', 'ASUS', 266.1, 'N.BYTES'),
(5531, 'MX31-BS0', 'motherboard gigabyte (1151) server xeon mx31-bs0', 'GIGABYTE', 267.52, 'N.BYTES'),
(5532, 'ROG STRIX Z390-E GAMING', 'motherboard asus (1151) rog strix z390-e gaming', 'ASUS', 279.81, 'N.BYTES'),
(5533, 'Z390 AORUS ULTRA', 'motherboard gigabyte (1151) z390 aorus ultra', 'GIGABYTE', 287.44, 'N.BYTES'),
(5534, 'Z390 DESIGNARE', 'motherboard gigabyte z390 designare socket 1151 - solo compatible 8Âº gen y 9Âº gen', 'GIGABYTE', 291.443, 'POLYTECH'),
(5535, 'Fatal1ty Z370 Pro Gaming', 'motherboard asrock fatal1ty z370 pro gaming i7', 'ASROCK', 304, 'CEVEN'),
(5536, 'ROG MAXIMUS XI HERO', 'motherboard asus s1151 rog maximus xi hero wifi box atx', 'ASUS', 311.49, 'AIR'),
(5537, 'Z390 AORUS MASTER', 'motherboard gigabyte (1151) z390 aorus master', 'GIGABYTE', 311.546, 'POLYTECH'),
(5538, 'MAXIMUS IX EXTREME', 'motherboard asus (1151) maximus ix extreme / z270', 'ASUS', 339.18, 'N.BYTES'),
(5539, 'ROG MAXIMUS X APEX', 'motherboard asus (1151) rog maximus x apex / z370', 'ASUS', 353.85, 'N.BYTES'),
(5540, 'ROG MAXIMUS XI FORMULA', 'motherboard asus (1151) rog maximus xi formula', 'ASUS', 509.87, 'N.BYTES'),
(5541, 'Z390 AORUS XTREME', 'motherboard gigabyte z390 aorus xtreme 1151', 'GIGABYTE', 651.63, 'PCARTS'),
(5542, 'GA-X99P-SLI', 'motherboard gigabyte (2011) ga-x99p-sli', 'GIGABYTE', 229.42, 'N.BYTES'),
(5543, 'GA-X99-UD5 WIFI', 'motherboard gigabyte (2011) ga-x99-ud5 wifi', 'GIGABYTE', 297.61, 'N.BYTES'),
(5544, 'X299 AORUS GAMING', 'motherboard gigabyte (2066) x299 aorus gaming', 'GIGABYTE', 157.98, 'N.BYTES'),
(5545, 'X299 UD4 PRO', 'motherboard gigabyte (2066) x299 ud4 pro', 'GIGABYTE', 189.42, 'N.BYTES'),
(5546, 'X299 AORUS GAMING 3 PRO', 'motherboard gigabyte (2066) x299 aorus gaming 3 pro', 'GIGABYTE', 207.62, 'N.BYTES'),
(5547, 'X299 GAMING K6', 'motherboard asrock x299 gaming k6 (2066)', 'ASROCK', 257.94, 'PCARTS'),
(5548, 'TUF X299 MARK 2', 'motherboard asus (2066) tuf x299 mark 2', 'ASUS', 265.06, 'N.BYTES'),
(5549, 'ROG STRIX X299-E GAMING', 'motherboard asus (2066) rog strix x299-e gaming', 'ASUS', 272.6, 'N.BYTES'),
(5550, 'X299 AORUS GAMING 7PRO', 'motherboard gigabyte (2066) x299 aorus gaming 7 pro', 'GIGABYTE', 436.58, 'N.BYTES'),
(5551, 'A320M-HDV', 'motherboard asrock a320m-hdv sam4 m-atx', 'ASROCK', 50.42, 'PCARTS'),
(5552, 'A320M-HDV R3.0', 'motherboard amd (am4) asrock a320m-hdv r3.0 vga/hdmi ddr4x2 2400mhz 4sata3 1xm.2 4usb3.1 ', 'ASROCK', 52.6251, 'G.NUCLEO'),
(5553, 'GA-A320M-S2H', 'motherboard gigabyte (am4) ga-a320m-s2h', 'GIGABYTE', 59.23, 'N.BYTES'),
(5554, 'PRIME A320M-K', 'motherboard asus (am4) prime a320m-k', 'ASUS', 60.26, 'N.BYTES'),
(5555, 'A320M-K', 'motherboard asus am4 a320m-k box m-atx', 'ASUS', 61.4, 'AIR'),
(5556, 'B450M DS3H', 'motherboard gigabyte (am4) b450m ds3h', 'GIGABYTE', 66.9388, 'G.NUCLEO'),
(5557, 'PRIME B450M-A/CSM', 'motherboard asus (am4) prime b450m-a/csm', 'ASUS', 73.54, 'ELIT'),
(5558, 'B450M Pro4', 'motherboard asrock b450m pro4 m-atx (am4)', 'ASROCK', 76.15, 'HDC'),
(5559, 'GA-AX370M-DS3H', 'motherboard gigabyte (am4) ga-ax370m ds3h', 'GIGABYTE', 76.58, 'N.BYTES'),
(5560, 'GA-AB350-GAMING 3', 'motherboard gigabyte (am4) ga-ab350-gaming 3', 'GIGABYTE', 82.5648, 'G.NUCLEO'),
(5561, 'B450 AORUS M', 'motherboard gigabyte (am4) b450 aorus m', 'GIGABYTE', 96.79, 'AIR'),
(5562, 'B450 AORUS ELITE', 'motherboard gigabyte (am4) b450 aorus elite', 'GIGABYTE', 106.21, 'N.BYTES'),
(5563, 'AB350M-HDV', 'motherboard asrock ab350m-hdv', 'ASROCK', 119, 'CEVEN'),
(5564, 'GA-AB350N-GAMING WIFI', 'motherboard gigabyte (am4) ab350n-gaming wifi', 'GIGABYTE', 119.27, 'N.BYTES'),
(5565, 'Fatal1ty B450 GAMING WIFI', 'motherboard asrock fatal1ty b450 gaming wifi itx (am4)', 'ASROCK', 122.37, 'HDC'),
(5566, 'X370 GAMING PRO', 'motherboard msi am4 x370 gaming pro', 'MSI', 123.43, 'FREE'),
(5567, 'B450 I AORUS PRO WI FI', 'motherboard gigabyte (am4) b450 i aorus pro wi fi', 'GIGABYTE', 129.13, 'PCARTS'),
(5568, 'B450 AORUS PRO WIFI', 'motherboard gigabyte b450 aorus pro wifi socket am4', 'GIGABYTE', 133.965, 'POLYTECH'),
(5569, 'X470 MASTER SLI', 'motherboard asrock x470 master sli (am4)', 'ASROCK', 141.25, 'HDC'),
(5570, 'X470 AORUS ULTRA GAMING', 'motherboard gigabyte (am4) x470 aorus ultra gaming', 'GIGABYTE', 158.85, 'AIR'),
(5571, 'GA-X470 Aorus Ultra Gaming', 'motherboard gigabyte ga-x470- aorus ultra gaming socket am4', 'GIGABYTE', 159.082, 'POLYTECH'),
(5572, 'ROG STRIX B450-I GAMING', 'motherboard asus (am4) rog strix b450-i gaming', 'ASUS', 177.81, 'N.BYTES'),
(5573, 'GA-X470 AORUS GAMING 5 WIFI', 'motherboard gigabyte ga-x470- aorus gaming 5 wifi socket am4', 'GIGABYTE', 203.964, 'POLYTECH'),
(5574, 'X370 PROF. GAMING', 'motherboard am4 asrock fatal1ty x370 profesional gaming', 'ASROCK', 210.99, 'FREE'),
(5575, 'ROG CROSSHAIR VI HERO', 'motherboard asus amd am4 x370 crosshairvi', 'ASUS', 215, 'STYLUS'),
(5576, 'X470 AORUS GAMING 5', 'motherboard gigabyte (am4) x470 aorus gaming 5 wi fi', 'GIGABYTE', 224.91, 'N.BYTES'),
(5577, 'X370GAMING', 'motherboard asrock x370 professional gaming', 'ASROCK', 263, 'CEVEN'),
(5578, 'X470 AORUS GAMING 7 WIFI', 'motherboard gigabyte ga-x470- aorus gaming 7 wifi socket am4', 'GIGABYTE', 268.243, 'POLYTECH'),
(5579, 'FM2A68M-DG3+', 'motherboard asrock fm2a68m-dg3+ sfm2+', 'ASROCK', 34.39, 'HDC'),
(5580, 'GA-F2A68HM-H', 'motherboard gigabyte (fm2+) f2a68hm-h 1.1', 'GIGABYTE', 42.07, 'PCARTS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesador`
--

CREATE TABLE `procesador` (
  `id` int(11) UNSIGNED NOT NULL,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `procesador`
--

INSERT INTO `procesador` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`) VALUES
(2325, 'AD9500AGABBOX', 'microprocesador amd (am4) a6 9500 bristol 1m 3800mhz', 'AMD', 40.14, 'N.BYTES'),
(2326, 'AD9500AHABBOX', 'microprocesador amd (am4) a6 9500e bristol ridge 3400mhz', 'AMD', 45.45, 'N.BYTES'),
(2327, 'AD9600AGABBOX', 'microprocesador amd a8 9600 quad core - 3.1ghz - 2400mhz - 65w - socket am4', 'AMD', 50.904, 'ELIT'),
(2328, 'YD200GC6FBBOX', 'microprocesador amd (am4) athlon 200ge 3.2ghz', 'AMD', 55.4288, 'ELIT'),
(2329, 'YD220GC6FBBOX', 'microprocesador amd (am4) athlon 220ge 3.4ghz', 'AMD', 62.216, 'ELIT'),
(2330, 'AD9700AGABBOX', 'microprocesador amd a10 9700 quad core - 3.5ghz - 2400mhz - 65w - socket am4', 'AMD', 73.528, 'ELIT'),
(2331, 'YD240GC6FBBOX', 'microprocesador amd (am4) athlon 240ge 3.5ghz', 'AMD', 73.3626, 'POLYTECH'),
(2332, 'AD9700AGABMP', 'microprocesador amd apu a10 9700 65w 3.8ghz am4 bulk', 'AMD', 74.96, 'AIR'),
(2333, 'YD2200C5FBBOX', 'microprocesador amd (am4) ryzen 3 2200g', 'AMD', 92.217, 'G.NUCLEO'),
(2334, 'YD2200C5FBMPK', 'microprocesador amd ryzen 3 2200g 3.50ghz 2mb l2 socket am4 bulk', 'AMD', 98.1005, 'POLYTECH'),
(2335, 'YD1200BBAEBOX', 'microprocesador amd (am4) ryzen 3 1200 3400mhz', 'AMD', 102.44, 'N.BYTES'),
(2336, 'AD9800AUABBOX', 'microprocesador amd (am4) a12 9800 bristol ridge 3800mhz', 'AMD', 107.39, 'N.BYTES'),
(2337, 'YD2400C5FBMPK', 'microprocesador amd ryzen 5 2400g 3.6ghz 2mb l2 socket am4 bulk', 'AMD', 147.26, 'POLYTECH'),
(2338, 'YD2400C5FBBOX', 'microprocesador amd (am4) ryzen 5 2400g ', 'AMD', 149.53, 'G.NUCLEO'),
(2339, 'YD150XBBAEBOX', 'microprocesador amd ryzen 5 1500x am4 3.6ghz _x005f_x005f_x005f_x005f_x000d_', 'AMD', 171.79, 'FREE'),
(2340, 'YD2600BBAFBOX', 'microprocesador amd (am4) ryzen 5 2600 3400mhz', 'AMD', 181.306, 'POLYTECH'),
(2341, 'YD260XBCAFMPK', 'microprocesador amd ryzen 5 2600x 3.6ghz 3mb l2 socket am4 2da gen b', 'AMD', 199.278, 'POLYTECH'),
(2342, 'YD2600BBAFMPK', 'microprocesador amd ryzen 5 2600 3.9ghz mpk', 'AMD', 209.8, 'AIR'),
(2343, 'YD260XBCAFBOX', 'microprocesador amd (am4) ryzen 5 2600x 3400mhz', 'AMD', 216.421, 'ELIT'),
(2344, 'YD170XBCAEWOF', 'microprocesador amd ryzen 7 1700x am4 3800mhz 8cores', 'AMD', 238.32, 'AIR'),
(2345, 'YD2700BBAFBBOX', 'microprocesador amd ryzen 7 2700 4.1ghz 4mb l2 socket am4 2da gen ', 'AMD', 253.711, 'ELIT'),
(2346, 'YD2700BBAFMPK', 'microprocesador amd ryzen 7 2700 4.1ghz bulk', 'AMD', 328.03, 'AIR'),
(2347, 'YD270XBGAFBOX', 'microprocesador amd (am4) ryzen 7 2700x 3700mhz ', 'AMD', 329.541, 'ELIT'),
(2348, 'AD7480ACABBOX', 'microprocesador amd (fm2) a6 7480 1m 3800mhz', 'AMD', 33.936, 'ELIT'),
(2349, 'AD7480ACABBOX', 'microprocesador amd kaveri apu a6 series 7480k', 'AMD', 34.09, 'PCARTS'),
(2350, 'AD7680ACABBOX', 'microprocesador apu a8-7680  4mb 3.5 ghz fm2+', 'AMD', 50.904, 'ELIT'),
(2351, 'YD295XA8AFWOF', 'microprocesador amd (tr4) ryzen 7 2950x 4400mhz', 'AMD', 1054.07, 'N.BYTES'),
(2352, 'YD297XAZAFWOF', 'microprocesador amd (tr4) ryzen threadripper rt-2970wx 4.2 s/cooler', 'AMD', 1502.14, 'N.BYTES'),
(2353, 'CM8068403378112 ', 'microprocesador intelÂ  g4900 celeron s1151 oem sin fan ', 'INTEL', 35.56, 'AIR'),
(2354, 'BX80677G3930', 'microprocesador int celeron g3930 kabylake box', 'INTEL', 39.01, 'AIR'),
(2355, 'G3900BOX', 'microprocesador intel celeron g3900 2.80 ghz 1151', 'INTEL', 40.46, 'HDC'),
(2356, 'BX880677G3930', 'microprocesador intel celeron g3930 2mb 2.90 ghz socket 1151 fclga14c - 7Â° gen', 'INTEL', 41.9136, 'POLYTECH'),
(2357, 'BX80684G4900', 'microprocesador intel celeron g4900 2mb 3.10 ghz socket 1151 ddr4 8Âº gen', 'INTEL', 45.3407, 'ELIT'),
(2358, 'CM8067702867064 ', 'microprocesador intelÂ  pent g4560 d.core kabylake oem sin fan', 'INTEL', 54.91, 'AIR'),
(2359, 'BX80684G5400', 'microprocesador intel (1151) pentium gold dual core g5400 3.7ghz', 'INTEL', 56.57, 'AIR'),
(2360, 'BX80677G4560', 'microprocesador int pentium g4560 s1151 kabylake', 'INTEL', 58.49, 'PCARTS'),
(2361, 'BX80662G4500', 'microprocesador intel pentium 7th gen g4500 3.5 ghz 3m lga 1151', 'INTEL', 60.1179, 'FREE'),
(2362, 'BX80677G4600', 'microprocesador pentium gold g4600 dual core 3mb 3.6ghz', 'INTEL', 89.6068, 'ELIT'),
(2363, 'BX80684G5600', 'microprocesador intel (1151) pentium gold dual core g5600 3.9ghz', 'INTEL', 100.826, 'ELIT'),
(2364, 'BX80677I3735', 'microprocesador intel core i3 7350k 4.2ghz 1151 (sin cooler)', 'INTEL', 136.778, 'G.NUCLEO'),
(2365, 'BX80684I38100', 'microprocesador intel (1151) core i3 8100 3.6 ghz', 'INTEL', 140.23, 'HDC'),
(2366, 'BX80684I59400F', 'microprocesador intel (1151) core i5 9400f 2.9 ghz', 'INTEL', 155.1, 'AIR'),
(2367, NULL, 'microprocesador intel (1151) core i3-7100 kabylake 3.9ghz 3mb 65w intel hd graphics 630', 'INTEL', 158.654, 'G.NUCLEO'),
(2368, 'CM8066201920506 ', 'microprocesador intel core i5-6400 s1151 oem sin fan', 'INTEL', 172.36, 'AIR'),
(2369, 'CM8068403358811S', 'microprocesador intel 8va core i5 8400 2.8ghz tray', 'INTEL', 172.4, 'AIR'),
(2370, 'BX80662I56400', 'microprocesador intel core i5-6400 3.30 ghz 6m (1151)', 'INTEL', 182.3, 'AIR'),
(2371, 'BX80662I56600', 'microprocesador intel core 6ta gen i5-6600 3.3 ghz lga 1151', 'INTEL', 190.817, 'FREE'),
(2372, 'BX80677I57400', 'microprocesador intel (1151) core i5 7400 3.0 ghz', 'INTEL', 194.55, 'AIR'),
(2373, 'BX80662E31220V5', 'microprocesador intel (1151) xeon 3.0ghe3-1220v5', 'INTEL', 197.24, 'N.BYTES'),
(2374, 'BX80684I58400', 'microprocesador intel (1151) core i5 8400 2.8 ghz', 'INTEL', 204.825, 'POLYTECH'),
(2375, 'BX80677I57500', 'microprocesador intel (1151) core i5 7500 3.4 ghz', 'INTEL', 219.43, 'PCARTS'),
(2376, 'BX80684I58600K', 'microprocesador core i5-8600k six core 9m 3.6ghz 1151v2', 'INTEL', 277.601, 'ELIT'),
(2377, 'BX80684I59600K', 'microprocesador intel (1151) core i5 9600k s/cooler 3.7 ghz', 'INTEL', 279.427, 'POLYTECH'),
(2378, 'BX80677I77700K', 'microprocesador intel (1151) core i7 7700k 4.2 ghs/cooler', 'INTEL', 317.35, 'AIR'),
(2379, 'CM8066201920103 ', 'microprocesador intel core i7-6700 skylake s1151 oem sin fan ', 'INTEL', 317.51, 'AIR'),
(2380, 'CM8068403358316 ', 'microprocesador intel core i7-8700 coffeelake oem sin fan ', 'INTEL', 324.3, 'AIR'),
(2381, 'BX80684I7870', 'microprocesador intel core i7 8700 3.2ghz 1151', 'INTEL', 331.06, 'PCARTS'),
(2382, 'BX80677I77700', 'microprocesador int core i7 7700 socket 1151 box', 'INTEL', 357.44, 'PCARTS'),
(2383, 'BX80684I78700K', 'microprocesador intel (1151) core i7 8700k 3.7 ghs/cooler', 'INTEL', 397.807, 'POLYTECH'),
(2384, 'BX80684I79700K', 'microprocesador intel (1151) core i7 9700k s/cooler 3.6 gh', 'INTEL', 417.237, 'POLYTECH'),
(2385, 'BX80684I99900K', 'microprocesador intel (1151) core i9 9900k 3.6 ghs/cooler', 'INTEL', 529.97, 'AIR'),
(2386, 'BX80671I76800K', 'microprocesador intel (2011) core i7 6800k 3.4 ghs/cooler', 'INTEL', 379.41, 'N.BYTES'),
(2387, 'BX80677I57640X', 'microprocesador intel (2066) core i5 7640x 4.0 ghs/cooler', 'INTEL', 208.03, 'N.BYTES'),
(2388, 'BX80673I77800X', 'microprocesador intel (2066) core i7 7800x 4.3 gh/ s/cooler', 'INTEL', 448.42, 'N.BYTES'),
(2389, 'BX80673I97900X', 'microprocesador intel (2066) core i9 7900x 3.3 ghz/s cooler', 'INTEL', 1133.23, 'N.BYTES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vga`
--

CREATE TABLE `vga` (
  `id` int(11) UNSIGNED NOT NULL,
  `sku` varchar(150) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `marca` varchar(150) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `distribuidor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `vga`
--

INSERT INTO `vga` (`id`, `sku`, `descripcion`, `marca`, `precio`, `distribuidor`) VALUES
(6331, '01G-P3-1312-LR', 'placa de video 1gb gf 210 eplaca de video ddr3 hdmi dvi placa de video lp', 'EVGA', 28.35, 'AIR'),
(6332, 'EVG-01G-P3-1313-KR', 'placa de videoÂ  eplaca de video nvidia geforce 210 1gb gddr3 (low profile)', 'EVGA', 31.01, 'HDC'),
(6333, '11233-01-20G', 'placa de video sapphire r5 230 1g ddr3', 'SAPPHIRE', 40.2, 'N.BYTES'),
(6334, '710-1-SL-BRK', 'placa de video video asus gforce 1g ddr3 gt 710', 'ASUS', 43.5, 'STYLUS'),
(6335, '912-V809-2024', 'placa de video geforce gt 710 2gd3 lp', 'MSI', 47.113, 'ELIT'),
(6336, 'GT710-SL-1GD5-BRK', 'placa de video video asus gforce 1g ddr5 gt 710', 'ASUS', 62.5, 'STYLUS'),
(6337, '02G-P3-1733-KR', 'placa de video evga gforce gt730 2g ddr3', 'EVGA', 65.38, 'AIR'),
(6338, '02G-P3-2732-KR', 'placa de video evga gt730 low profile 2g ddr3', 'EVGA', 72.44, 'N.BYTES'),
(6339, '02G-P4-6232-KR', 'placa de video evga gt 1030 2gb ddr4 low profile', 'EVGA', 79.39, 'AIR'),
(6340, '11251-10-20G', 'placa de video sapphire radeon r7 350 2g ddr5', 'SAPPHIRE', 81.29, 'N.BYTES'),
(6341, 'GV-N1030SL-2GL', 'placa de video gigabyte gt1030 silent low profile 2g ddr5', 'GIGABYTE', 85.14, 'N.BYTES'),
(6342, 'GV-N1030OC-2GI', 'placa de video gigabyte gt 1030 oc 2g ddr5', 'GIGABYTE', 90.1143, 'POLYTECH'),
(6343, '90YV0AT1-M0A00', 'placa de video 2gb gt 1030 asus geforce low profile lp', 'ASUS', 94.67, 'AIR'),
(6344, '912-V809-1821', 'placa de video 4gb gt 730n msi n730-4gd3v2', 'MSI', 95.4, 'AIR'),
(6345, '11268-03-20G', 'placa de video sapphire radeon rx550 pulse 2gd5', 'SAPPHIRE', 97.77, 'N.BYTES'),
(6346, '02G-P4-6332-KR', 'placa de video evga gt 1030 sc 2gb ddr5 passive', 'EVGA', 99.73, 'N.BYTES'),
(6347, 'ZT-P10300A-10L', 'placa de video zotac geforce gt 1030 2gb d5', 'ZOTAC', 101, 'N.BYTES'),
(6348, '02G-P4-6333-KR', 'placa de video evga gt 1030 sc 2gb ddr5', 'EVGA', 109.4, 'N.BYTES'),
(6349, '11268-01-20G', 'placa de video sapphire radeon rx550 pulse 4gd5', 'SAPPHIRE', 110.16, 'N.BYTES'),
(6350, 'AREZ-PH-RX550-2G', 'placa de video asus arephoenix rx550-2g', 'ASUS', 114.77, 'N.BYTES'),
(6351, 'GV-N1050D5-3GD', 'placa de video geforce gtx 1050 d5 3g', 'GIGABYTE', 130, 'ELIT'),
(6352, 'GV-N1050OC-3GL', 'placa de video geforce gtx 1050 oc low profile 3g', 'GIGABYTE', 130, 'ELIT'),
(6353, 'PH-RX550-4G-M7', 'placa de video asus rx550-4g m7', 'ASUS', 136.45, 'N.BYTES'),
(6354, '02G-P4-6150-KR', 'placa de video 2gb gtx 1050 eplaca de video sc gaming', 'EVGA', 138.36, 'AIR'),
(6355, '11266-04-20G', 'placa de video sapphire radeon rx570 pulse 4g ddr5', 'SAPPHIRE', 139.98, 'N.BYTES'),
(6356, 'GV-N1050D5-2GD', 'placa de video 2gb gtx 1050 gigabyte d5', 'GIGABYTE', 141.34, 'AIR'),
(6357, '912-V809-2287', 'placa de video msi geforce gtx 1050 2g oc', 'MSI', 143.11, 'AIR'),
(6358, '90YV0AG4-M0NA00', 'placa de video 4gb rx 550 asus phoenix m7', 'ASUS', 145.79, 'AIR'),
(6359, 'GV-N1050OC-2GD', 'placa de video 2gb gtx 1050 gigabyte oc 2gd', 'GIGABYTE', 146.66, 'AIR'),
(6360, 'AREZ-RX560-O4G-EVO', 'placa de video asus arerx560-o4g-evo', 'ASUS', 158.9, 'N.BYTES'),
(6361, '03G-P4-6153-KR', 'placa de video evga gtx 1050 sc gaming 3gb', 'EVGA', 161.58, 'N.BYTES'),
(6362, '11266-36-20G', 'placa de video sapphire radeon rx570 pulse 8g ddr5 + 2 juegos de regalo', 'SAPPHIRE', 163.26, 'N.BYTES'),
(6363, '90YV0AA3-M0AA00', 'placa de video 2gb gtx 1050 asus cerberus oc', 'ASUS', 168.05, 'AIR'),
(6364, '04G-P4-6251-KR', 'placa de video 4gb gtx 1050 ti eplaca de video gaming', 'EVGA', 169.29, 'AIR'),
(6365, 'ZT-T16500F-10L', 'placa de video zotac geforce gtx 1650 gaming oc 4gb ddr5', 'ZOTAC', 169.85, 'POLYTECH'),
(6366, 'CERBERUS-GTX1050-O2G', 'placa de video video asus gforce 2g ddr5 cerbe 1050', 'ASUS', 170, 'STYLUS'),
(6367, '90YV0AH0-M0NA00', 'placa de video 4gb rx 560 asus strix rog gaming o4g', 'ASUS', 176.74, 'AIR'),
(6368, 'GV-N1650OC-4GD', 'placa de video gigabyte gtx 1650 oc 4gb', 'GIGABYTE', 180.15, 'PCARTS'),
(6369, '90YV0CV2-M0AA00', 'placa de video geforce dual gtx 1650 o4g', 'ASUS', 180.151, 'ELIT'),
(6370, '04G-P4-1151-KR', 'placa de video evga gtx 1650 xc black gaming 4g d5', 'EVGA', 181.33, 'N.BYTES'),
(6371, 'VCQP600-ESPPB', 'placa de video 2gb quadro p600 pny gddr5 4x mdp 1.4 lp', 'PNY', 187.98, 'AIR'),
(6372, 'ROG-STRIX-RX560-O4G-GAMING', 'placa de video video asus amd 4g ddr5 rog rx560 o', 'ASUS', 189, 'STYLUS'),
(6373, '03G-P4-6162-KR', 'placa de video 3gb gtx 1060 eplaca de video superclocked acx 2.0', 'EVGA', 190.25, 'AIR'),
(6374, 'PH-GTX1050TI-4G', 'placa de video asus gtx1050ti phoenix 4gb ddr5', 'ASUS', 192.2, 'N.BYTES'),
(6375, '04G-P4-1153-KR', 'placa de video evga gtx 1650 xc gaming 4g d5', 'EVGA', 192.66, 'N.BYTES'),
(6376, 'GV-N1650WF2OC-4GD', 'placa de video 4gb gtx 1650 gigabyte windforce oc 4gd', 'GIGABYTE', 195.1, 'AIR'),
(6377, '03G-P4-6160-KR', 'placa de video 3gb gtx 1060 eplaca de video ref acx 2.0', 'EVGA', 196.4, 'AIR'),
(6378, '04G-P4-6253-KR', 'placa de video evga gtx 1050ti sc 4gb', 'EVGA', 197.57, 'N.BYTES'),
(6379, 'GV-N1650GAMING OC-4GD', 'placa de video gigabyte n1650 gaming oc 4gd', 'GIGABYTE', 200.56, 'PCARTS'),
(6380, '90YV0A70-M0AA00', 'placa de video 4gb gtx 1050 ti asus phoenix', 'ASUS', 200.79, 'AIR'),
(6381, 'GV-N105TWF2OC-4GD', 'placa de video gigabyte gtx1050ti windforce oc 4g', 'GIGABYTE', 200.92, 'N.BYTES'),
(6382, 'GV-N1650WF2OC-4GD', 'placa de video gigabyte gtx 1650 windforce oc 4gb', 'GIGABYTE', 202.665, 'POLYTECH'),
(6383, '90YV0BZ0-M0AA00', 'placa de video 4gb gtx 1050 ti asus oc low profile lp', 'ASUS', 204.45, 'AIR'),
(6384, 'STRIX-GTX1050TI-O4G-GAMING', 'Â placa de video video asus gforce 4g ddr5 strix 1050', 'ASUS', 205, 'STYLUS'),
(6385, '912-V335-050', 'placa de video 4gb gtx 1050 ti msi gaming x 4g', 'MSI', 220.62, 'AIR'),
(6386, '90YV0A30-M0NA00', 'placa de video 4gb gtx 1050 ti asus strix gaming oc', 'ASUS', 221.46, 'AIR'),
(6387, 'EX-RX570-4G', 'placa de video video asus amd 4g ddr5 exp rx570', 'ASUS', 225, 'STYLUS'),
(6388, 'GV-RX580GAMING-', 'placa de video radeon rx 580 gaming 8g', 'GIGABYTE', 225, 'ELIT'),
(6389, '11265-05-20G', 'placa de video sapphire radeon rx580 pulse 8g ddr5', 'SAPPHIRE', 227.73, 'N.BYTES'),
(6390, 'ROG-STRIX-RX570-O4G-GAMING', 'placa de video video asus amd 4g ddr5 rog rx570 o', 'ASUS', 230, 'STYLUS'),
(6391, '90YV0A64-M0NA00', 'placa de video geforce ph gtx 1060 3g', 'ASUS', 230.533, 'ELIT'),
(6392, '912-V335-001', 'placa de video msi geforce gtx 1050 ti gaming x 4g', 'MSI', 239.574, 'FREE'),
(6393, 'GV-N1060WF2OC-6GD 2.0', 'placa de video gigabyte gtx1060 windforce oc 6g', 'GIGABYTE', 242.41, 'N.BYTES'),
(6394, '11289-01-20G', 'placa de video sapphire radeon rx590 nitro 8g special edition + 2 juegos', 'SAPPHIRE', 242.93, 'N.BYTES'),
(6395, '90YV0CU0-M0AA00', 'placa de video geforce ph gtx 1660 o6g', 'ASUS', 246.4, 'ELIT'),
(6396, '06G-P4-1163-KR', 'placa de video evga gtx 1660 6g xc', 'EVGA', 246.85, 'AIR'),
(6397, '912-V379-015', 'placa de video 6gb gtx 1660 msi ventus xs 6g oc', 'VENTUS', 254.01, 'AIR'),
(6398, 'PH-GTX1660-O6G', 'placa de video asus ph gtx1660 o6g', 'ASUS', 254.59, 'N.BYTES'),
(6399, '90YV0CU2-M0AA00', 'placa de video geforce tuf gtx 1660 o6g gaming', 'ASUS', 255.698, 'ELIT'),
(6400, 'GV-N1660OC-6GD', 'placa de video gigabyte gtx1660 oc 6g', 'GIGABYTE', 257.69, 'AIR'),
(6401, 'ZT-T16600F-10L', 'placa de video zotac geforce gtx 1660 6gb ddr5', 'ZOTAC', 258.76, 'N.BYTES'),
(6402, 'PH-GTX10603G', 'placa de video video asus gforce 3g ddr5 ph 1060', 'ASUS', 261.43, 'STYLUS'),
(6403, 'ZT-T16600D-10M', 'placa de video zotac gaming geforce gtx 1660 amp edition 6gb ddr5', 'ZOTAC', 264.51, 'N.BYTES'),
(6404, '06G-P4-1167-KR', 'placa de video evga gtx 1660 6g xc ultra', 'EVGA', 269.37, 'AIR'),
(6405, '912-V379-020', 'placa de video 6gb gtx 1660 msi gaming x 6g', 'MSI', 275.48, 'AIR'),
(6406, 'GV-N1660GAMING OC-6GD', 'placa de video gigabte n1660 gaming oc 6gd', 'GIGABYTE', 281.04, 'AIR'),
(6407, '912-V328-014', 'placa de video msi geforce gtx 1060 gaming x 3g', 'MSI', 288.166, 'FREE'),
(6408, 'ZT-T16610F-10L', 'placa de video zotac geforce gtx 1660ti 6gb ddr6', 'ZOTAC', 293.55, 'N.BYTES'),
(6409, 'MINING-RX470-4G-LED', 'placa de video video asus amd 4g ddr5 rx 470 mining', 'ASUS', 295, 'STYLUS'),
(6410, '90YV0A68-M0NA00', 'placa de video geforce ph gtx 1060 6g', 'ASUS', 297.791, 'ELIT'),
(6411, '912-V375-048', 'placa de video geforce gtx 1660 ti ventus xs 6g oc', 'MSI', 307.039, 'ELIT'),
(6412, 'ZT-T16610D-10M', 'placa de video zotac geforce gtx 1660ti amp edition 6gb ddr6', 'ZOTAC', 308.3, 'N.BYTES'),
(6413, '90YV0CT0-M0AA00', 'placa de video geforce ph gtx 1660 ti o6g', 'ASUS', 310.324, 'ELIT'),
(6414, '912-V375-039', 'placa de video 6gb gtx 1660 ti msi ventus xs 6g oc', 'MSI', 316.02, 'AIR'),
(6415, 'PH-GTX1660TI-O6G', 'placa de video asus gtx 1660 ti o6gd', 'ASUS', 318.29, 'PCARTS'),
(6416, 'GV-N166TIXOC-6G', 'placa de video geforce gtx 1660 ti mini itx oc 6g', 'GIGABYTE', 319.83, 'ELIT'),
(6417, '06G-P4-1261-KR', 'placa de video evga gtx 1660ti 6g xc black gaming', 'EVGA', 323.17, 'AIR'),
(6418, 'GV-N166TOC-6GD', 'placa de video gigabyte gv-n166toc-6gd', 'GIGABYTE', 326.783, 'ELIT'),
(6419, 'GV-N166TWF2OC-6GD', 'placa de video gigabyte geforce gtx 1660 ti windforce oc 6gb gddr6 / 3 display port / 1 hdmi', 'GIGABYTE', 327.185, 'POLYTECH'),
(6420, '90YV0CT3-M0AA00', 'placa de video geforce dual gtx 1660 ti 6g', 'ASUS', 327.895, 'ELIT'),
(6421, '912-V375-052', 'placa de video geforce gtx 1660 ti gaming x 6g', 'MSI', 330.212, 'ELIT'),
(6422, 'DUAL-GTX1660TI-O6G', 'placa de video asus dual gtx1660ti o6g', 'ASUS', 331.23, 'PCARTS'),
(6423, '90YV0CT2-M0AA00', 'placa de video geforce dual gtx 1660 ti o6g', 'ASUS', 334.732, 'ELIT'),
(6424, '06G-P4-1263-KR', 'placa de video evga gtx 1660ti 6g xc gaming', 'EVGA', 334.86, 'AIR'),
(6425, '11265-07-20G', 'placa de video hd nitro+rx 580 4gb gddr5 sapphire', 'SAPPHIRE', 335.16, 'PCARTS'),
(6426, 'GV-N166TWF2OC-6', 'placa de video geforce gtx 1660 ti windforce oc 6g', 'GIGABYTE', 337.9, 'ELIT'),
(6427, '90YV0CQ2-M0AA00', 'placa de video geforce rog strix gtx 1660 ti 6g gaming', 'ASUS', 344.116, 'ELIT'),
(6428, '912-V375-053', 'placa de video msi gtx 1660 gaming x 6gb gddr5', 'MSI', 345.17, 'HDC'),
(6429, 'VCQP1000-ESPPB', 'placa de video 4gb quadro p1000 pny d5 4 x mdp 1.4', 'PNY', 346.65, 'AIR'),
(6430, '90YV0CQ1-M0AA00', 'placa de video geforce rog strix gtx 1660 ti a6g gaming', 'ASUS', 349.841, 'ELIT'),
(6431, 'GV-N166TGAMING', 'placa de video geforce gtx 1660 ti gaming oc 6g', 'GIGABYTE', 349.959, 'ELIT'),
(6432, 'GV-N166TWF2OC OC-6GD', 'placa de video gigabyte gv-n166twf2oc oc-6gd', 'GIGABYTE', 350.53, 'PCARTS'),
(6433, 'GV-N166TGAMING OC-6', 'placa de video gigabyte geforce gtx 1660 ti gaming oc 6gb gddr6 / 3 display port / 1 hdmi', 'GIGABYTE', 353.657, 'POLYTECH'),
(6434, '90YV0CQ0-M0AA00', 'placa de video geforce rog strix gtx 1660 ti o6g gaming', 'ASUS', 355.652, 'ELIT'),
(6435, 'GV-N166TGAMING OC-6GD', 'placa de video gigabyte gv-n166tgaming oc-6gd', 'GIGABYTE', 365.34, 'PCARTS'),
(6436, 'GV-N166TAORUS-6GD', 'placa de video 6gb gtx 1660 ti gigabyte aorus 6gd', 'GIGABYTE', 367.94, 'AIR'),
(6437, 'RX570-8G', 'placa de video radeon rx570 8g asrock', 'ASROCK', 370, 'CEVEN'),
(6438, 'STRIX-GTX1060-A6G-GAMING', 'placa de video asus strix gtx1060 a6g gaming', 'ASUS', 377.91, 'N.BYTES'),
(6439, '90YV09Q3-M0AA0', 'placa de video geforce rog strix gtx1060 a6g gaming', 'ASUS', 378.083, 'ELIT'),
(6440, '90YV09X3-M0NA00', 'placa de video geforce dual gtx 1060 oc 3gb', 'ASUS', 402.662, 'ELIT'),
(6441, '06G-P4-2063-KR', 'placa de video evga rtx2060 xc gaming 6g', 'EVGA', 404.06, 'AIR'),
(6442, '06G-P4-2061-KR', 'placa de video evga rtx2060 xc black gaming 6g', 'EVGA', 408.16, 'N.BYTES'),
(6443, 'GV-N2060IXOC-6GD', 'placa de video gigabyte geforce rtx 2060 mini itx oc 6g gddr6', 'GIGABYTE', 409.19, 'AIR'),
(6444, '90YV0CM0-M0AA0', 'placa de video geforce turbo rtx 2060 6g', 'ASUS', 415.593, 'ELIT'),
(6445, '90YV0CM2-M0AA00', 'placa de video geforce dual rtx 2060 a6g', 'ASUS', 420.236, 'ELIT'),
(6446, '90YV0CM1-M0AA00', 'placa de video geforce dual rtx 2060 o6g', 'ASUS', 424.88, 'ELIT'),
(6447, 'GV-N2060WF2OC-6', 'placa de video geforce rtx 2060 windforce oc 6g', 'GIGABYTE', 427.598, 'ELIT'),
(6448, '912-V375-015', 'placa de video msi rtx 2060 gaming z 6gb gddr6', 'MSI', 430.51, 'AIR'),
(6449, 'GV-N2060WF2OC-6GD', 'placa de video gigabyte rtx2060 windforce oc 6gd', 'GIGABYTE', 438.44, 'N.BYTES'),
(6450, '06G-P4-2167-KR', 'placa de video 6gb rtx 2060 eplaca de video xc ultra gaming', 'EVGA', 441.69, 'AIR'),
(6451, '90YV0CI0-M0AA00', 'placa de video geforce rog strix rtx 2060 o6g gaming', 'ASUS', 446.65, 'AIR'),
(6452, 'TURBO-RTX2060-6G', 'placa de video asus turbo rtx2060 6g', 'ASUS', 456.82, 'N.BYTES'),
(6453, 'GV-N2060GAMINGO', 'placa de video geforce rtx 2060 gaming oc 6g pro', 'GIGABYTE', 458.263, 'ELIT'),
(6454, 'GV-N2060OC-6GD', 'placa de video gigabyte n2060 oc 6gd', 'GIGABYTE', 459.89, 'PCARTS'),
(6455, 'DUAL-RTX2060-6G', 'placa de video asus dual-rtx2060 6g', 'ASUS', 464.56, 'N.BYTES'),
(6456, 'DUAL-RTX2060-O6G', 'placa de video asus dual-rtx2060 o6g', 'ASUS', 467.02, 'N.BYTES'),
(6457, 'GV-N2060AORUS X-6GC', 'placa de video gigabyte geforce rtx 2060 xtreme 6gb gddr6', 'GIGABYTE', 473.892, 'POLYTECH'),
(6458, 'ROG-STRIX-RTX2060-A6G-GAMING', 'placa de video asus rtx2060 a6g gaming', 'ASUS', 477.04, 'N.BYTES'),
(6459, 'ROG-STRIX-RXVEGA64-O8G-GAMING', 'placa de video video asus amd 8g ddr5 rog vega', 'ASUS', 515, 'STYLUS'),
(6460, '912-V373-002', 'placa de video geforce rtx 2070 aero 8g', 'MSI', 554.73, 'ELIT'),
(6461, '90YV0C82-M0AA00', 'placa de video geforce dual rtx 2070 o8g', 'ASUS', 571.283, 'ELIT'),
(6462, '08G-P4-1071-KR', 'placa de video evga rtx2070 black gaming 8gb', 'EVGA', 573.08, 'AIR'),
(6463, '912-V373-023', 'placa de video 8gb rtx 2070 msi armor 8g', 'MSI', 573.61, 'AIR'),
(6464, 'GV-N2070WF3-8GC', 'placa de video gigabyte geforce rtx 2070 8gb', 'GIGABYTE', 597.02, 'PCARTS'),
(6465, '90YV0C90-M0AA00', 'placa de video geforce rog strix rtx 2070 o8g gaming', 'ASUS', 602.148, 'ELIT'),
(6466, '912-V373-013', 'placa de video geforce rtx 2070 armor 8g oc', 'MSI', 617.007, 'ELIT'),
(6467, 'ZT-T20700D-10P', 'placa de video zotac geforce rtx 2070 amp 8gb ddr6', 'ZOTAC', 640.72, 'N.BYTES'),
(6468, '08G-P4-2173-KR', 'placa de video evga geforce rtx 2070 xc ultra gam', 'EVGA', 650.49, 'AIR'),
(6469, 'GV-N2070GAMING OC-8GC', 'placa de video gigabyte n2070 gaming oc-8gc', 'GIGABYTE', 661.25, 'PCARTS'),
(6470, '912-V373-215', 'placa de video 8gb rtx 2070 msi gaming z 8g', 'MSI', 661.86, 'AIR'),
(6471, 'GV-N2070AORUS-8GC', 'placa de video gigabyte geforce rtx 2070 aorus 8gb gddr6 3 display port / 3 hdmi / 1 usb type-c', 'GIGABYTE', 666.405, 'POLYTECH'),
(6472, '912-V373-007', 'placa de video msi rtx 2070 gaming z 8gb gddr6', 'MSI', 670.65, 'HDC'),
(6473, 'GV-N2070AORUS-X-8GC', 'placa de video gigabyte geforce rtx 2070 aorus xtreme 8gb gddr6 3 display port / 3 hdmi / 1 usb type-c', 'GIGABYTE', 685.674, 'POLYTECH'),
(6474, 'GV-N2070AORUS-8', 'placa de video geforce aorus rtx 2070 8gÂ ', 'GIGABYTE', 693.159, 'ELIT'),
(6475, 'ZT-T20800G-10P', 'placa de video zotac geforce rtx 2080 8gb gddr6 1 hdmi/ 1 usb type- c/ 3 display port', 'ZOTAC', 734.869, 'POLYTECH'),
(6476, 'ZT-T20800A-10P', 'placa de video zotac geforce rtx 2080 blower 8gb ddr6', 'ZOTAC', 756.43, 'N.BYTES'),
(6477, '21291-01-40G', 'placa de video sapphire fr radeon vii 16gb hbm2 + 2 juegos de regalo', 'SAPPHIRE', 783.61, 'N.BYTES'),
(6478, '912-V372-091', 'placa de video geforce rtx 2080 ventus 8g', 'MSI', 793.667, 'ELIT'),
(6479, '90YV0C31-M0AA00', 'placa de video geforce turbo rtx 2080 8g', 'ASUS', 808.47, 'AIR'),
(6480, '90YV0C30-M0AA00', 'placa de video dual rtx 2080 o8g', 'ASUS', 826.196, 'ELIT'),
(6481, 'GV-N2080WF3-8GC', 'placa de video gigabyte n2080 wf3 8gc', 'GIGABYTE', 829.86, 'PCARTS'),
(6482, '90YV0C62-M0AA00', 'placa de video geforce rog strix rtx 2080 8g gaming', 'ASUS', 842.734, 'ELIT'),
(6483, '08G-P4-2081-KR', 'placa de video evga rtx 2080 gaming black 8gb', 'EVGA', 854.7, 'N.BYTES'),
(6484, '90YV0C60-M0AA00', 'placa de video geforce rog strix rtx 2080 o8g gaming', 'ASUS', 856.622, 'ELIT'),
(6485, 'DUAL-RTX2080-O8G', 'placa de video asus dual-rtx2080-o8g d6', 'ASUS', 859.12, 'N.BYTES'),
(6486, '08G-P4-2182-KR', 'placa de video evga rtx 2080 xc gaming 8gb', 'EVGA', 866.76, 'AIR'),
(6487, 'GV-N2080AORUS-8GC', 'placa de video gigabyte geforce rtx 2080 aorus 8gb gddr6 3 display port / 3 hdmi / 1 usb type-c', 'GIGABYTE', 886.043, 'POLYTECH'),
(6488, 'TURBO-RTX2080-8G', 'placa de video asus turbo-rtx2080-8g', 'ASUS', 888.37, 'PCARTS'),
(6489, 'ZT-T20800D-10P', 'placa de video zotac geforce rtx 2080 amp 8gb ddr6', 'ZOTAC', 897.01, 'N.BYTES'),
(6490, 'ROG-STRIX-RTX2080-O8G-GAMING', 'placa de video asus rog strix-rtx2080-o8g d6 gaming', 'ASUS', 899.59, 'N.BYTES'),
(6491, 'GV-N2080GAMING OC-8GC', 'placa de video gigabyte n2080 gaming oc-8gc', 'GIGABYTE', 902.13, 'PCARTS'),
(6492, '912-V372-012', 'placa de video geforce rtx 2080 gaming x trio', 'MSI', 911.848, 'ELIT'),
(6493, 'GV-N2080AORUS X-8GC', 'placa de video gigabyte geforce rtx 2080 aorus xtreme 8gb gddr6 3 display port / 3 hdmi / 1 usb type-c', 'GIGABYTE', 914.185, 'POLYTECH'),
(6494, '08G-P4-2183-KR', 'placa de video 8gb rtx 2080 eplaca de video xc ultra gaming rgb led', 'EVGA', 919.96, 'AIR'),
(6495, 'GV-N2080AORUSX-WB-8GC', 'placa de video gigabyte geforce rtx 2080 aorus xtreme x water force 8gb gddr6 3 display port / 3 hdmi / 1 usb type-c', 'GIGABYTE', 926.983, 'POLYTECH'),
(6496, 'GV-N2080TURBO OC-8GC', 'placa de video gigabyte geforce rtx 2080 turbo 8g', 'GIGABYTE', 931.48, 'PCARTS'),
(6497, 'GV-N2080AORUS', 'placa de video geforce aorus rtx 2080 8g', 'GIGABYTE', 936.169, 'ELIT'),
(6498, '912-V372-093', 'placa de video 8gb rtx 2080 msi gaming x trio', 'MSI', 938.53, 'AIR'),
(6499, '912-V372-090', 'placa de video msi rtx 2080 gaming x trio 8gb gddr6', 'MSI', 955.59, 'HDC'),
(6500, '08G-P4-2287-KR', 'placa de video evga rtx 2080 ftw3 ultra gaming 8gb', 'EVGA', 993.48, 'N.BYTES'),
(6501, 'ROG-STRIX-RTX2080-8G-GAMING', 'placa de video asus rog-strix-rtx2080-8g-gaming', 'ASUS', 1001.32, 'PCARTS'),
(6502, '11G-P4-2281-KR', 'placa de video 11gb rtx 2080 ti eplaca de video black edition gaming', 'EVGA', 1155.84, 'AIR'),
(6503, 'GV-N208TWF3-11GC', 'placa de video gigabyte n208twf3 11gc', 'GIGABYTE', 1323.68, 'PCARTS'),
(6504, 'GV-N208TGAMING', 'placa de video geforce rtx 2080 ti gaming oc 11g', 'GIGABYTE', 1355.8, 'ELIT'),
(6505, '11G-P4-2282-KR', 'placa de video 11gb rtx 2080 ti eplaca de video xc black gaming', 'EVGA', 1367.74, 'AIR'),
(6506, '90YV0CC0-M0AA00', 'placa de video geforce rog strix rtx 2080 ti o11g gaming', 'ASUS', 1369.68, 'ELIT'),
(6507, 'GV-N208TGAMING OC-11GC', 'placa de video gigabyte 2080 ti gaming oc 11g', 'GIGABYTE', 1371.86, 'PCARTS'),
(6508, '912-V371-067', 'placa de video geforce rtx 2080 ti ventus 11g oc', 'MSI', 1378.78, 'ELIT'),
(6509, 'GV-N208TAORUS-11GC', 'placa de video 11gb rtx 2080 ti gigabyte aorus 11g', 'GIGABYTE', 1388.68, 'AIR'),
(6510, 'ZT-T20810D-10P', 'placa de video zotac geforce rtx 2080ti amp 11gb ddr6', 'ZOTAC', 1397.83, 'N.BYTES'),
(6511, '11G-P4-2382-KR', 'placa de video evga rtx 2080ti xc gaming 11gb', 'EVGA', 1398.33, 'PCARTS'),
(6512, 'GV-N208TAORUS X-11GC', 'placa de video gigabyte n208t aorus x 11gc', 'GIGABYTE', 1444.13, 'PCARTS'),
(6513, '912-V371-010', 'placa de video 11gb rtx 2080 ti msi gaming x trio', 'MSI', 1475.18, 'AIR'),
(6514, 'VCQP5000-ESPPB', 'placa de video 16gb quadro p5000 pny 256bits gddr5x', 'PNY', 1918.77, 'AIR');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `disco`
--
ALTER TABLE `disco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fuente`
--
ALTER TABLE `fuente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gabinete`
--
ALTER TABLE `gabinete`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `memoria`
--
ALTER TABLE `memoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mother`
--
ALTER TABLE `mother`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `procesador`
--
ALTER TABLE `procesador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vga`
--
ALTER TABLE `vga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `disco`
--
ALTER TABLE `disco`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4594;

--
-- AUTO_INCREMENT de la tabla `fuente`
--
ALTER TABLE `fuente`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5971;

--
-- AUTO_INCREMENT de la tabla `gabinete`
--
ALTER TABLE `gabinete`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5967;

--
-- AUTO_INCREMENT de la tabla `memoria`
--
ALTER TABLE `memoria`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5081;

--
-- AUTO_INCREMENT de la tabla `mother`
--
ALTER TABLE `mother`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5581;

--
-- AUTO_INCREMENT de la tabla `procesador`
--
ALTER TABLE `procesador`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2390;

--
-- AUTO_INCREMENT de la tabla `vga`
--
ALTER TABLE `vga`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6515;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
