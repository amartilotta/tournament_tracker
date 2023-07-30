USE Mysql;
-- Comando para crear al usuario 'usuario_solo_lectura' con permisos de solo lectura sobre todas las tablas
CREATE USER 'usuario1_solo_lectura'@'localhost' IDENTIFIED BY 'usuario1lectura';
-- Comando para otorgarle permisos de solo lectura a 'usuario_solo_lectura' en todas las tablas de la base de datos 'basedatos'
GRANT SELECT ON tournament_tracker.* TO 'usuario1_solo_lectura'@'localhost';

-- Comando para crear al usuario 'usuario_lectura_modificacion_insercion' con permisos de lectura, inserción y modificación sobre todas las tablas
CREATE USER 'usuario2_modificacion'@'localhost' IDENTIFIED BY 'usuario2modificacion';
-- Comando para otorgarle permisos de lectura, inserción y modificación a 'usuario_modificacion' en todas las tablas de la base de datos 'basedatos'
GRANT SELECT, INSERT, UPDATE ON tournament_tracker.* TO 'usuario2_modificacion'@'localhost';

-- Comando para revocar el permiso de eliminación para los usuarios 'usuario_solo_lectura' y 'usuario_lectura_modificacion_insercion'
REVOKE DELETE ON tournament_tracker.* FROM 'usuario1_solo_lectura'@'localhost';
REVOKE DELETE ON tournament_tracker.* FROM 'usuario2_modificacion'@'localhost';

-- SHOW GRANTS FOR 'root'@'localhost';
-- GRANT GRANT OPTION ON *.* TO 'root'@'localhost'; -- Si no pueden darle los Grant a los usuarios ejecuten este codigo.

SHOW GRANTS FOR 'usuario1_solo_lectura'@'localhost';
SHOW GRANTS FOR 'usuario2_modificacion'@'localhost';
SELECT * FROM USER;