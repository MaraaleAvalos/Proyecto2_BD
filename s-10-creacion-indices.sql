-- @Autor: Uzziel Palma Bolaños Alan
-- @Fecha: 23/01/21
-- @Descripcion: Creación de indices necesarios.


--
-- INDICE UNIQUE USUARIO_USERNAME_IUX
--

create unique index usuario_username_iux on
usuario(username, email)
tablespace indices_tbs01;

--
-- INDICE BIBLIOTECA_NOMBRE
--

create index biblioteca_nombre_ix on
	biblioteca(nombre)
	tablespace indices_tbs01;

--
-- INDICE RECURSO_NUMERO_CLASIFICACION_IUX 
--

create unique index recurso_numero_clasificacion_iux on
	Recurso(numero_clasificacion)
	tablespace indices_tbs01;

--
-- INDICE REVISTA_NUMERO_EMISION_IX
--

create index revista_numero_emision_ix on
	revista(numero_emision)
	tablespace indices_tbs01;

--
-- INDICE TESIS_UNIVERSIDAD_IX
--

create index tesis_universidad_ix on
	tesis(nombre_universidad,nombre_carrera)
	tablespace indices_tbs01;

--
--INDICES DE LLAVES FORANEAS.
--

create index biblioteca_area_conocimiento_biblioteca_id_ix on
	biblioteca_area_conocimiento(biblioteca_id)
	tablespace indices_tbs01;

create index biblioteca_area_conocimiento_area_conocimiento_id_ix on
	biblioteca_area_conocimiento(area_conocimiento_id)
	tablespace indices_tbs01;

create index biblioteca_usuarios_biblioteca_id_ix on
    biblioteca_usuarios(biblioteca_id) 
	tablespace indices_tbs01;

create index biblioteca_usuarios_usuario_id_ix on
	biblioteca_usuarios(usuario_id)
	tablespace indices_tbs01;

create index recurso_area_conocimiento_id_ix on
	recurso(area_conocimiento_id)
	tablespace indices_tbs01;

create index recurso_status_recurso_id_ix on
	recurso(status_recurso_id)
	tablespace indices_tbs01;

create index recurso_recurso_nuevo_id_ix on
	recurso(recurso_nuevo_id)
	tablespace indices_tbs01;

create index historial_status_recurso_status_recurso_id_ix on
	historial_status_recurso(status_recurso_id)
	tablespace indices_tbs01;

create index historial_status_recurso_recurso_id_ix on
	historial_status_recurso(recurso_id)
	tablespace indices_tbs01;

create index prestamo_usuario_id_ix on
	prestamo(usuario_id)
	tablespace indices_tbs01;

create index prestamo_recurso_prestamo_id_ix on
	prestamo_recurso(prestamo_id)
	tablespace indices_tbs01;

create index prestamo_recurso_recurso_id_ix on
	prestamo_recurso(recurso_id)
	tablespace indices_tbs01;

create index libro_editorial_id_ix on
	libro(editorial_id)
	tablespace indices_tbs01;

create index revista_editorial_id_ix on
	revista(editorial_id)
	tablespace indices_tbs01;