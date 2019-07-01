-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.38-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para univer_db
CREATE DATABASE IF NOT EXISTS `univer_db` /*!40100 DEFAULT CHARACTER SET armscii8 */;
USE `univer_db`;

-- Volcando estructura para tabla univer_db.alumnos
CREATE TABLE IF NOT EXISTS `alumnos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=armscii8;

-- Volcando datos para la tabla univer_db.alumnos: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` (`codigo`, `nombre`, `telefono`, `direccion`) VALUES
	(1, 'FERNANDO HERRERA SORIANO', '99498877', 'Colonia el porvenir, cerca del cerro Juana Mendoza'),
	(2, 'MELISSA FLORES HERRERA', '98883322', 'Provincia de aguas calientes, frente al mercadito los tres hermanos.'),
	(3, 'HERNANDO RENE VALLEJO', '33223323', 'Departamento Ascapotzalco, por la estacion del metro'),
	(4, 'MARIA PEREZ SOLANO', '33229988', 'Barranquilla, contiguo a la universidad.'),
	(5, 'ROSA JIMENEZ PEREIRA', '33221243', 'No tiene direccion'),
	(6, 'AIN', '1111111111', 'No tiene direccion'),
	(7, 'CRISTIAN JOEL PINEDA', '22345445', 'Col. Loma del Guijarro'),
	(8, 'JOSE ANGEL MORAN PEREZ', '65764334', 'No se donde vive'),
	(9, 'MARVIN FAJARDO', '44336749', 'Barrio 21 de Octubre'),
	(10, 'ACTUALIZADO', '88769945', 'No se donde vive'),
	(11, 'CREADO POR MI SOFT', '1231231', 'CREADO'),
	(12, 'NESTOR', '123123', 'NESTOR'),
	(13, 'LALALA NUEVO', 'LALALA', 'LALALA');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
