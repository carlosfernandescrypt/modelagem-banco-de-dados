-- Pergunta 1: Quais são as músicas com mais streams em determinado ano?
SELECT M.track_name, M.streams, L.released_year
FROM Musicas M
JOIN Lancamentos L ON M.id_musica = L.id_lancamento
WHERE L.released_year = 2022  -- (substituir por qualquer outro ano)
ORDER BY M.streams DESC;

-- Pergunta 2: Quais artistas têm mais músicas populares?
SELECT A.artist_name, COUNT(M.id_musica) AS num_musicas
FROM Artistas A
JOIN Musicas M ON A.id_artista = M.id_musica
GROUP BY A.artist_name
ORDER BY num_musicas DESC;

-- Pergunta 3: Em qual ano houve mais músicas com mais de 1 milhão de streams?
SELECT L.released_year, COUNT(M.id_musica) AS num_musicas
FROM Musicas M
JOIN Lancamentos L ON M.id_musica = L.id_lancamento
WHERE M.streams > 1000000
GROUP BY L.released_year
ORDER BY num_musicas DESC;
