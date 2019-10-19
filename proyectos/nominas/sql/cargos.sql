--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-10-29 07:31:39 -03

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
-- TOC entry 238 (class 1259 OID 16924)
-- Name: cargos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cargos (
    id_cargo integer NOT NULL,
    nombre character varying(255) NOT NULL
);


ALTER TABLE public.cargos OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16927)
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
-- TOC entry 6000 (class 0 OID 0)
-- Dependencies: 239
-- Name: cargos_id_cargo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cargos_id_cargo_seq OWNED BY public.cargos.id_cargo;


--
-- TOC entry 5845 (class 2604 OID 21320)
-- Name: id_cargo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargos ALTER COLUMN id_cargo SET DEFAULT nextval('public.cargos_id_cargo_seq'::regclass);


--
-- TOC entry 5993 (class 0 OID 16924)
-- Dependencies: 238
-- Data for Name: cargos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cargos (id_cargo, nombre) VALUES (1, 'MINISTRO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (2, 'PROCURADOR GENERAL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (3, 'VOCAL DE CAMARA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (4, 'JUEZ DE TRIBUNALES');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (5, 'JUEZ DE 1° INSTANCIA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (6, 'JUEZ DE INSTRUCCIÓN');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (7, 'JUEZ CORRECCIONAL Y DE MENORES');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (8, 'JUEZ DE PAZ TITULAR - 1° CATEG.');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (9, 'JUEZ DE PAZ TITULAR - 2° CATEG.');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (10, 'JUEZ DE PAZ TITULAR - 3° CATEG.');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (11, 'JUEZ DE PAZ SUPLENTE - 1° CATEG.');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (12, 'JUEZ DE PAZ SUPLENTE - 2° CATEG.');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (13, 'JUEZ DE PAZ SUPLENTE - 3° CATEG.');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (14, 'ADMINISTRADOR GENERAL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (15, 'FISCAL DE CAMARA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (16, 'DEFENSOR OFICIAL DE CAMARA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (17, 'FISCAL DE TRIBUNALES');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (18, 'SEC.GRAL. DE ACCESO A LA JUST. Y DERECHOS HUMANOS');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (19, 'SEC. ADMINISTRAT. DE SUPERINT.Y JUDICIAL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (20, 'SECRETARIO DE SUPERINTENDENCIA DEL S.TJ');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (21, 'JEFE- SECRETARIA  APOYO INVESTIG.COMPLEJAS');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (22, 'SEC. LETRADO DE PROCURACIÓN GRAL.');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (23, 'FISCAL DE 1° INSTANCIA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (24, 'DEFENSOR OFICIAL DE 1° INSTANCIA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (25, 'DEFENSOR OFICIAL DEL TRABAJADOR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (26, 'AGENTE FISCAL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (27, 'DEFENSOR DE OFICIO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (28, 'SUB JEFE- SECRETARIA  APOYO INVESTIG. COMPLEJAS');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (29, 'SECRETARIO DE CAMARA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (30, 'DIRECTOR DE ADMINISTRACION');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (31, 'SEC. LETRADO DE TRIBUNALES');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (32, 'SEC. DE 1RA INSTANCIA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (33, 'SEC. JUZGADO DE INSTRUCCIÓN');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (34, 'SEC. CORRECCIONAL Y DE MENORES');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (35, 'SUB SECRETARIO TECNICO Y DE SERVICIO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (36, 'SUB SECRETARIO TÉCNICO CONTABLE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (37, 'DIRECTOR DEL CE.JU.ME.');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (38, 'DIRECTOR DE ARQUITECTURA JUDICIAL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (39, 'SUB DIRECTOR DE ARQUITECTURA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (40, 'SUB DIRECTOR SUB-SECRET.INFORM.JURIDICA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (41, 'DIRECTOR DE INFORMATICA JURIDICA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (42, 'DIRECTOR DE BIBLIOTECA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (43, 'DIRECTOR DE ARCHIVO TRIBUNALES');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (44, 'SUB-DIRECTOR DE ADMINISTRACION');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (45, 'TESORERO DIRECCION ADMINISTRACIÓN');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (46, 'SUB-TESORERO DIRECCION ADMINISTRACIÓN');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (47, 'MEDICO DE TRIBUNALES');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (48, 'JEFE DE GABINETE DE GENÉTICA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (49, 'JEFE - INSPECCION JUSTICIA DE PAZ');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (50, 'JEFE - OFICINA MANDAMIENTOS');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (51, 'FUNCIONARIO ADJUNTO-SECR.ADM.DE SUPERIN.Y JUDICIAL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (52, 'SUB-DIRECTOR DE BIBLIOTECA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (53, 'SUB-JEFE DE INSPECCION JUSTICIA DE PAZ');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (54, 'SECRETARIO TECNICO CONTABLE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (55, 'OFICIAL DE JUSTICIA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (56, 'SECRETARIO JUZG. PAZ 1° CATEGORÍA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (57, 'SECRETARIO JUZG. PAZ 2° CATEGORÍA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (58, 'JEFE - CUERPO MEDICO FORENSE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (59, 'SUB JEFE - CUERPO MEDICO FORENSE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (60, 'BIOQUIMICO - CUERPO MED.FORENSE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (61, 'CONTADOR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (62, 'ARQUITECTO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (63, 'INGENIERO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (64, 'MEDIADOR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (65, 'CO-MEDIADOR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (66, 'PSICOLOGO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (67, 'LICENCIADO EN PSICOPEDAGOGIA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (68, 'LICENCIADO EN GENÉTICA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (69, 'LICENCIADO EN TRABAJO SOCIAL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (70, 'PRO-SECRETARIO LETRADO DE PROCURACION GRAL.');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (71, 'SEC. ADMINIST. DE SUPER.Y JUD. EN INFORMATICA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (72, 'DIRECTORA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (73, 'SECRETARIO DE PLANEAMIENTO Y CONTROL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (74, 'SECRETARIO DE RESOLUCION ALTERNATIVA DE CONFLICTOS');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (75, 'MEDICO FORENSE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (76, 'ANALISTA DE SISTEMAS');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (77, 'SECRETARIO TECNICO INFORMATICO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (78, 'LICENCIADO EN ADMINISTRACION DE EMPRESAS');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (79, 'SECRETARIO GRAL. ADMINISTRAT. Y DE SUPERINT');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (80, 'JEFE DE DEPARTAMENTO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (81, 'JEFE DE DIVISION');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (82, 'OFICIAL SUPERIOR DE PRIMERA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (83, 'OFICIAL SUPERIOR DE SEGUNDA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (84, 'JEFE DE DESPACHO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (85, 'OFICIAL MAYOR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (86, 'OFICIAL PRINCIPAL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (87, 'OFICIAL');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (88, 'OFICIAL AUXILIAR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (89, 'ESCRIBIENTE MAYOR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (90, 'ESCRIBIENTE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (91, 'AUXILIAR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (92, 'AUXILIAR SUPERIOR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (93, 'AUXILIAR MAYOR');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (94, 'AUXILIAR PRINCIPAL TECNICO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (95, 'AUXILIAR TECNICO');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (96, 'AUXILIAR DE PRIMERA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (97, 'AUXILIAR DE SEGUNDA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (98, 'AUXILIAR AYUDANTE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (99, 'AYUDANTE FORENSE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (100, 'AYUDANTE');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (101, 'OFICIAL DE JUSTICIA (AD-HOC)');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (102, 'CATEGORIA PRIMERA');
INSERT INTO public.cargos (id_cargo, nombre) VALUES (103, 'ADSCRIPTO');


--
-- TOC entry 6001 (class 0 OID 0)
-- Dependencies: 239
-- Name: cargos_id_cargo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cargos_id_cargo_seq', 1, false);


--
-- TOC entry 5847 (class 2606 OID 21657)
-- Name: cargos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cargos
    ADD CONSTRAINT cargos_pkey PRIMARY KEY (id_cargo);


--
-- TOC entry 5848 (class 2620 OID 22516)
-- Name: tauditoria_cargos; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tauditoria_cargos AFTER INSERT OR DELETE OR UPDATE ON public.cargos FOR EACH ROW EXECUTE PROCEDURE public_auditoria.sp_cargos();


-- Completed on 2018-10-29 07:31:39 -03

--
-- PostgreSQL database dump complete
--

