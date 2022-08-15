-- A. Crear Base de Datos y Tablas según Modelo Relacional.
create database Veterinaria;
use Veterinaria;

CREATE TABLE Dueno (
    DNI INT not null,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Telefono VARCHAR(30),
    Direccion VARCHAR(100),
    PRIMARY KEY (DNI)
);

-- Ejercicio 1: Realice la consulta correspondiente para crear la tabla Perro

CREATE TABLE Perro (
    ID_Perro INT not null,
    Nombre VARCHAR(50),
    Fecha_nac DATE,
    Sexo CHAR(1),
    DNI_Dueno INT,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno)
        REFERENCES Dueno (DNI)
);

CREATE TABLE Historial (
    ID_Historial INT NOT NULL auto_increment,
    Fecha DATE,
    ID_Perro INT,
    Descripcion VARCHAR(200),
    Monto FLOAT,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (ID_Perro)
        REFERENCES Perro (ID_Perro)
);

-- Ejercicio 2: Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal

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

-- EJERCICIO 3: Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.

-- Consulta para averiguar perros que no han sido atendidos hace mas de 5 años
SELECT 
    perro.ID_Perro, nombre, Fecha AS 'ultima visita'
FROM
    perro
        JOIN
    historial ON perro.ID_Perro = historial.ID_Perro
WHERE
    Fecha < DATE_SUB(CURDATE(), INTERVAL 5 YEAR);

-- Sentencia para eliminar perro
DELETE FROM perro 
WHERE
    ID_Perro = 1
