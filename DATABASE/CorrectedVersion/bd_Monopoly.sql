-- Monopoly
-- Crear la BD
CREATE DATABASE monopoly
CHARSET utf8
COLLATE utf8mb4_spanish2_ci;
-- Activar la BD
USE monopoly;
-- Crear tabla casillas
CREATE TABLE casillas (
    idCasilla INT AUTO_INCREMENT,
    nombreCasilla VARCHAR(45) NOT NULL,
    tipoCasilla VARCHAR(45) NOT NULL,
    PRIMARY KEY (idCasilla)
);
-- Crear tabla ranking
CREATE TABLE ranking (
    idRanking INT AUTO_INCREMENT,
    nombreJugadoresRanking VARCHAR (45) NOT NULL,
    dineroFinalRanking INT NOT NULL,
    casasFinalRanking INT NOT NULL,
    hotelesFinalRanking INT NOT NULL,
    PRIMARY KEY (idRanking)
);
