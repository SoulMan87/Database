-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: alquilerpeliculas
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vista_usuario`
--

DROP TABLE IF EXISTS `vista_usuario`;
/*!50001 DROP VIEW IF EXISTS `vista_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_usuario` AS SELECT 
 1 AS `Número`,
 1 AS `Número Tipo De Usuario`,
 1 AS `Apellido`,
 1 AS `Rol`,
 1 AS `Estado Usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_detallealquiler`
--

DROP TABLE IF EXISTS `vista_detallealquiler`;
/*!50001 DROP VIEW IF EXISTS `vista_detallealquiler`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_detallealquiler` AS SELECT 
 1 AS `Número Detalle Alquiler`,
 1 AS `Número Alquiler`,
 1 AS `Número Cata Pelicula`,
 1 AS `Cantidad de Pelis`,
 1 AS `Descripción Peli`,
 1 AS `Fecha de Devolución`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_datos_usuarios`
--

DROP TABLE IF EXISTS `vista_datos_usuarios`;
/*!50001 DROP VIEW IF EXISTS `vista_datos_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_datos_usuarios` AS SELECT 
 1 AS `Numero Datos Usuarios`,
 1 AS `Numero Usuario`,
 1 AS `Tipo Documento`,
 1 AS `Genero`,
 1 AS `Telefono`,
 1 AS `Celular`,
 1 AS `Direccion`,
 1 AS `Profeccion`,
 1 AS `Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viasta_alquiler`
--

DROP TABLE IF EXISTS `viasta_alquiler`;
/*!50001 DROP VIEW IF EXISTS `viasta_alquiler`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viasta_alquiler` AS SELECT 
 1 AS `Numero alquiler`,
 1 AS `Numero Usuario`,
 1 AS `Fecha Alquiler`,
 1 AS `Fecha de Corte`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_genero_pelicula`
--

DROP TABLE IF EXISTS `vista_genero_pelicula`;
/*!50001 DROP VIEW IF EXISTS `vista_genero_pelicula`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_genero_pelicula` AS SELECT 
 1 AS `Número`,
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_catalogo_pelicula`
--

DROP TABLE IF EXISTS `vista_catalogo_pelicula`;
/*!50001 DROP VIEW IF EXISTS `vista_catalogo_pelicula`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_catalogo_pelicula` AS SELECT 
 1 AS `Numero Cata Pelis`,
 1 AS `Numero Usuario`,
 1 AS `Numero Tipo Peli`,
 1 AS `Numero Productora`,
 1 AS `Numero Genero`,
 1 AS `Año de Salida`,
 1 AS `Categoria`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_usuario`
--

/*!50001 DROP VIEW IF EXISTS `vista_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_usuario` AS select `usuarios`.`idUsuarios` AS `Número`,`usuarios`.`idTipoUser` AS `Número Tipo De Usuario`,`usuarios`.`ApeUser` AS `Apellido`,`usuarios`.`NickName` AS `Rol`,`usuarios`.`EstaUser` AS `Estado Usuario` from `usuarios` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_detallealquiler`
--

/*!50001 DROP VIEW IF EXISTS `vista_detallealquiler`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_detallealquiler` AS select `detallealquiler`.`idDetalleAlquiler` AS `Número Detalle Alquiler`,`detallealquiler`.`idAlquiler` AS `Número Alquiler`,`detallealquiler`.`idCatalogoPelicula` AS `Número Cata Pelicula`,`detallealquiler`.`Cantidad` AS `Cantidad de Pelis`,`detallealquiler`.`Descripcion` AS `Descripción Peli`,`detallealquiler`.`FechaDevolucion` AS `Fecha de Devolución` from `detallealquiler` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_datos_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `vista_datos_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_datos_usuarios` AS select `datosusuarios`.`idDatosUsuarios` AS `Numero Datos Usuarios`,`datosusuarios`.`idUsuarios` AS `Numero Usuario`,`datosusuarios`.`idTipoDocumento` AS `Tipo Documento`,`datosusuarios`.`Genero` AS `Genero`,`datosusuarios`.`Telefono` AS `Telefono`,`datosusuarios`.`Celular` AS `Celular`,`datosusuarios`.`Direccion` AS `Direccion`,`datosusuarios`.`Profesion` AS `Profeccion`,`datosusuarios`.`Correo` AS `Email` from `datosusuarios` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viasta_alquiler`
--

/*!50001 DROP VIEW IF EXISTS `viasta_alquiler`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viasta_alquiler` AS select `alquiler`.`idAlquiler` AS `Numero alquiler`,`alquiler`.`idUsuarios` AS `Numero Usuario`,`alquiler`.`FechaAlquiler` AS `Fecha Alquiler`,`alquiler`.`FechaCorte` AS `Fecha de Corte`,`alquiler`.`EstadoAlquiler` AS `Estado` from `alquiler` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_genero_pelicula`
--

/*!50001 DROP VIEW IF EXISTS `vista_genero_pelicula`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_genero_pelicula` AS select `generopelicula`.`idGeneroPelicula` AS `Número`,`generopelicula`.`NombreGenero` AS `Nombre` from `generopelicula` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_catalogo_pelicula`
--

/*!50001 DROP VIEW IF EXISTS `vista_catalogo_pelicula`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_catalogo_pelicula` AS select `catalogopelicula`.`idCatalogoPelicula` AS `Numero Cata Pelis`,`catalogopelicula`.`idUsuarios` AS `Numero Usuario`,`catalogopelicula`.`idTipoPelicula` AS `Numero Tipo Peli`,`catalogopelicula`.`idProductoras` AS `Numero Productora`,`catalogopelicula`.`idGeneroPelicula` AS `Numero Genero`,`catalogopelicula`.`YearReleased` AS `Año de Salida`,`catalogopelicula`.`CategoriaPelicula` AS `Categoria`,`catalogopelicula`.`EstadoPelicula` AS `Estado` from `catalogopelicula` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'alquilerpeliculas'
--
/*!50003 DROP PROCEDURE IF EXISTS `crudAlquiler` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crudAlquiler`(
in v_idAlquiler int,
in v_idUsuarios int, 
in v_FechaAlquiler timestamp,
in v_FechaCorte datetime,
in v_EstadoAlquiler varchar(45),
in button VARCHAR(45)
)
BEGIN CASE
-- Caso Guardar
WHEN button = 'Guardar' THEN
INSERT INTO
    Alquiler
VALUES(
 v_idAlquiler ,
 v_idUsuarios, 
 v_FechaAlquiler ,
 v_FechaCorte ,
 v_EstadoAlquiler
);
SELECT *,
 MAX(idAlquiler)
 FROM
  Alquiler;
-- Caso modificar
WHEN button = 'Modificar' THEN

UPDATE Alquiler
SET
 idAlquiler= v_idAlquiler ,
 idUsuarios = v_idUsuarios, 
 FechaAlquiler = v_FechaAlquiler ,
 FechaCorte = v_FechaCorte ,
 EstadoAlquiler = v_EstadoAlquiler

WHERE idAlquiler = v_idAlquiler;

SELECT
    *
FROM
    Alquiler
WHERE
    idAlquiler = v_idAlquiler;

-- Caso Eliminar
WHEN button = 'Eliminar' THEN
set @estado = '0';
UPDATE Alquiler 
set EstadoAlquiler = @estado
WHERE idAlquiler = v_idAlquiler;

SELECT * FROM Alquiler WHERE idAlquiler = v_idAlquiler;

END CASE
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crudCatalogoPelicula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crudCatalogoPelicula`(
in v_idCatalogoPelicula int,
in v_idUsuarios int, 
in v_idTipoPelicula int,
in v_idProductora int,
in v_idGeneroPelicula int,
in v_YearReleased timestamp, 
in v_IdiomaPelicula varchar(45),
in v_CategoriaPelicula varchar(45),
in v_EstadoPelicula varchar(45),
in button VARCHAR(45)
)
BEGIN CASE
-- Caso Guardar
WHEN button = 'Guardar' THEN
INSERT INTO
    CatalogoPelicula
VALUES(
v_idCatalogoPelicula,
v_idUsuarios,
v_idTipoPelicula,
v_idProductora,
v_idGeneroPelicula,
v_YearReleased,
v_IdiomaPelicula,
v_CategoriaPelicula,
v_EstadoPelicula
);
SELECT *,
 MAX(idCatalogoPelicula)
 FROM
  CatalogoPelicula;
-- Caso modificar
WHEN button = 'Modificar' THEN

UPDATE CatalogoPelicula
SET
idCatalogoPelicula = v_idCatalogoPelicula,
idUsuarios = v_idUsuarios,
idTipoPelicula = v_idTipoPelicula,
idProductora = v_idProductora,
idGeneroPelicula = v_idGeneroPelicula,
YearReleased = v_YearReleased,
IdiomaPelicula = v_IdiomaPelicula,
CategoriaPelicula = v_CategoriaPelicula,
EstadoPelicula = v_EstadoPelicula

WHERE idCatalogoPelicula = v_idCatalogoPelicula;

SELECT
    *
FROM
    CatalogoPelicula
WHERE
    idCatalogoPelicula = v_idCatalogoPelicula;

-- Caso Eliminar
WHEN button = 'Eliminar' THEN
set @estado = '0';
UPDATE CatalogoPelicula 
set EstadoPelicula = @estado
WHERE idCatalogoPelicula = v_idCatalogoPelicula;

SELECT * FROM CatalogoPelicula WHERE idCatalogoPelicula = v_idCatalogoPelicula;

END CASE
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crudDatosUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crudDatosUsuarios`(
in v_idDatosUsuarios int,
in v_idUsuarios int, 
in v_idTipoDocumento int,
in v_Genero varchar(1),
in v_Telefono varchar(45),
in v_Celular varchar(45),
in v_Direccion varchar(255),
in v_Profesion varchar(255),
in v_Correo varchar(255),
in button VARCHAR(45)
)
BEGIN CASE
-- Caso Guardar
WHEN button = 'Guardar' THEN
INSERT INTO
    DatosUsuarios
VALUES(
v_idDatosUsuarios,
v_idUsuarios,
v_idTipoDocumento,
v_Genero,
v_Telefono,
v_Celular,
v_Direccion,
v_Profesion,
v_Correo
);
SELECT *,
 MAX(idDatosUsuarios)
 FROM
  DatosUsuarios;
-- Caso modificar
WHEN button = 'Modificar' THEN

UPDATE DatosUsuarios
SET
idDatosUsuarios = v_idDatosUsuarios,
idUsuarios = v_idUsuarios,
idTipoDocumento = v_idTipoDocumento,
Genero = v_Genero,
Telefono = v_Telefono,
Celular = v_Celular,
Direccion = v_Direccion,
Profesion = v_Profesion,
Correo = v_Correo

WHERE idDatosUsuarios = v_idDatosUsuarios;

SELECT
    *
FROM
    DatosUsuarios
WHERE
    idDatosUsuarios = v_idDatosUsuarios;

-- Caso Eliminar
WHEN button = 'Eliminar' THEN

DELETE
FROM
 DatosUsuarios 

WHERE idDatosUsuarios = v_idDatosUsuarios;

SELECT * FROM DatosUsuarios WHERE idDatosUsuarios = v_idDatosUsuarios;

END CASE
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crudDetalleAlquiler` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crudDetalleAlquiler`(
in v_idDetalleAlquiler int,
in v_idAlquiler int, 
in v_idCatalogoPelicula int,
in v_idCastigo int,
in v_Cantidad int,
in v_Descripcion varchar(45),
in v_FechaDevolucion timestamp,
in v_EstadoAlquiler varchar(45),
in button VARCHAR(45)
)
BEGIN CASE
-- Caso Guardar
WHEN button = 'Guardar' THEN
INSERT INTO
    DetalleAlquiler
VALUES(
v_idCatalogoPelicula,
v_idAlquiler,
v_idCatalogoPelicula,
v_idCastigo,
v_Cantidad,
v_Descripcion,
v_FechaDevolucion,
v_EstadoAlquiler
);
SELECT *,
 MAX(idDetalleAlquiler)
 FROM
  DetalleAlquiler;
-- Caso modificar
WHEN button = 'Modificar' THEN

UPDATE DetalleAlquiler
SET
idCatalogoPelicula = v_idCatalogoPelicula,
idAlquiler = v_idAlquiler,
idCatalogoPelicula = v_idCatalogoPelicula,
idCastigo = v_idCastigo,
Cantidad = v_Cantidad,
Descripcion = v_Descripcion,
FechaDevolucion = v_FechaDevolucion,
EstadoAlquiler = v_EstadoAlquiler

WHERE idDetalleAlquiler = v_idDetalleAlquiler;

SELECT
    *
FROM
    DetalleAlquiler
WHERE
    idDetalleAlquiler = v_idDetalleAlquiler;

-- Caso Eliminar
WHEN button = 'Eliminar' THEN
set @estado = '0';
UPDATE DetalleAlquiler 
set EstadoPelicula = @estado
WHERE idDetalleAlquiler = v_idDetalleAlquiler;

SELECT * FROM CatalogoPelicula WHERE idDetalleAlquiler = v_idDetalleAlquiler;

END CASE
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crudGeneroPelicula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crudGeneroPelicula`(
    in v_idGeneroPelicula int,
    in v_NombreGenero varchar(45),
    in button VARCHAR(45)
)
BEGIN CASE
    -- Caso guardar
    WHEN button = 'Guardar' THEN
    INSERT INTO
        GeneroPelicula
    values
        (
            v_idGeneroPelicula,
            v_NombreGenero
        );

SELECT
    *,
    MAX(idGeneroPelicula)
FROM
    GeneroPelicula;

-- Caso modificar
WHEN button = 'modificar' THEN
UPDATE
    GeneroPelicula
SET
    idGeneroPelicula = v_idGeneroPelicula
WHERE
    idGeneroPelicula = v_idGeneroPelicula;

SELECT
    *
FROM
    GeneroPelicula
WHERE
    idGeneroPelicula = v_idGeneroPelicula;

-- Caso Eliminar
WHEN button = 'eliminar' THEN

DELETE FROM
    GeneroPelicula
WHERE
        idGeneroPelicula = v_idGeneroPelicula;

SELECT
    *
FROM
    GeneroPelicula;
END CASE
;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crudProductoras` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crudProductoras`(
    in v_idProductoras int,
    in v_NombreProductora varchar(45),
    in button VARCHAR(45)
)
BEGIN CASE
    -- Caso guardar
    WHEN button = 'Guardar' THEN
    INSERT INTO
        Productoras
    values
        (
            v_idProductoras,
            v_NombreProductora
        );

SELECT
    *,
    MAX(idProductoras)
FROM
    Productoras;

-- Caso modificar
WHEN button = 'modificar' THEN
UPDATE
    Productoras
SET
    idProductoras = v_idProductoras
WHERE
    idProductoras = v_idProductoras;

SELECT
    *
FROM
    Productoras
WHERE
    idProductoras = v_idProductoras;

-- Caso Eliminar
WHEN button = 'eliminar' THEN

DELETE FROM
    Productoras
WHERE
       idProductoras = v_idProductoras;

SELECT
    *
FROM
    Productoras;
END CASE
;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crudUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crudUsuario`(
in v_idUsuarios int,
in v_idTipoUser int, 
in v_NombreUser varchar(45),
in v_ApeUser varchar(45),
in v_NickName varchar (45), 
in v_PassUser varchar(45),
in v_EstaUser varchar(45),
in button VARCHAR(45)
)
BEGIN CASE
-- Caso Guardar
WHEN button = 'Guardar' THEN
INSERT INTO
    Usuarios
VALUES(
v_idUsuarios,
v_idTipoUser,
v_NombreUser,
v_NickName,
v_ApeUser,
v_PassUser,
v_EstaUser
);
SELECT *,
 MAX(idUsuarios)
 FROM
  Usuarios;
-- Caso modificar
WHEN button = 'Modificar' THEN

UPDATE Usuarios
SET
    NombreUser = v_NombreUser,
    ApeUser = v_ApeUser,
    NickName = v_NickName,
    PassUser = v_PassUser,
    EstaUser = v_EstaUser

WHERE idUsuarios = v_idUsuarios;

SELECT
    *
FROM
    Usuarios
WHERE
    idUsuarios = v_idUsuarios;

-- Caso Eliminar
WHEN button = 'Eliminar' THEN
set @estado = '0';
UPDATE Usuario 
set EstaUser = @estado
WHERE idUsuarios = v_idUsuarios;

SELECT * FROM Usuarios WHERE idUsuarios = v_idUsuarios;

END CASE
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-02 19:06:18
