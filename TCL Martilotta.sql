-- Mostrar todos los registros de la tabla "registrodepuntuaciones"
SELECT * FROM registrodepuntuaciones;

-- Inicio de la transacción
START TRANSACTION;
-- Elimino todos los registros de la tabla "registrodepuntuaciones" donde "id_puntuacion" es mayor que 10
DELETE FROM registrodepuntuaciones WHERE id_puntuacion > 10;

-- Mostrar los registros restantes después de la eliminación
SELECT * FROM registrodepuntuaciones;

-- Revertir los cambios realizados dentro de la transacción (des-hacer la eliminación)
-- ROLLBACK;
-- SELECT * FROM registrodepuntuaciones; -- Mostrar los registros nuevamente después de deshacer la eliminación
 
-- Confirmar los cambios realizados dentro de la transacción (no tendrá efecto después del ROLLBACK)
-- COMMIT;
-- SELECT * FROM registrodepuntuaciones; -- Mostrar los registros después de intentar confirmar los cambios (mismo resultado que antes del ROLLBACK)


/* ------------------------------------------------------------------------------------------------------------------------ */

-- Mostrar todos los registros de la tabla "partida"
SELECT * FROM partida;
-- Inicio la transacción
START TRANSACTION;

-- Inserto 4 nuevos registros en la tabla "partida"
INSERT INTO partida (id_torneo, id_equipo, resultados, duracion) VALUES (1,2,"A Definir", "Cinco Horas");
INSERT INTO partida (id_torneo, id_equipo, resultados, duracion) VALUES (1,3,"A Definir", "Cinco Horas");
INSERT INTO partida (id_torneo, id_equipo, resultados, duracion) VALUES (1,3,"A Definir", "Dos Horas");
INSERT INTO partida (id_torneo, id_equipo, resultados, duracion) VALUES (1,2,"A Definir", "Tres Horas");
SAVEPOINT partidas_lote_1; -- Creo un punto de guardado (savepoint) llamado "partidas_lote_1"
-- Inserto 4 registros más en la tabla "partida"
INSERT INTO partida (id_torneo, id_equipo, resultados, duracion) VALUES (1,1,"A Definir", "Una Hora");
INSERT INTO partida (id_torneo, id_equipo, resultados, duracion) VALUES (1,2,"A Definir", "Dos Horas");
INSERT INTO partida (id_torneo, id_equipo, resultados, duracion) VALUES (1,3,"A Definir", "Cuatro Horas");
INSERT INTO partida (id_torneo, id_equipo, resultados, duracion) VALUES (1,2,"A Definir", "Cuatro Horas");
SAVEPOINT partidas_lote_2; -- Creo otro punto de guardado (savepoint) llamado "partidas_lote_2"

SELECT * FROM partida; -- Mostrar los nuevos registros  después de la inserción.
-- ROLLBACK TO SAVEPOINT partidas_lote_1; -- Deshacer los cambios realizados hasta el punto de guardado "partidas_lote_1"
-- SELECT * FROM partida; -- Mostrar los registros después del primer ROLLBACK

-- Deshacer los cambios realizados hasta el punto de guardado "partidas_lote_2"
-- ROLLBACK TO SAVEPOINT partidas_lote_2;
-- SELECT * FROM partida; -- Mostrar los registros después del segundo ROLLBACK

-- Liberar el punto de guardado "partidas_lote_1"
-- RELEASE SAVEPOINT partidas_lote_1;
-- SELECT * FROM partida; -- Mostrar los registros después de liberar el punto de guardado "partidas_lote_1"

-- Deshacer todos los cambios realizados dentro de la transacción
-- ROLLBACK;
-- SELECT * FROM partida; -- Mostrar todos los registros después del ROLLBACK

-- Confirmar todos los cambios realizados dentro de la transacción (no tendrán efecto después del ROLLBACK)
-- COMMIT;
-- SELECT * FROM partida; -- Mostrar todos los registros después del COMMIT (mismo resultado que después del ROLLBACK)