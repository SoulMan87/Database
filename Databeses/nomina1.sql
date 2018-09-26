-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2018 a las 16:36:34
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nomina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `codigo` int(11) NOT NULL,
  `Documento` int(11) NOT NULL,
  `HT` int(11) NOT NULL,
  `VHO` int(11) NOT NULL,
  `HO` int(11) NOT NULL,
  `HE` int(11) NOT NULL,
  `VPHO` int(11) NOT NULL,
  `VPHE` float NOT NULL,
  `VPHEN` float NOT NULL,
  `VPHED` float NOT NULL,
  `VTP` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`codigo`, `Documento`, `HT`, `VHO`, `HO`, `HE`, `VPHO`, `VPHE`, `VPHEN`, `VPHED`, `VTP`, `fecha`) VALUES
(1, 123, 80, 7000, 80, 0, 560000, 0, 0, 0, 560000, '2018-08-30'),
(2, 123, 100, 7000, 80, 20, 560000, 217000, 70000, 147000, 707000, '2018-08-30'),
(3, 123, 93, 7000, 80, 13, 560000, 131250, 70000, 61250, 621250, '2018-08-30'),
(4, 456, 92, 8000, 80, 12, 640000, 136000, 80000, 56000, 696000, '2018-08-30'),
(5, 123, 30, 7000, 30, 0, 210000, 0, 0, 0, 210000, '2018-08-30'),
(6, 456, 85, 10000, 80, 5, 800000, 62500, 62500, 0, 800000, '2018-08-30'),
(7, 123, 78, 7000, 78, 0, 546000, 0, 0, 0, 546000, '2018-08-30'),
(8, 456, 152, 10000, 80, 72, 800000, 1220000, 100000, 1120000, 1920000, '2018-08-30'),
(9, 123, 159, 5000, 80, 79, 400000, 671250, 50000, 621250, 1021250, '2018-08-30'),
(10, 123, 90, 7000, 80, 10, 560000, 94500, 70000, 24500, 584500, '2018-08-30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Documento` (`Documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `nomina`
--
ALTER TABLE `nomina`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD CONSTRAINT `nomina_ibfk_1` FOREIGN KEY (`Documento`) REFERENCES `empleado` (`documento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
