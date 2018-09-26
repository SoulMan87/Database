CREATE DATABASE comercializadora
*****************************************
CREATE table categoria(
    idCategoria int AUTO_INCREMENT Primary Key,
    nombre varchar(50) not null,
    descipcion varchar (50) not null
)
ENGINE INNODB
******************************************
CREATE table cargos(
    idCargo int AUTO_INCREMENT Primary Key,
    nombre varchar(50) not null
)
ENGINE INNODB
******************************************
CREATE table TipoIdentificacion(
    idTipo int AUTO_INCREMENT Primary Key,
    nombre varchar(50) not null,
    descipcion varchar (50) not null
)
ENGINE INNODB