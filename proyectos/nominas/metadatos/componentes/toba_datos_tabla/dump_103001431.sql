------------------------------------------------------------
--[103001431]--  Nuevo trabajor - dr_trabajadores - asignaciones_flia_trabajador 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 103
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'nominas', --proyecto
	'103001431', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_datos_tabla', --clase
	'103000003', --punto_montaje
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'Nuevo trabajor - dr_trabajadores - asignaciones_flia_trabajador', --nombre
	NULL, --titulo
	NULL, --colapsable
	NULL, --descripcion
	'nominas', --fuente_datos_proyecto
	'nominas', --fuente_datos
	NULL, --solicitud_registrar
	NULL, --solicitud_obj_obs_tipo
	NULL, --solicitud_obj_observacion
	NULL, --parametro_a
	NULL, --parametro_b
	NULL, --parametro_c
	NULL, --parametro_d
	NULL, --parametro_e
	NULL, --parametro_f
	NULL, --usuario
	'2018-11-16 01:13:57', --creacion
	NULL  --posicion_botonera
);
--- FIN Grupo de desarrollo 103

------------------------------------------------------------
-- apex_objeto_db_registros
------------------------------------------------------------
INSERT INTO apex_objeto_db_registros (objeto_proyecto, objeto, max_registros, min_registros, punto_montaje, ap, ap_clase, ap_archivo, tabla, tabla_ext, alias, modificar_claves, fuente_datos_proyecto, fuente_datos, permite_actualizacion_automatica, esquema, esquema_ext) VALUES (
	'nominas', --objeto_proyecto
	'103001431', --objeto
	NULL, --max_registros
	NULL, --min_registros
	'103000003', --punto_montaje
	'1', --ap
	NULL, --ap_clase
	NULL, --ap_archivo
	'asignaciones_flia_trabajador', --tabla
	NULL, --tabla_ext
	NULL, --alias
	'0', --modificar_claves
	'nominas', --fuente_datos_proyecto
	'nominas', --fuente_datos
	'1', --permite_actualizacion_automatica
	'public', --esquema
	'public'  --esquema_ext
);

------------------------------------------------------------
-- apex_objeto_db_registros_col
------------------------------------------------------------

--- INICIO Grupo de desarrollo 103
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'nominas', --objeto_proyecto
	'103001431', --objeto
	'103002400', --col_id
	'id_asignacion_flia_trabajador', --columna
	'E', --tipo
	'1', --pk
	'asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	NULL, --externa
	'asignaciones_flia_trabajador'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'nominas', --objeto_proyecto
	'103001431', --objeto
	'103002401', --col_id
	'id_tipo_asignacion', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	NULL, --externa
	'asignaciones_flia_trabajador'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'nominas', --objeto_proyecto
	'103001431', --objeto
	'103002402', --col_id
	'id_trabajador', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	NULL, --externa
	'asignaciones_flia_trabajador'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'nominas', --objeto_proyecto
	'103001431', --objeto
	'103002403', --col_id
	'fecha', --columna
	'F', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	NULL, --externa
	'asignaciones_flia_trabajador'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'nominas', --objeto_proyecto
	'103001431', --objeto
	'103002404', --col_id
	'observacion', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	NULL, --externa
	'asignaciones_flia_trabajador'  --tabla
);
--- FIN Grupo de desarrollo 103
