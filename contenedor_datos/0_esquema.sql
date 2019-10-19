--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.19
-- Dumped by pg_dump version 9.5.19

-- Started on 2019-09-16 23:05:52 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;

--
-- TOC entry 10 (class 2615 OID 41585)
-- Name: public_auditoria; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public_auditoria;


ALTER SCHEMA public_auditoria OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12435)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2826 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 302 (class 1255 OID 41586)
-- Name: recuperar_schema_temp(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.recuperar_schema_temp() RETURNS character varying
    LANGUAGE plpgsql
    AS $$
			DECLARE
			   schemas varchar;
			   pos_inicial int4;
			   pos_final int4;
			   schema_temp varchar;
			BEGIN
			   schema_temp := '';
			   SELECT INTO schemas current_schemas(true);
			   SELECT INTO pos_inicial strpos(schemas, 'pg_temp');
			   IF (pos_inicial > 0) THEN
			      SELECT INTO pos_final strpos(schemas, ',');
			      SELECT INTO schema_temp substr(schemas, pos_inicial, pos_final - pos_inicial);
			   END IF;
			   RETURN schema_temp;
			END;
			$$;


ALTER FUNCTION public.recuperar_schema_temp() OWNER TO postgres;

--
-- TOC entry 324 (class 1255 OID 63325)
-- Name: sp_antecentes(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_antecentes() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_antecentes (id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_antecedente, NEW.fecha_emision, NEW.posee_antecedente, NEW.fecha_vencimiento, NEW.observaciones, NEW.id_trabajador, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_antecentes (id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_antecedente, OLD.fecha_emision, OLD.posee_antecedente, OLD.fecha_vencimiento, OLD.observaciones, OLD.id_trabajador, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_antecentes() OWNER TO postgres;

--
-- TOC entry 327 (class 1255 OID 65301)
-- Name: sp_articulos_inasistencias(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_articulos_inasistencias() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_articulos_inasistencias (id_articulo, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_articulo, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_articulos_inasistencias (id_articulo, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_articulo, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_articulos_inasistencias() OWNER TO postgres;

--
-- TOC entry 328 (class 1255 OID 63326)
-- Name: sp_asignaciones_flia_trabajador(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_asignaciones_flia_trabajador() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_asignaciones_flia_trabajador (id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_asignacion_flia_trabajador, NEW.id_tipo_asignacion, NEW.id_trabajador, NEW.fecha, NEW.observacion, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_asignaciones_flia_trabajador (id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_asignacion_flia_trabajador, OLD.id_tipo_asignacion, OLD.id_trabajador, OLD.fecha, OLD.observacion, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_asignaciones_flia_trabajador() OWNER TO postgres;

--
-- TOC entry 329 (class 1255 OID 42466)
-- Name: sp_categorias(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_categorias() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_categoria, NEW.nombre, NEW.basico, NEW.partida, NEW.basico_total, NEW.id_convenio, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_categoria, OLD.nombre, OLD.basico, OLD.partida, OLD.basico_total, OLD.id_convenio, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_categorias() OWNER TO postgres;

--
-- TOC entry 330 (class 1255 OID 42467)
-- Name: sp_convenios(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_convenios() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_convenios (id_convenio, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_convenio, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_convenios (id_convenio, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_convenio, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_convenios() OWNER TO postgres;

--
-- TOC entry 331 (class 1255 OID 65302)
-- Name: sp_conyugue(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_conyugue() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_conyugue (id_conyugue, apeynom, sexo, dom_calle, dom_num, id_trabajador, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_conyugue, NEW.apeynom, NEW.sexo, NEW.dom_calle, NEW.dom_num, NEW.id_trabajador, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_conyugue (id_conyugue, apeynom, sexo, dom_calle, dom_num, id_trabajador, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_conyugue, OLD.apeynom, OLD.sexo, OLD.dom_calle, OLD.dom_num, OLD.id_trabajador, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_conyugue() OWNER TO postgres;

--
-- TOC entry 325 (class 1255 OID 63327)
-- Name: sp_dcumentos(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_dcumentos() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_dcumentos (id_documento, nombre, id_tipo_certificado, id_trabajador, fecha, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_documento, NEW.nombre, NEW.id_tipo_certificado, NEW.id_trabajador, NEW.fecha, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_dcumentos (id_documento, nombre, id_tipo_certificado, id_trabajador, fecha, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_documento, OLD.nombre, OLD.id_tipo_certificado, OLD.id_trabajador, OLD.fecha, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_dcumentos() OWNER TO postgres;

--
-- TOC entry 315 (class 1255 OID 42468)
-- Name: sp_departamentos(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_departamentos() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_departamento, NEW.idinstancia, NEW.nombre_corto, NEW.nombre_largo, NEW.calle, NEW.nro_propiedad, NEW.piso, NEW.depto, NEW.email, NEW.nivel_organigrama, NEW.telefono_numero, NEW.telefono_centrex, NEW.abreviatura, NEW.responsable_externo, NEW.fecha, NEW.idnorma, NEW.idagente, NEW.id_localidad, NEW.id_fuero, NEW.activa, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_departamento, OLD.idinstancia, OLD.nombre_corto, OLD.nombre_largo, OLD.calle, OLD.nro_propiedad, OLD.piso, OLD.depto, OLD.email, OLD.nivel_organigrama, OLD.telefono_numero, OLD.telefono_centrex, OLD.abreviatura, OLD.responsable_externo, OLD.fecha, OLD.idnorma, OLD.idagente, OLD.id_localidad, OLD.id_fuero, OLD.activa, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_departamentos() OWNER TO postgres;

--
-- TOC entry 332 (class 1255 OID 65303)
-- Name: sp_documentos(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_documentos() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_documentos (id_documento, nombre, id_tipo_certificado, id_trabajador, fecha, doc_adjunto, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_documento, NEW.nombre, NEW.id_tipo_certificado, NEW.id_trabajador, NEW.fecha, NEW.doc_adjunto, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_documentos (id_documento, nombre, id_tipo_certificado, id_trabajador, fecha, doc_adjunto, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_documento, OLD.nombre, OLD.id_tipo_certificado, OLD.id_trabajador, OLD.fecha, OLD.doc_adjunto, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_documentos() OWNER TO postgres;

--
-- TOC entry 326 (class 1255 OID 63328)
-- Name: sp_domicilio(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_domicilio() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_domicilio (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_domicilio, NEW.domicilio_calle, NEW.domicilio_num, NEW.fecha, NEW.id_trabajador, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_domicilio (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_domicilio, OLD.domicilio_calle, OLD.domicilio_num, OLD.fecha, OLD.id_trabajador, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_domicilio() OWNER TO postgres;

--
-- TOC entry 333 (class 1255 OID 65304)
-- Name: sp_domicilios(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_domicilios() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_domicilio, NEW.domicilio_calle, NEW.domicilio_num, NEW.fecha, NEW.id_trabajador, NEW.estado, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_domicilio, OLD.domicilio_calle, OLD.domicilio_num, OLD.fecha, OLD.id_trabajador, OLD.estado, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_domicilios() OWNER TO postgres;

--
-- TOC entry 322 (class 1255 OID 51965)
-- Name: sp_empresa(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_empresa() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_empresa (id_empresa, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_empresa, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_empresa (id_empresa, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_empresa, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_empresa() OWNER TO postgres;

--
-- TOC entry 334 (class 1255 OID 42469)
-- Name: sp_estados_civiles(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_estados_civiles() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_estados_civiles (id_estado_civil, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_estado_civil, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_estados_civiles (id_estado_civil, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_estado_civil, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_estados_civiles() OWNER TO postgres;

--
-- TOC entry 323 (class 1255 OID 62859)
-- Name: sp_examenes(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_examenes() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_examenes (id_examen, nombre, descripcion, id_tipo_examen, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_examen, NEW.nombre, NEW.descripcion, NEW.id_tipo_examen, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_examenes (id_examen, nombre, descripcion, id_tipo_examen, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_examen, OLD.nombre, OLD.descripcion, OLD.id_tipo_examen, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_examenes() OWNER TO postgres;

--
-- TOC entry 335 (class 1255 OID 62860)
-- Name: sp_examenes_trabajadores(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_examenes_trabajadores() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_examenes_trabajadores (id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_examen_trabajador, NEW.id_tipo_examen, NEW.fecha, NEW.id_resultado_examen, NEW.observacion, NEW.id_trabajador, NEW.fecha_nuevo_estudio, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_examenes_trabajadores (id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_examen_trabajador, OLD.id_tipo_examen, OLD.fecha, OLD.id_resultado_examen, OLD.observacion, OLD.id_trabajador, OLD.fecha_nuevo_estudio, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_examenes_trabajadores() OWNER TO postgres;

--
-- TOC entry 336 (class 1255 OID 42470)
-- Name: sp_formas_cotizacion(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_formas_cotizacion() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_formas_cotizacion (id_forma_cotizacion, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_forma_cotizacion, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_formas_cotizacion (id_forma_cotizacion, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_forma_cotizacion, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_formas_cotizacion() OWNER TO postgres;

--
-- TOC entry 337 (class 1255 OID 42471)
-- Name: sp_grupos_cotizaciones(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_grupos_cotizaciones() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_grupos_cotizaciones (id_grupo_cotizacion, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_grupo_cotizacion, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_grupos_cotizaciones (id_grupo_cotizacion, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_grupo_cotizacion, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_grupos_cotizaciones() OWNER TO postgres;

--
-- TOC entry 338 (class 1255 OID 53258)
-- Name: sp_hijos(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_hijos() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_hijo, NEW.apeynom, NEW.fecha_nacimiento, NEW.id_trabajador, NEW.discapacidad, NEW.sexo, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_hijo, OLD.apeynom, OLD.fecha_nacimiento, OLD.id_trabajador, OLD.discapacidad, OLD.sexo, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_hijos() OWNER TO postgres;

--
-- TOC entry 339 (class 1255 OID 63329)
-- Name: sp_inasistencias(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_inasistencias() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_inasistencias (id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_insistencia, NEW.justificada, NEW.id_articulo, NEW.fecha_desde, NEW.fecha_hasta, NEW.observaciones, NEW.id_trabajador, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_inasistencias (id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_insistencia, OLD.justificada, OLD.id_articulo, OLD.fecha_desde, OLD.fecha_hasta, OLD.observaciones, OLD.id_trabajador, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_inasistencias() OWNER TO postgres;

--
-- TOC entry 340 (class 1255 OID 62861)
-- Name: sp_licencias(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_licencias() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_licencia, NEW.nombre, NEW.descripcion, NEW.id_tipo_licencia, NEW.dias, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_licencia, OLD.nombre, OLD.descripcion, OLD.id_tipo_licencia, OLD.dias, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_licencias() OWNER TO postgres;

--
-- TOC entry 316 (class 1255 OID 62862)
-- Name: sp_licencias_trabajadores(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_licencias_trabajadores() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_licencias_trabajadores (id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_licencia, id_trabajador, observacion, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_licencia_trabajador, NEW.cantidad_dia, NEW.fecha_desde, NEW.fecha_hasta, NEW.id_licencia, NEW.id_trabajador, NEW.observacion, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_licencias_trabajadores (id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_licencia, id_trabajador, observacion, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_licencia_trabajador, OLD.cantidad_dia, OLD.fecha_desde, OLD.fecha_hasta, OLD.id_licencia, OLD.id_trabajador, OLD.observacion, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_licencias_trabajadores() OWNER TO postgres;

--
-- TOC entry 317 (class 1255 OID 41620)
-- Name: sp_localidades(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_localidades() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_localidades (id_localidad, nombre, id_provincia, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_localidad, NEW.nombre, NEW.id_provincia, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_localidades (id_localidad, nombre, id_provincia, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_localidad, OLD.nombre, OLD.id_provincia, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_localidades() OWNER TO postgres;

--
-- TOC entry 318 (class 1255 OID 51966)
-- Name: sp_obras_sociales(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_obras_sociales() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_obras_sociales (id_obra_social, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_obra_social, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_obras_sociales (id_obra_social, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_obra_social, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_obras_sociales() OWNER TO postgres;

--
-- TOC entry 319 (class 1255 OID 41621)
-- Name: sp_paises(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_paises() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_paises (id_pais, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_pais, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_paises (id_pais, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_pais, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_paises() OWNER TO postgres;

--
-- TOC entry 320 (class 1255 OID 42472)
-- Name: sp_profesiones(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_profesiones() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_profesiones (id_profesion, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_profesion, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_profesiones (id_profesion, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_profesion, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_profesiones() OWNER TO postgres;

--
-- TOC entry 341 (class 1255 OID 41622)
-- Name: sp_provincias(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_provincias() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_provincias (id_provincia, nombre, id_pais, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_provincia, NEW.nombre, NEW.id_pais, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_provincias (id_provincia, nombre, id_pais, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_provincia, OLD.nombre, OLD.id_pais, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_provincias() OWNER TO postgres;

--
-- TOC entry 342 (class 1255 OID 62863)
-- Name: sp_resultados_examenes(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_resultados_examenes() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_resultados_examenes (id_resultado, nombre, descripcion, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_resultado, NEW.nombre, NEW.descripcion, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_resultados_examenes (id_resultado, nombre, descripcion, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_resultado, OLD.nombre, OLD.descripcion, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_resultados_examenes() OWNER TO postgres;

--
-- TOC entry 343 (class 1255 OID 63330)
-- Name: sp_sanciones_disciplinarias(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_sanciones_disciplinarias() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_sanciones_disciplinarias (id_sancion, id_tipo_sancion, id_trabajador, observaciones, fecha, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_sancion, NEW.id_tipo_sancion, NEW.id_trabajador, NEW.observaciones, NEW.fecha, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_sanciones_disciplinarias (id_sancion, id_tipo_sancion, id_trabajador, observaciones, fecha, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_sancion, OLD.id_tipo_sancion, OLD.id_trabajador, OLD.observaciones, OLD.fecha, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_sanciones_disciplinarias() OWNER TO postgres;

--
-- TOC entry 344 (class 1255 OID 41623)
-- Name: sp_situaciones(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_situaciones() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_situacion, NEW.id_trabajador, NEW.id_departamento, NEW.id_forma_cotizacion, NEW.id_convenio, NEW.id_categoria, NEW.id_grupo_cotizacion, NEW.id_ocupacion, NEW.cantidad_hora, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_situacion, OLD.id_trabajador, OLD.id_departamento, OLD.id_forma_cotizacion, OLD.id_convenio, OLD.id_categoria, OLD.id_grupo_cotizacion, OLD.id_ocupacion, OLD.cantidad_hora, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_situaciones() OWNER TO postgres;

--
-- TOC entry 345 (class 1255 OID 62864)
-- Name: sp_tipos_asignaciones(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_tipos_asignaciones() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_tipos_asignaciones (id_tipo_asignacion, nombre, descripcion, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_tipo_asignacion, NEW.nombre, NEW.descripcion, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_tipos_asignaciones (id_tipo_asignacion, nombre, descripcion, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_tipo_asignacion, OLD.nombre, OLD.descripcion, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_tipos_asignaciones() OWNER TO postgres;

--
-- TOC entry 346 (class 1255 OID 63331)
-- Name: sp_tipos_certificados(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_tipos_certificados() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_tipos_certificados (id_tipo_certificado, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_tipo_certificado, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_tipos_certificados (id_tipo_certificado, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_tipo_certificado, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_tipos_certificados() OWNER TO postgres;

--
-- TOC entry 347 (class 1255 OID 42473)
-- Name: sp_tipos_documentos(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_tipos_documentos() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_tipos_documentos (tipo_persona, nombre, descripcion, id_tipo_documento, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.tipo_persona, NEW.nombre, NEW.descripcion, NEW.id_tipo_documento, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_tipos_documentos (tipo_persona, nombre, descripcion, id_tipo_documento, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.tipo_persona, OLD.nombre, OLD.descripcion, OLD.id_tipo_documento, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_tipos_documentos() OWNER TO postgres;

--
-- TOC entry 348 (class 1255 OID 62865)
-- Name: sp_tipos_examenes(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_tipos_examenes() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_tipos_examenes (id_tipo_examen, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_tipo_examen, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_tipos_examenes (id_tipo_examen, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_tipo_examen, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_tipos_examenes() OWNER TO postgres;

--
-- TOC entry 349 (class 1255 OID 62866)
-- Name: sp_tipos_licencias(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_tipos_licencias() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_tipos_licencias (id_tipo_licencia, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_tipo_licencia, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_tipos_licencias (id_tipo_licencia, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_tipo_licencia, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_tipos_licencias() OWNER TO postgres;

--
-- TOC entry 350 (class 1255 OID 42474)
-- Name: sp_tipos_parientes(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_tipos_parientes() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_tipos_parientes (id_tipo_parentesco, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_tipo_parentesco, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_tipos_parientes (id_tipo_parentesco, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_tipo_parentesco, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_tipos_parientes() OWNER TO postgres;

--
-- TOC entry 321 (class 1255 OID 41624)
-- Name: sp_trabajadores(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_trabajadores() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_trabajador, NEW.id_tipo_dni, NEW.numero_dni, NEW.apeynom, NEW.estado, NEW.fecha_alta, NEW.fecha_baja, NEW.dom_nombre_calle, NEW.dom_numero_calle, NEW.dom_nombre_edificio, NEW.dom_numero_piso, NEW.codigo_postal, NEW.id_localidad, NEW.codigo_telefono, NEW.numero_telefono, NEW.codigo_celular, NEW.numero_celular, NEW.email, NEW.fecha_nacimiento, NEW.porcentaje_minusvalia, NEW.nombre_padre, NEW.nombre_madre, NEW.sexo, NEW.estado_civil, NEW.id_vinculo_familiar, NEW.observaciones, NEW.id_obra_social, NEW.numero_seguridad_social_a, NEW.numero_seguridad_social_b, NEW.numero_seguridad_social, NEW.cuil, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_trabajador, OLD.id_tipo_dni, OLD.numero_dni, OLD.apeynom, OLD.estado, OLD.fecha_alta, OLD.fecha_baja, OLD.dom_nombre_calle, OLD.dom_numero_calle, OLD.dom_nombre_edificio, OLD.dom_numero_piso, OLD.codigo_postal, OLD.id_localidad, OLD.codigo_telefono, OLD.numero_telefono, OLD.codigo_celular, OLD.numero_celular, OLD.email, OLD.fecha_nacimiento, OLD.porcentaje_minusvalia, OLD.nombre_padre, OLD.nombre_madre, OLD.sexo, OLD.estado_civil, OLD.id_vinculo_familiar, OLD.observaciones, OLD.id_obra_social, OLD.numero_seguridad_social_a, OLD.numero_seguridad_social_b, OLD.numero_seguridad_social, OLD.cuil, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_trabajadores() OWNER TO postgres;

--
-- TOC entry 351 (class 1255 OID 41625)
-- Name: sp_vinculos_familiares(); Type: FUNCTION; Schema: public_auditoria; Owner: postgres
--

CREATE FUNCTION public_auditoria.sp_vinculos_familiares() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
				DECLARE
					schema_temp varchar;
					rtabla_usr RECORD;
					rusuario RECORD;
					vusuario VARCHAR(60);
					voperacion varchar;
					vid_solicitud integer;
					vestampilla timestamp;
				BEGIN
					vestampilla := current_timestamp;
					SELECT INTO schema_temp public.recuperar_schema_temp();
					SELECT INTO rtabla_usr * FROM pg_tables WHERE tablename = 'tt_usuario' AND schemaname = schema_temp;
					IF FOUND THEN
						SELECT INTO rusuario usuario, id_solicitud FROM tt_usuario;
						IF FOUND THEN
							vusuario := rusuario.usuario;
							vid_solicitud := rusuario.id_solicitud;
						ELSE
							vusuario := user;
							vid_solicitud := 0;
						END IF;
					ELSE
						vusuario := user;
					END IF;
					IF (TG_OP = 'INSERT') OR (TG_OP = 'UPDATE') THEN
						IF (TG_OP = 'INSERT') THEN
							voperacion := 'I';
						ELSE
							voperacion := 'U';
						END IF;
				INSERT INTO public_auditoria.logs_vinculos_familiares (id_vinculo_familiar, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (NEW.id_vinculo_familiar, NEW.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					ELSIF TG_OP = 'DELETE' THEN
						voperacion := 'D';
						INSERT INTO public_auditoria.logs_vinculos_familiares (id_vinculo_familiar, nombre, auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud) VALUES (OLD.id_vinculo_familiar, OLD.nombre, vusuario, vestampilla, voperacion, vid_solicitud);
					END IF;
					RETURN NULL;
				END;
			$$;


ALTER FUNCTION public_auditoria.sp_vinculos_familiares() OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 274 (class 1259 OID 63092)
-- Name: antecentes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.antecentes (
    id_antecedente integer NOT NULL,
    fecha_emision date,
    posee_antecedente character(1),
    fecha_vencimiento date,
    observaciones character varying,
    id_trabajador integer
);


ALTER TABLE public.antecentes OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 63090)
-- Name: antecentes_id_antecedente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.antecentes_id_antecedente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.antecentes_id_antecedente_seq OWNER TO postgres;

--
-- TOC entry 2827 (class 0 OID 0)
-- Dependencies: 273
-- Name: antecentes_id_antecedente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.antecentes_id_antecedente_seq OWNED BY public.antecentes.id_antecedente;


--
-- TOC entry 293 (class 1259 OID 63419)
-- Name: articulos_inasistencias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articulos_inasistencias (
    id_articulo integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.articulos_inasistencias OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 63417)
-- Name: articulos_inasistencias_id_articulo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articulos_inasistencias_id_articulo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articulos_inasistencias_id_articulo_seq OWNER TO postgres;

--
-- TOC entry 2828 (class 0 OID 0)
-- Dependencies: 292
-- Name: articulos_inasistencias_id_articulo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articulos_inasistencias_id_articulo_seq OWNED BY public.articulos_inasistencias.id_articulo;


--
-- TOC entry 272 (class 1259 OID 62977)
-- Name: asignaciones_flia_trabajador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asignaciones_flia_trabajador (
    id_asignacion_flia_trabajador integer NOT NULL,
    id_tipo_asignacion integer,
    id_trabajador integer,
    fecha date,
    observacion character varying
);


ALTER TABLE public.asignaciones_flia_trabajador OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 62975)
-- Name: asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq OWNER TO postgres;

--
-- TOC entry 2829 (class 0 OID 0)
-- Dependencies: 271
-- Name: asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq OWNED BY public.asignaciones_flia_trabajador.id_asignacion_flia_trabajador;


--
-- TOC entry 222 (class 1259 OID 42141)
-- Name: categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorias (
    id_categoria integer NOT NULL,
    nombre character varying(255) NOT NULL,
    basico double precision,
    partida integer,
    basico_total double precision,
    id_convenio integer
);


ALTER TABLE public.categorias OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 42144)
-- Name: cargos_id_cargo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cargos_id_cargo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cargos_id_cargo_seq OWNER TO postgres;

--
-- TOC entry 2830 (class 0 OID 0)
-- Dependencies: 223
-- Name: cargos_id_cargo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cargos_id_cargo_seq OWNED BY public.categorias.id_categoria;


--
-- TOC entry 219 (class 1259 OID 41657)
-- Name: convenios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.convenios (
    id_convenio integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.convenios OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 41655)
-- Name: convenios_id_convenio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.convenios_id_convenio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.convenios_id_convenio_seq OWNER TO postgres;

--
-- TOC entry 2831 (class 0 OID 0)
-- Dependencies: 218
-- Name: convenios_id_convenio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.convenios_id_convenio_seq OWNED BY public.convenios.id_convenio;


--
-- TOC entry 295 (class 1259 OID 64502)
-- Name: conyugue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conyugue (
    id_conyugue integer NOT NULL,
    apeynom character varying,
    sexo character(1),
    dom_calle character varying,
    dom_num integer,
    id_trabajador integer
);


ALTER TABLE public.conyugue OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 64500)
-- Name: conyugue_id_conyugue_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conyugue_id_conyugue_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conyugue_id_conyugue_seq OWNER TO postgres;

--
-- TOC entry 2832 (class 0 OID 0)
-- Dependencies: 294
-- Name: conyugue_id_conyugue_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conyugue_id_conyugue_seq OWNED BY public.conyugue.id_conyugue;


--
-- TOC entry 282 (class 1259 OID 63152)
-- Name: documentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.documentos (
    id_documento integer NOT NULL,
    nombre character varying,
    id_tipo_certificado integer,
    id_trabajador integer,
    fecha date,
    doc_adjunto character varying
);


ALTER TABLE public.documentos OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 63150)
-- Name: dcumentos_id_documento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dcumentos_id_documento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dcumentos_id_documento_seq OWNER TO postgres;

--
-- TOC entry 2833 (class 0 OID 0)
-- Dependencies: 281
-- Name: dcumentos_id_documento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dcumentos_id_documento_seq OWNED BY public.documentos.id_documento;


--
-- TOC entry 228 (class 1259 OID 42304)
-- Name: departamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamentos (
    id_departamento integer NOT NULL,
    idinstancia integer,
    nombre_corto character varying,
    nombre_largo character varying,
    calle character varying,
    nro_propiedad integer,
    piso character varying(5),
    depto character varying(3),
    email character varying,
    nivel_organigrama integer,
    telefono_numero character varying,
    telefono_centrex character varying,
    abreviatura character varying,
    responsable_externo character varying,
    fecha date,
    idnorma integer,
    idagente integer,
    id_localidad integer,
    id_fuero integer,
    activa boolean DEFAULT true
);


ALTER TABLE public.departamentos OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 63173)
-- Name: domicilios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domicilios (
    id_domicilio integer NOT NULL,
    domicilio_calle character varying,
    domicilio_num integer,
    fecha date,
    id_trabajador integer,
    estado character(2) DEFAULT 'AC'::bpchar
);


ALTER TABLE public.domicilios OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 63171)
-- Name: domicilio_id_domicilio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.domicilio_id_domicilio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domicilio_id_domicilio_seq OWNER TO postgres;

--
-- TOC entry 2834 (class 0 OID 0)
-- Dependencies: 283
-- Name: domicilio_id_domicilio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.domicilio_id_domicilio_seq OWNED BY public.domicilios.id_domicilio;


--
-- TOC entry 238 (class 1259 OID 43283)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa (
    id_empresa integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.empresa OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 42177)
-- Name: estados_civiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estados_civiles (
    id_estado_civil character(1) NOT NULL,
    nombre character varying(100)
);


ALTER TABLE public.estados_civiles OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 62443)
-- Name: examenes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.examenes (
    id_examen integer NOT NULL,
    nombre character varying,
    descripcion character varying,
    id_tipo_examen integer
);


ALTER TABLE public.examenes OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 62441)
-- Name: examenes_id_examen_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.examenes_id_examen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.examenes_id_examen_seq OWNER TO postgres;

--
-- TOC entry 2835 (class 0 OID 0)
-- Dependencies: 253
-- Name: examenes_id_examen_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.examenes_id_examen_seq OWNED BY public.examenes.id_examen;


--
-- TOC entry 258 (class 1259 OID 62470)
-- Name: examenes_trabajadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.examenes_trabajadores (
    id_examen_trabajador integer NOT NULL,
    id_tipo_examen integer,
    fecha date,
    id_resultado_examen integer,
    observacion character varying,
    id_trabajador integer,
    fecha_nuevo_estudio date
);


ALTER TABLE public.examenes_trabajadores OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 62468)
-- Name: examenes_trabajadores_id_examen_trabajador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.examenes_trabajadores_id_examen_trabajador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.examenes_trabajadores_id_examen_trabajador_seq OWNER TO postgres;

--
-- TOC entry 2836 (class 0 OID 0)
-- Dependencies: 257
-- Name: examenes_trabajadores_id_examen_trabajador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.examenes_trabajadores_id_examen_trabajador_seq OWNED BY public.examenes_trabajadores.id_examen_trabajador;


--
-- TOC entry 215 (class 1259 OID 41635)
-- Name: formas_cotizacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.formas_cotizacion (
    id_forma_cotizacion integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.formas_cotizacion OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 41633)
-- Name: formas_cotizacion_id_forma_cotizacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.formas_cotizacion_id_forma_cotizacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.formas_cotizacion_id_forma_cotizacion_seq OWNER TO postgres;

--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 214
-- Name: formas_cotizacion_id_forma_cotizacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.formas_cotizacion_id_forma_cotizacion_seq OWNED BY public.formas_cotizacion.id_forma_cotizacion;


--
-- TOC entry 217 (class 1259 OID 41646)
-- Name: grupos_cotizaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grupos_cotizaciones (
    id_grupo_cotizacion integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.grupos_cotizaciones OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 41644)
-- Name: grupos_cotizaciones_id_grupo_cotizacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grupos_cotizaciones_id_grupo_cotizacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grupos_cotizaciones_id_grupo_cotizacion_seq OWNER TO postgres;

--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 216
-- Name: grupos_cotizaciones_id_grupo_cotizacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grupos_cotizaciones_id_grupo_cotizacion_seq OWNED BY public.grupos_cotizaciones.id_grupo_cotizacion;


--
-- TOC entry 244 (class 1259 OID 53050)
-- Name: hijos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hijos (
    id_hijo integer NOT NULL,
    apeynom character varying,
    fecha_nacimiento date,
    id_trabajador integer,
    discapacidad character(2),
    sexo character(1)
);


ALTER TABLE public.hijos OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 53048)
-- Name: hijos_id_hijo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hijos_id_hijo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hijos_id_hijo_seq OWNER TO postgres;

--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 243
-- Name: hijos_id_hijo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hijos_id_hijo_seq OWNED BY public.hijos.id_hijo;


--
-- TOC entry 276 (class 1259 OID 63109)
-- Name: inasistencias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inasistencias (
    id_insistencia integer NOT NULL,
    justificada character(1),
    id_articulo integer,
    fecha_desde date,
    fecha_hasta date,
    observaciones character varying,
    id_trabajador integer,
    cantidad integer
);


ALTER TABLE public.inasistencias OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 63107)
-- Name: inasistencias_id_insistencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inasistencias_id_insistencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inasistencias_id_insistencia_seq OWNER TO postgres;

--
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 275
-- Name: inasistencias_id_insistencia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inasistencias_id_insistencia_seq OWNED BY public.inasistencias.id_insistencia;


--
-- TOC entry 250 (class 1259 OID 62416)
-- Name: licencias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licencias (
    id_licencia integer NOT NULL,
    nombre character varying,
    descripcion text,
    id_tipo_licencia integer,
    dias integer
);


ALTER TABLE public.licencias OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 62414)
-- Name: licencias_id_licencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.licencias_id_licencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.licencias_id_licencia_seq OWNER TO postgres;

--
-- TOC entry 2841 (class 0 OID 0)
-- Dependencies: 249
-- Name: licencias_id_licencia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.licencias_id_licencia_seq OWNED BY public.licencias.id_licencia;


--
-- TOC entry 260 (class 1259 OID 62496)
-- Name: licencias_trabajadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licencias_trabajadores (
    id_licencia_trabajador integer NOT NULL,
    cantidad_dia integer,
    fecha_desde date,
    fecha_hasta date,
    id_licencia integer,
    id_trabajador integer,
    observacion character varying
);


ALTER TABLE public.licencias_trabajadores OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 62494)
-- Name: licencias_trabajadores_id_licencia_trabajador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.licencias_trabajadores_id_licencia_trabajador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.licencias_trabajadores_id_licencia_trabajador_seq OWNER TO postgres;

--
-- TOC entry 2842 (class 0 OID 0)
-- Dependencies: 259
-- Name: licencias_trabajadores_id_licencia_trabajador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.licencias_trabajadores_id_licencia_trabajador_seq OWNED BY public.licencias_trabajadores.id_licencia_trabajador;


--
-- TOC entry 198 (class 1259 OID 41489)
-- Name: localidad_id_localidad_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.localidad_id_localidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.localidad_id_localidad_seq OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 41491)
-- Name: localidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.localidades (
    id_localidad integer DEFAULT nextval('public.localidad_id_localidad_seq'::regclass) NOT NULL,
    nombre character varying NOT NULL,
    id_provincia integer
);


ALTER TABLE public.localidades OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 51583)
-- Name: obras_sociales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.obras_sociales (
    id_obra_social integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.obras_sociales OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 41498)
-- Name: paises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paises (
    id_pais integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.paises OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 41504)
-- Name: pais_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pais_id_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pais_id_pais_seq OWNER TO postgres;

--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 201
-- Name: pais_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pais_id_pais_seq OWNED BY public.paises.id_pais;


--
-- TOC entry 227 (class 1259 OID 42182)
-- Name: profesiones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesiones (
    id_profesion integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.profesiones OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 41506)
-- Name: provincia_id_provincia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provincia_id_provincia_seq
    START WITH 26
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.provincia_id_provincia_seq OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 41508)
-- Name: provincias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provincias (
    id_provincia integer DEFAULT nextval('public.provincia_id_provincia_seq'::regclass) NOT NULL,
    nombre character(20) NOT NULL,
    id_pais integer NOT NULL
);


ALTER TABLE public.provincias OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 62459)
-- Name: resultados_examenes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resultados_examenes (
    id_resultado integer NOT NULL,
    nombre character varying,
    descripcion character varying
);


ALTER TABLE public.resultados_examenes OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 62457)
-- Name: resultados_examenes_id_resultado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resultados_examenes_id_resultado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultados_examenes_id_resultado_seq OWNER TO postgres;

--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 255
-- Name: resultados_examenes_id_resultado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resultados_examenes_id_resultado_seq OWNED BY public.resultados_examenes.id_resultado;


--
-- TOC entry 278 (class 1259 OID 63125)
-- Name: sanciones_disciplinarias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sanciones_disciplinarias (
    id_sancion integer NOT NULL,
    id_tipo_sancion integer,
    id_trabajador integer,
    observaciones character varying,
    fecha date
);


ALTER TABLE public.sanciones_disciplinarias OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 63123)
-- Name: sanciones_disciplinarias_id_sancion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sanciones_disciplinarias_id_sancion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sanciones_disciplinarias_id_sancion_seq OWNER TO postgres;

--
-- TOC entry 2845 (class 0 OID 0)
-- Dependencies: 277
-- Name: sanciones_disciplinarias_id_sancion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sanciones_disciplinarias_id_sancion_seq OWNED BY public.sanciones_disciplinarias.id_sancion;


--
-- TOC entry 204 (class 1259 OID 41512)
-- Name: situaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.situaciones (
    id_situacion integer NOT NULL,
    id_trabajador integer,
    id_departamento integer,
    id_forma_cotizacion integer,
    id_convenio integer,
    id_categoria integer,
    id_grupo_cotizacion integer,
    id_ocupacion integer,
    cantidad_hora double precision
);


ALTER TABLE public.situaciones OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 41518)
-- Name: situaciones_id_situacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.situaciones_id_situacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.situaciones_id_situacion_seq OWNER TO postgres;

--
-- TOC entry 2846 (class 0 OID 0)
-- Dependencies: 205
-- Name: situaciones_id_situacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.situaciones_id_situacion_seq OWNED BY public.situaciones.id_situacion;


--
-- TOC entry 262 (class 1259 OID 62542)
-- Name: tipos_asignaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_asignaciones (
    id_tipo_asignacion integer NOT NULL,
    nombre character varying,
    descripcion character varying
);


ALTER TABLE public.tipos_asignaciones OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 62540)
-- Name: tipos_asignaciones_id_tipo_asignacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_asignaciones_id_tipo_asignacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_asignaciones_id_tipo_asignacion_seq OWNER TO postgres;

--
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 261
-- Name: tipos_asignaciones_id_tipo_asignacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_asignaciones_id_tipo_asignacion_seq OWNED BY public.tipos_asignaciones.id_tipo_asignacion;


--
-- TOC entry 280 (class 1259 OID 63141)
-- Name: tipos_certificados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_certificados (
    id_tipo_certificado integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.tipos_certificados OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 63139)
-- Name: tipos_certificados_id_tipo_certificado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_certificados_id_tipo_certificado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_certificados_id_tipo_certificado_seq OWNER TO postgres;

--
-- TOC entry 2848 (class 0 OID 0)
-- Dependencies: 279
-- Name: tipos_certificados_id_tipo_certificado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_certificados_id_tipo_certificado_seq OWNED BY public.tipos_certificados.id_tipo_certificado;


--
-- TOC entry 220 (class 1259 OID 42130)
-- Name: tipos_documentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_documentos (
    tipo_persona character varying,
    nombre character varying,
    descripcion character varying,
    id_tipo_documento integer NOT NULL
);


ALTER TABLE public.tipos_documentos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 42136)
-- Name: tipos_de_documento_id_tipo_documento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_de_documento_id_tipo_documento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_de_documento_id_tipo_documento_seq OWNER TO postgres;

--
-- TOC entry 2849 (class 0 OID 0)
-- Dependencies: 221
-- Name: tipos_de_documento_id_tipo_documento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_de_documento_id_tipo_documento_seq OWNED BY public.tipos_documentos.id_tipo_documento;


--
-- TOC entry 252 (class 1259 OID 62432)
-- Name: tipos_examenes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_examenes (
    id_tipo_examen integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.tipos_examenes OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 62430)
-- Name: tipos_examenes_id_tipo_examen_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_examenes_id_tipo_examen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_examenes_id_tipo_examen_seq OWNER TO postgres;

--
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 251
-- Name: tipos_examenes_id_tipo_examen_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_examenes_id_tipo_examen_seq OWNED BY public.tipos_examenes.id_tipo_examen;


--
-- TOC entry 248 (class 1259 OID 62405)
-- Name: tipos_licencias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_licencias (
    id_tipo_licencia integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.tipos_licencias OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 62403)
-- Name: tipos_licencias_id_tipo_licencia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_licencias_id_tipo_licencia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_licencias_id_tipo_licencia_seq OWNER TO postgres;

--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 247
-- Name: tipos_licencias_id_tipo_licencia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_licencias_id_tipo_licencia_seq OWNED BY public.tipos_licencias.id_tipo_licencia;


--
-- TOC entry 224 (class 1259 OID 42166)
-- Name: tipos_parientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_parientes (
    id_tipo_parentesco integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.tipos_parientes OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 42172)
-- Name: tipos_parientes_id_tipo_parentesco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_parientes_id_tipo_parentesco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_parientes_id_tipo_parentesco_seq OWNER TO postgres;

--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 225
-- Name: tipos_parientes_id_tipo_parentesco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_parientes_id_tipo_parentesco_seq OWNED BY public.tipos_parientes.id_tipo_parentesco;


--
-- TOC entry 206 (class 1259 OID 41520)
-- Name: trabajadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trabajadores (
    id_trabajador integer NOT NULL,
    id_tipo_dni integer,
    numero_dni bigint,
    apeynom character varying,
    estado character(2),
    fecha_alta date,
    fecha_baja date,
    dom_nombre_calle character varying,
    dom_numero_calle integer,
    dom_nombre_edificio character varying,
    dom_numero_piso integer,
    codigo_postal integer,
    id_localidad integer,
    codigo_telefono integer,
    numero_telefono character(8),
    codigo_celular integer,
    numero_celular character(8),
    email character varying,
    fecha_nacimiento date,
    porcentaje_minusvalia double precision,
    nombre_padre character varying,
    nombre_madre character varying,
    sexo character(1),
    estado_civil character(1),
    id_vinculo_familiar integer,
    observaciones text,
    id_obra_social integer,
    numero_seguridad_social_a integer,
    numero_seguridad_social_b integer,
    numero_seguridad_social character varying(50),
    cuil bigint
);


ALTER TABLE public.trabajadores OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 41526)
-- Name: trabajador_id_trabajador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trabajador_id_trabajador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trabajador_id_trabajador_seq OWNER TO postgres;

--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 207
-- Name: trabajador_id_trabajador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trabajador_id_trabajador_seq OWNED BY public.trabajadores.id_trabajador;


--
-- TOC entry 301 (class 1259 OID 65793)
-- Name: traslados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.traslados (
    id_traslado integer NOT NULL,
    id_trabajador integer,
    id_departamento integer,
    fecha_desde date,
    fecha_hasta date,
    observaciones character varying,
    tipo_traslado character(1)
);


ALTER TABLE public.traslados OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 65791)
-- Name: traslados_id_traslado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.traslados_id_traslado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.traslados_id_traslado_seq OWNER TO postgres;

--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 300
-- Name: traslados_id_traslado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.traslados_id_traslado_seq OWNED BY public.traslados.id_traslado;


--
-- TOC entry 208 (class 1259 OID 41528)
-- Name: vinculos_familiares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vinculos_familiares (
    id_vinculo_familiar integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.vinculos_familiares OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 41534)
-- Name: vinculos_familiares_id_vinculo_familiar_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vinculos_familiares_id_vinculo_familiar_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vinculos_familiares_id_vinculo_familiar_seq OWNER TO postgres;

--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 209
-- Name: vinculos_familiares_id_vinculo_familiar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vinculos_familiares_id_vinculo_familiar_seq OWNED BY public.vinculos_familiares.id_vinculo_familiar;


--
-- TOC entry 285 (class 1259 OID 63283)
-- Name: logs_antecentes; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_antecentes (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_antecedente integer,
    fecha_emision date,
    posee_antecedente character(1),
    fecha_vencimiento date,
    observaciones character varying,
    id_trabajador integer
);


ALTER TABLE public_auditoria.logs_antecentes OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 65277)
-- Name: logs_articulos_inasistencias; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_articulos_inasistencias (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_articulo integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_articulos_inasistencias OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 63289)
-- Name: logs_asignaciones_flia_trabajador; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_asignaciones_flia_trabajador (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_asignacion_flia_trabajador integer,
    id_tipo_asignacion integer,
    id_trabajador integer,
    fecha date,
    observacion character varying
);


ALTER TABLE public_auditoria.logs_asignaciones_flia_trabajador OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 42418)
-- Name: logs_categorias; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_categorias (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_categoria integer,
    nombre character varying(255),
    basico double precision,
    partida integer,
    basico_total double precision,
    id_convenio integer
);


ALTER TABLE public_auditoria.logs_categorias OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 42421)
-- Name: logs_convenios; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_convenios (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_convenio integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_convenios OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 65283)
-- Name: logs_conyugue; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_conyugue (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_conyugue integer,
    apeynom character varying,
    sexo character(1),
    dom_calle character varying,
    dom_num integer,
    id_trabajador integer
);


ALTER TABLE public_auditoria.logs_conyugue OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 63295)
-- Name: logs_dcumentos; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_dcumentos (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_documento integer,
    nombre character varying,
    id_tipo_certificado integer,
    id_trabajador integer,
    fecha date
);


ALTER TABLE public_auditoria.logs_dcumentos OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 42427)
-- Name: logs_departamentos; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_departamentos (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_departamento integer,
    idinstancia integer,
    nombre_corto character varying,
    nombre_largo character varying,
    calle character varying,
    nro_propiedad integer,
    piso character varying(5),
    depto character varying(3),
    email character varying,
    nivel_organigrama integer,
    telefono_numero character varying,
    telefono_centrex character varying,
    abreviatura character varying,
    responsable_externo character varying,
    fecha date,
    idnorma integer,
    idagente integer,
    id_localidad integer,
    id_fuero integer,
    activa boolean
);


ALTER TABLE public_auditoria.logs_departamentos OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 65289)
-- Name: logs_documentos; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_documentos (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_documento integer,
    nombre character varying,
    id_tipo_certificado integer,
    id_trabajador integer,
    fecha date,
    doc_adjunto character varying
);


ALTER TABLE public_auditoria.logs_documentos OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 63301)
-- Name: logs_domicilio; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_domicilio (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_domicilio integer,
    domicilio_calle character varying,
    domicilio_num integer,
    fecha date,
    id_trabajador integer
);


ALTER TABLE public_auditoria.logs_domicilio OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 65295)
-- Name: logs_domicilios; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_domicilios (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_domicilio integer,
    domicilio_calle character varying,
    domicilio_num integer,
    fecha date,
    id_trabajador integer,
    estado character(2)
);


ALTER TABLE public_auditoria.logs_domicilios OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 51953)
-- Name: logs_empresa; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_empresa (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_empresa integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_empresa OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 42433)
-- Name: logs_estados_civiles; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_estados_civiles (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_estado_civil character(1),
    nombre character varying(100)
);


ALTER TABLE public_auditoria.logs_estados_civiles OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 62811)
-- Name: logs_examenes; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_examenes (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_examen integer,
    nombre character varying,
    descripcion character varying,
    id_tipo_examen integer
);


ALTER TABLE public_auditoria.logs_examenes OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 62817)
-- Name: logs_examenes_trabajadores; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_examenes_trabajadores (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_examen_trabajador integer,
    id_tipo_examen integer,
    fecha date,
    id_resultado_examen integer,
    observacion character varying,
    id_trabajador integer,
    fecha_nuevo_estudio date
);


ALTER TABLE public_auditoria.logs_examenes_trabajadores OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 42436)
-- Name: logs_formas_cotizacion; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_formas_cotizacion (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_forma_cotizacion integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_formas_cotizacion OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 42442)
-- Name: logs_grupos_cotizaciones; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_grupos_cotizaciones (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_grupo_cotizacion integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_grupos_cotizaciones OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 53252)
-- Name: logs_hijos; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_hijos (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_hijo integer,
    apeynom character varying,
    fecha_nacimiento date,
    id_trabajador integer,
    discapacidad character(2),
    sexo character(1)
);


ALTER TABLE public_auditoria.logs_hijos OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 63307)
-- Name: logs_inasistencias; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_inasistencias (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_insistencia integer,
    justificada character(1),
    id_articulo integer,
    fecha_desde date,
    fecha_hasta date,
    observaciones character varying,
    id_trabajador integer
);


ALTER TABLE public_auditoria.logs_inasistencias OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 62823)
-- Name: logs_licencias; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_licencias (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_licencia integer,
    nombre character varying,
    descripcion text,
    id_tipo_licencia integer,
    dias integer
);


ALTER TABLE public_auditoria.logs_licencias OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 62829)
-- Name: logs_licencias_trabajadores; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_licencias_trabajadores (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_licencia_trabajador integer,
    cantidad_dia integer,
    fecha_desde date,
    fecha_hasta date,
    id_trabajador integer,
    observacion character varying,
    id_licencia integer
);


ALTER TABLE public_auditoria.logs_licencias_trabajadores OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 41587)
-- Name: logs_localidades; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_localidades (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_localidad integer,
    nombre_localidad character varying,
    id_provincia integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_localidades OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 51959)
-- Name: logs_obras_sociales; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_obras_sociales (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_obra_social integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_obras_sociales OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 41593)
-- Name: logs_paises; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_paises (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_pais integer,
    nombre_pais character varying,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_paises OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 42448)
-- Name: logs_profesiones; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_profesiones (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_profesion integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_profesiones OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 41599)
-- Name: logs_provincias; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_provincias (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_provincia integer,
    nombre_provincia character(20),
    id_pais integer,
    nombre character(20)
);


ALTER TABLE public_auditoria.logs_provincias OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 62835)
-- Name: logs_resultados_examenes; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_resultados_examenes (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_resultado integer,
    nombre character varying,
    descripcion character varying
);


ALTER TABLE public_auditoria.logs_resultados_examenes OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 63313)
-- Name: logs_sanciones_disciplinarias; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_sanciones_disciplinarias (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_sancion integer,
    id_tipo_sancion integer,
    id_trabajador integer,
    observaciones character varying,
    fecha date
);


ALTER TABLE public_auditoria.logs_sanciones_disciplinarias OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 52298)
-- Name: logs_situaciones; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_situaciones (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_situacion integer,
    id_trabajador integer,
    id_departamento integer,
    id_forma_cotizacion integer,
    id_convenio integer,
    id_categoria integer,
    id_grupo_cotizacion integer,
    id_ocupacion integer,
    cantidad_hora double precision
);


ALTER TABLE public_auditoria.logs_situaciones OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 62841)
-- Name: logs_tipos_asignaciones; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_tipos_asignaciones (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_tipo_asignacion integer,
    nombre character varying,
    descripcion character varying
);


ALTER TABLE public_auditoria.logs_tipos_asignaciones OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 63319)
-- Name: logs_tipos_certificados; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_tipos_certificados (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_tipo_certificado integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_tipos_certificados OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 42454)
-- Name: logs_tipos_documentos; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_tipos_documentos (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    tipo_persona character varying,
    nombre character varying,
    descripcion character varying,
    id_tipo_documento integer
);


ALTER TABLE public_auditoria.logs_tipos_documentos OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 62847)
-- Name: logs_tipos_examenes; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_tipos_examenes (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_tipo_examen integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_tipos_examenes OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 62853)
-- Name: logs_tipos_licencias; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_tipos_licencias (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_tipo_licencia integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_tipos_licencias OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 42460)
-- Name: logs_tipos_parientes; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_tipos_parientes (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_tipo_parentesco integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_tipos_parientes OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 53305)
-- Name: logs_trabajadores; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_trabajadores (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_trabajador integer,
    id_tipo_dni integer,
    numero_dni bigint,
    apeynom character varying,
    estado character(2),
    fecha_alta date,
    fecha_baja date,
    dom_nombre_calle character varying,
    dom_numero_calle integer,
    dom_nombre_edificio character varying,
    dom_numero_piso integer,
    codigo_postal integer,
    id_localidad integer,
    codigo_telefono integer,
    numero_telefono character(8),
    codigo_celular integer,
    numero_celular character(8),
    email character varying,
    fecha_nacimiento date,
    porcentaje_minusvalia double precision,
    nombre_padre character varying,
    nombre_madre character varying,
    sexo character(1),
    estado_civil character(1),
    id_vinculo_familiar integer,
    observaciones text,
    id_obra_social integer,
    numero_seguridad_social_a integer,
    numero_seguridad_social_b integer,
    numero_seguridad_social character varying(50),
    cuil bigint
);


ALTER TABLE public_auditoria.logs_trabajadores OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 41614)
-- Name: logs_vinculos_familiares; Type: TABLE; Schema: public_auditoria; Owner: postgres
--

CREATE TABLE public_auditoria.logs_vinculos_familiares (
    auditoria_usuario character varying(60),
    auditoria_fecha timestamp without time zone,
    auditoria_operacion character(1),
    auditoria_id_solicitud integer,
    id_vinculo_familiar integer,
    nombre character varying
);


ALTER TABLE public_auditoria.logs_vinculos_familiares OWNER TO postgres;

--
-- TOC entry 2551 (class 2604 OID 63095)
-- Name: id_antecedente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antecentes ALTER COLUMN id_antecedente SET DEFAULT nextval('public.antecentes_id_antecedente_seq'::regclass);


--
-- TOC entry 2558 (class 2604 OID 63422)
-- Name: id_articulo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulos_inasistencias ALTER COLUMN id_articulo SET DEFAULT nextval('public.articulos_inasistencias_id_articulo_seq'::regclass);


--
-- TOC entry 2550 (class 2604 OID 62980)
-- Name: id_asignacion_flia_trabajador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignaciones_flia_trabajador ALTER COLUMN id_asignacion_flia_trabajador SET DEFAULT nextval('public.asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq'::regclass);


--
-- TOC entry 2538 (class 2604 OID 42146)
-- Name: id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.cargos_id_cargo_seq'::regclass);


--
-- TOC entry 2536 (class 2604 OID 41660)
-- Name: id_convenio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.convenios ALTER COLUMN id_convenio SET DEFAULT nextval('public.convenios_id_convenio_seq'::regclass);


--
-- TOC entry 2559 (class 2604 OID 64505)
-- Name: id_conyugue; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conyugue ALTER COLUMN id_conyugue SET DEFAULT nextval('public.conyugue_id_conyugue_seq'::regclass);


--
-- TOC entry 2555 (class 2604 OID 63155)
-- Name: id_documento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos ALTER COLUMN id_documento SET DEFAULT nextval('public.dcumentos_id_documento_seq'::regclass);


--
-- TOC entry 2556 (class 2604 OID 63176)
-- Name: id_domicilio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domicilios ALTER COLUMN id_domicilio SET DEFAULT nextval('public.domicilio_id_domicilio_seq'::regclass);


--
-- TOC entry 2545 (class 2604 OID 62446)
-- Name: id_examen; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenes ALTER COLUMN id_examen SET DEFAULT nextval('public.examenes_id_examen_seq'::regclass);


--
-- TOC entry 2547 (class 2604 OID 62473)
-- Name: id_examen_trabajador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenes_trabajadores ALTER COLUMN id_examen_trabajador SET DEFAULT nextval('public.examenes_trabajadores_id_examen_trabajador_seq'::regclass);


--
-- TOC entry 2534 (class 2604 OID 41638)
-- Name: id_forma_cotizacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formas_cotizacion ALTER COLUMN id_forma_cotizacion SET DEFAULT nextval('public.formas_cotizacion_id_forma_cotizacion_seq'::regclass);


--
-- TOC entry 2535 (class 2604 OID 41649)
-- Name: id_grupo_cotizacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupos_cotizaciones ALTER COLUMN id_grupo_cotizacion SET DEFAULT nextval('public.grupos_cotizaciones_id_grupo_cotizacion_seq'::regclass);


--
-- TOC entry 2541 (class 2604 OID 53053)
-- Name: id_hijo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hijos ALTER COLUMN id_hijo SET DEFAULT nextval('public.hijos_id_hijo_seq'::regclass);


--
-- TOC entry 2552 (class 2604 OID 63112)
-- Name: id_insistencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inasistencias ALTER COLUMN id_insistencia SET DEFAULT nextval('public.inasistencias_id_insistencia_seq'::regclass);


--
-- TOC entry 2543 (class 2604 OID 62419)
-- Name: id_licencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias ALTER COLUMN id_licencia SET DEFAULT nextval('public.licencias_id_licencia_seq'::regclass);


--
-- TOC entry 2548 (class 2604 OID 62499)
-- Name: id_licencia_trabajador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias_trabajadores ALTER COLUMN id_licencia_trabajador SET DEFAULT nextval('public.licencias_trabajadores_id_licencia_trabajador_seq'::regclass);


--
-- TOC entry 2529 (class 2604 OID 41536)
-- Name: id_pais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paises ALTER COLUMN id_pais SET DEFAULT nextval('public.pais_id_pais_seq'::regclass);


--
-- TOC entry 2546 (class 2604 OID 62462)
-- Name: id_resultado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados_examenes ALTER COLUMN id_resultado SET DEFAULT nextval('public.resultados_examenes_id_resultado_seq'::regclass);


--
-- TOC entry 2553 (class 2604 OID 63128)
-- Name: id_sancion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sanciones_disciplinarias ALTER COLUMN id_sancion SET DEFAULT nextval('public.sanciones_disciplinarias_id_sancion_seq'::regclass);


--
-- TOC entry 2531 (class 2604 OID 41537)
-- Name: id_situacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situaciones ALTER COLUMN id_situacion SET DEFAULT nextval('public.situaciones_id_situacion_seq'::regclass);


--
-- TOC entry 2549 (class 2604 OID 62545)
-- Name: id_tipo_asignacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_asignaciones ALTER COLUMN id_tipo_asignacion SET DEFAULT nextval('public.tipos_asignaciones_id_tipo_asignacion_seq'::regclass);


--
-- TOC entry 2554 (class 2604 OID 63144)
-- Name: id_tipo_certificado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_certificados ALTER COLUMN id_tipo_certificado SET DEFAULT nextval('public.tipos_certificados_id_tipo_certificado_seq'::regclass);


--
-- TOC entry 2537 (class 2604 OID 42138)
-- Name: id_tipo_documento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_documentos ALTER COLUMN id_tipo_documento SET DEFAULT nextval('public.tipos_de_documento_id_tipo_documento_seq'::regclass);


--
-- TOC entry 2544 (class 2604 OID 62435)
-- Name: id_tipo_examen; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_examenes ALTER COLUMN id_tipo_examen SET DEFAULT nextval('public.tipos_examenes_id_tipo_examen_seq'::regclass);


--
-- TOC entry 2542 (class 2604 OID 62408)
-- Name: id_tipo_licencia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_licencias ALTER COLUMN id_tipo_licencia SET DEFAULT nextval('public.tipos_licencias_id_tipo_licencia_seq'::regclass);


--
-- TOC entry 2539 (class 2604 OID 42174)
-- Name: id_tipo_parentesco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_parientes ALTER COLUMN id_tipo_parentesco SET DEFAULT nextval('public.tipos_parientes_id_tipo_parentesco_seq'::regclass);


--
-- TOC entry 2532 (class 2604 OID 41538)
-- Name: id_trabajador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajadores ALTER COLUMN id_trabajador SET DEFAULT nextval('public.trabajador_id_trabajador_seq'::regclass);


--
-- TOC entry 2560 (class 2604 OID 65796)
-- Name: id_traslado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traslados ALTER COLUMN id_traslado SET DEFAULT nextval('public.traslados_id_traslado_seq'::regclass);


--
-- TOC entry 2533 (class 2604 OID 41539)
-- Name: id_vinculo_familiar; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vinculos_familiares ALTER COLUMN id_vinculo_familiar SET DEFAULT nextval('public.vinculos_familiares_id_vinculo_familiar_seq'::regclass);


--
-- TOC entry 2621 (class 2606 OID 63100)
-- Name: antecentes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antecentes
    ADD CONSTRAINT antecentes_pkey PRIMARY KEY (id_antecedente);


--
-- TOC entry 2633 (class 2606 OID 63427)
-- Name: articulos_inasistencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulos_inasistencias
    ADD CONSTRAINT articulos_inasistencias_pkey PRIMARY KEY (id_articulo);


--
-- TOC entry 2619 (class 2606 OID 62985)
-- Name: asignaciones_flia_trabajador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignaciones_flia_trabajador
    ADD CONSTRAINT asignaciones_flia_trabajador_pkey PRIMARY KEY (id_asignacion_flia_trabajador);


--
-- TOC entry 2584 (class 2606 OID 42150)
-- Name: categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 2580 (class 2606 OID 41665)
-- Name: convenios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.convenios
    ADD CONSTRAINT convenios_pkey PRIMARY KEY (id_convenio);


--
-- TOC entry 2635 (class 2606 OID 64510)
-- Name: conyugue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conyugue
    ADD CONSTRAINT conyugue_pkey PRIMARY KEY (id_conyugue);


--
-- TOC entry 2629 (class 2606 OID 63160)
-- Name: dcumentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT dcumentos_pkey PRIMARY KEY (id_documento);


--
-- TOC entry 2592 (class 2606 OID 42327)
-- Name: departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id_departamento);


--
-- TOC entry 2631 (class 2606 OID 63181)
-- Name: domicilio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domicilios
    ADD CONSTRAINT domicilio_pkey PRIMARY KEY (id_domicilio);


--
-- TOC entry 2597 (class 2606 OID 43290)
-- Name: empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id_empresa);


--
-- TOC entry 2588 (class 2606 OID 42181)
-- Name: estados_civiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados_civiles
    ADD CONSTRAINT estados_civiles_pkey PRIMARY KEY (id_estado_civil);


--
-- TOC entry 2609 (class 2606 OID 62451)
-- Name: examenes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenes
    ADD CONSTRAINT examenes_pkey PRIMARY KEY (id_examen);


--
-- TOC entry 2613 (class 2606 OID 62478)
-- Name: examenes_trabajadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenes_trabajadores
    ADD CONSTRAINT examenes_trabajadores_pkey PRIMARY KEY (id_examen_trabajador);


--
-- TOC entry 2576 (class 2606 OID 41643)
-- Name: formas_cotizacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formas_cotizacion
    ADD CONSTRAINT formas_cotizacion_pkey PRIMARY KEY (id_forma_cotizacion);


--
-- TOC entry 2578 (class 2606 OID 41654)
-- Name: grupos_cotizaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupos_cotizaciones
    ADD CONSTRAINT grupos_cotizaciones_pkey PRIMARY KEY (id_grupo_cotizacion);


--
-- TOC entry 2601 (class 2606 OID 53058)
-- Name: hijos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hijos
    ADD CONSTRAINT hijos_pkey PRIMARY KEY (id_hijo);


--
-- TOC entry 2623 (class 2606 OID 63117)
-- Name: inasistencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inasistencias
    ADD CONSTRAINT inasistencias_pkey PRIMARY KEY (id_insistencia);


--
-- TOC entry 2605 (class 2606 OID 62424)
-- Name: licencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias
    ADD CONSTRAINT licencias_pkey PRIMARY KEY (id_licencia);


--
-- TOC entry 2615 (class 2606 OID 62504)
-- Name: licencias_trabajadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias_trabajadores
    ADD CONSTRAINT licencias_trabajadores_pkey PRIMARY KEY (id_licencia_trabajador);


--
-- TOC entry 2562 (class 2606 OID 41541)
-- Name: localidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localidades
    ADD CONSTRAINT localidad_pkey PRIMARY KEY (id_localidad);


--
-- TOC entry 2564 (class 2606 OID 41543)
-- Name: nombre_unico; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paises
    ADD CONSTRAINT nombre_unico UNIQUE (nombre);


--
-- TOC entry 2599 (class 2606 OID 51590)
-- Name: obras_sociales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.obras_sociales
    ADD CONSTRAINT obras_sociales_pkey PRIMARY KEY (id_obra_social);


--
-- TOC entry 2566 (class 2606 OID 41545)
-- Name: pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paises
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id_pais);


--
-- TOC entry 2590 (class 2606 OID 42189)
-- Name: profesiones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesiones
    ADD CONSTRAINT profesiones_pkey PRIMARY KEY (id_profesion);


--
-- TOC entry 2568 (class 2606 OID 41547)
-- Name: provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (id_provincia);


--
-- TOC entry 2611 (class 2606 OID 62467)
-- Name: resultados_examenes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resultados_examenes
    ADD CONSTRAINT resultados_examenes_pkey PRIMARY KEY (id_resultado);


--
-- TOC entry 2625 (class 2606 OID 63133)
-- Name: sanciones_disciplinarias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sanciones_disciplinarias
    ADD CONSTRAINT sanciones_disciplinarias_pkey PRIMARY KEY (id_sancion);


--
-- TOC entry 2570 (class 2606 OID 41549)
-- Name: situaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situaciones
    ADD CONSTRAINT situaciones_pkey PRIMARY KEY (id_situacion);


--
-- TOC entry 2617 (class 2606 OID 62550)
-- Name: tipos_asignaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_asignaciones
    ADD CONSTRAINT tipos_asignaciones_pkey PRIMARY KEY (id_tipo_asignacion);


--
-- TOC entry 2627 (class 2606 OID 63149)
-- Name: tipos_certificados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_certificados
    ADD CONSTRAINT tipos_certificados_pkey PRIMARY KEY (id_tipo_certificado);


--
-- TOC entry 2582 (class 2606 OID 42140)
-- Name: tipos_de_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_documentos
    ADD CONSTRAINT tipos_de_documento_pkey PRIMARY KEY (id_tipo_documento);


--
-- TOC entry 2607 (class 2606 OID 62440)
-- Name: tipos_examenes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_examenes
    ADD CONSTRAINT tipos_examenes_pkey PRIMARY KEY (id_tipo_examen);


--
-- TOC entry 2603 (class 2606 OID 62413)
-- Name: tipos_licencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_licencias
    ADD CONSTRAINT tipos_licencias_pkey PRIMARY KEY (id_tipo_licencia);


--
-- TOC entry 2586 (class 2606 OID 42176)
-- Name: tipos_parientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_parientes
    ADD CONSTRAINT tipos_parientes_pkey PRIMARY KEY (id_tipo_parentesco);


--
-- TOC entry 2572 (class 2606 OID 41551)
-- Name: trabajador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajadores
    ADD CONSTRAINT trabajador_pkey PRIMARY KEY (id_trabajador);


--
-- TOC entry 2637 (class 2606 OID 65801)
-- Name: traslados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traslados
    ADD CONSTRAINT traslados_pkey PRIMARY KEY (id_traslado);


--
-- TOC entry 2574 (class 2606 OID 41553)
-- Name: vinculos_familiares_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vinculos_familiares
    ADD CONSTRAINT vinculos_familiares_pkey PRIMARY KEY (id_vinculo_familiar);


--
-- TOC entry 2593 (class 1259 OID 42318)
-- Name: idx_dependencias_id_dependencia; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dependencias_id_dependencia ON public.departamentos USING btree (id_departamento);


--
-- TOC entry 2594 (class 1259 OID 42319)
-- Name: idx_dependencias_id_dependencia_destinatario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dependencias_id_dependencia_destinatario ON public.departamentos USING btree (id_departamento);


--
-- TOC entry 2595 (class 1259 OID 42320)
-- Name: idx_dependencias_id_dependencia_respuesta; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_dependencias_id_dependencia_respuesta ON public.departamentos USING btree (id_departamento);


--
-- TOC entry 2696 (class 2620 OID 65305)
-- Name: tauditoria_antecentes; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_antecentes AFTER INSERT OR DELETE OR UPDATE ON public.antecentes FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_antecentes();


--
-- TOC entry 2702 (class 2620 OID 65306)
-- Name: tauditoria_articulos_inasistencias; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_articulos_inasistencias AFTER INSERT OR DELETE OR UPDATE ON public.articulos_inasistencias FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_articulos_inasistencias();


--
-- TOC entry 2695 (class 2620 OID 65307)
-- Name: tauditoria_asignaciones_flia_trabajador; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_asignaciones_flia_trabajador AFTER INSERT OR DELETE OR UPDATE ON public.asignaciones_flia_trabajador FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_asignaciones_flia_trabajador();


--
-- TOC entry 2679 (class 2620 OID 65308)
-- Name: tauditoria_categorias; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_categorias AFTER INSERT OR DELETE OR UPDATE ON public.categorias FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_categorias();


--
-- TOC entry 2677 (class 2620 OID 65309)
-- Name: tauditoria_convenios; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_convenios AFTER INSERT OR DELETE OR UPDATE ON public.convenios FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_convenios();


--
-- TOC entry 2703 (class 2620 OID 65310)
-- Name: tauditoria_conyugue; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_conyugue AFTER INSERT OR DELETE OR UPDATE ON public.conyugue FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_conyugue();


--
-- TOC entry 2683 (class 2620 OID 65311)
-- Name: tauditoria_departamentos; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_departamentos AFTER INSERT OR DELETE OR UPDATE ON public.departamentos FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_departamentos();


--
-- TOC entry 2700 (class 2620 OID 65312)
-- Name: tauditoria_documentos; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_documentos AFTER INSERT OR DELETE OR UPDATE ON public.documentos FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_documentos();


--
-- TOC entry 2701 (class 2620 OID 65313)
-- Name: tauditoria_domicilios; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_domicilios AFTER INSERT OR DELETE OR UPDATE ON public.domicilios FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_domicilios();


--
-- TOC entry 2684 (class 2620 OID 65314)
-- Name: tauditoria_empresa; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_empresa AFTER INSERT OR DELETE OR UPDATE ON public.empresa FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_empresa();


--
-- TOC entry 2681 (class 2620 OID 65315)
-- Name: tauditoria_estados_civiles; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_estados_civiles AFTER INSERT OR DELETE OR UPDATE ON public.estados_civiles FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_estados_civiles();


--
-- TOC entry 2690 (class 2620 OID 65316)
-- Name: tauditoria_examenes; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_examenes AFTER INSERT OR DELETE OR UPDATE ON public.examenes FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_examenes();


--
-- TOC entry 2692 (class 2620 OID 65317)
-- Name: tauditoria_examenes_trabajadores; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_examenes_trabajadores AFTER INSERT OR DELETE OR UPDATE ON public.examenes_trabajadores FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_examenes_trabajadores();


--
-- TOC entry 2675 (class 2620 OID 65318)
-- Name: tauditoria_formas_cotizacion; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_formas_cotizacion AFTER INSERT OR DELETE OR UPDATE ON public.formas_cotizacion FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_formas_cotizacion();


--
-- TOC entry 2676 (class 2620 OID 65319)
-- Name: tauditoria_grupos_cotizaciones; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_grupos_cotizaciones AFTER INSERT OR DELETE OR UPDATE ON public.grupos_cotizaciones FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_grupos_cotizaciones();


--
-- TOC entry 2686 (class 2620 OID 65320)
-- Name: tauditoria_hijos; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_hijos AFTER INSERT OR DELETE OR UPDATE ON public.hijos FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_hijos();


--
-- TOC entry 2697 (class 2620 OID 65321)
-- Name: tauditoria_inasistencias; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_inasistencias AFTER INSERT OR DELETE OR UPDATE ON public.inasistencias FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_inasistencias();


--
-- TOC entry 2688 (class 2620 OID 65322)
-- Name: tauditoria_licencias; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_licencias AFTER INSERT OR DELETE OR UPDATE ON public.licencias FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_licencias();


--
-- TOC entry 2693 (class 2620 OID 65323)
-- Name: tauditoria_licencias_trabajadores; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_licencias_trabajadores AFTER INSERT OR DELETE OR UPDATE ON public.licencias_trabajadores FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_licencias_trabajadores();


--
-- TOC entry 2669 (class 2620 OID 65324)
-- Name: tauditoria_localidades; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_localidades AFTER INSERT OR DELETE OR UPDATE ON public.localidades FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_localidades();


--
-- TOC entry 2685 (class 2620 OID 65325)
-- Name: tauditoria_obras_sociales; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_obras_sociales AFTER INSERT OR DELETE OR UPDATE ON public.obras_sociales FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_obras_sociales();


--
-- TOC entry 2670 (class 2620 OID 65326)
-- Name: tauditoria_paises; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_paises AFTER INSERT OR DELETE OR UPDATE ON public.paises FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_paises();


--
-- TOC entry 2682 (class 2620 OID 65327)
-- Name: tauditoria_profesiones; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_profesiones AFTER INSERT OR DELETE OR UPDATE ON public.profesiones FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_profesiones();


--
-- TOC entry 2671 (class 2620 OID 65328)
-- Name: tauditoria_provincias; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_provincias AFTER INSERT OR DELETE OR UPDATE ON public.provincias FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_provincias();


--
-- TOC entry 2691 (class 2620 OID 65329)
-- Name: tauditoria_resultados_examenes; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_resultados_examenes AFTER INSERT OR DELETE OR UPDATE ON public.resultados_examenes FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_resultados_examenes();


--
-- TOC entry 2698 (class 2620 OID 65330)
-- Name: tauditoria_sanciones_disciplinarias; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_sanciones_disciplinarias AFTER INSERT OR DELETE OR UPDATE ON public.sanciones_disciplinarias FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_sanciones_disciplinarias();


--
-- TOC entry 2672 (class 2620 OID 65331)
-- Name: tauditoria_situaciones; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_situaciones AFTER INSERT OR DELETE OR UPDATE ON public.situaciones FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_situaciones();


--
-- TOC entry 2694 (class 2620 OID 65332)
-- Name: tauditoria_tipos_asignaciones; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_tipos_asignaciones AFTER INSERT OR DELETE OR UPDATE ON public.tipos_asignaciones FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_tipos_asignaciones();


--
-- TOC entry 2699 (class 2620 OID 65333)
-- Name: tauditoria_tipos_certificados; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_tipos_certificados AFTER INSERT OR DELETE OR UPDATE ON public.tipos_certificados FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_tipos_certificados();


--
-- TOC entry 2678 (class 2620 OID 65334)
-- Name: tauditoria_tipos_documentos; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_tipos_documentos AFTER INSERT OR DELETE OR UPDATE ON public.tipos_documentos FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_tipos_documentos();


--
-- TOC entry 2689 (class 2620 OID 65335)
-- Name: tauditoria_tipos_examenes; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_tipos_examenes AFTER INSERT OR DELETE OR UPDATE ON public.tipos_examenes FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_tipos_examenes();


--
-- TOC entry 2687 (class 2620 OID 65336)
-- Name: tauditoria_tipos_licencias; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_tipos_licencias AFTER INSERT OR DELETE OR UPDATE ON public.tipos_licencias FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_tipos_licencias();


--
-- TOC entry 2680 (class 2620 OID 65337)
-- Name: tauditoria_tipos_parientes; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_tipos_parientes AFTER INSERT OR DELETE OR UPDATE ON public.tipos_parientes FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_tipos_parientes();


--
-- TOC entry 2673 (class 2620 OID 65338)
-- Name: tauditoria_trabajadores; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_trabajadores AFTER INSERT OR DELETE OR UPDATE ON public.trabajadores FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_trabajadores();


--
-- TOC entry 2674 (class 2620 OID 65339)
-- Name: tauditoria_vinculos_familiares; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_vinculos_familiares AFTER INSERT OR DELETE OR UPDATE ON public.vinculos_familiares FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_vinculos_familiares();


--
-- TOC entry 2660 (class 2606 OID 63101)
-- Name: antecentes_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antecentes
    ADD CONSTRAINT antecentes_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2659 (class 2606 OID 62991)
-- Name: asignaciones_flia_trabajador_id_tipo_asignacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignaciones_flia_trabajador
    ADD CONSTRAINT asignaciones_flia_trabajador_id_tipo_asignacion_fkey FOREIGN KEY (id_tipo_asignacion) REFERENCES public.tipos_asignaciones(id_tipo_asignacion) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2658 (class 2606 OID 62986)
-- Name: asignaciones_flia_trabajador_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignaciones_flia_trabajador
    ADD CONSTRAINT asignaciones_flia_trabajador_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2648 (class 2606 OID 53170)
-- Name: categorias_id_convenio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_id_convenio_fkey FOREIGN KEY (id_convenio) REFERENCES public.convenios(id_convenio) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2666 (class 2606 OID 64511)
-- Name: conyugue_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conyugue
    ADD CONSTRAINT conyugue_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON DELETE RESTRICT;


--
-- TOC entry 2664 (class 2606 OID 63166)
-- Name: dcumentos_id_tipo_certificado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT dcumentos_id_tipo_certificado_fkey FOREIGN KEY (id_tipo_certificado) REFERENCES public.tipos_certificados(id_tipo_certificado) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2663 (class 2606 OID 63161)
-- Name: dcumentos_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT dcumentos_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2649 (class 2606 OID 42328)
-- Name: departamentos_id_localidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_id_localidad_fkey FOREIGN KEY (id_localidad) REFERENCES public.localidades(id_localidad);


--
-- TOC entry 2665 (class 2606 OID 63182)
-- Name: domicilio_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domicilios
    ADD CONSTRAINT domicilio_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2652 (class 2606 OID 62452)
-- Name: examenes_id_tipo_examen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenes
    ADD CONSTRAINT examenes_id_tipo_examen_fkey FOREIGN KEY (id_tipo_examen) REFERENCES public.tipos_examenes(id_tipo_examen) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2653 (class 2606 OID 62479)
-- Name: examenes_trabajadores_id_resultado_examen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenes_trabajadores
    ADD CONSTRAINT examenes_trabajadores_id_resultado_examen_fkey FOREIGN KEY (id_resultado_examen) REFERENCES public.resultados_examenes(id_resultado) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2654 (class 2606 OID 62484)
-- Name: examenes_trabajadores_id_tipo_examen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenes_trabajadores
    ADD CONSTRAINT examenes_trabajadores_id_tipo_examen_fkey FOREIGN KEY (id_tipo_examen) REFERENCES public.tipos_examenes(id_tipo_examen) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2655 (class 2606 OID 62489)
-- Name: examenes_trabajadores_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.examenes_trabajadores
    ADD CONSTRAINT examenes_trabajadores_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2650 (class 2606 OID 53059)
-- Name: hijos_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hijos
    ADD CONSTRAINT hijos_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2661 (class 2606 OID 63118)
-- Name: inasistencias_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inasistencias
    ADD CONSTRAINT inasistencias_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2651 (class 2606 OID 64356)
-- Name: licencias_id_tipo_licencia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias
    ADD CONSTRAINT licencias_id_tipo_licencia_fkey FOREIGN KEY (id_tipo_licencia) REFERENCES public.tipos_licencias(id_tipo_licencia) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2657 (class 2606 OID 63269)
-- Name: licencias_trabajadores_id_licencia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias_trabajadores
    ADD CONSTRAINT licencias_trabajadores_id_licencia_fkey FOREIGN KEY (id_licencia) REFERENCES public.licencias(id_licencia) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2656 (class 2606 OID 62510)
-- Name: licencias_trabajadores_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licencias_trabajadores
    ADD CONSTRAINT licencias_trabajadores_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2638 (class 2606 OID 41554)
-- Name: localidad_fk_prov; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.localidades
    ADD CONSTRAINT localidad_fk_prov FOREIGN KEY (id_provincia) REFERENCES public.provincias(id_provincia);


--
-- TOC entry 2639 (class 2606 OID 41559)
-- Name: prov_fk_pais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provincias
    ADD CONSTRAINT prov_fk_pais FOREIGN KEY (id_pais) REFERENCES public.paises(id_pais);


--
-- TOC entry 2662 (class 2606 OID 63134)
-- Name: sanciones_disciplinarias_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sanciones_disciplinarias
    ADD CONSTRAINT sanciones_disciplinarias_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2644 (class 2606 OID 42156)
-- Name: situaciones_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situaciones
    ADD CONSTRAINT situaciones_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2641 (class 2606 OID 41666)
-- Name: situaciones_id_convenio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situaciones
    ADD CONSTRAINT situaciones_id_convenio_fkey FOREIGN KEY (id_convenio) REFERENCES public.convenios(id_convenio) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2642 (class 2606 OID 41671)
-- Name: situaciones_id_forma_cotizacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situaciones
    ADD CONSTRAINT situaciones_id_forma_cotizacion_fkey FOREIGN KEY (id_forma_cotizacion) REFERENCES public.formas_cotizacion(id_forma_cotizacion) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2643 (class 2606 OID 41676)
-- Name: situaciones_id_grupo_cotizacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situaciones
    ADD CONSTRAINT situaciones_id_grupo_cotizacion_fkey FOREIGN KEY (id_grupo_cotizacion) REFERENCES public.grupos_cotizaciones(id_grupo_cotizacion) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2640 (class 2606 OID 41564)
-- Name: situaciones_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.situaciones
    ADD CONSTRAINT situaciones_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2645 (class 2606 OID 41569)
-- Name: trabajadores_id_localidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajadores
    ADD CONSTRAINT trabajadores_id_localidad_fkey FOREIGN KEY (id_localidad) REFERENCES public.localidades(id_localidad) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2647 (class 2606 OID 42151)
-- Name: trabajadores_id_tipo_dni_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajadores
    ADD CONSTRAINT trabajadores_id_tipo_dni_fkey FOREIGN KEY (id_tipo_dni) REFERENCES public.tipos_documentos(id_tipo_documento) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2646 (class 2606 OID 41574)
-- Name: trabajadores_id_vinculo_familiar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajadores
    ADD CONSTRAINT trabajadores_id_vinculo_familiar_fkey FOREIGN KEY (id_vinculo_familiar) REFERENCES public.vinculos_familiares(id_vinculo_familiar) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2667 (class 2606 OID 65802)
-- Name: traslados_id_departamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traslados
    ADD CONSTRAINT traslados_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamentos(id_departamento) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2668 (class 2606 OID 65807)
-- Name: traslados_id_trabajador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traslados
    ADD CONSTRAINT traslados_id_trabajador_fkey FOREIGN KEY (id_trabajador) REFERENCES public.trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 2825 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-09-16 23:05:53 -03

--
-- PostgreSQL database dump complete
--

