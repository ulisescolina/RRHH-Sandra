--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-10-29 07:54:57 -03

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
-- TOC entry 319 (class 1259 OID 17237)
-- Name: estados_civiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estados_civiles (
    estado_civil character(1) NOT NULL,
    nombre character varying(100)
);


ALTER TABLE public.estados_civiles OWNER TO postgres;

--
-- TOC entry 5992 (class 0 OID 17237)
-- Dependencies: 319
-- Data for Name: estados_civiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estados_civiles (estado_civil, nombre) VALUES ('S', 'Soltero/a');
INSERT INTO public.estados_civiles (estado_civil, nombre) VALUES ('C', 'Casado/a');
INSERT INTO public.estados_civiles (estado_civil, nombre) VALUES ('D', 'Divorciado/a');
INSERT INTO public.estados_civiles (estado_civil, nombre) VALUES ('V', 'Viudo/a');


--
-- TOC entry 5846 (class 2606 OID 21751)
-- Name: estados_civiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados_civiles
    ADD CONSTRAINT estados_civiles_pkey PRIMARY KEY (estado_civil);


--
-- TOC entry 5847 (class 2620 OID 22556)
-- Name: tauditoria_estados_civiles; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_estados_civiles AFTER INSERT OR DELETE OR UPDATE ON public.estados_civiles FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_estados_civiles();


-- Completed on 2018-10-29 07:54:57 -03

--
-- PostgreSQL database dump complete
--

