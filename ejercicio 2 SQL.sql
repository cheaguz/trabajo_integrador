USE Vete;

INSERT INTO dueno(DNI,Nombre,Apellido,Telefono,Direccion)
VALUES(33895471,'Angelo','Leo','3512574599','Tissera 7744');

 INSERT INTO perro(ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno) 
 VALUES(1,'Otto','2014-12-15','M',33895471);

 COMMIT;