--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-10-29 07:28:00 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- TOC entry 741 (class 1259 OID 18848)
-- Name: tipos_documento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_documento (
    tipo_persona character varying,
    nombre character varying,
    descripcion character varying,
    id_tipo_documento integer NOT NULL
);


ALTER TABLE public.tipos_documento OWNER TO postgres;

--
-- TOC entry 742 (class 1259 OID 18854)
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
-- TOC entry 6000 (class 0 OID 0)
-- Dependencies: 742
-- Name: tipos_de_documento_id_tipo_documento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_de_documento_id_tipo_documento_seq OWNED BY public.tipos_documento.id_tipo_documento;


--
-- TOC entry 5845 (class 2604 OID 21539)
-- Name: id_tipo_documento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_documento ALTER COLUMN id_tipo_documento SET DEFAULT nextval('public.tipos_de_documento_id_tipo_documento_seq'::regclass);


--
-- TOC entry 6001 (class 0 OID 0)
-- Dependencies: 742
-- Name: tipos_de_documento_id_tipo_documento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_de_documento_id_tipo_documento_seq', 2, true);


--
-- TOC entry 5993 (class 0 OID 18848)
-- Dependencies: 741
-- Data for Name: tipos_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'LE', 'Libreta de Enrolamiento', 2);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'PASAP', 'Pasaporte', 3);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S.A.', 'Sociedad Anonima', 4);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S.C. e I.', 'Sociedad Comandita e Industrial', 5);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S.C.', 'Sociedad Comandita', 6);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S.C.S.', 'Sociedad Comandita Simple', 7);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S. Coop.', 'Sociedad Cooperativa', 8);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S. De H.', 'Sociedad de Hecho', 9);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S. en P.', 'Sociedad', 10);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'Ent. Finan.', 'Entidad Financiera', 11);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S.R.L.', 'Sociedad Responsabilidad Limitada', 12);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S. del Est.', 'Sociedad del Estado', 13);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S.A.C.I.F.', 'S.A.C.I.F.', 14);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'CI', 'Cedula de Identidad', 15);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'LC', 'Libreta Civica', 16);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'Asoc. Civ.', 'Asociacion Civil', 17);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S.A. May. Est.', 'Sociedad Anonima Mayoritaria Estatal', 18);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S.C.A.', 'Sociedad Comandita por Acciones', 19);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'S. en. Mix.', 'Sociedad Economica Mixta', 20);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('ORGANISMO', 'CUIT', 'C.U.I.T.', 21);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'LTDA', 'LTDA', 25);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-F', 'Documento Nacional de Ident (femenino)', 23);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-M', 'Documento Nacional de Ident (Masculino)', 1);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'CI Brasil', 'Cedula Identidad - Brasil', 26);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'CI Py', 'Cedula Identidad - Paraguay', 27);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'UTE', 'Union Transitoria de Empresas', 28);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'CI Bol', 'Cedula Identidad Bolivia', 29);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'SM', 'Sociedad Mutual', 30);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-NIF (esp)', 'DNI-NIF (esp)', 31);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'FIDEI', 'Fideicomiso', 32);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'SAICyF', 'S.A.I.C. y F.', 33);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'M.I. Bol', 'M.I. Bol', 34);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'CI Peru        ', 'CI Peru        ', 37);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'CI chile', 'CI chile', 36);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'Indoc.', 'Indocumentado', 24);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'Adm.', 'Administrador', 35);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('JURIDICA', 'Corp.', 'Corporacion', 70);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('ESPECIAL', 'Esp.', 'Especial', 100);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNID', 'DNID', 112);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-ED', 'DNI-ED', 113);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI12', 'DNI12', 114);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI', 'DNI', 115);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-EA', 'DNI-EA', 116);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNIT', 'DNIT', 117);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNIC', 'DNIC', 118);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-EB', 'DNI-EB', 119);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-EE', 'DNI-EE', 120);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI6', 'DNI6', 121);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'LT', 'LT', 122);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI10', 'DNI10', 123);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI9', 'DNI9', 124);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-EC', 'DNI-EC', 125);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI8', 'DNI8', 126);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-EZ', 'DNI-EZ', 127);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'LD', 'LD', 128);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI13', 'DNI13', 129);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'L6', 'L6', 130);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'L', 'L', 131);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI-ES', 'DNI-ES', 132);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI11', 'DNI11', 133);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'L5', 'L5', 134);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI5', 'DNI5', 136);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI7', 'DNI7', 137);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI14', 'DNI14', 138);
INSERT INTO public.tipos_documento (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'FISICA', 'aaa', 0);


--
-- TOC entry 5847 (class 2606 OID 22229)
-- Name: tipos_de_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_documento
    ADD CONSTRAINT tipos_de_documento_pkey PRIMARY KEY (id_tipo_documento);


--
-- TOC entry 5848 (class 2620 OID 22758)
-- Name: tauditoria_tipos_documento; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_tipos_documento AFTER INSERT OR DELETE OR UPDATE ON public.tipos_documento FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_tipos_documento();


-- Completed on 2018-10-29 07:28:00 -03

--
-- PostgreSQL database dump complete
--

