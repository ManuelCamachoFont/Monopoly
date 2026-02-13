-- Monopoly
-- Crear la BD
CREATE DATABASE monopoly
CHARSET utf8
COLLATE utf8mb4_spanish2_ci;
-- Activar la BD
USE monopoly;
-- Crear tabla jugadores
CREATE TABLE jugadores (
    idJugador INT AUTO_INCREMENT,
    nombreJugador VARCHAR(45) NOT NULL,
    dineroJugador INT NOT NULL,
    PRIMARY KEY (idJugador)
);
-- Crear tabla casillas
CREATE TABLE casillas (
    idCasilla INT AUTO_INCREMENT,
    nombreCasilla VARCHAR(45) NOT NULL,
    posicionCasilla INT NOT NULL,
    tipoCasilla VARCHAR(45) NOT NULL,
    idJugadorFK INT NOT NULL,
    PRIMARY KEY (idCasilla),
    FOREIGN KEY (idJugadorFK)
        REFERENCES jugadores (idJugador)
);
-- Crear tabla ranking
CREATE TABLE ranking (
    idRanking INT AUTO_INCREMENT,
    dineroFinalRanking INT NOT NULL,
    propiedadesFinalRanking INT NOT NULL,
    PRIMARY KEY (idRanking)
);
-- Crear tabla jugadoresranking
CREATE TABLE jugadoresranking (
    idJugadoresRanking INT AUTO_INCREMENT,
    idJugadorFK INT NOT NULL,
    idRankingFK INT NOT NULL,
    PRIMARY KEY (idJugadoresRanking),
    FOREIGN KEY (idJugadorFK)
        REFERENCES jugadores (idJugador),
    FOREIGN KEY (idRankingFK)
        REFERENCES ranking (idRanking)
);