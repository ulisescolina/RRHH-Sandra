--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-10-29 07:56:11 -03

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
-- TOC entry 1275 (class 1259 OID 21297)
-- Name: rcas_tipos_parientes; Type: TABLE; Schema: rcas; Owner: postgres
--

CREATE TABLE rcas.rcas_tipos_parientes (
    id_tipo_parentesco integer NOT NULL,
    nombre character varying
);


ALTER TABLE rcas.rcas_tipos_parientes OWNER TO postgres;

--
-- TOC entry 1276 (class 1259 OID 21303)
-- Name: rcas_tipos_parientes_id_tipo_parentesco_seq; Type: SEQUENCE; Schema: rcas; Owner: postgres
--

CREATE SEQUENCE rcas.rcas_tipos_parientes_id_tipo_parentesco_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rcas.rcas_tipos_parientes_id_tipo_parentesco_seq OWNER TO postgres;

--
-- TOC entry 5999 (class 0 OID 0)
-- Dependencies: 1276
-- Name: rcas_tipos_parientes_id_tipo_parentesco_seq; Type: SEQUENCE OWNED BY; Schema: rcas; Owner: postgres
--

ALTER SEQUENCE rcas.rcas_tipos_parientes_id_tipo_parentesco_seq OWNED BY rcas.rcas_tipos_parientes.id_tipo_parentesco;


--
-- TOC entry 5845 (class 2604 OID 21624)
-- Name: id_tipo_parentesco; Type: DEFAULT; Schema: rcas; Owner: postgres
--

ALTER TABLE ONLY rcas.rcas_tipos_parientes ALTER COLUMN id_tipo_parentesco SET DEFAULT nextval('rcas.rcas_tipos_parientes_id_tipo_parentesco_seq'::regclass);


--
-- TOC entry 5992 (class 0 OID 21297)
-- Dependencies: 1275
-- Data for Name: rcas_tipos_parientes; Type: TABLE DATA; Schema: rcas; Owner: postgres
--

INSERT INTO rcas.rcas_tipos_parientes (id_tipo_parentesco, nombre) VALUES (1, 'Padre');
INSERT INTO rcas.rcas_tipos_parientes (id_tipo_parentesco, nombre) VALUES (2, 'Madre');
INSERT INTO rcas.rcas_tipos_parientes (id_tipo_parentesco, nombre) VALUES (3, 'Hijo/a');
INSERT INTO rcas.rcas_tipos_parientes (id_tipo_parentesco, nombre) VALUES (5, 'Tio/a');
INSERT INTO rcas.rcas_tipos_parientes (id_tipo_parentesco, nombre) VALUES (7, 'Abuelo/a');
INSERT INTO rcas.rcas_tipos_parientes (id_tipo_parentesco, nombre) VALUES (9, 'Cónyuge');
INSERT INTO rcas.rcas_tipos_parientes (id_tipo_parentesco, nombre) VALUES (6, 'Tio/a');
INSERT INTO rcas.rcas_tipos_parientes (id_tipo_parentesco, nombre) VALUES (4, 'Cónyuge');
INSERT INTO rcas.rcas_tipos_parientes (id_tipo_parentesco, nombre) VALUES (10, 'Primo/a');


--
-- TOC entry 6000 (class 0 OID 0)
-- Dependencies: 1276
-- Name: rcas_tipos_parientes_id_tipo_parentesco_seq; Type: SEQUENCE SET; Schema: rcas; Owner: postgres
--

SELECT pg_catalog.setval('rcas.rcas_tipos_parientes_id_tipo_parentesco_seq', 10, true);


--
-- TOC entry 5847 (class 2606 OID 22427)
-- Name: rcas_tipos_parientes_pkey; Type: CONSTRAINT; Schema: rcas; Owner: postgres
--

ALTER TABLE ONLY rcas.rcas_tipos_parientes
    ADD CONSTRAINT rcas_tipos_parientes_pkey PRIMARY KEY (id_tipo_parentesco);


-- Completed on 2018-10-29 07:56:11 -03

--
-- PostgreSQL database dump complete
--

