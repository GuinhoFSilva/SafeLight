CREATE DATABASE SafeLight;

USE SafeLight;

CREATE TABLE cadastroCliente (
	idCliente int primary key auto_increment,
    nomeCliente varchar(60),
    cpfCliente char(11),
	emailCliente varchar(256),
    senhaCliente char(15),
    nomeEmpresa varchar(30),
    cnpjEmpresa char(14),
	cepEmpresa char(8)
);

CREATE TABLE intensidadeLuz(
	idSensor int primary key auto_increment,
    intensidade int,
    horarioLuz int,
    dia date,
    gastosEnergia decimal(10,2)
);

CREATE TABLE alertas (
    idAlerta int primary key auto_increment,
    dataHora datetime,
    alerta varchar(50),
    descricao varchar(255)
);

INSERT INTO cadastroCliente VALUES
	(default, 'Ana Souza','12345678901','ana.souza@example.com','senha123','TechFusion Dynamics','12345678000195','12345678'),
	(default,"Carlos Lima", "23456789012", "carlos.lima@example.com", "senha2345", "AeroVantage Solutions", "23456789000192", "23456789"),
	(default,"Mariana Costa", "34567890123", "mariana.costa@example.com", "senha3456", "EcoQuest Industries", "34567890000199", "34567890"),
	(default,"Felipe Oliveira", "45678901234", "felipe.oliveira@example.com", "senha4567", "NexGen Analytics", "45678901000180", "45678901"),
	(default,"Juliana Santos", "56789012345", "juliana.santos@example.com", "senha5678", "PrimeWave Ventures", "56789012000187", "56789012"),
	(default,"Roberto Almeida", "67890123456", "roberto.almeida@example.com", "senha6789", "StratoSphere Consulting", "67890123000194", "67890123"),
	(default,"Paula Martins", "78901234567", "paula.martins@example.com", "senha7890", "InnovaCore Systems", "78901234000101", "78901234"),
	(default,"Ricardo Pereira", "89012345678", "ricardo.pereira@example.com", "senha8901", "Vertex Innovations", "89012345000108", "89012345"),
	(default,"Fernanda Silva", "90123456789", "fernanda.silva@example.com", "senha9012", "QuantumPath Technologies", "90123456000115", "90123456"),
	(default,"Marcelo Rocha", "01234567890", "marcelo.rocha@example.com", "senha0123", "TerraLink Solutions", "01234567000122", "01234567");
    
INSERT INTO alertas VALUES
	(default, "2024-08-01 08:15:00", "Baixa Intensidade", "A intensidade de luz está abaixo do limite mínimo."),
	(default, "2024-08-01 08:45:00", "Alta Intensidade", "A intensidade de luz está acima do limite máximo."),
	(default, "2024-08-01 09:15:00", "Baixa Intensidade", "A intensidade de luz está abaixo do limite mínimo."),
	(default, "2024-08-01 09:45:00", "Alta Intensidade", "A intensidade de luz está acima do limite máximo."),
	(default, "2024-08-01 10:15:00", "Baixa Intensidade", "A intensidade de luz está abaixo do limite mínimo."),
	(default, "2024-08-01 10:45:00", "Alta Intensidade", "A intensidade de luz está acima do limite máximo." ),
	(default, "2024-08-01 11:15:00", "Baixa Intensidade", "A intensidade de luz está abaixo do limite mínimo." ),
	(default, "2024-08-01 11:45:00", "Alta Intensidade", "A intensidade de luz está acima do limite máximo."),
	(default, "2024-08-01 12:15:00", "Baixa Intensidade", "A intensidade de luz está abaixo do limite mínimo." ),
	(default, "2024-08-01 12:45:00", "Alta Intensidade", "A intensidade de luz está acima do limite máximo.");

INSERT INTO intensidadeLuz VALUES
	(default, 350, 0800, "2024-08-01", 45.50),
	(default, 280, 0830, "2024-08-01", 40.75),
	(default, 300, 0900, "2024-08-01", 42.00),
	(default, 330, 0930, "2024-08-01", 48.25),
	(default, 290, 1000, "2024-08-01", 37.60),
	(default, 310, 1030, "2024-08-01", 43.10),
	(default, 320, 1100, "2024-08-01", 46.85),
	(default, 270, 1130, "2024-08-01", 41.20),
	(default, 300, 1200, "2024-08-01", 44.55),
	(default, 340, 1230, "2024-08-01", 50.30);