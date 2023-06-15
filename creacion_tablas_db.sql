use tournament_tracker;

/* Crear tablas */
CREATE TABLE jugador(
	id_jugador int not null auto_increment primary key,
	nombre varchar(30) not null,
	apellido varchar(30) not null,
    pais varchar(60) not null,
	fecha_de_nacimiento date not null,
    informacion_de_contacto date not null,
	id_equipo int not null
);

CREATE TABLE equipo(
	id_equipo int not null auto_increment primary key,
	nombre_equipo varchar(30) not null,
	fecha_de_creacion date not null,
	pais varchar(60) not null,
	id_torneo int not null
);

CREATE TABLE juego(
	id_juego int not null auto_increment primary key,
	nombre varchar(30) not null,
    desarrollador varchar(30) not null,
    genero varchar(30) not null,
    plataforma varchar(30) not null,
    id_torneo int not null
);

CREATE TABLE torneo(
	id_torneo int not null auto_increment primary key,
	nombre_torneo varchar(30) not null,
    fecha_de_inicio date not null,
    fecha_de_finalizacion date not null,
    premios varchar(30) not null
);

CREATE TABLE partida(
	id_partida int not null auto_increment primary key,
	id_torneo int not null,
    id_equipo int not null,
    resultados varchar(45) not null,
    duracion varchar(45) not null
);

CREATE TABLE registroDePuntuaciones(
	id_puntuacion int not null auto_increment primary key,
	id_jugador int not null,
    id_juego int not null,
    puntuacion_obtenida int not null,
    fecha_y_hora datetime not null
);


/* Seteo de claves foraneas */
alter table jugador
add foreign key (id_equipo) references equipo(id_equipo);

alter table equipo
add foreign key (id_torneo) references torneo(id_torneo);

alter table juego
add foreign key (id_torneo) references torneo(id_torneo);

alter table partida
add foreign key (id_torneo) references torneo(id_torneo),
add foreign key (id_equipo) references equipo(id_equipo);

alter table registroDePuntuaciones
add foreign key (id_jugador) references jugador(id_jugador),
add foreign key (id_juego) references juego(id_juego);


/* Seteo de indices */
/* Seteo de índices en la tabla "jugador" */
CREATE INDEX ix_jugador_equipo ON jugador(id_equipo);

/* Seteo de índices en la tabla "equipo" */
CREATE INDEX ix_equipo_torneo ON equipo(id_torneo);

/* Seteo de índices en la tabla "juego" */
CREATE INDEX ix_juego_torneo ON juego(id_torneo);

/* Seteo de índices en la tabla "torneo" */
CREATE INDEX ix_torneo_fecha_inicio ON torneo(fecha_de_inicio);
CREATE INDEX ix_torneo_fecha_finalizacion ON torneo(fecha_de_finalizacion);

/* Seteo de índices en la tabla "partida" */
CREATE INDEX ix_partida_torneo ON partida(id_torneo);
CREATE INDEX ix_partida_equipo ON partida(id_equipo);

/* Seteo de índices en la tabla "registroDePuntuaciones" */
CREATE INDEX ix_registro_puntuaciones_jugador ON registroDePuntuaciones(id_jugador);
CREATE INDEX ix_registro_puntuaciones_juego ON registroDePuntuaciones(id_juego);
CREATE INDEX ix_registro_puntuaciones_fecha_hora ON registroDePuntuaciones(fecha_y_hora);




/*	QUERYS */
select * from jugador;
select * from equipo;
select * from juego;
select * from torneo;
select * from partida;
select * from registroDePuntuaciones;





