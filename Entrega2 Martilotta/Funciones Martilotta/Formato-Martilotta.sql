DELIMITER //
CREATE FUNCTION contarPuntuacionesMayoresA(cantidadDePuntos INT)
RETURNS INT
no sql
BEGIN
    DECLARE contador INT;
    
    set contador = (SELECT COUNT(*) FROM registrodepuntuaciones WHERE puntuacion_obtenida > cantidadDePuntos);
    
    RETURN contador;
END //
DELIMITER ;


SELECT contarPuntuacionesMayoresA(10);

DELIMITER //
CREATE FUNCTION contarPuntuacionesMenoresA(cantidadDePuntos INT)
RETURNS INT
no sql
BEGIN
    DECLARE contador INT;
    
    set contador = (SELECT COUNT(*) FROM registrodepuntuaciones WHERE puntuacion_obtenida < cantidadDePuntos);
    
    RETURN contador;
END //
DELIMITER ;

SELECT contarPuntuacionesMenoresA(11);