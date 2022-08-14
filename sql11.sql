SELECT * FROM `perro`,`historial` JOIN dueno where perro.Fecha_nac > '2017-1-1' and historial.Fecha < '2022-1-12' and Perro.DNI_dueno = dueno.DNI ;
