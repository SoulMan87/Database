-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2018 a las 17:42:42
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

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `spBuscarPago` (IN `doc` INT)  BEGIN
     SELECT*
     from pago
     WHERE Documento=doc;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spconsultar` (`id` INT)  BEGIN
    SELECT*
    FROM empleado
    WHERE Documento= id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spConsultarEmpleado` (`id` INT)  BEGIN
     SELECT*
     from empleado
     where Documento=id;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spMaxcodigo` ()  begin
     DECLARE maxi int;
     SET maxi = (SELECT MAX(codigo) FROM nomina);
     IF (maxi IS null) THEN
       SET maxi=1;
     ELSE  
       SET maxi=maxi+1;
     end IF;
     SELECT maxi;
 END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spRegistrarEmpleado` (IN `doc` INT, IN `tipo` VARCHAR(15), IN `nom` VARCHAR(50), IN `ape` VARCHAR(50), IN `gen` VARCHAR(10), IN `nac` DATE, IN `correo` VARCHAR(50), IN `esta` BOOLEAN)  BEGIN
    DECLARE msg varchar(50);
    IF(EXISTS(SELECT documento FROM empleado WHERE documento=doc)) THEN
         SET msg='Empleado ya existe';
    ELSE
        INSERT INTO empleado(Documento,tipoDocumento, Nombres,Apellido,Genero,Nacimiento, Email, Estado)
        VALUES(doc,tipo,nom, ape, gen, nac, correo,esta);
        SET msg='Empleado registrado exitosamente';
        SELECT msg as respuesta;
    END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Documento` int(11) NOT NULL,
  `TipoDocumento` varchar(15) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `nacimiento` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Documento`, `TipoDocumento`, `Nombres`, `Apellido`, `genero`, `nacimiento`, `email`, `estado`) VALUES
(123, 'Cédula', 'jaime', 'jaramillo', 'Mujer', '1980-09-11', 'jaime@gmai.com', b'1'),
(147, 'TI', 'cristian', 'david', 'Hombre', '2000-04-04', 'bigmicris@gmal.com', b'1'),
(159, 'Cédula', 'Marcela', 'Montoya', 'Mujer', '1987-08-09', 'elianaossa@misena.edu.co', b'1'),
(357, 'Cédula', 'jasinto', 'fonceca', 'Selecione:', '1999-09-15', 'jo@gmail.com', b'1'),
(456, 'Cédula', 'Nathalia', 'acosta', 'Mujer', '1983-12-31', 'nathacosta@gmail.co', b'1'),
(789, 'Cédula', 'jonathan', 'hinestroza', 'Hombre', '1987-11-11', 'jonatha.hinestroza@gmail.com', b'1');

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
(1, 123, 87, 10000, 80, 7, 800000, 87500, 87500, 0, 800000, '2018-09-02'),
(2, 456, 87, 10000, 80, 7, 800000, 87500, 87500, 0, 800000, '2018-09-02'),
(3, 159, 90, 10000, 80, 10, 800000, 135000, 100000, 35000, 835000, '2018-09-02'),
(4, 159, 90, 10000, 80, 10, 800000, 135000, 100000, 35000, 835000, '2018-09-02'),
(5, 123, 120, 10000, 80, 40, 800000, 660000, 100000, 560000, 1360000, '2018-09-02'),
(6, 147, 70, 8000, 70, 0, 560000, 0, 0, 0, 560000, '2018-09-02'),
(7, 789, 150, 8000, 80, 70, 640000, 948000, 80000, 868000, 1508000, '2018-09-02'),
(8, 123, 120, 10000, 80, 40, 800000, 660000, 100000, 560000, 1360000, '2018-09-02'),
(9, 123, 156, 10000, 80, 76, 800000, 1290000, 100000, 1190000, 1990000, '2018-09-05'),
(10, 357, 456, 10000, 80, 376, 800000, 6540000, 100000, 6440000, 7240000, '2018-09-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `codigo` int(11) NOT NULL,
  `Documento` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `HT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`codigo`, `Documento`, `fecha`, `HT`) VALUES
(4, 123, '2018-12-10', 50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Documento`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `Documento` (`Documento`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
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
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD CONSTRAINT `nomina_ibfk_1` FOREIGN KEY (`Documento`) REFERENCES `empleado` (`Documento`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`Documento`) REFERENCES `empleado` (`Documento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
