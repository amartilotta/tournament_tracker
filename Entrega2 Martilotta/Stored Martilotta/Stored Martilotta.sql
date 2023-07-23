DELIMITER //

-- Procedimiento para insertar un equipo en la tabla "equipo"
CREATE PROCEDURE insertarEquipo(IN nombreEquipo VARCHAR(100), IN fechaCreacion DATE, IN pais VARCHAR(100))
BEGIN
    -- Insertar el nuevo equipo con el id_torneo igual a 1
    INSERT INTO equipo (nombre_equipo, fecha_de_creacion, pais, id_torneo)
    VALUES (nombreEquipo, fechaCreacion, pais, 1);
    
    -- Obtener el id_equipo generado durante la inserción
    SELECT LAST_INSERT_ID() AS id_equipo;
END //

DELIMITER ;

-- Ejemplo de llamada al procedimiento insertarEquipo
CALL insertarEquipo('Pibardos', '2023-07-15', 'Cuba');

DELIMITER //

-- Procedimiento para ordenar los registros de una tabla según un campo y un orden específicos
CREATE PROCEDURE ordenarTabla(IN nombreTabla VARCHAR(50), IN nombreCampo VARCHAR(50), IN orden VARCHAR(10))
BEGIN
    -- Verificar si el parámetro de orden es válido
    IF (orden <> 'ASC' AND orden <> 'DESC') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El parámetro de orden debe ser "ASC" o "DESC".';
    ELSE
        -- Construir y ejecutar la consulta dinámica
        SET @sql = CONCAT('SELECT * FROM ', nombreTabla, ' ORDER BY ', nombreCampo, ' ', orden);
        PREPARE stmt FROM @sql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END IF;
END //

DELIMITER ;

-- Ejemplo de llamada al procedimiento ordenarTabla
CALL ordenarTabla('jugador', 'apellido', 'DESC');
