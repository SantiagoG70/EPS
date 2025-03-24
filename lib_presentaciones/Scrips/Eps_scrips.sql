CREATE DATABASE EPS
GO

USE EPS
GO

CREATE TABLE Profesiones(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Nombre] NVARCHAR(50) NOT NULL,
);

CREATE TABLE Medicos(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Nombre] NVARCHAR(50) NOT NULL,
	[Apellido] NVARCHAR(50) NOT NULL
);

CREATE TABLE ProfesionesMedicos(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Profesion] INT NOT NULL REFERENCES [Profesiones] ([Id]),
	[Medico] INT NOT NULL REFERENCES [Medicos] ([Id]),
);

INSERT INTO [Profesiones] ([Nombre])
VALUES ('Cardiologo')
INSERT INTO [Profesiones] ([Nombre])
VALUES ('Dermatologo')
INSERT INTO [Profesiones] ([Nombre])
VALUES ('Ginecologo')
INSERT INTO [Profesiones] ([Nombre])
VALUES ('Neurologo')

INSERT INTO [Medicos] ([Nombre], [Apellido])
VALUES ('Carlos', 'Alberto')
INSERT INTO [Medicos] ([Nombre], [Apellido])
VALUES ('Mario', 'Casillas')
INSERT INTO [Medicos] ([Nombre], [Apellido])
VALUES ('Daniela', 'Gimenez')
INSERT INTO [Medicos] ([Nombre], [Apellido])
VALUES ('Sergio', 'Ramos')
INSERT INTO [Medicos] ([Nombre], [Apellido])
VALUES ('Cristian', 'Torres')

INSERT INTO [ProfesionesMedicos] ([Medico], [Profesion])
VALUES(1,1)
INSERT INTO [ProfesionesMedicos] ([Medico], [Profesion])
VALUES(2,2)
INSERT INTO [ProfesionesMedicos] ([Medico], [Profesion])
VALUES(3,3)
INSERT INTO [ProfesionesMedicos] ([Medico], [Profesion])
VALUES(4,3)
INSERT INTO [ProfesionesMedicos] ([Medico], [Profesion])
VALUES(5,4)

CREATE TABLE Regimenes(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Nombre] NVARCHAR(50) NOT NULL,
);

INSERT INTO [Regimenes] ([Nombre])
VALUES('Subsidiado')
INSERT INTO [Regimenes] ([Nombre])
VALUES('Constribuidor')

CREATE TABLE Pacientes(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[CC] INT NOT NULL UNIQUE,
	[Nombre] NVARCHAR(50) NOT NULL,
	[Apellido] NVARCHAR(50) NOT NULL,
	[Telefono] NVARCHAR(50) NOT NULL,
	[Correo] NVARCHAR(50) NOT NULL,
	[Genero] NVARCHAR(50) NOT NULL,
	[Fecha_Nacimiento] SMALLDATETIME NOT NULL, 
	[Tipo_Sangre] NVARCHAR(50) NOT NULL,
	[Regimen] INT NOT NULL REFERENCES [Regimenes] ([Id])
);

INSERT INTO [Pacientes] ([CC],[Nombre],[Apellido],[Telefono],[Correo],[Genero],[Fecha_Nacimiento],[Tipo_Sangre],[Regimen])
VALUES(123,'Jose','Martinez', '1234567890',	' JoseMartinez@gmail.com','M',' 21-01-2006', 'A+',1)
INSERT INTO [Pacientes] ([CC],[Nombre],[Apellido],[Telefono],[Correo],[Genero],[Fecha_Nacimiento],[Tipo_Sangre],[Regimen])
VALUES(345,'Maria','Cubillos', '2345678901',	' MariaCubillos@gmail.com','f','11-04-2000', 'A+',2)
INSERT INTO [Pacientes] ([CC],[Nombre],[Apellido],[Telefono],[Correo],[Genero],[Fecha_Nacimiento],[Tipo_Sangre],[Regimen])
VALUES(346,'Sara','Lopez', ' 3456789012',	' saraLopez@gmail.com','M','31-12-1998', 'o+',2)
INSERT INTO [Pacientes] ([CC],[Nombre],[Apellido],[Telefono],[Correo],[Genero],[Fecha_Nacimiento],[Tipo_Sangre],[Regimen])
VALUES(456,'Daniel',' Pedrosa', ' 4567890123',	' DanielPedrosa@gmail.com','f','25-06-2005', 'A+',1)
INSERT INTO [Pacientes] ([CC],[Nombre],[Apellido],[Telefono],[Correo],[Genero],[Fecha_Nacimiento],[Tipo_Sangre],[Regimen])
VALUES( 567,'Fabian',' Rojas', ' 5678901234',	' FabianRojas@gmail.com','f',' 10-10-2003', 'A-',2)
INSERT INTO [Pacientes] ([CC],[Nombre],[Apellido],[Telefono],[Correo],[Genero],[Fecha_Nacimiento],[Tipo_Sangre],[Regimen])
VALUES( 678,' Guillermo','Posada', ' 5678901234',	' GuillermoPosada@gmail.com','f','  17-06-1986', 'o-',2)
INSERT INTO [Pacientes] ([CC],[Nombre],[Apellido],[Telefono],[Correo],[Genero],[Fecha_Nacimiento],[Tipo_Sangre],[Regimen])
VALUES(789,' Gregorio','Torres', ' 7890123456',	' GregorioTorres@gmail.com ','f','07-07-1975', 'A+',1)
INSERT INTO [Pacientes] ([CC],[Nombre],[Apellido],[Telefono],[Correo],[Genero],[Fecha_Nacimiento],[Tipo_Sangre],[Regimen])
VALUES(890,'Laura','Sanchez', '8901234567',	'  LauraSanchez@gmail.com','M','30-03-2000', 'A-',1)

CREATE TABLE Medicamentos(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Nombre] NVARCHAR(50),
	[Funcion] NVARCHAR(50),
);
INSERT INTO [Medicamentos] ([Nombre], [Funcion])
VALUES(' Acetominofem','Analgesicos')
INSERT INTO [Medicamentos] ([Nombre], [Funcion])
VALUES('Loratadina ','Antihistamínicos')
INSERT INTO [Medicamentos] ([Nombre], [Funcion])
VALUES('Diclofenalco','Antiinflamatorios')
INSERT INTO [Medicamentos] ([Nombre], [Funcion])
VALUES('Amoxicilina','Antibióticos')
INSERT INTO [Medicamentos] ([Nombre], [Funcion])
VALUES('Insulina','Antidiabéticos')

CREATE TABLE Consultas(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Medico] INT NOT NULL REFERENCES [Medicos] ([Id]),
	[Paciente] INT NOT NULL REFERENCES [Pacientes] ([Id]),
	[Medicamento] INT NOT NULL REFERENCES [Medicamentos] ([Id]),
	[Fecha_Consulta] DATETIME NOT NULL,
	[Hora_Consulta] DATETIME NOT NULL,
	[Estado_Cita] NVARCHAR(50) NOT NULL,
	[Tipo_Consulta] NVARCHAR(50) NOT NULL,
	[Motivo_Consulta] NVARCHAR(50) NOT NULL,
	[Valor_Consulta] NVARCHAR (50) NOT NULL,
);
INSERT INTO [Consultas] ([Medico], [Paciente], [Medicamento], [Fecha_Consulta], [Hora_Consulta], [Estado_Cita],
			[Tipo_Consulta], [Motivo_Consulta], [Valor_Consulta] )
VALUES(1,1,1,'27/02/2025', ' 7:00 AM', ' Confirmada','Laboratorio',' Examenes ' , '45.000')
INSERT INTO [Consultas] ([Medico], [Paciente], [Medicamento], [Fecha_Consulta], [Hora_Consulta], [Estado_Cita],
			[Tipo_Consulta], [Motivo_Consulta], [Valor_Consulta] )
VALUES(2,2,2,'27/02/2025', ' 7:00 AM', ' Confirmada','Laboratorio',' Examenes ' , '45.000')
INSERT INTO [Consultas] ([Medico], [Paciente], [Medicamento], [Fecha_Consulta], [Hora_Consulta], [Estado_Cita],
			[Tipo_Consulta], [Motivo_Consulta], [Valor_Consulta] )
VALUES(3,3,3,'27/02/2025', ' 7:00 AM', ' Confirmada','Laboratorio',' Examenes ' , '45.000')
INSERT INTO [Consultas] ([Medico], [Paciente], [Medicamento], [Fecha_Consulta], [Hora_Consulta], [Estado_Cita],
			[Tipo_Consulta], [Motivo_Consulta], [Valor_Consulta] )
VALUES(4,4,4,'27/02/2025', ' 7:00 AM', ' Confirmada','Laboratorio',' Examenes ' , '45.000')
INSERT INTO [Consultas] ([Medico], [Paciente], [Medicamento], [Fecha_Consulta], [Hora_Consulta], [Estado_Cita],
			[Tipo_Consulta], [Motivo_Consulta], [Valor_Consulta] )
VALUES(5,5,5,'27/02/2025', ' 7:00 AM', ' Confirmada','Laboratorio',' Examenes ' , '45.000')
INSERT INTO [Consultas] ([Medico], [Paciente], [Medicamento], [Fecha_Consulta], [Hora_Consulta], [Estado_Cita],
			[Tipo_Consulta], [Motivo_Consulta], [Valor_Consulta] )
VALUES(2,6,1,'27/02/2025', ' 7:00 AM', ' Confirmada','Laboratorio',' Examenes ' , '45.000')
INSERT INTO [Consultas] ([Medico], [Paciente], [Medicamento], [Fecha_Consulta], [Hora_Consulta], [Estado_Cita],
			[Tipo_Consulta], [Motivo_Consulta], [Valor_Consulta] )
VALUES(1,7,2,'27/02/2025', ' 7:00 AM', ' Confirmada','Laboratorio',' Examenes ' , '45.000')
INSERT INTO [Consultas] ([Medico], [Paciente], [Medicamento], [Fecha_Consulta], [Hora_Consulta], [Estado_Cita],
			[Tipo_Consulta], [Motivo_Consulta], [Valor_Consulta] )
VALUES(3,8,3,'27/02/2025', ' 7:00 AM', ' Confirmada','Laboratorio',' Examenes ' , '45.000')

SELECT *FROM Consultas

CREATE TABLE MedicamentosConsultas(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Medicamento] INT NOT NULL REFERENCES [Medicamentos] ([Id]),
	[Consulta] INT NOT NULL REFERENCES [Consultas] ([Id]),
);

INSERT INTO MedicamentosConsultas ([Consulta],[Medicamento])
VALUES (1,1)
INSERT INTO MedicamentosConsultas ([Consulta],[Medicamento])
VALUES (3,2)
INSERT INTO MedicamentosConsultas ([Consulta],[Medicamento])
VALUES (5,4)
INSERT INTO MedicamentosConsultas ([Consulta],[Medicamento])
VALUES (4,5)
INSERT INTO MedicamentosConsultas ([Consulta],[Medicamento])
VALUES (1,3)
INSERT INTO MedicamentosConsultas ([Consulta],[Medicamento])
VALUES (1,7)
INSERT INTO MedicamentosConsultas ([Consulta],[Medicamento])
VALUES (4,8)
INSERT INTO MedicamentosConsultas ([Consulta],[Medicamento])
VALUES (1,6)



