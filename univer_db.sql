-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2019 a las 08:22:09
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
-- Base de datos: `univer_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Volcado de datos para la tabla `alumnos`
--

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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
