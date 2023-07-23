CREATE TABLE nueva_puntuacion(
	user varchar(100) PRIMARY KEY,
	id_jugador INT,
    fecha_puntuacion DATE,
    hora_puntuacion TIME,
    puntuacion INT
);

CREATE TRIGGER tr_add_new_score
BEFORE INSERT ON registrodepuntuaciones
for each row
insert INTO nueva_puntuacion (user, id_jugador,fecha_puntuacion,hora_puntuacion,puntuacion)
		VALUES (USER(),NEW.id_jugador,CURDATE(),CURTIME(),new.puntuacion_obtenida);

INSERT INTO registrodepuntuaciones (id_jugador, id_juego, puntuacion_obtenida, fecha_y_hora)
		values (9,2,34,'2022-06-12 19:25:00');
        
SELECT * from nueva_puntuacion;


/*
Este trigger se ejecutará automáticamente antes de insertar un registro en la tabla registrodepuntuaciones. 
Para cada nuevo registro insertado en registrodepuntuaciones, el trigger almacenará la información en la 
tabla nueva_puntuacion.

La sentencia BEFORE INSERT ON registrodepuntuaciones especifica que el trigger se activará antes de realizar 
una inserción en la tabla registrodepuntuaciones.

La cláusula FOR EACH ROW indica que el trigger se ejecutará para cada fila (registro) afectada por la operación de inserción.

La sentencia INSERT INTO nueva_puntuacion agrega un nuevo registro a la tabla nueva_puntuacion, 
tomando los siguientes valores:

user: Se obtiene utilizando la función USER(), que devuelve el nombre del usuario actual de MySQL. 
Este valor se almacena en el campo user de nueva_puntuacion.
NEW.id_jugador: El valor del campo id_jugador del nuevo registro insertado en registrodepuntuaciones 
se almacena en el campo id_jugador de nueva_puntuacion.
CURDATE(): Devuelve la fecha actual y se almacena en el campo fecha_puntuacion de nueva_puntuacion.
CURTIME(): Devuelve la hora actual y se almacena en el campo hora_puntuacion de nueva_puntuacion.
NEW.puntuacion_obtenida: El valor del campo puntuacion_obtenida del nuevo registro insertado en 
registrodepuntuaciones se almacena en el campo puntuacion de nueva_puntuacion.

Este trigger controlara la fecha y hora exactas en las que se registra la puntuacion de un jugador, que es diferente 
al campo fecha_y_hora de la tabla registrodepuntuaciones, en el cual se ingresa la fecha y hora en la que se 
obtuvo la puntuacion. Ademas,  registra el usuario que realizo la operacion, el id del jugador y su puntuacion obtenida
en esta nueva tabla nueva_puntuacion.
*/


CREATE TABLE nuevo_jugador(
	user varchar(100) PRIMARY KEY,
	id_jugador INT,
    fecha_registro DATE,
    hora_registro TIME,
    nombre varchar(100),
    apellido varchar(100)
);

CREATE TRIGGER tr_add_new_player
AFTER INSERT ON jugador
for each row
insert INTO nuevo_jugador (user, id_jugador,fecha_registro,hora_registro,nombre,apellido)
		VALUES (USER(),NEW.id_jugador,CURDATE(),CURTIME(),new.nombre,new.apellido);

INSERT INTO jugador (nombre, apellido, pais, fecha_de_nacimiento,informacion_de_contacto,id_equipo)
		values ("Fidel","Lopez","Austrlia",'1999-07-12', "mail19@hotmail.com", 1);
        
SELECT * from nuevo_jugador;

/*
Este trigger se ejecutará automáticamente después de insertar un registro en la tabla jugador. 
Para cada nuevo registro insertado en jugador, el trigger almacenará la información en la tabla nuevo_jugador.

La sentencia AFTER INSERT ON jugador especifica que el trigger se activará después de realizar una inserción en
la tabla jugador. Esto es porque de hacerlo antes (BEFORE) el id del jugador siempre seria 0 ya que no se le fue asignado
todavia un id automaticamente. 

La cláusula FOR EACH ROW indica que el trigger se ejecutará para cada fila (registro) afectada por la operación de inserción.

La sentencia INSERT INTO nuevo_jugador agrega un nuevo registro a la tabla nuevo_jugador, tomando los siguientes valores:

user: Se obtiene utilizando la función USER(), que devuelve el nombre del usuario actual de MySQL. 
Este valor se almacena en el campo user de nuevo_jugador.
NEW.id_jugador: El valor del campo id_jugador del nuevo registro insertado en jugador se almacena en 
el campo id_jugador de nuevo_jugador.
CURDATE(): Devuelve la fecha actual y se almacena en el campo fecha_registro de nuevo_jugador.
CURTIME(): Devuelve la hora actual y se almacena en el campo hora_registro de nuevo_jugador.
NEW.nombre: El valor del campo nombre del nuevo registro insertado en jugador se almacena en el campo 
nombre de nuevo_jugador.
NEW.apellido: El valor del campo apellido del nuevo registro insertado en jugador se almacena en el campo
apellido de nuevo_jugador.

En resumen, cada vez que se inserta un nuevo registro en la tabla jugador, el trigger tr_add_new_player 
captura el usuario actual, la fecha y hora actual, el id_jugador, el nombre y el apellido del nuevo jugador 
y los guarda en la tabla nuevo_jugador. 
Esto es útil para mantener un historial de los nuevos jugadores registrados en la base de datos.
*/


        
