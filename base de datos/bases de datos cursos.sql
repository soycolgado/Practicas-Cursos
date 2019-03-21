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


-- Volcando estructura de base de datos para heidisql_curso
CREATE DATABASE IF NOT EXISTS `heidisql_curso` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `heidisql_curso`;

-- Volcando estructura para tabla heidisql_curso.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla heidisql_curso.usuarios: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`) VALUES
	(1, 'Nestor'),
	(2, 'Flavio'),
	(6, 'Master');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


-- Volcando estructura de base de datos para paginacion_practica
CREATE DATABASE IF NOT EXISTS `paginacion_practica` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `paginacion_practica`;

-- Volcando estructura para tabla paginacion_practica.articulos
CREATE TABLE IF NOT EXISTS `articulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articulo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla paginacion_practica.articulos: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` (`id`, `articulo`) VALUES
	(1, 'Lorem ipsum dolor sit amet'),
	(2, 'onsectetur adipiscing elit. Viv'),
	(3, 'posuere lorem, nec com'),
	(4, ' lorem volutpat e'),
	(5, 'olutpat. Pellentesque non fauci'),
	(6, 'o. Suspendisse potenti. Duis felis augu'),
	(7, 'pharetra magna. Pellentesque'),
	(8, 'mpor consectetur purus, at sollicitu'),
	(9, 'gnissim dignissim. In quis variu'),
	(10, 'Lorem ipsum dolor sit amet'),
	(11, 'onsectetur adipiscing elit. Viv'),
	(12, 'l placerat purus. Nullam v'),
	(13, 'l placerat purus. Nullam v'),
	(14, 'l placerat purus. Nullam v'),
	(15, 'l placerat purus. Nullam v'),
	(16, 'l placerat purus. Nullam v'),
	(17, 'l placerat purus. Nullam v'),
	(18, 'l placerat purus. Nullam v'),
	(19, 'gnissim dignissim. In quis variu'),
	(20, 'gnissim dignissim. In quis variu');
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;


-- Volcando estructura de base de datos para prueba_consola
CREATE DATABASE IF NOT EXISTS `prueba_consola` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `prueba_consola`;

-- Volcando estructura para tabla prueba_consola.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba_consola.usuarios: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES
	(1, 'Nestor', 'Nestor@gmail.com'),
	(3, 'Facha', 'facha@gmail.com'),
	(4, 'elMejor', 'elmejor@yo.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


-- Volcando estructura de base de datos para prueba_datos
CREATE DATABASE IF NOT EXISTS `prueba_datos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `prueba_datos`;

-- Volcando estructura para tabla prueba_datos.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba_datos.usuarios: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`ID`, `nombre`) VALUES
	(1, 'Nestor'),
	(2, 'Flavio'),
	(3, 'Master'),
	(4, 'Mostro'),
	(5, 'Genio'),
	(6, 'Fiera'),
	(7, 'Capo'),
	(8, 'Flavio'),
	(9, 'Master'),
	(10, 'Master'),
	(11, 'Master'),
	(12, 'Pedro'),
	(13, 'FlaviusPro2019'),
	(14, 'NestorProYa'),
	(15, 'Nestor2077');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


-- Volcando estructura de base de datos para prueba_datos_nuevo
CREATE DATABASE IF NOT EXISTS `prueba_datos_nuevo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prueba_datos_nuevo`;

-- Volcando estructura para tabla prueba_datos_nuevo.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(150) NOT NULL DEFAULT '0',
  `edad` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla prueba_datos_nuevo.usuarios: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`ID`, `nombre`, `edad`) VALUES
	(1, 'nestor', 32),
	(2, 'Flavio', 30),
	(3, 'Canela', 38),
	(4, 'Miriam', 23),
	(5, 'Facha', 33),
	(6, 'Nestor2077', 50);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
