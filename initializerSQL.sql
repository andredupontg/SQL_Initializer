
-- Creacion de la Base de Datos
CREATE DATABASE AgendaClientesDB;
-- Especificar la Base de Datos a usar
USE AgendaClientesDB;
-- Crear tabla
CREATE TABLE Banco(
	Id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(15) NOT NULL
);
CREATE TABLE Clientes(
	Id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Nombre VARCHAR(10) NOT NULL,
	ApellidoPaterno VARCHAR(15) NOT NULL,
	ApellidoMaterno VARCHAR(15) NOT NULL,
	Telefono INT NOT NULL,
	IdBanco INT NOT NULL,
-- Establecemos relaciones
	CONSTRAINT FK_Clientes_Banco FOREIGN KEY (IdBanco) REFERENCES Banco(Id)
);
-- Ver una tabla
SELECT * FROM Banco;
SELECT * FROM Clientes;
-- Meter valores
INSERT INTO Banco VALUES('Interbank');
INSERT INTO Banco VALUES('BBVA');
INSERT INTO Banco VALUES('BCP');
INSERT INTO Clientes VALUES('Sergio', 'Vergara', 'Telechea', 998123447, 3);
INSERT INTO Clientes VALUES('Elsa', 'Ca', 'Punta', 979636757, 1);
 