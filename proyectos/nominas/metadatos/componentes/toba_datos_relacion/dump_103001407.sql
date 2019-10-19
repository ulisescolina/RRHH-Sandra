------------------------------------------------------------
--[103001407]--  Nuevo trabajor - dr_trabajadores 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 103
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_datos_relacion', --clase
	'103000003', --punto_montaje
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'Nuevo trabajor - dr_trabajadores', --nombre
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
	'2018-10-26 22:27:24', --creacion
	NULL  --posicion_botonera
);
--- FIN Grupo de desarrollo 103

------------------------------------------------------------
-- apex_objeto_datos_rel
------------------------------------------------------------
INSERT INTO apex_objeto_datos_rel (proyecto, objeto, debug, clave, ap, punto_montaje, ap_clase, ap_archivo, sinc_susp_constraints, sinc_orden_automatico, sinc_lock_optimista) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'0', --debug
	NULL, --clave
	'2', --ap
	'103000003', --punto_montaje
	NULL, --ap_clase
	NULL, --ap_archivo
	'0', --sinc_susp_constraints
	'1', --sinc_orden_automatico
	'1'  --sinc_lock_optimista
);

------------------------------------------------------------
-- apex_objeto_dependencias
------------------------------------------------------------

--- INICIO Grupo de desarrollo 103
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001247', --dep_id
	'103001407', --objeto_consumidor
	'103001439', --objeto_proveedor
	'antecentes', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'1'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001239', --dep_id
	'103001407', --objeto_consumidor
	'103001431', --objeto_proveedor
	'asignaciones_flia_trabajador', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'2'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001265', --dep_id
	'103001407', --objeto_consumidor
	'103001457', --objeto_proveedor
	'conyugue', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'3'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001253', --dep_id
	'103001407', --objeto_consumidor
	'103001445', --objeto_proveedor
	'documentos', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'4'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001248', --dep_id
	'103001407', --objeto_consumidor
	'103001440', --objeto_proveedor
	'domicilios', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'5'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001238', --dep_id
	'103001407', --objeto_consumidor
	'103001430', --objeto_proveedor
	'examenes_trabajadores', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'6'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001224', --dep_id
	'103001407', --objeto_consumidor
	'103001420', --objeto_proveedor
	'hijos', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'7'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001246', --dep_id
	'103001407', --objeto_consumidor
	'103001438', --objeto_proveedor
	'inasistencias', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'8'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001237', --dep_id
	'103001407', --objeto_consumidor
	'103001429', --objeto_proveedor
	'licencias_trabajadores', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'9'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001215', --dep_id
	'103001407', --objeto_consumidor
	'103001410', --objeto_proveedor
	'situaciones', --identificador
	'0', --parametros_a
	'0', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'10'  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'nominas', --proyecto
	'103001214', --dep_id
	'103001407', --objeto_consumidor
	'103001409', --objeto_proveedor
	'trabajadores', --identificador
	'1', --parametros_a
	'1', --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	'11'  --orden
);
--- FIN Grupo de desarrollo 103

------------------------------------------------------------
-- apex_objeto_datos_rel_asoc
------------------------------------------------------------

--- INICIO Grupo de desarrollo 103
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000097', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001410', --hijo_objeto
	'situaciones', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'1'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000098', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001420', --hijo_objeto
	'hijos', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'2'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000099', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001431', --hijo_objeto
	'asignaciones_flia_trabajador', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'3'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000100', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001430', --hijo_objeto
	'examenes_trabajadores', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'4'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000101', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001429', --hijo_objeto
	'licencias_trabajadores', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'5'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000102', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001440', --hijo_objeto
	'domicilios', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'6'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000103', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001438', --hijo_objeto
	'inasistencias', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'7'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000104', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001439', --hijo_objeto
	'antecentes', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'8'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000105', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001445', --hijo_objeto
	'documentos', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'9'  --orden
);
INSERT INTO apex_objeto_datos_rel_asoc (proyecto, objeto, asoc_id, identificador, padre_proyecto, padre_objeto, padre_id, padre_clave, hijo_proyecto, hijo_objeto, hijo_id, hijo_clave, cascada, orden) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000106', --asoc_id
	NULL, --identificador
	'nominas', --padre_proyecto
	'103001409', --padre_objeto
	'trabajadores', --padre_id
	NULL, --padre_clave
	'nominas', --hijo_proyecto
	'103001457', --hijo_objeto
	'conyugue', --hijo_id
	NULL, --hijo_clave
	NULL, --cascada
	'10'  --orden
);
--- FIN Grupo de desarrollo 103

------------------------------------------------------------
-- apex_objeto_rel_columnas_asoc
------------------------------------------------------------
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000097', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001410', --hijo_objeto
	'103002368'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000098', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001420', --hijo_objeto
	'103002385'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000099', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001431', --hijo_objeto
	'103002402'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000100', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001430', --hijo_objeto
	'103002399'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000101', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001429', --hijo_objeto
	'103002392'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000102', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001440', --hijo_objeto
	'103002423'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000103', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001438', --hijo_objeto
	'103002412'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000104', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001439', --hijo_objeto
	'103002418'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000105', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001445', --hijo_objeto
	'103002429'  --hijo_clave
);
INSERT INTO apex_objeto_rel_columnas_asoc (proyecto, objeto, asoc_id, padre_objeto, padre_clave, hijo_objeto, hijo_clave) VALUES (
	'nominas', --proyecto
	'103001407', --objeto
	'103000106', --asoc_id
	'103001409', --padre_objeto
	'103002340', --padre_clave
	'103001457', --hijo_objeto
	'103002438'  --hijo_clave
);
