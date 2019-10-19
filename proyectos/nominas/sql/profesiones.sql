--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-10-29 08:41:08 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 683 (class 1259 OID 18624)
-- Name: profesiones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesiones (
    id_profesion integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.profesiones OWNER TO postgres;

--
-- TOC entry 5992 (class 0 OID 18624)
-- Dependencies: 683
-- Data for Name: profesiones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.profesiones (id_profesion, nombre) VALUES (1, 'Psicologo');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (3, 'Contador Público');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (4, 'Arquitecto');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (5, 'Docente');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (6, 'Lic. Trabajo Social');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (2, 'Licenciado en Comunicacion Social');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (7, 'Abogado');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (9, 'Empleado');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (10, 'Otro/a');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (11, 'Ama de casa');


--
-- TOC entry 5846 (class 2606 OID 22167)
-- Name: profesiones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesiones
    ADD CONSTRAINT profesiones_pkey PRIMARY KEY (id_profesion);


--
-- TOC entry 5847 (class 2620 OID 22728)
-- Name: tauditoria_profesiones; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_profesiones AFTER INSERT OR DELETE OR UPDATE ON public.profesiones FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_profesiones();


-- Completed on 2018-10-29 08:41:09 -03

--
-- PostgreSQL database dump complete
--

