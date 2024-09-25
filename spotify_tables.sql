CREATE DATABASE IF NOT EXISTS SpotifyData;

USE SpotifyData;

CREATE TABLE IF NOT EXISTS Musicas (
    id_musica INT AUTO_INCREMENT PRIMARY KEY,
    track_name VARCHAR(255) NOT NULL,
    streams BIGINT
);

CREATE TABLE IF NOT EXISTS Artistas (
    id_artista INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Lancamentos (
    id_lancamento INT AUTO_INCREMENT PRIMARY KEY,
    released_year INT NOT NULL,
    released_month INT,
    released_day INT
);

CREATE TABLE IF NOT EXISTS DesempenhoSpotify (
    id_desempenho INT AUTO_INCREMENT PRIMARY KEY,
    in_spotify_playlists INT NOT NULL,
    in_spotify_charts INT
);

CREATE TABLE IF NOT EXISTS DesempenhoApple (
    id_desempenho_apple INT AUTO_INCREMENT PRIMARY KEY,
    in_apple_playlists INT NOT NULL,
    in_apple_charts INT
);
