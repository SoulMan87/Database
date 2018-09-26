CREATE DATABASE cineUraba
*************************
CREATE TABLE clientes(
IdCliente int PRIMARY KEY AUTO_INCREMENT,
TipoDocumento varchar(20) not null,
Nombre varchar(20) not null,
FechaNacimiento date not null,
PuntosAcumulados int not null,
Estado boolean 
)
ENGINE INNODB
************************
CREATE TABLE ingreso(
IdIngreso int PRIMARY KEY AUTO_INCREMENT,
IdCliente int not null,
TipoSala varchar(20) not null,
ValSalaCine int not null,
fecha date not null,
Valor int not null,
puntos int not null,
FOREIGN KEY (IdCliente)REFERENCES clientes (Idcliente)
)
ENGINE INNODB
************************
DELIMITER $
CREATE PROCEDURE spRegistrarCliente
(
      in id int,
      in tipoD varchar(15),
      in nom varchar(50),
      in fechaN date,
      in puntosA int,
      in esta boolean
)
BEGIN
    DECLARE msg varchar(50);
    IF(EXISTS(SELECT IdCliente FROM clientes WHERE IdCliente=id)) THEN
         SET msg='Cliente ya existe';
    ELSE
        INSERT INTO clientes(IdCliente,TipoDocumento, Nombre,FechaNacimiento,PuntosAcumulados,Estado)
        VALUES(id,tipoD,nom,fechaN,puntosA,esta);
        SET msg='Cliente registrado exitosamente';
        SELECT msg as respuesta;
    END IF;
END 
