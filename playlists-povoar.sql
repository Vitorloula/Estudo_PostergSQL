--- povoando o banco 
INSERT INTO public.usuario(id_usuario, nome)
	VALUES (10, 'Ana'), (11,'Bruno');

	
INSERT INTO public.artista(
            cod_autor, nome)
    VALUES (10, 'Engenheiros do Hawai');

INSERT INTO public.artista(
            cod_autor, nome)
    VALUES (11, 'Coldplay');

 INSERT INTO public.artista(
            cod_autor, nome)
    VALUES (12, 'Marisa Monte');

INSERT INTO public.gravadora(
            nome, id_gravadora, endereco)
    VALUES ('Som Livre', 1, 'Av. Itinerante, 10'), ('Max Discos', 2, 'Rua Pedro I, 20');
    

INSERT INTO public.musica(
            cod_musica, id_gravadora, titulo)
    VALUES (10, 1, 'Infinita Highway'), (21, 2, 'The Scientist'), (22,2,'Vilarejo');

INSERT INTO public.musica_artista(
            cod_musica, cod_artista)
    VALUES (10, 10), (22,12), (21,11) ;

INSERT INTO public.playlist(
            id_playlist, id_usu, nome, descricao)
    VALUES 
    (1, 10, 'Variadas', 'Minhas preferidas'), 
    (2, 11, 'Nacionais', 'Músicas do Brasil');

INSERT INTO public.playlist_musica(
            id_playlist, cod_musica)
    VALUES (1,10), (1,21), (2,10),(2,22);


--- povoando o banco 
INSERT INTO public.usuario(id_usuario, nome)
	VALUES (13, 'Robson');

	
INSERT INTO public.artista(
            cod_autor, nome)
    VALUES (13, 'Kanye West');
	
INSERT INTO public.gravadora(
            nome, id_gravadora, endereco)
    VALUES ('Loreninha', 3, 'Av. Lua, 10');
    
INSERT INTO public.musica(
            cod_musica, id_gravadora, titulo)
    VALUES (13, 3, 'Runaway'), (14, 3, 'All Mine'), (15,3,'Bound2'), (16,3,'I Wonder'), (17,3,'New Slaves');

INSERT INTO public.musica_artista(
            cod_musica, cod_artista)
    VALUES (13, 13), (14, 13), (15, 13),(16, 13),(17, 13) ;

INSERT INTO public.playlist(
            id_playlist, id_usu, nome, descricao)
    VALUES 
    (3, 13, 'This is Kanye West', 'Rlx');

INSERT INTO public.playlist_musica(
            id_playlist, cod_musica)
    VALUES (3,13), (3,14), (3,15), (3,16), (3,17);




SELECT titulo FROM musica WHERE cod_musica = '10'

SELECT* FROM musica WHERE titulo = 'Infinita Highway'

SELECT titulo FROM musica

SELECT titulo, nome FROM musica, gravadora WHERE musica.id_gravadora = gravadora.id_gravadora;

SELECT id_playlist, playlist.nome, descricao, id_usu FROM playlist, usuario WHERE usuario.nome = 'Ana' AND playlist.id_usu = usuario.id_usuario; 

SELECT titulo FROM musica WHERE titulo like 'A%'

SELECT titulo FROM musica WHERE titulo like '____A'

SELECT 	* FROM artista WHERE cod_autor BETWEEN '3' and '10'

SELECT DISTINCT m.titulo, g.nome AS nome_gravadora
FROM Musica AS m
INNER JOIN Playlist_Musica AS pm ON m.cod_musica = pm.cod_musica
INNER JOIN Playlist AS p ON pm.id_playlist = p.id_playlist
INNER JOIN Usuario AS u ON p.id_usu = u.id_usuario
INNER JOIN Gravadora AS g ON m.id_gravadora = g.id_gravadora
WHERE u.nome = 'Robson';

SELECT DISTINCT A.nome AS nome_artista
FROM Artista AS A
INNER JOIN Musica_Artista AS MA ON A.cod_autor = MA.cod_artista
INNER JOIN Musica AS M ON MA.cod_musica = M.cod_musica
INNER JOIN Playlist_Musica AS PM ON M.cod_musica = PM.cod_musica
INNER JOIN Playlist AS P ON PM.id_playlist = P.id_playlist
INNER JOIN Usuario AS U ON P.id_usu = U.id_usuario
WHERE U.nome = 'Ana';






	






	