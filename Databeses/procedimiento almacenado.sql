procedimiento almacenado

DELIMITER $
CREATE PROCEDURE spconsultar(id int)
BEGIN
     SELECT*
     from empleado
     where Documento=id;
end

call spconsultar (123);

*****************************************
DELIMITER $
CREATE PROCEDURE spMaxcodigo
BEGIN
     SELECT MAX(codigo) as codigo
from nomina;
END

call spMaxcodigo

*****************************************
optener codigo maximo de la tabla nomina
DELIMITER $
CREATE PROCEDURE spMaxcodigo()
 begin
     DECLARE maxi int;
     SET maxi = (SELECT MAX(codigo) FROM nomina);
     IF (maxi IS null) THEN
       SET maxi=1;
     ELSE  
       SET maxi=maxi+1;
     end IF;
     SELECT maxi;
 end

*****************************************
eliminar

drop PROCEDURE spMaxcodigo

*****************************************
consulta nomina

DELIMITER $
CREATE PROCEDURE spConsultarnomina()
BEGIN
     SELECT*
     from nomina;
     
end

*****************************************
consultar empleados

DELIMITER $
CREATE PROCEDURE spconsultarempleado()
BEGIN
    SELECT*
    from empleado;
END    


*****************************************
registar empleado

DELIMITER $
CREATE PROCEDURE spregistrarempleado
(documento int, tipo varchar(15), nombre varchar(50), apellido varchar(50),genero varchar(10),
 nacimiento date,email varchar(50),estado bit)
 BEGIN
      DECLARE msg varchar(50);
      IF (EXISTS (SELECT Documento FROM empleado WHERE Documento=documento)) THEN
        SET msg ='empleado ya existe';
      ELSE
        INSERT INTO empleado VALUES (documento, tipo,nombre, apellido,genero,nacimiento,email,estado);
          SET msg= 'empleado registrado';
        end IF;
        SELECT msg as Mensaje;
END  

call spregistrarempleado (8010,'cc','andres','rios','hombre','1999/10/05','un','true')
*****************************************
--opcionales
DELIMITER $
Create PROCEDURE spbuscarEmpleado
(IN doc int,
IN nom varchar (50))
BEGIN
    DECLARE msg varchar(50);
    IF(doc is null AND nom is not null) THEN
        SELECT* FROM empleado WHERE nombre like '%nom%';
    ELSE
       IF (doc is NOT null AND nom is null)THEN
           SELECT* FROM empleado WHERE documento=doc;
        ELSE
           SELECT*from empleado;
       end if; 
      end if;
      
END       
*******************************************
--opcionales
DELIMITER $
Create PROCEDURE spbuscarEmpleado
(IN doc int,
IN nom varchar (50))
BEGIN
    DECLARE msg varchar(50);
    IF(doc =-1 AND nom is not null) THEN
        SELECT* FROM empleado WHERE nombre like '%nom%';
    ELSE
       IF (doc <>-1  AND nom is null)THEN
           SELECT* FROM empleado WHERE documento=doc;
        ELSE
           SELECT*from empleado;
       end if; 
      end if;
      
END  
**********************************************
--ultimate
DELIMITER $
Create PROCEDURE spbuscarEmpleado
(IN doc int,
IN nom varchar (50))
BEGIN
    DECLARE msg varchar(50);
    IF(doc is null AND nom is not null) THEN
        SELECT* FROM empleado WHERE Nombres=nom;
    ELSE
       IF (doc is NOT null AND nom is null)THEN
           SELECT* FROM empleado WHERE documento=doc;
        ELSE
           SELECT*from empleado;
       end if; 
      end if;
      
END  

***********************************
DELIMITER $
CREATE PROCEDURE spRegistrarEmpleado
(
      in doc int,
      in tipo varchar(15),
      in nom varchar(50),
      in ape varchar(50),
      in gen varchar(10),
      in nac date,
      in correo varchar(50),
      in esta boolean
)
BEGIN
    DECLARE msg varchar(50);
    IF(EXISTS(SELECT documento FROM empleado WHERE documento=doc)) THEN
         SET msg='Empleado ya existe';
    ELSE
        INSERT INTO empleado(Documento,tipoDocumento, Nombres,Apellidos,Genero,Nacimiento, Email, Estado)
        VALUES(doc,tipo,nom, ape, gen, nac, correo,esta);
        SET msg='Empleado registrado exitosamente';
        SELECT msg as respuesta;
    END IF;
END   
******************************************************
--Tabla pago
create table pago 
(
    codigo int AUTO_INCREMENT PRIMARY KEY,
    Documento int not null,
    fecha date not null,
    HT int not null,
    FOREIGN key (Documento) REFERENCES empleado (Documento)
)
ENGINE INNODB

INSERT into  pago (Documento, fecha, HT) VALUES(123,'2018/12/10',50)
**********************************************************
--buscar pago
DELIMITER $
CREATE PROCEDURE spBuscarPago
(in doc int)
BEGIN
     SELECT*
     from pago
     WHERE Documento=doc;
END
**********************************************************
