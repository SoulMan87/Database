CREATE DATABASE prueba
****************************
CREATE TABLE Empleado(
Documento int PRIMARY KEY,
TipoDocumento varchar(20) not null,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Email varchar (50)not null,
Nacimiento date not null,
Genero varchar(20)not null,
edad int not null   
)
ENGINE INNODB