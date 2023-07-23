CREATE VIEW puntuacionesDeJugadores AS 
	(SELECT id_jugador, puntuacion_obtenida
    FROM registrodepuntuaciones
    WHERE fecha_y_hora like ('2023-07-12 17:30:00'));
    
SELECT * FROM puntuacionesDeJugadores;
    
CREATE VIEW duracionDePartida AS 
	(SELECT id_partida, duracion
    FROM partida
    WHERE resultados like ('%A Definir%'));
    
SELECT * FROM duracionDePartida;
    
CREATE VIEW equiposDeLosJugadores AS 
	(SELECT nombre, apellido, id_equipo
    FROM jugador);
    
    SELECT * FROM equiposDeLosJugadores;
    
CREATE VIEW premioTorneo AS 
	(SELECT nombre_torneo, premios
    FROM torneo);
    
SELECT * FROM premioTorneo;
    
    CREATE VIEW plataformasDeJuegos AS 
	(SELECT nombre, plataforma
    FROM juego);
    
SELECT * FROM plataformasDeJuegos;
    
    
    
UPDATE registrodepuntuaciones
SET puntuacion_obtenida = 55
WHERE id_puntuacion = 3;

SELECT * from registrodepuntuaciones;


