CREATE DATABASE CoopiUraba
***************************
CREATE TABLE Clientes
(
IdCliente int PRIMARY KEY AUTO_INCREMENT,
TipoCliente varchar(50) not null,
Nombre varchar(50) not null,
Telefono int not null,
Estado boolean not null
)
ENGINE INNODB
***************************
CREATE TABLE cuenta
(
IdCuenta int PRIMARY KEY AUTO_INCREMENT,
TipoCuenta varchar (50)	not null,
saldo int not null,
fechaApertura date not null,
estado varchar(50) not null,
fechaEstado boolean not null
)
ENGINE INNODB
**************************
CREATE TABLE transaccion
(
IdTransaccion int PRIMARY KEY AUTO_INCREMENT,
IdCuenta int not null,
TipoTransaccion varchar(50) not null,
fecha date not null,
valor int not null,
FOREIGN KEY (IdCuenta)REFERENCES cuenta(IdCuenta)
)
ENGINE INNODB
*************************
DELIMITER $
CREATE PROCEDURE spConsultarCuenta (id int)
BEGIN
    SELECT*
    FROM cuenta
    WHERE IdCuenta= id;
END  
***************************  
DELIMITER $
CREATE PROCEDURE spRegistrarCliente
(
      in id int,
      in tipo varchar(15),
      in nom varchar(50),
      in tel int,
      in esta boolean
)
BEGIN
    DECLARE msg varchar(50);
    IF(EXISTS(SELECT IdCliente FROM Clientes WHERE IdCliente=id)) THEN
         SET msg='Cliente ya existe';
    ELSE
        INSERT INTO Clientes(IdCliente,TipoCliente, Nombre,Telefono,Estado)
        VALUES(id,tipo,nom, tel,esta);
        SET msg='Cliente registrado exitosamente';
        SELECT msg as respuesta;
    END IF;
END 
call spRegistrarCliente (112,'Persona natural','Jasinto',1452145,'true')
*****************************
DELIMITER $
CREATE PROCEDURE spConsultarCliente (id int)
BEGIN
    SELECT*
    FROM Cliente
    WHERE IdCliente= id;
END  