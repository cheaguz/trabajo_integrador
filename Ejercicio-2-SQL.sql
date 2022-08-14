INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
('35794651', 'ALEJANDRO', 'RAMIREZ', '3516267459', 'ROQUE FUNES 2457'),
('36514692', 'PAULA', 'ROSALES', '3514829763', 'LAPRIDA 4578'),
('29568472', 'JUAN', 'PEREZ', '3518421637', 'SIMON BOLIVAR 324');

INSERT INTO perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(1, 'LAIKA', '2013-04-09', 'H', '35794651'),
(2, 'TOTO', '2019-10-15', 'M', '36514692'),
(3, 'EREN', '2016-02-24', 'M', '29568472');

INSERT INTO historial (Fecha, ID_Perro, Descripcion, Monto) VALUES
('2016-08-15', 1, 'LIMPIEZA', 500),
('2022-02-25', 2, 'CORTE', '1800'),
('2022-07-22', 3, 'CORTE', 2400);




