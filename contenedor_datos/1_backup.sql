--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.19
-- Dumped by pg_dump version 9.5.19

-- Started on 2019-09-16 23:05:14 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;

--
-- TOC entry 2820 (class 0 OID 41498)
-- Dependencies: 200
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.paises (id_pais, nombre) VALUES (1, 'Argentina');
INSERT INTO public.paises (id_pais, nombre) VALUES (3, 'Paraguay');
INSERT INTO public.paises (id_pais, nombre) VALUES (5, 'Brasil');


--
-- TOC entry 2823 (class 0 OID 41508)
-- Dependencies: 203
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (1, 'Buenos Aires        ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (2, 'Buenos Aires-GBA    ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (3, 'Capital Federal     ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (4, 'Catamarca           ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (5, 'Chaco               ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (6, 'Chubut              ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (7, 'Córdoba             ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (8, 'Corrientes          ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (9, 'Entre Ríos          ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (10, 'Formosa             ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (11, 'Jujuy               ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (12, 'La Pampa            ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (13, 'La Rioja            ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (14, 'Mendoza             ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (15, 'Misiones            ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (16, 'Neuquén             ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (17, 'Río Negro           ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (18, 'Salta               ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (19, 'San Juan            ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (20, 'San Luis            ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (21, 'Santa Cruz          ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (22, 'Santa Fe            ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (23, 'Santiago del Estero ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (24, 'Tierra del Fuego    ', 1);
INSERT INTO public.provincias (id_provincia, nombre, id_pais) VALUES (25, 'Tucumán             ', 1);


--
-- TOC entry 2819 (class 0 OID 41491)
-- Dependencies: 199
-- Data for Name: localidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (10000, 'test', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1, '25 de Mayo', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2, '3 de febrero', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (3, 'A. Alsina', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (4, 'A. Gonzáles Cháves', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (5, 'Aguas Verdes', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (6, 'Alberti', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (7, 'Arrecifes', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (8, 'Ayacucho', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (9, 'Azul', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (10, 'Bahía Blanca', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (11, 'Balcarce', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (12, 'Baradero', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (13, 'Benito Juárez', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (14, 'Berisso', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (15, 'Bolívar', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (16, 'Bragado', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (17, 'Brandsen', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (18, 'Campana', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (19, 'Cañuelas', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (20, 'Capilla del Señor', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (21, 'Capitán Sarmiento', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (22, 'Carapachay', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (23, 'Carhue', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (24, 'Cariló', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (25, 'Carlos Casares', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (26, 'Carlos Tejedor', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (27, 'Carmen de Areco', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (28, 'Carmen de Patagones', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (29, 'Castelli', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (30, 'Chacabuco', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (31, 'Chascomús', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (32, 'Chivilcoy', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (33, 'Colón', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (34, 'Coronel Dorrego', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (35, 'Coronel Pringles', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (36, 'Coronel Rosales', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (37, 'Coronel Suarez', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (38, 'Costa Azul', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (39, 'Costa Chica', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (40, 'Costa del Este', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (41, 'Costa Esmeralda', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (42, 'Daireaux', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (43, 'Darregueira', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (44, 'Del Viso', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (45, 'Dolores', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (46, 'Don Torcuato', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (47, 'Ensenada', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (48, 'Escobar', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (49, 'Exaltación de la Cruz', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (50, 'Florentino Ameghino', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (51, 'Garín', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (52, 'Gral. Alvarado', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (53, 'Gral. Alvear', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (54, 'Gral. Arenales', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (55, 'Gral. Belgrano', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (56, 'Gral. Guido', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (57, 'Gral. Lamadrid', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (58, 'Gral. Las Heras', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (59, 'Gral. Lavalle', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (60, 'Gral. Madariaga', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (61, 'Gral. Pacheco', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (62, 'Gral. Paz', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (63, 'Gral. Pinto', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (64, 'Gral. Pueyrredón', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (65, 'Gral. Rodríguez', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (66, 'Gral. Viamonte', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (67, 'Gral. Villegas', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (68, 'Guaminí', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (69, 'Guernica', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (70, 'Hipólito Yrigoyen', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (71, 'Ing. Maschwitz', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (72, 'Junín', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (73, 'La Plata', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (74, 'Laprida', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (75, 'Las Flores', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (76, 'Las Toninas', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (77, 'Leandro N. Alem', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (78, 'Lincoln', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (79, 'Loberia', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (80, 'Lobos', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (81, 'Los Cardales', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (82, 'Los Toldos', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (83, 'Lucila del Mar', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (84, 'Luján', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (85, 'Magdalena', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (86, 'Maipú', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (87, 'Mar Chiquita', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (88, 'Mar de Ajó', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (89, 'Mar de las Pampas', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (90, 'Mar del Plata', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (91, 'Mar del Tuyú', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (92, 'Marcos Paz', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (93, 'Mercedes', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (94, 'Miramar', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (95, 'Monte', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (96, 'Monte Hermoso', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (97, 'Munro', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (98, 'Navarro', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (99, 'Necochea', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (100, 'Olavarría', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (101, 'Partido de la Costa', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (102, 'Pehuajó', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (103, 'Pellegrini', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (104, 'Pergamino', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (105, 'Pigüé', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (106, 'Pila', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (107, 'Pilar', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (108, 'Pinamar', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (109, 'Pinar del Sol', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (110, 'Polvorines', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (111, 'Pte. Perón', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (112, 'Puán', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (113, 'Punta Indio', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (114, 'Ramallo', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (115, 'Rauch', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (116, 'Rivadavia', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (117, 'Rojas', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (118, 'Roque Pérez', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (119, 'Saavedra', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (120, 'Saladillo', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (121, 'Salliqueló', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (122, 'Salto', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (123, 'San Andrés de Giles', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (124, 'San Antonio de Areco', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (125, 'San Antonio de Padua', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (126, 'San Bernardo', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (127, 'San Cayetano', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (128, 'San Clemente del Tuyú', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (129, 'San Nicolás', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (130, 'San Pedro', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (131, 'San Vicente', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (132, 'Santa Teresita', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (133, 'Suipacha', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (134, 'Tandil', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (135, 'Tapalqué', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (136, 'Tordillo', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (137, 'Tornquist', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (138, 'Trenque Lauquen', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (139, 'Tres Lomas', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (140, 'Villa Gesell', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (141, 'Villarino', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (142, 'Zárate', 1);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (143, '11 de Septiembre', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (144, '20 de Junio', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (145, '25 de Mayo', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (146, 'Acassuso', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (147, 'Adrogué', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (148, 'Aldo Bonzi', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (149, 'Área Reserva Cinturón Ecológico', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (150, 'Avellaneda', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (151, 'Banfield', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (152, 'Barrio Parque', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (153, 'Barrio Santa Teresita', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (154, 'Beccar', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (155, 'Bella Vista', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (156, 'Berazategui', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (157, 'Bernal Este', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (158, 'Bernal Oeste', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (159, 'Billinghurst', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (160, 'Boulogne', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (161, 'Burzaco', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (162, 'Carapachay', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (163, 'Caseros', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (164, 'Castelar', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (165, 'Churruca', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (166, 'Ciudad Evita', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (167, 'Ciudad Madero', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (168, 'Ciudadela', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (169, 'Claypole', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (170, 'Crucecita', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (171, 'Dock Sud', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (172, 'Don Bosco', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (173, 'Don Orione', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (174, 'El Jagüel', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (175, 'El Libertador', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (176, 'El Palomar', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (177, 'El Tala', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (178, 'El Trébol', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (179, 'Ezeiza', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (180, 'Ezpeleta', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (181, 'Florencio Varela', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (182, 'Florida', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (183, 'Francisco Álvarez', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (184, 'Gerli', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (185, 'Glew', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (186, 'González Catán', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (187, 'Gral. Lamadrid', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (188, 'Grand Bourg', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (189, 'Gregorio de Laferrere', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (190, 'Guillermo Enrique Hudson', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (191, 'Haedo', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (192, 'Hurlingham', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (193, 'Ing. Sourdeaux', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (194, 'Isidro Casanova', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (195, 'Ituzaingó', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (196, 'José C. Paz', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (197, 'José Ingenieros', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (198, 'José Marmol', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (199, 'La Lucila', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (200, 'La Reja', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (201, 'La Tablada', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (202, 'Lanús', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (203, 'Llavallol', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (204, 'Loma Hermosa', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (205, 'Lomas de Zamora', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (206, 'Lomas del Millón', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (207, 'Lomas del Mirador', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (208, 'Longchamps', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (209, 'Los Polvorines', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (210, 'Luis Guillón', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (211, 'Malvinas Argentinas', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (212, 'Martín Coronado', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (213, 'Martínez', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (214, 'Merlo', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (215, 'Ministro Rivadavia', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (216, 'Monte Chingolo', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (217, 'Monte Grande', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (218, 'Moreno', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (219, 'Morón', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (220, 'Muñiz', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (221, 'Olivos', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (222, 'Pablo Nogués', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (223, 'Pablo Podestá', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (224, 'Paso del Rey', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (225, 'Pereyra', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (226, 'Piñeiro', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (227, 'Plátanos', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (228, 'Pontevedra', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (229, 'Quilmes', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (230, 'Rafael Calzada', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (231, 'Rafael Castillo', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (232, 'Ramos Mejía', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (233, 'Ranelagh', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (234, 'Remedios de Escalada', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (235, 'Sáenz Peña', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (236, 'San Antonio de Padua', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (237, 'San Fernando', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (238, 'San Francisco Solano', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (239, 'San Isidro', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (240, 'San José', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (241, 'San Justo', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (242, 'San Martín', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (243, 'San Miguel', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (244, 'Santos Lugares', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (245, 'Sarandí', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (246, 'Sourigues', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (247, 'Tapiales', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (248, 'Temperley', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (249, 'Tigre', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (250, 'Tortuguitas', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (251, 'Tristán Suárez', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (252, 'Trujui', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (253, 'Turdera', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (254, 'Valentín Alsina', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (255, 'Vicente López', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (256, 'Villa Adelina', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (257, 'Villa Ballester', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (258, 'Villa Bosch', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (259, 'Villa Caraza', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (260, 'Villa Celina', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (261, 'Villa Centenario', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (262, 'Villa de Mayo', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (263, 'Villa Diamante', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (264, 'Villa Domínico', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (265, 'Villa España', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (266, 'Villa Fiorito', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (267, 'Villa Guillermina', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (268, 'Villa Insuperable', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (269, 'Villa José León Suárez', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (270, 'Villa La Florida', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (271, 'Villa Luzuriaga', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (272, 'Villa Martelli', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (273, 'Villa Obrera', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (274, 'Villa Progreso', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (275, 'Villa Raffo', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (276, 'Villa Sarmiento', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (277, 'Villa Tesei', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (278, 'Villa Udaondo', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (279, 'Virrey del Pino', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (280, 'Wilde', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (281, 'William Morris', 2);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (282, 'Agronomía', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (283, 'Almagro', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (284, 'Balvanera', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (285, 'Barracas', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (286, 'Belgrano', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (287, 'Boca', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (288, 'Boedo', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (289, 'Caballito', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (290, 'Chacarita', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (291, 'Coghlan', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (292, 'Colegiales', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (293, 'Constitución', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (294, 'Flores', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (295, 'Floresta', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (296, 'La Paternal', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (297, 'Liniers', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (298, 'Mataderos', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (299, 'Monserrat', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (300, 'Monte Castro', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (301, 'Nueva Pompeya', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (302, 'Núñez', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (303, 'Palermo', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (304, 'Parque Avellaneda', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (305, 'Parque Chacabuco', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (306, 'Parque Chas', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (307, 'Parque Patricios', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (308, 'Puerto Madero', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (309, 'Recoleta', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (310, 'Retiro', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (311, 'Saavedra', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (312, 'San Cristóbal', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (313, 'San Nicolás', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (314, 'San Telmo', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (315, 'Vélez Sársfield', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (316, 'Versalles', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (317, 'Villa Crespo', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (318, 'Villa del Parque', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (319, 'Villa Devoto', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (320, 'Villa Gral. Mitre', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (321, 'Villa Lugano', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (322, 'Villa Luro', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (323, 'Villa Ortúzar', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (324, 'Villa Pueyrredón', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (325, 'Villa Real', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (326, 'Villa Riachuelo', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (327, 'Villa Santa Rita', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (328, 'Villa Soldati', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (329, 'Villa Urquiza', 3);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (330, 'Aconquija', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (331, 'Ancasti', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (332, 'Andalgalá', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (333, 'Antofagasta', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (334, 'Belén', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (335, 'Capayán', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (336, 'Capital', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (338, 'Corral Quemado', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (339, 'El Alto', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (340, 'El Rodeo', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (341, 'F.Mamerto Esquiú', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (342, 'Fiambalá', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (343, 'Hualfín', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (344, 'Huillapima', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (345, 'Icaño', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (346, 'La Puerta', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (347, 'Las Juntas', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (348, 'Londres', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (349, 'Los Altos', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (350, 'Los Varela', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (351, 'Mutquín', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (352, 'Paclín', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (353, 'Poman', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (354, 'Pozo de La Piedra', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (355, 'Puerta de Corral', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (356, 'Puerta San José', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (357, 'Recreo', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (358, 'S.F.V de 4', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (359, 'San Fernando', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (360, 'San Fernando del Valle', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (361, 'San José', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (362, 'Santa María', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (363, 'Santa Rosa', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (364, 'Saujil', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (365, 'Tapso', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (366, 'Tinogasta', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (367, 'Valle Viejo', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (368, 'Villa Vil', 4);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (369, 'Aviá Teraí', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (370, 'Barranqueras', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (371, 'Basail', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (372, 'Campo Largo', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (373, 'Capital', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (374, 'Capitán Solari', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (375, 'Charadai', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (376, 'Charata', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (377, 'Chorotis', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (378, 'Ciervo Petiso', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (379, 'Cnel. Du Graty', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (380, 'Col. Benítez', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (381, 'Col. Elisa', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (382, 'Col. Popular', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (383, 'Colonias Unidas', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (384, 'Concepción', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (385, 'Corzuela', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (386, 'Cote Lai', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (387, 'El Sauzalito', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (388, 'Enrique Urien', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (389, 'Fontana', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (390, 'Fte. Esperanza', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (391, 'Gancedo', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (392, 'Gral. Capdevila', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (393, 'Gral. Pinero', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (394, 'Gral. San Martín', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (395, 'Gral. Vedia', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (396, 'Hermoso Campo', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (397, 'I. del Cerrito', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (398, 'J.J. Castelli', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (399, 'La Clotilde', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (400, 'La Eduvigis', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (401, 'La Escondida', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (402, 'La Leonesa', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (403, 'La Tigra', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (404, 'La Verde', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (405, 'Laguna Blanca', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (406, 'Laguna Limpia', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (407, 'Lapachito', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (408, 'Las Breñas', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (409, 'Las Garcitas', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (410, 'Las Palmas', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (411, 'Los Frentones', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (412, 'Machagai', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (413, 'Makallé', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (414, 'Margarita Belén', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (415, 'Miraflores', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (416, 'Misión N. Pompeya', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (417, 'Napenay', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (418, 'Pampa Almirón', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (419, 'Pampa del Indio', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (420, 'Pampa del Infierno', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (421, 'Pdcia. de La Plaza', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (422, 'Pdcia. Roca', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (423, 'Pdcia. Roque Sáenz Peña', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (424, 'Pto. Bermejo', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (425, 'Pto. Eva Perón', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (426, 'Puero Tirol', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (427, 'Puerto Vilelas', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (428, 'Quitilipi', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (429, 'Resistencia', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (430, 'Sáenz Peña', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (431, 'Samuhú', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (432, 'San Bernardo', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (433, 'Santa Sylvina', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (434, 'Taco Pozo', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (435, 'Tres Isletas', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (436, 'Villa Ángela', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (437, 'Villa Berthet', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (438, 'Villa R. Bermejito', 5);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (439, 'Aldea Apeleg', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (440, 'Aldea Beleiro', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (441, 'Aldea Epulef', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (442, 'Alto Río Sengerr', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (443, 'Buen Pasto', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (444, 'Camarones', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (445, 'Carrenleufú', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (446, 'Cholila', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (447, 'Co. Centinela', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (448, 'Colan Conhué', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (449, 'Comodoro Rivadavia', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (450, 'Corcovado', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (451, 'Cushamen', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (452, 'Dique F. Ameghino', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (453, 'Dolavón', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (454, 'Dr. R. Rojas', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (455, 'El Hoyo', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (456, 'El Maitén', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (457, 'Epuyén', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (458, 'Esquel', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (459, 'Facundo', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (460, 'Gaimán', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (461, 'Gan Gan', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (462, 'Gastre', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (463, 'Gdor. Costa', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (464, 'Gualjaina', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (465, 'J. de San Martín', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (466, 'Lago Blanco', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (467, 'Lago Puelo', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (468, 'Lagunita Salada', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (469, 'Las Plumas', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (470, 'Los Altares', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (471, 'Paso de los Indios', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (472, 'Paso del Sapo', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (473, 'Pto. Madryn', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (474, 'Pto. Pirámides', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (475, 'Rada Tilly', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (476, 'Rawson', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (477, 'Río Mayo', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (478, 'Río Pico', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (479, 'Sarmiento', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (480, 'Tecka', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (481, 'Telsen', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (482, 'Trelew', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (483, 'Trevelin', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (484, 'Veintiocho de Julio', 6);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (485, 'Achiras', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (486, 'Adelia Maria', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (487, 'Agua de Oro', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (488, 'Alcira Gigena', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (489, 'Aldea Santa Maria', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (490, 'Alejandro Roca', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (491, 'Alejo Ledesma', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (492, 'Alicia', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (493, 'Almafuerte', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (494, 'Alpa Corral', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (495, 'Alta Gracia', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (496, 'Alto Alegre', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (497, 'Alto de Los Quebrachos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (498, 'Altos de Chipion', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (499, 'Amboy', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (500, 'Ambul', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (501, 'Ana Zumaran', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (502, 'Anisacate', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (503, 'Arguello', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (504, 'Arias', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (505, 'Arroyito', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (506, 'Arroyo Algodon', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (507, 'Arroyo Cabral', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (508, 'Arroyo Los Patos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (509, 'Assunta', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (510, 'Atahona', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (511, 'Ausonia', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (512, 'Avellaneda', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (513, 'Ballesteros', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (514, 'Ballesteros Sud', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (515, 'Balnearia', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (516, 'Bañado de Soto', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (517, 'Bell Ville', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (518, 'Bengolea', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (519, 'Benjamin Gould', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (520, 'Berrotaran', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (521, 'Bialet Masse', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (522, 'Bouwer', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (523, 'Brinkmann', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (524, 'Buchardo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (525, 'Bulnes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (526, 'Cabalango', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (527, 'Calamuchita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (528, 'Calchin', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (529, 'Calchin Oeste', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (530, 'Calmayo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (531, 'Camilo Aldao', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (532, 'Caminiaga', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (533, 'Cañada de Luque', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (534, 'Cañada de Machado', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (535, 'Cañada de Rio Pinto', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (536, 'Cañada del Sauce', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (537, 'Canals', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (538, 'Candelaria Sud', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (539, 'Capilla de Remedios', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (540, 'Capilla de Siton', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (541, 'Capilla del Carmen', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (542, 'Capilla del Monte', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (543, 'Capital', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (544, 'Capitan Gral B. O´Higgins', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (545, 'Carnerillo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (546, 'Carrilobo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (547, 'Casa Grande', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (548, 'Cavanagh', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (549, 'Cerro Colorado', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (550, 'Chaján', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (551, 'Chalacea', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (552, 'Chañar Viejo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (553, 'Chancaní', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (554, 'Charbonier', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (555, 'Charras', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (556, 'Chazón', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (557, 'Chilibroste', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (558, 'Chucul', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (559, 'Chuña', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (560, 'Chuña Huasi', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (561, 'Churqui Cañada', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (562, 'Cienaga Del Coro', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (563, 'Cintra', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (564, 'Col. Almada', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (565, 'Col. Anita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (566, 'Col. Barge', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (567, 'Col. Bismark', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (568, 'Col. Bremen', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (569, 'Col. Caroya', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (570, 'Col. Italiana', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (571, 'Col. Iturraspe', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (572, 'Col. Las Cuatro Esquinas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (573, 'Col. Las Pichanas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (574, 'Col. Marina', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (575, 'Col. Prosperidad', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (576, 'Col. San Bartolome', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (577, 'Col. San Pedro', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (578, 'Col. Tirolesa', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (579, 'Col. Vicente Aguero', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (580, 'Col. Videla', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (581, 'Col. Vignaud', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (582, 'Col. Waltelina', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (583, 'Colazo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (584, 'Comechingones', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (585, 'Conlara', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (586, 'Copacabana', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (588, 'Coronel Baigorria', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (589, 'Coronel Moldes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (590, 'Corral de Bustos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (591, 'Corralito', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (592, 'Cosquín', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (593, 'Costa Sacate', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (594, 'Cruz Alta', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (595, 'Cruz de Caña', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (596, 'Cruz del Eje', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (597, 'Cuesta Blanca', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (598, 'Dean Funes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (599, 'Del Campillo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (600, 'Despeñaderos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (601, 'Devoto', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (602, 'Diego de Rojas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (603, 'Dique Chico', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (604, 'El Arañado', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (605, 'El Brete', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (606, 'El Chacho', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (607, 'El Crispín', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (608, 'El Fortín', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (609, 'El Manzano', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (610, 'El Rastreador', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (611, 'El Rodeo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (612, 'El Tío', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (613, 'Elena', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (614, 'Embalse', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (615, 'Esquina', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (616, 'Estación Gral. Paz', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (617, 'Estación Juárez Celman', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (618, 'Estancia de Guadalupe', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (619, 'Estancia Vieja', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (620, 'Etruria', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (621, 'Eufrasio Loza', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (622, 'Falda del Carmen', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (623, 'Freyre', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (624, 'Gral. Baldissera', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (625, 'Gral. Cabrera', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (626, 'Gral. Deheza', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (627, 'Gral. Fotheringham', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (628, 'Gral. Levalle', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (629, 'Gral. Roca', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (630, 'Guanaco Muerto', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (631, 'Guasapampa', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (632, 'Guatimozin', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (633, 'Gutenberg', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (634, 'Hernando', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (635, 'Huanchillas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (636, 'Huerta Grande', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (637, 'Huinca Renanco', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (638, 'Idiazabal', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (639, 'Impira', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (640, 'Inriville', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (641, 'Isla Verde', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (642, 'Italó', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (643, 'James Craik', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (644, 'Jesús María', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (645, 'Jovita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (646, 'Justiniano Posse', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (647, 'Km 658', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (648, 'L. V. Mansilla', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (649, 'La Batea', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (650, 'La Calera', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (651, 'La Carlota', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (652, 'La Carolina', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (653, 'La Cautiva', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (654, 'La Cesira', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (655, 'La Cruz', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (656, 'La Cumbre', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (657, 'La Cumbrecita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (658, 'La Falda', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (659, 'La Francia', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (660, 'La Granja', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (661, 'La Higuera', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (662, 'La Laguna', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (663, 'La Paisanita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (664, 'La Palestina', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (666, 'La Paquita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (667, 'La Para', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (668, 'La Paz', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (669, 'La Playa', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (670, 'La Playosa', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (671, 'La Población', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (672, 'La Posta', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (673, 'La Puerta', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (674, 'La Quinta', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (675, 'La Rancherita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (676, 'La Rinconada', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (677, 'La Serranita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (678, 'La Tordilla', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (679, 'Laborde', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (680, 'Laboulaye', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (681, 'Laguna Larga', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (682, 'Las Acequias', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (683, 'Las Albahacas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (684, 'Las Arrias', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (685, 'Las Bajadas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (686, 'Las Caleras', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (687, 'Las Calles', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (688, 'Las Cañadas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (689, 'Las Gramillas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (690, 'Las Higueras', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (691, 'Las Isletillas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (692, 'Las Junturas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (693, 'Las Palmas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (694, 'Las Peñas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (695, 'Las Peñas Sud', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (696, 'Las Perdices', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (697, 'Las Playas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (698, 'Las Rabonas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (699, 'Las Saladas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (700, 'Las Tapias', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (701, 'Las Varas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (702, 'Las Varillas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (703, 'Las Vertientes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (704, 'Leguizamón', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (705, 'Leones', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (706, 'Los Cedros', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (707, 'Los Cerrillos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (708, 'Los Chañaritos (C.E)', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (709, 'Los Chanaritos (R.S)', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (710, 'Los Cisnes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (711, 'Los Cocos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (712, 'Los Cóndores', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (713, 'Los Hornillos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (714, 'Los Hoyos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (715, 'Los Mistoles', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (716, 'Los Molinos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (717, 'Los Pozos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (718, 'Los Reartes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (719, 'Los Surgentes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (720, 'Los Talares', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (721, 'Los Zorros', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (722, 'Lozada', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (723, 'Luca', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (724, 'Luque', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (725, 'Luyaba', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (726, 'Malagueño', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (727, 'Malena', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (728, 'Malvinas Argentinas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (729, 'Manfredi', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (730, 'Maquinista Gallini', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (731, 'Marcos Juárez', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (732, 'Marull', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (733, 'Matorrales', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (734, 'Mattaldi', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (735, 'Mayu Sumaj', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (736, 'Media Naranja', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (737, 'Melo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (738, 'Mendiolaza', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (739, 'Mi Granja', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (740, 'Mina Clavero', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (741, 'Miramar', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (742, 'Morrison', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (743, 'Morteros', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (744, 'Mte. Buey', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (745, 'Mte. Cristo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (746, 'Mte. De Los Gauchos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (747, 'Mte. Leña', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (748, 'Mte. Maíz', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (749, 'Mte. Ralo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (750, 'Nicolás Bruzone', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (751, 'Noetinger', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (752, 'Nono', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (753, 'Nueva 7', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (754, 'Obispo Trejo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (755, 'Olaeta', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (756, 'Oliva', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (757, 'Olivares San Nicolás', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (758, 'Onagolty', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (759, 'Oncativo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (760, 'Ordoñez', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (761, 'Pacheco De Melo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (762, 'Pampayasta N.', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (763, 'Pampayasta S.', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (764, 'Panaholma', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (765, 'Pascanas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (766, 'Pasco', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (767, 'Paso del Durazno', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (768, 'Paso Viejo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (769, 'Pilar', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (770, 'Pincén', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (771, 'Piquillín', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (772, 'Plaza de Mercedes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (773, 'Plaza Luxardo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (774, 'Porteña', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (775, 'Potrero de Garay', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (776, 'Pozo del Molle', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (777, 'Pozo Nuevo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (778, 'Pueblo Italiano', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (779, 'Puesto de Castro', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (780, 'Punta del Agua', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (781, 'Quebracho Herrado', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (782, 'Quilino', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (783, 'Rafael García', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (784, 'Ranqueles', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (785, 'Rayo Cortado', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (786, 'Reducción', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (787, 'Rincón', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (788, 'Río Bamba', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (789, 'Río Ceballos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (790, 'Río Cuarto', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (791, 'Río de Los Sauces', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (792, 'Río Primero', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (793, 'Río Segundo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (794, 'Río Tercero', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (795, 'Rosales', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (796, 'Rosario del Saladillo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (797, 'Sacanta', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (798, 'Sagrada Familia', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (799, 'Saira', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (800, 'Saladillo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (801, 'Saldán', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (802, 'Salsacate', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (803, 'Salsipuedes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (804, 'Sampacho', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (805, 'San Agustín', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (806, 'San Antonio de Arredondo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (807, 'San Antonio de Litín', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (808, 'San Basilio', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (809, 'San Carlos Minas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (810, 'San Clemente', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (811, 'San Esteban', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (812, 'San Francisco', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (813, 'San Ignacio', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (814, 'San Javier', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (815, 'San Jerónimo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (816, 'San Joaquín', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (817, 'San José de La Dormida', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (818, 'San José de Las Salinas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (819, 'San Lorenzo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (820, 'San Marcos Sierras', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (821, 'San Marcos Sud', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (822, 'San Pedro', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (823, 'San Pedro N.', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (824, 'San Roque', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (825, 'San Vicente', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (826, 'Santa Catalina', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (827, 'Santa Elena', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (828, 'Santa Eufemia', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (829, 'Santa Maria', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (830, 'Sarmiento', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (831, 'Saturnino M.Laspiur', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (832, 'Sauce Arriba', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (833, 'Sebastián Elcano', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (834, 'Seeber', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (835, 'Segunda Usina', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (836, 'Serrano', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (837, 'Serrezuela', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (838, 'Sgo. Temple', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (839, 'Silvio Pellico', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (840, 'Simbolar', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (841, 'Sinsacate', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (842, 'Sta. Rosa de Calamuchita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (843, 'Sta. Rosa de Río Primero', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (844, 'Suco', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (845, 'Tala Cañada', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (846, 'Tala Huasi', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (847, 'Talaini', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (848, 'Tancacha', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (849, 'Tanti', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (850, 'Ticino', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (851, 'Tinoco', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (852, 'Tío Pujio', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (853, 'Toledo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (854, 'Toro Pujio', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (855, 'Tosno', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (856, 'Tosquita', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (857, 'Tránsito', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (858, 'Tuclame', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (859, 'Tutti', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (860, 'Ucacha', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (861, 'Unquillo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (862, 'Valle de Anisacate', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (863, 'Valle Hermoso', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (864, 'Vélez Sarfield', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (865, 'Viamonte', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (866, 'Vicuña Mackenna', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (867, 'Villa Allende', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (868, 'Villa Amancay', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (869, 'Villa Ascasubi', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (870, 'Villa Candelaria N.', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (871, 'Villa Carlos Paz', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (872, 'Villa Cerro Azul', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (873, 'Villa Ciudad de América', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (874, 'Villa Ciudad Pque Los Reartes', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (875, 'Villa Concepción del Tío', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (876, 'Villa Cura Brochero', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (877, 'Villa de Las Rosas', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (878, 'Villa de María', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (879, 'Villa de Pocho', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (880, 'Villa de Soto', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (881, 'Villa del Dique', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (882, 'Villa del Prado', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (883, 'Villa del Rosario', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (884, 'Villa del Totoral', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (885, 'Villa Dolores', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (886, 'Villa El Chancay', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (887, 'Villa Elisa', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (888, 'Villa Flor Serrana', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (889, 'Villa Fontana', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (890, 'Villa Giardino', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (891, 'Villa Gral. Belgrano', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (892, 'Villa Gutierrez', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (893, 'Villa Huidobro', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (894, 'Villa La Bolsa', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (895, 'Villa Los Aromos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (896, 'Villa Los Patos', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (897, 'Villa María', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (898, 'Villa Nueva', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (899, 'Villa Pque. Santa Ana', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (900, 'Villa Pque. Siquiman', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (901, 'Villa Quillinzo', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (902, 'Villa Rossi', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (903, 'Villa Rumipal', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (904, 'Villa San Esteban', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (905, 'Villa San Isidro', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (906, 'Villa 21', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (907, 'Villa Sarmiento (G.R)', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (908, 'Villa Sarmiento (S.A)', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (909, 'Villa Tulumba', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (910, 'Villa Valeria', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (911, 'Villa Yacanto', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (912, 'Washington', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (913, 'Wenceslao Escalante', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (914, 'Ycho Cruz Sierras', 7);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (915, 'Alvear', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (916, 'Bella Vista', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (917, 'Berón de Astrada', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (918, 'Bonpland', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (919, 'Caá Cati', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (920, 'Capital', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (921, 'Chavarría', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (922, 'Col. C. Pellegrini', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (923, 'Col. Libertad', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (924, 'Col. Liebig', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (925, 'Col. Sta Rosa', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (926, 'Concepción', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (927, 'Cruz de Los Milagros', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (928, 'Curuzú-Cuatiá', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (929, 'Empedrado', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (930, 'Esquina', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (931, 'Estación Torrent', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (932, 'Felipe Yofré', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (933, 'Garruchos', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (934, 'Gdor. Agrónomo', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (935, 'Gdor. Martínez', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (936, 'Goya', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (937, 'Guaviravi', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (938, 'Herlitzka', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (939, 'Ita-Ibate', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (940, 'Itatí', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (941, 'Ituzaingó', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (942, 'José Rafael Gómez', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (943, 'Juan Pujol', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (944, 'La Cruz', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (945, 'Lavalle', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (946, 'Lomas de Vallejos', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (947, 'Loreto', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (948, 'Mariano I. Loza', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (949, 'Mburucuyá', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (950, 'Mercedes', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (951, 'Mocoretá', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (952, 'Mte. Caseros', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (953, 'Nueve de Julio', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (954, 'Palmar Grande', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (955, 'Parada Pucheta', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (956, 'Paso de La Patria', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (957, 'Paso de Los Libres', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (958, 'Pedro R. Fernandez', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (959, 'Perugorría', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (960, 'Pueblo Libertador', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (961, 'Ramada Paso', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (962, 'Riachuelo', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (963, 'Saladas', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (964, 'San Antonio', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (965, 'San Carlos', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (966, 'San Cosme', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (967, 'San Lorenzo', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (968, '20 del Palmar', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (969, 'San Miguel', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (970, 'San Roque', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (971, 'Santa Ana', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (972, 'Santa Lucía', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (973, 'Santo Tomé', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (974, 'Sauce', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (975, 'Tabay', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (976, 'Tapebicuá', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (977, 'Tatacua', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (978, 'Virasoro', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (979, 'Yapeyú', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (980, 'Yataití Calle', 8);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (981, 'Alarcón', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (982, 'Alcaraz', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (983, 'Alcaraz N.', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (984, 'Alcaraz S.', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (985, 'Aldea Asunción', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (986, 'Aldea Brasilera', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (987, 'Aldea Elgenfeld', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (988, 'Aldea Grapschental', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (989, 'Aldea Ma. Luisa', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (990, 'Aldea Protestante', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (991, 'Aldea Salto', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (992, 'Aldea San Antonio (G)', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (993, 'Aldea San Antonio (P)', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (994, 'Aldea 19', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (995, 'Aldea San Miguel', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (996, 'Aldea San Rafael', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (997, 'Aldea Spatzenkutter', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (998, 'Aldea Sta. María', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (999, 'Aldea Sta. Rosa', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1000, 'Aldea Valle María', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1001, 'Altamirano Sur', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1002, 'Antelo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1003, 'Antonio Tomás', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1004, 'Aranguren', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1005, 'Arroyo Barú', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1006, 'Arroyo Burgos', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1007, 'Arroyo Clé', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1008, 'Arroyo Corralito', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1009, 'Arroyo del Medio', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1010, 'Arroyo Maturrango', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1011, 'Arroyo Palo Seco', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1012, 'Banderas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1013, 'Basavilbaso', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1014, 'Betbeder', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1015, 'Bovril', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1016, 'Caseros', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1017, 'Ceibas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1018, 'Cerrito', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1019, 'Chajarí', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1020, 'Chilcas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1021, 'Clodomiro Ledesma', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1022, 'Col. Alemana', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1023, 'Col. Avellaneda', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1024, 'Col. Avigdor', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1025, 'Col. Ayuí', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1026, 'Col. Baylina', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1027, 'Col. Carrasco', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1028, 'Col. Celina', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1029, 'Col. Cerrito', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1030, 'Col. Crespo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1031, 'Col. Elia', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1032, 'Col. Ensayo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1033, 'Col. Gral. Roca', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1034, 'Col. La Argentina', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1035, 'Col. Merou', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1036, 'Col. Oficial Nª3', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1037, 'Col. Oficial Nº13', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1038, 'Col. Oficial Nº14', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1039, 'Col. Oficial Nº5', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1040, 'Col. Reffino', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1041, 'Col. Tunas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1042, 'Col. Viraró', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1043, 'Colón', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1044, 'Concepción del Uruguay', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1045, 'Concordia', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1046, 'Conscripto Bernardi', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1047, 'Costa Grande', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1048, 'Costa San Antonio', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1049, 'Costa Uruguay N.', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1050, 'Costa Uruguay S.', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1051, 'Crespo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1052, 'Crucecitas 3ª', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1053, 'Crucecitas 7ª', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1054, 'Crucecitas 8ª', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1055, 'Cuchilla Redonda', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1056, 'Curtiembre', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1057, 'Diamante', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1058, 'Distrito 6º', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1059, 'Distrito Chañar', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1060, 'Distrito Chiqueros', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1061, 'Distrito Cuarto', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1062, 'Distrito Diego López', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1063, 'Distrito Pajonal', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1064, 'Distrito Sauce', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1065, 'Distrito Tala', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1066, 'Distrito Talitas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1067, 'Don Cristóbal 1ª Sección', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1068, 'Don Cristóbal 2ª Sección', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1069, 'Durazno', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1070, 'El Cimarrón', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1071, 'El Gramillal', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1072, 'El Palenque', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1073, 'El Pingo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1074, 'El Quebracho', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1075, 'El Redomón', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1076, 'El Solar', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1077, 'Enrique Carbo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1079, 'Espinillo N.', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1080, 'Estación Campos', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1081, 'Estación Escriña', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1082, 'Estación Lazo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1083, 'Estación Raíces', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1084, 'Estación Yerúa', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1085, 'Estancia Grande', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1086, 'Estancia Líbaros', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1087, 'Estancia Racedo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1088, 'Estancia Solá', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1089, 'Estancia Yuquerí', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1090, 'Estaquitas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1091, 'Faustino M. Parera', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1092, 'Febre', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1093, 'Federación', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1094, 'Federal', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1095, 'Gdor. Echagüe', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1096, 'Gdor. Mansilla', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1097, 'Gilbert', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1098, 'González Calderón', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1099, 'Gral. Almada', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1100, 'Gral. Alvear', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1101, 'Gral. Campos', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1102, 'Gral. Galarza', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1103, 'Gral. Ramírez', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1104, 'Gualeguay', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1105, 'Gualeguaychú', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1106, 'Gualeguaycito', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1107, 'Guardamonte', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1108, 'Hambis', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1109, 'Hasenkamp', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1110, 'Hernandarias', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1111, 'Hernández', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1112, 'Herrera', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1113, 'Hinojal', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1114, 'Hocker', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1115, 'Ing. Sajaroff', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1116, 'Irazusta', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1117, 'Isletas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1118, 'J.J De Urquiza', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1119, 'Jubileo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1120, 'La Clarita', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1121, 'La Criolla', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1122, 'La Esmeralda', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1123, 'La Florida', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1124, 'La Fraternidad', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1125, 'La Hierra', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1126, 'La Ollita', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1127, 'La Paz', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1128, 'La Picada', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1129, 'La Providencia', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1130, 'La Verbena', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1131, 'Laguna Benítez', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1132, 'Larroque', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1133, 'Las Cuevas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1134, 'Las Garzas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1135, 'Las Guachas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1136, 'Las Mercedes', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1137, 'Las Moscas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1138, 'Las Mulitas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1139, 'Las Toscas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1140, 'Laurencena', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1141, 'Libertador San Martín', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1142, 'Loma Limpia', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1143, 'Los Ceibos', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1144, 'Los Charruas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1145, 'Los Conquistadores', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1146, 'Lucas González', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1147, 'Lucas N.', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1148, 'Lucas S. 1ª', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1149, 'Lucas S. 2ª', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1150, 'Maciá', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1151, 'María Grande', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1152, 'María Grande 2ª', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1153, 'Médanos', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1154, 'Mojones N.', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1155, 'Mojones S.', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1156, 'Molino Doll', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1157, 'Monte Redondo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1158, 'Montoya', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1159, 'Mulas Grandes', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1160, 'Ñancay', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1161, 'Nogoyá', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1162, 'Nueva Escocia', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1163, 'Nueva Vizcaya', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1164, 'Ombú', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1165, 'Oro Verde', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1166, 'Paraná', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1167, 'Pasaje Guayaquil', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1168, 'Pasaje Las Tunas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1169, 'Paso de La Arena', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1170, 'Paso de La Laguna', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1171, 'Paso de Las Piedras', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1172, 'Paso Duarte', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1173, 'Pastor Britos', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1174, 'Pedernal', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1175, 'Perdices', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1176, 'Picada Berón', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1177, 'Piedras Blancas', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1178, 'Primer Distrito Cuchilla', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1179, 'Primero de Mayo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1180, 'Pronunciamiento', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1181, 'Pto. Algarrobo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1182, 'Pto. Ibicuy', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1183, 'Pueblo Brugo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1184, 'Pueblo Cazes', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1185, 'Pueblo Gral. Belgrano', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1186, 'Pueblo Liebig', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1187, 'Puerto Yeruá', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1188, 'Punta del Monte', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1189, 'Quebracho', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1190, 'Quinto Distrito', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1191, 'Raices Oeste', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1192, 'Rincón de Nogoyá', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1193, 'Rincón del Cinto', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1194, 'Rincón del Doll', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1195, 'Rincón del Gato', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1196, 'Rocamora', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1197, 'Rosario del Tala', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1198, 'San Benito', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1199, 'San Cipriano', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1200, 'San Ernesto', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1201, 'San Gustavo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1202, 'San Jaime', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1203, 'San José', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1204, 'San José de Feliciano', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1205, 'San Justo', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1206, 'San Marcial', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1207, 'San Pedro', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1208, 'San Ramírez', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1209, 'San Ramón', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1210, 'San Roque', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1211, 'San Salvador', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1212, 'San Víctor', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1213, 'Santa Ana', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1214, 'Santa Anita', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1215, 'Santa Elena', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1216, 'Santa Lucía', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1217, 'Santa Luisa', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1218, 'Sauce de Luna', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1219, 'Sauce Montrull', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1220, 'Sauce Pinto', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1221, 'Sauce Sur', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1222, 'Seguí', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1223, 'Sir Leonard', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1224, 'Sosa', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1225, 'Tabossi', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1226, 'Tezanos Pinto', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1227, 'Ubajay', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1228, 'Urdinarrain', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1229, 'Veinte de Septiembre', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1230, 'Viale', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1231, 'Victoria', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1232, 'Villa Clara', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1233, 'Villa del Rosario', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1234, 'Villa Domínguez', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1235, 'Villa Elisa', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1236, 'Villa Fontana', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1237, 'Villa Gdor. Etchevehere', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1238, 'Villa Mantero', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1239, 'Villa Paranacito', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1240, 'Villa Urquiza', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1241, 'Villaguay', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1242, 'Walter Moss', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1243, 'Yacaré', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1244, 'Yeso Oeste', 9);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1245, 'Buena Vista', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1246, 'Clorinda', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1247, 'Col. Pastoril', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1248, 'Cte. Fontana', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1249, 'El Colorado', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1250, 'El Espinillo', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1251, 'Estanislao Del Campo', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1253, 'Fortín Lugones', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1254, 'Gral. Lucio V. Mansilla', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1255, 'Gral. Manuel Belgrano', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1256, 'Gral. Mosconi', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1257, 'Gran Guardia', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1258, 'Herradura', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1259, 'Ibarreta', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1260, 'Ing. Juárez', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1261, 'Laguna Blanca', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1262, 'Laguna Naick Neck', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1263, 'Laguna Yema', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1264, 'Las Lomitas', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1265, 'Los Chiriguanos', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1266, 'Mayor V. Villafañe', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1267, 'Misión San Fco.', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1268, 'Palo Santo', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1269, 'Pirané', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1270, 'Pozo del Maza', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1271, 'Riacho He-He', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1272, 'San Hilario', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1273, 'San Martín II', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1274, 'Siete Palmas', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1275, 'Subteniente Perín', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1276, 'Tres Lagunas', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1277, 'Villa Dos Trece', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1278, 'Villa Escolar', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1279, 'Villa Gral. Güemes', 10);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1280, 'Abdon Castro Tolay', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1281, 'Abra Pampa', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1282, 'Abralaite', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1283, 'Aguas Calientes', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1284, 'Arrayanal', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1285, 'Barrios', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1286, 'Caimancito', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1287, 'Calilegua', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1288, 'Cangrejillos', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1289, 'Caspala', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1290, 'Catuá', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1291, 'Cieneguillas', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1292, 'Coranzulli', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1293, 'Cusi-Cusi', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1294, 'El Aguilar', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1295, 'El Carmen', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1296, 'El Cóndor', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1297, 'El Fuerte', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1298, 'El Piquete', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1299, 'El Talar', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1300, 'Fraile Pintado', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1301, 'Hipólito Yrigoyen', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1302, 'Huacalera', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1303, 'Humahuaca', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1304, 'La Esperanza', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1305, 'La Mendieta', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1306, 'La Quiaca', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1307, 'Ledesma', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1308, 'Libertador Gral. San Martin', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1309, 'Maimara', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1310, 'Mina Pirquitas', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1311, 'Monterrico', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1312, 'Palma Sola', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1313, 'Palpalá', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1314, 'Pampa Blanca', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1315, 'Pampichuela', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1316, 'Perico', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1317, 'Puesto del Marqués', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1318, 'Puesto Viejo', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1319, 'Pumahuasi', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1320, 'Purmamarca', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1321, 'Rinconada', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1322, 'Rodeitos', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1323, 'Rosario de Río Grande', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1324, 'San Antonio', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1325, 'San Francisco', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1326, 'San Pedro', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1327, 'San Rafael', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1328, 'San Salvador', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1329, 'Santa Ana', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1330, 'Santa Catalina', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1331, 'Santa Clara', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1332, 'Susques', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1333, 'Tilcara', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1334, 'Tres Cruces', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1335, 'Tumbaya', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1336, 'Valle Grande', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1337, 'Vinalito', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1338, 'Volcán', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1339, 'Yala', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1340, 'Yaví', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1341, 'Yuto', 11);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1342, 'Abramo', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1343, 'Adolfo Van Praet', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1344, 'Agustoni', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1345, 'Algarrobo del Aguila', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1346, 'Alpachiri', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1347, 'Alta Italia', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1348, 'Anguil', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1349, 'Arata', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1350, 'Ataliva Roca', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1351, 'Bernardo Larroude', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1352, 'Bernasconi', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1353, 'Caleufú', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1354, 'Carro Quemado', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1355, 'Catriló', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1356, 'Ceballos', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1357, 'Chacharramendi', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1358, 'Col. Barón', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1359, 'Col. Santa María', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1360, 'Conhelo', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1361, 'Coronel Hilario Lagos', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1362, 'Cuchillo-Có', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1363, 'Doblas', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1364, 'Dorila', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1365, 'Eduardo Castex', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1366, 'Embajador Martini', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1367, 'Falucho', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1368, 'Gral. Acha', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1369, 'Gral. Manuel Campos', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1370, 'Gral. Pico', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1371, 'Guatraché', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1372, 'Ing. Luiggi', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1373, 'Intendente Alvear', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1374, 'Jacinto Arauz', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1375, 'La Adela', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1376, 'La Humada', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1377, 'La Maruja', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1379, 'La Reforma', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1380, 'Limay Mahuida', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1381, 'Lonquimay', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1382, 'Loventuel', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1383, 'Luan Toro', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1384, 'Macachín', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1385, 'Maisonnave', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1386, 'Mauricio Mayer', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1387, 'Metileo', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1388, 'Miguel Cané', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1389, 'Miguel Riglos', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1390, 'Monte Nievas', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1391, 'Parera', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1392, 'Perú', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1393, 'Pichi-Huinca', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1394, 'Puelches', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1395, 'Puelén', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1396, 'Quehue', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1397, 'Quemú Quemú', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1398, 'Quetrequén', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1399, 'Rancul', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1400, 'Realicó', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1401, 'Relmo', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1402, 'Rolón', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1403, 'Rucanelo', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1404, 'Sarah', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1405, 'Speluzzi', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1406, 'Sta. Isabel', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1407, 'Sta. Rosa', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1408, 'Sta. Teresa', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1409, 'Telén', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1410, 'Toay', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1411, 'Tomas M. de Anchorena', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1412, 'Trenel', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1413, 'Unanue', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1414, 'Uriburu', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1415, 'Veinticinco de Mayo', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1416, 'Vertiz', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1417, 'Victorica', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1418, 'Villa Mirasol', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1419, 'Winifreda', 12);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1420, 'Arauco', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1421, 'Capital', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1422, 'Castro Barros', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1423, 'Chamical', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1424, 'Chilecito', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1425, 'Coronel F. Varela', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1426, 'Famatina', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1427, 'Gral. A.V.Peñaloza', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1428, 'Gral. Belgrano', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1429, 'Gral. J.F. Quiroga', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1430, 'Gral. Lamadrid', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1431, 'Gral. Ocampo', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1432, 'Gral. San Martín', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1433, 'Independencia', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1434, 'Rosario Penaloza', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1435, 'San Blas de Los Sauces', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1436, 'Sanagasta', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1437, 'Vinchina', 13);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1438, 'Capital', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1439, 'Chacras de Coria', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1440, 'Dorrego', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1441, 'Gllen', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1442, 'Godoy Cruz', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1443, 'Gral. Alvear', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1444, 'Guaymallén', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1445, 'Junín', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1446, 'La Paz', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1447, 'Las Heras', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1448, 'Lavalle', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1449, 'Luján', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1450, 'Luján De Cuyo', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1451, 'Maipú', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1452, 'Malargüe', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1453, 'Rivadavia', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1454, 'San Carlos', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1455, 'San Martín', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1456, 'San Rafael', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1457, 'Sta. Rosa', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1458, 'Tunuyán', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1459, 'Tupungato', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1460, 'Villa Nueva', 14);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1461, 'Alba Posse', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1462, 'Almafuerte', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1463, 'Apóstoles', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1464, 'Aristóbulo Del Valle', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1465, 'Arroyo Del Medio', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1466, 'Azara', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1467, 'Bdo. De Irigoyen', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1468, 'Bonpland', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1469, 'Caá Yari', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1470, 'Campo Grande', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1471, 'Campo Ramón', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1472, 'Campo Viera', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1473, 'Candelaria', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1474, 'Capioví', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1475, 'Caraguatay', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1476, 'Cdte. Guacurarí', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1477, 'Cerro Azul', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1478, 'Cerro Corá', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1479, 'Col. Alberdi', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1480, 'Col. Aurora', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1481, 'Col. Delicia', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1482, 'Col. Polana', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1483, 'Col. Victoria', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1484, 'Col. Wanda', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1485, 'Concepción De La Sierra', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1486, 'Corpus', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1487, 'Dos Arroyos', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1488, 'Dos de Mayo', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1489, 'El Alcázar', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1490, 'El Dorado', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1491, 'El Soberbio', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1492, 'Esperanza', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1493, 'F. Ameghino', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1494, 'Fachinal', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1495, 'Garuhapé', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1496, 'Garupá', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1497, 'Gdor. López', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1498, 'Gdor. Roca', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1499, 'Gral. Alvear', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1500, 'Gral. Urquiza', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1501, 'Guaraní', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1502, 'H. Yrigoyen', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1503, 'Iguazú', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1504, 'Itacaruaré', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1505, 'Jardín América', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1506, 'Leandro N. Alem', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1507, 'Libertad', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1508, 'Loreto', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1509, 'Los Helechos', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1510, 'Mártires', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1512, 'Mojón Grande', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1513, 'Montecarlo', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1514, 'Nueve de Julio', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1515, 'Oberá', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1516, 'Olegario V. Andrade', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1517, 'Panambí', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1518, 'Posadas', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1519, 'Profundidad', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1520, 'Pto. Iguazú', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1521, 'Pto. Leoni', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1522, 'Pto. Piray', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1523, 'Pto. Rico', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1524, 'Ruiz de Montoya', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1525, 'San Antonio', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1526, 'San Ignacio', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1527, 'San Javier', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1528, 'San José', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1529, 'San Martín', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1530, 'San Pedro', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1531, 'San Vicente', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1532, 'Santiago De Liniers', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1533, 'Santo Pipo', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1534, 'Sta. Ana', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1535, 'Sta. María', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1536, 'Tres Capones', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1537, 'Veinticinco de Mayo', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1538, 'Wanda', 15);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1539, 'Aguada San Roque', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1540, 'Aluminé', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1541, 'Andacollo', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1542, 'Añelo', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1543, 'Bajada del Agrio', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1544, 'Barrancas', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1545, 'Buta Ranquil', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1546, 'Capital', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1547, 'Caviahué', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1548, 'Centenario', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1549, 'Chorriaca', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1550, 'Chos Malal', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1551, 'Cipolletti', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1552, 'Covunco Abajo', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1553, 'Coyuco Cochico', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1554, 'Cutral Có', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1555, 'El Cholar', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1556, 'El Huecú', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1557, 'El Sauce', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1558, 'Guañacos', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1559, 'Huinganco', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1560, 'Las Coloradas', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1561, 'Las Lajas', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1562, 'Las Ovejas', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1563, 'Loncopué', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1564, 'Los Catutos', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1565, 'Los Chihuidos', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1566, 'Los Miches', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1567, 'Manzano Amargo', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1569, 'Octavio Pico', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1570, 'Paso Aguerre', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1571, 'Picún Leufú', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1572, 'Piedra del Aguila', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1573, 'Pilo Lil', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1574, 'Plaza Huincul', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1575, 'Plottier', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1576, 'Quili Malal', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1577, 'Ramón Castro', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1578, 'Rincón de Los Sauces', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1579, 'San Martín de Los Andes', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1580, 'San Patricio del Chañar', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1581, 'Santo Tomás', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1582, 'Sauzal Bonito', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1583, 'Senillosa', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1584, 'Taquimilán', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1585, 'Tricao Malal', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1586, 'Varvarco', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1587, 'Villa Curí Leuvu', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1588, 'Villa del Nahueve', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1589, 'Villa del Puente Picún Leuvú', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1590, 'Villa El Chocón', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1591, 'Villa La Angostura', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1592, 'Villa Pehuenia', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1593, 'Villa Traful', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1594, 'Vista Alegre', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1595, 'Zapala', 16);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1596, 'Aguada Cecilio', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1597, 'Aguada de Guerra', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1598, 'Allén', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1599, 'Arroyo de La Ventana', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1600, 'Arroyo Los Berros', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1601, 'Bariloche', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1602, 'Calte. Cordero', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1603, 'Campo Grande', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1604, 'Catriel', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1605, 'Cerro Policía', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1606, 'Cervantes', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1607, 'Chelforo', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1608, 'Chimpay', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1609, 'Chinchinales', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1610, 'Chipauquil', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1611, 'Choele Choel', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1612, 'Cinco Saltos', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1613, 'Cipolletti', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1614, 'Clemente Onelli', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1615, 'Colán Conhue', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1616, 'Comallo', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1617, 'Comicó', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1618, 'Cona Niyeu', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1619, 'Coronel Belisle', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1620, 'Cubanea', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1621, 'Darwin', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1622, 'Dina Huapi', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1623, 'El Bolsón', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1624, 'El Caín', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1625, 'El Manso', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1626, 'Gral. Conesa', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1627, 'Gral. Enrique Godoy', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1628, 'Gral. Fernandez Oro', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1629, 'Gral. Roca', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1630, 'Guardia Mitre', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1631, 'Ing. Huergo', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1632, 'Ing. Jacobacci', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1633, 'Laguna Blanca', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1634, 'Lamarque', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1635, 'Las Grutas', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1636, 'Los Menucos', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1637, 'Luis Beltrán', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1638, 'Mainqué', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1639, 'Mamuel Choique', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1640, 'Maquinchao', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1641, 'Mencué', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1642, 'Mtro. Ramos Mexia', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1643, 'Nahuel Niyeu', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1644, 'Naupa Huen', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1645, 'Ñorquinco', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1646, 'Ojos de Agua', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1647, 'Paso de Agua', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1648, 'Paso Flores', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1649, 'Peñas Blancas', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1650, 'Pichi Mahuida', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1651, 'Pilcaniyeu', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1652, 'Pomona', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1653, 'Prahuaniyeu', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1654, 'Rincón Treneta', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1655, 'Río Chico', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1656, 'Río Colorado', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1657, 'Roca', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1658, 'San Antonio Oeste', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1659, 'San Javier', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1660, 'Sierra Colorada', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1661, 'Sierra Grande', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1662, 'Sierra Pailemán', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1663, 'Valcheta', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1664, 'Valle Azul', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1665, 'Viedma', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1666, 'Villa Llanquín', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1667, 'Villa Mascardi', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1668, 'Villa Regina', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1669, 'Yaminué', 17);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1670, 'A. Saravia', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1671, 'Aguaray', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1672, 'Angastaco', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1673, 'Animaná', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1674, 'Cachi', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1675, 'Cafayate', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1676, 'Campo Quijano', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1677, 'Campo Santo', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1678, 'Capital', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1679, 'Cerrillos', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1680, 'Chicoana', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1681, 'Col. Sta. Rosa', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1682, 'Coronel Moldes', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1683, 'El Bordo', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1684, 'El Carril', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1685, 'El Galpón', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1686, 'El Jardín', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1687, 'El Potrero', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1688, 'El Quebrachal', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1689, 'El Tala', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1690, 'Embarcación', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1691, 'Gral. Ballivian', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1692, 'Gral. Güemes', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1693, 'Gral. Mosconi', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1694, 'Gral. Pizarro', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1695, 'Guachipas', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1696, 'Hipólito Yrigoyen', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1697, 'Iruyá', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1698, 'Isla De Cañas', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1699, 'J. V. Gonzalez', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1700, 'La Caldera', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1701, 'La Candelaria', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1702, 'La Merced', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1703, 'La Poma', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1704, 'La Viña', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1705, 'Las Lajitas', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1706, 'Los Toldos', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1707, 'Metán', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1708, 'Molinos', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1709, 'Nazareno', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1710, 'Orán', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1711, 'Payogasta', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1712, 'Pichanal', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1713, 'Prof. S. Mazza', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1714, 'Río Piedras', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1715, 'Rivadavia Banda Norte', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1716, 'Rivadavia Banda Sur', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1717, 'Rosario de La Frontera', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1718, 'Rosario de Lerma', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1719, 'Saclantás', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1721, 'San Antonio', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1722, 'San Carlos', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1723, 'San José De Metán', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1724, 'San Ramón', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1725, 'Santa Victoria E.', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1726, 'Santa Victoria O.', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1727, 'Tartagal', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1728, 'Tolar Grande', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1729, 'Urundel', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1730, 'Vaqueros', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1731, 'Villa San Lorenzo', 18);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1732, 'Albardón', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1733, 'Angaco', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1734, 'Calingasta', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1735, 'Capital', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1736, 'Caucete', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1737, 'Chimbas', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1738, 'Iglesia', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1739, 'Jachal', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1740, 'Nueve de Julio', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1741, 'Pocito', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1742, 'Rawson', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1743, 'Rivadavia', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1745, 'San Martín', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1746, 'Santa Lucía', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1747, 'Sarmiento', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1748, 'Ullum', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1749, 'Valle Fértil', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1750, 'Veinticinco de Mayo', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1751, 'Zonda', 19);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1752, 'Alto Pelado', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1753, 'Alto Pencoso', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1754, 'Anchorena', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1755, 'Arizona', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1756, 'Bagual', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1757, 'Balde', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1758, 'Batavia', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1759, 'Beazley', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1760, 'Buena Esperanza', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1761, 'Candelaria', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1762, 'Capital', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1763, 'Carolina', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1764, 'Carpintería', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1765, 'Concarán', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1766, 'Cortaderas', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1767, 'El Morro', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1768, 'El Trapiche', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1769, 'El Volcán', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1770, 'Fortín El Patria', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1771, 'Fortuna', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1772, 'Fraga', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1773, 'Juan Jorba', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1774, 'Juan Llerena', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1775, 'Juana Koslay', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1776, 'Justo Daract', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1777, 'La Calera', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1778, 'La Florida', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1779, 'La Punilla', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1780, 'La Toma', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1781, 'Lafinur', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1782, 'Las Aguadas', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1783, 'Las Chacras', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1784, 'Las Lagunas', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1785, 'Las Vertientes', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1786, 'Lavaisse', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1787, 'Leandro N. Alem', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1788, 'Los Molles', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1789, 'Luján', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1790, 'Mercedes', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1791, 'Merlo', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1792, 'Naschel', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1793, 'Navia', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1794, 'Nogolí', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1795, 'Nueva Galia', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1796, 'Papagayos', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1797, 'Paso Grande', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1798, 'Potrero de Los Funes', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1799, 'Quines', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1800, 'Renca', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1801, 'Saladillo', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1802, 'San Francisco', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1803, 'San Gerónimo', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1804, 'San Martín', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1805, 'San Pablo', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1806, 'Santa Rosa de Conlara', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1807, 'Talita', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1808, 'Tilisarao', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1809, 'Unión', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1810, 'Villa de La Quebrada', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1811, 'Villa de Praga', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1812, 'Villa del Carmen', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1813, 'Villa Gral. Roca', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1814, 'Villa Larca', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1815, 'Villa Mercedes', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1816, 'Zanjitas', 20);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1817, 'Calafate', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1818, 'Caleta Olivia', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1819, 'Cañadón Seco', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1820, 'Comandante Piedrabuena', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1821, 'El Calafate', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1822, 'El Chaltén', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1823, 'Gdor. Gregores', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1824, 'Hipólito Yrigoyen', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1825, 'Jaramillo', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1826, 'Koluel Kaike', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1827, 'Las Heras', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1828, 'Los Antiguos', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1829, 'Perito Moreno', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1830, 'Pico Truncado', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1831, 'Pto. Deseado', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1832, 'Pto. San Julián', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1833, 'Pto. 21', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1834, 'Río Cuarto', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1835, 'Río Gallegos', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1836, 'Río Turbio', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1837, 'Tres Lagos', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1838, 'Veintiocho De Noviembre', 21);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1839, 'Aarón Castellanos', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1840, 'Acebal', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1841, 'Aguará Grande', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1842, 'Albarellos', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1843, 'Alcorta', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1844, 'Aldao', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1845, 'Alejandra', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1846, 'Álvarez', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1847, 'Ambrosetti', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1848, 'Amenábar', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1849, 'Angélica', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1850, 'Angeloni', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1851, 'Arequito', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1852, 'Arminda', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1853, 'Armstrong', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1854, 'Arocena', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1855, 'Arroyo Aguiar', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1856, 'Arroyo Ceibal', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1857, 'Arroyo Leyes', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1858, 'Arroyo Seco', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1859, 'Arrufó', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1860, 'Arteaga', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1861, 'Ataliva', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1862, 'Aurelia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1863, 'Avellaneda', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1864, 'Barrancas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1865, 'Bauer Y Sigel', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1866, 'Bella Italia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1867, 'Berabevú', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1868, 'Berna', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1869, 'Bernardo de Irigoyen', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1870, 'Bigand', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1871, 'Bombal', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1872, 'Bouquet', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1873, 'Bustinza', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1874, 'Cabal', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1875, 'Cacique Ariacaiquin', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1876, 'Cafferata', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1877, 'Calchaquí', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1878, 'Campo Andino', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1879, 'Campo Piaggio', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1880, 'Cañada de Gómez', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1881, 'Cañada del Ucle', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1882, 'Cañada Rica', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1883, 'Cañada Rosquín', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1884, 'Candioti', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1885, 'Capital', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1886, 'Capitán Bermúdez', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1887, 'Capivara', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1888, 'Carcarañá', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1889, 'Carlos Pellegrini', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1890, 'Carmen', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1891, 'Carmen Del Sauce', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1892, 'Carreras', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1893, 'Carrizales', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1894, 'Casalegno', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1895, 'Casas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1896, 'Casilda', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1897, 'Castelar', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1898, 'Castellanos', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1899, 'Cayastá', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1900, 'Cayastacito', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1901, 'Centeno', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1902, 'Cepeda', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1903, 'Ceres', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1904, 'Chabás', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1905, 'Chañar Ladeado', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1906, 'Chapuy', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1907, 'Chovet', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1908, 'Christophersen', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1909, 'Classon', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1910, 'Cnel. Arnold', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1911, 'Cnel. Bogado', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1912, 'Cnel. Dominguez', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1913, 'Cnel. Fraga', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1914, 'Col. Aldao', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1915, 'Col. Ana', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1916, 'Col. Belgrano', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1917, 'Col. Bicha', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1918, 'Col. Bigand', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1919, 'Col. Bossi', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1920, 'Col. Cavour', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1921, 'Col. Cello', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1922, 'Col. Dolores', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1923, 'Col. Dos Rosas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1924, 'Col. Durán', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1925, 'Col. Iturraspe', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1926, 'Col. Margarita', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1927, 'Col. Mascias', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1928, 'Col. Raquel', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1929, 'Col. Rosa', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1930, 'Col. San José', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1931, 'Constanza', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1932, 'Coronda', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1933, 'Correa', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1934, 'Crispi', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1935, 'Cululú', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1936, 'Curupayti', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1937, 'Desvio Arijón', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1938, 'Diaz', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1939, 'Diego de Alvear', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1940, 'Egusquiza', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1941, 'El Arazá', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1942, 'El Rabón', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1943, 'El Sombrerito', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1944, 'El Trébol', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1945, 'Elisa', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1946, 'Elortondo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1947, 'Emilia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1948, 'Empalme San Carlos', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1949, 'Empalme Villa Constitucion', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1950, 'Esmeralda', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1951, 'Esperanza', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1952, 'Estación Alvear', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1953, 'Estacion Clucellas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1954, 'Esteban Rams', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1955, 'Esther', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1956, 'Esustolia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1957, 'Eusebia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1958, 'Felicia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1959, 'Fidela', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1960, 'Fighiera', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1961, 'Firmat', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1962, 'Florencia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1963, 'Fortín Olmos', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1964, 'Franck', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1965, 'Fray Luis Beltrán', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1966, 'Frontera', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1967, 'Fuentes', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1968, 'Funes', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1969, 'Gaboto', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1970, 'Galisteo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1971, 'Gálvez', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1972, 'Garabalto', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1973, 'Garibaldi', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1974, 'Gato Colorado', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1975, 'Gdor. Crespo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1976, 'Gessler', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1977, 'Godoy', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1978, 'Golondrina', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1979, 'Gral. Gelly', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1980, 'Gral. Lagos', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1981, 'Granadero Baigorria', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1982, 'Gregoria Perez De Denis', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1983, 'Grutly', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1984, 'Guadalupe N.', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1985, 'Gödeken', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1986, 'Helvecia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1987, 'Hersilia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1988, 'Hipatía', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1989, 'Huanqueros', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1990, 'Hugentobler', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1991, 'Hughes', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1992, 'Humberto 1º', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1993, 'Humboldt', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1994, 'Ibarlucea', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1995, 'Ing. Chanourdie', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1996, 'Intiyaco', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1997, 'Ituzaingó', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1998, 'Jacinto L. Aráuz', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (1999, 'Josefina', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2000, 'Juan B. Molina', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2001, 'Juan de Garay', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2002, 'Juncal', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2003, 'La Brava', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2004, 'La Cabral', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2005, 'La Camila', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2006, 'La Chispa', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2007, 'La Clara', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2008, 'La Criolla', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2009, 'La Gallareta', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2010, 'La Lucila', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2011, 'La Pelada', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2012, 'La Penca', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2013, 'La Rubia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2014, 'La Sarita', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2015, 'La Vanguardia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2016, 'Labordeboy', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2017, 'Laguna Paiva', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2018, 'Landeta', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2019, 'Lanteri', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2020, 'Larrechea', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2021, 'Las Avispas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2022, 'Las Bandurrias', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2023, 'Las Garzas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2024, 'Las Palmeras', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2025, 'Las Parejas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2026, 'Las Petacas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2027, 'Las Rosas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2028, 'Las Toscas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2029, 'Las Tunas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2030, 'Lazzarino', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2031, 'Lehmann', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2032, 'Llambi Campbell', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2033, 'Logroño', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2034, 'Loma Alta', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2035, 'López', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2036, 'Los Amores', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2037, 'Los Cardos', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2038, 'Los Laureles', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2039, 'Los Molinos', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2040, 'Los Quirquinchos', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2041, 'Lucio V. Lopez', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2042, 'Luis Palacios', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2043, 'Ma. Juana', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2044, 'Ma. Luisa', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2045, 'Ma. Susana', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2046, 'Ma. Teresa', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2047, 'Maciel', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2048, 'Maggiolo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2049, 'Malabrigo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2050, 'Marcelino Escalada', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2051, 'Margarita', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2052, 'Matilde', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2053, 'Mauá', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2054, 'Máximo Paz', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2055, 'Melincué', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2056, 'Miguel Torres', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2057, 'Moisés Ville', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2058, 'Monigotes', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2059, 'Monje', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2060, 'Monte Obscuridad', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2061, 'Monte Vera', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2062, 'Montefiore', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2063, 'Montes de Oca', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2064, 'Murphy', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2065, 'Ñanducita', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2066, 'Naré', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2067, 'Nelson', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2068, 'Nicanor E. Molinas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2069, 'Nuevo Torino', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2070, 'Oliveros', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2071, 'Palacios', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2072, 'Pavón', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2073, 'Pavón Arriba', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2074, 'Pedro Gómez Cello', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2075, 'Pérez', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2076, 'Peyrano', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2077, 'Piamonte', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2078, 'Pilar', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2079, 'Piñero', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2080, 'Plaza Clucellas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2081, 'Portugalete', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2082, 'Pozo Borrado', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2083, 'Progreso', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2084, 'Providencia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2085, 'Pte. Roca', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2086, 'Pueblo Andino', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2087, 'Pueblo Esther', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2088, 'Pueblo Gral. San Martín', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2089, 'Pueblo Irigoyen', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2090, 'Pueblo Marini', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2091, 'Pueblo Muñoz', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2092, 'Pueblo Uranga', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2093, 'Pujato', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2094, 'Pujato N.', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2095, 'Rafaela', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2096, 'Ramayón', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2097, 'Ramona', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2098, 'Reconquista', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2099, 'Recreo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2100, 'Ricardone', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2101, 'Rivadavia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2102, 'Roldán', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2103, 'Romang', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2104, 'Rosario', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2105, 'Rueda', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2106, 'Rufino', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2107, 'Sa Pereira', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2108, 'Saguier', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2109, 'Saladero M. Cabal', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2110, 'Salto Grande', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2111, 'San Agustín', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2112, 'San Antonio de Obligado', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2113, 'San Bernardo (N.J.)', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2114, 'San Bernardo (S.J.)', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2115, 'San Carlos Centro', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2116, 'San Carlos N.', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2117, 'San Carlos S.', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2118, 'San Cristóbal', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2119, 'San Eduardo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2120, 'San Eugenio', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2121, 'San Fabián', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2122, 'San Fco. de Santa Fé', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2123, 'San Genaro', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2124, 'San Genaro N.', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2125, 'San Gregorio', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2126, 'San Guillermo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2127, 'San Javier', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2128, 'San Jerónimo del Sauce', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2129, 'San Jerónimo N.', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2130, 'San Jerónimo S.', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2131, 'San Jorge', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2132, 'San José de La Esquina', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2133, 'San José del Rincón', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2134, 'San Justo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2135, 'San Lorenzo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2136, 'San Mariano', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2137, 'San Martín de Las Escobas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2138, 'San Martín N.', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2139, 'San Vicente', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2140, 'Sancti Spititu', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2141, 'Sanford', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2142, 'Santo Domingo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2143, 'Santo Tomé', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2144, 'Santurce', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2145, 'Sargento Cabral', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2146, 'Sarmiento', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2147, 'Sastre', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2148, 'Sauce Viejo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2149, 'Serodino', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2150, 'Silva', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2151, 'Soldini', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2152, 'Soledad', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2153, 'Soutomayor', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2154, 'Sta. Clara de Buena Vista', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2155, 'Sta. Clara de Saguier', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2156, 'Sta. Isabel', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2157, 'Sta. Margarita', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2158, 'Sta. Maria Centro', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2159, 'Sta. María N.', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2160, 'Sta. Rosa', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2161, 'Sta. Teresa', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2162, 'Suardi', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2163, 'Sunchales', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2164, 'Susana', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2165, 'Tacuarendí', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2166, 'Tacural', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2167, 'Tartagal', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2168, 'Teodelina', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2169, 'Theobald', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2170, 'Timbúes', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2171, 'Toba', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2172, 'Tortugas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2173, 'Tostado', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2174, 'Totoras', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2175, 'Traill', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2176, 'Venado Tuerto', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2177, 'Vera', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2178, 'Vera y Pintado', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2179, 'Videla', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2180, 'Vila', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2181, 'Villa Amelia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2182, 'Villa Ana', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2183, 'Villa Cañas', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2184, 'Villa Constitución', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2185, 'Villa Eloísa', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2186, 'Villa Gdor. Gálvez', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2187, 'Villa Guillermina', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2188, 'Villa Minetti', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2189, 'Villa Mugueta', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2190, 'Villa Ocampo', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2191, 'Villa San José', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2192, 'Villa Saralegui', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2193, 'Villa Trinidad', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2194, 'Villada', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2195, 'Virginia', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2196, 'Wheelwright', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2197, 'Zavalla', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2198, 'Zenón Pereira', 22);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2199, 'Añatuya', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2200, 'Árraga', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2201, 'Bandera', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2202, 'Bandera Bajada', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2203, 'Beltrán', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2204, 'Brea Pozo', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2205, 'Campo Gallo', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2206, 'Capital', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2207, 'Chilca Juliana', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2208, 'Choya', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2209, 'Clodomira', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2210, 'Col. Alpina', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2211, 'Col. Dora', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2212, 'Col. El Simbolar Robles', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2213, 'El Bobadal', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2214, 'El Charco', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2215, 'El Mojón', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2216, 'Estación Atamisqui', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2217, 'Estación Simbolar', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2218, 'Fernández', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2219, 'Fortín Inca', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2220, 'Frías', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2221, 'Garza', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2222, 'Gramilla', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2223, 'Guardia Escolta', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2224, 'Herrera', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2225, 'Icaño', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2226, 'Ing. Forres', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2227, 'La Banda', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2228, 'La Cañada', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2229, 'Laprida', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2230, 'Lavalle', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2231, 'Loreto', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2232, 'Los Juríes', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2233, 'Los Núñez', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2234, 'Los Pirpintos', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2235, 'Los Quiroga', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2236, 'Los Telares', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2237, 'Lugones', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2238, 'Malbrán', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2239, 'Matara', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2240, 'Medellín', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2241, 'Monte Quemado', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2242, 'Nueva Esperanza', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2243, 'Nueva Francia', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2244, 'Palo Negro', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2245, 'Pampa de Los Guanacos', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2246, 'Pinto', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2247, 'Pozo Hondo', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2248, 'Quimilí', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2249, 'Real Sayana', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2250, 'Sachayoj', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2251, 'San Pedro de Guasayán', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2252, 'Selva', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2253, 'Sol de Julio', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2254, 'Sumampa', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2255, 'Suncho Corral', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2256, 'Taboada', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2257, 'Tapso', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2258, 'Termas de Rio Hondo', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2259, 'Tintina', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2260, 'Tomas Young', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2261, 'Vilelas', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2262, 'Villa Atamisqui', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2263, 'Villa La Punta', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2264, 'Villa Ojo de Agua', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2265, 'Villa Río Hondo', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2266, 'Villa Salavina', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2267, 'Villa Unión', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2268, 'Vilmer', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2269, 'Weisburd', 23);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2270, 'Río Grande', 24);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2271, 'Tolhuin', 24);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2272, 'Ushuaia', 24);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2273, 'Acheral', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2274, 'Agua Dulce', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2275, 'Aguilares', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2276, 'Alderetes', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2277, 'Alpachiri', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2278, 'Alto Verde', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2279, 'Amaicha del Valle', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2280, 'Amberes', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2281, 'Ancajuli', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2282, 'Arcadia', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2283, 'Atahona', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2284, 'Banda del Río Sali', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2285, 'Bella Vista', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2286, 'Buena Vista', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2287, 'Burruyacú', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2288, 'Capitán Cáceres', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2289, 'Cevil Redondo', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2290, 'Choromoro', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2291, 'Ciudacita', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2292, 'Colalao del Valle', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2293, 'Colombres', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2294, 'Concepción', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2295, 'Delfín Gallo', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2296, 'El Bracho', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2297, 'El Cadillal', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2298, 'El Cercado', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2299, 'El Chañar', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2300, 'El Manantial', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2301, 'El Mojón', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2302, 'El Mollar', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2303, 'El Naranjito', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2304, 'El Naranjo', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2305, 'El Polear', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2306, 'El Puestito', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2307, 'El Sacrificio', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2308, 'El Timbó', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2309, 'Escaba', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2310, 'Esquina', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2311, 'Estación Aráoz', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2312, 'Famaillá', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2313, 'Gastone', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2314, 'Gdor. Garmendia', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2315, 'Gdor. Piedrabuena', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2316, 'Graneros', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2317, 'Huasa Pampa', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2318, 'J. B. Alberdi', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2319, 'La Cocha', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2320, 'La Esperanza', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2321, 'La Florida', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2322, 'La Ramada', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2323, 'La Trinidad', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2324, 'Lamadrid', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2325, 'Las Cejas', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2326, 'Las Talas', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2327, 'Las Talitas', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2328, 'Los Bulacio', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2329, 'Los Gómez', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2330, 'Los Nogales', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2331, 'Los Pereyra', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2332, 'Los Pérez', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2333, 'Los Puestos', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2334, 'Los Ralos', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2335, 'Los Sarmientos', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2336, 'Los Sosa', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2337, 'Lules', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2338, 'M. García Fernández', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2339, 'Manuela Pedraza', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2340, 'Medinas', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2341, 'Monte Bello', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2342, 'Monteagudo', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2343, 'Monteros', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2344, 'Padre Monti', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2345, 'Pampa Mayo', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2346, 'Quilmes', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2347, 'Raco', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2348, 'Ranchillos', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2349, 'Río Chico', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2350, 'Río Colorado', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2351, 'Río Seco', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2352, 'Rumi Punco', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2353, 'San Andrés', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2354, 'San Felipe', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2355, 'San Ignacio', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2356, 'San Javier', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2357, 'San José', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2358, 'San Miguel de 25', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2359, 'San Pedro', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2360, 'San Pedro de Colalao', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2361, 'Santa Rosa de Leales', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2362, 'Sgto. Moya', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2363, 'Siete de Abril', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2364, 'Simoca', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2365, 'Soldado Maldonado', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2366, 'Sta. Ana', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2367, 'Sta. Cruz', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2368, 'Sta. Lucía', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2369, 'Taco Ralo', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2370, 'Tafí del Valle', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2371, 'Tafí Viejo', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2372, 'Tapia', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2373, 'Teniente Berdina', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2374, 'Trancas', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2375, 'Villa Belgrano', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2376, 'Villa Benjamín Araoz', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2377, 'Villa Chiligasta', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2378, 'Villa de Leales', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2379, 'Villa Quinteros', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2380, 'Yánima', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2381, 'Yerba Buena', 25);
INSERT INTO public.localidades (id_localidad, nombre, id_provincia) VALUES (2382, 'Yerba Buena (S)', 25);


--
-- TOC entry 2840 (class 0 OID 42130)
-- Dependencies: 220
-- Data for Name: tipos_documentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipos_documentos (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'LE', 'Libreta de Enrolamiento', 2);
INSERT INTO public.tipos_documentos (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'PASAP', 'Pasaporte', 3);
INSERT INTO public.tipos_documentos (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'CI', 'Cedula de Identidad', 15);
INSERT INTO public.tipos_documentos (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'LC', 'Libreta Civica', 16);
INSERT INTO public.tipos_documentos (tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('FISICA', 'DNI', 'Documento Nacional de Identidad', 23);


--
-- TOC entry 2828 (class 0 OID 41528)
-- Dependencies: 208
-- Data for Name: vinculos_familiares; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2826 (class 0 OID 41520)
-- Dependencies: 206
-- Data for Name: trabajadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES (6, 23, 29895984, 'ZACHARSKI SANDRA', 'AL', '2018-10-29', '2018-10-29', NULL, NULL, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1983-05-01', NULL, 'ZACHARSKI ALBERTO', 'BRESZINSKI VERONICA', 'F', 'S', NULL, NULL, 1, NULL, NULL, NULL, 329895984);
INSERT INTO public.trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES (7, 23, 26564328, 'MENDEZ GUSTAVO', 'AL', '2017-11-15', NULL, 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '2018-11-12', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'C', NULL, 'probando', 1, NULL, NULL, '564322222', 564322222);
INSERT INTO public.trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES (5, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2018-11-04', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, 1518, 3764, '426798  ', 3764, '213454  ', NULL, '1990-11-21', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '4523.567.899', 34343453453);
INSERT INTO public.trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES (10, 23, 29893983, 'PEREZ JUAN', 'BA', '2018-11-27', '2018-11-27', 'LIBERTAD', 345, NULL, NULL, NULL, 1463, NULL, NULL, NULL, NULL, NULL, '1984-11-27', NULL, NULL, NULL, 'M', 'C', NULL, NULL, 1, NULL, NULL, '987', 4298939833);
INSERT INTO public.trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES (1, 23, 29895980, 'BENITEZ JUAN', 'AL', '2018-10-29', NULL, 'ALVEAR', 200, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1982-05-30', NULL, 'BENITEZ MARIO', 'PEREZ ROSARIO', 'M', 'S', NULL, NULL, 1, NULL, NULL, '2329895980', 2223);
INSERT INTO public.trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES (2, 23, 28987345, 'PEREZ MARIA DE LOS ANGELES', 'AL', '2018-11-06', NULL, 'LIBERTAD', 21, NULL, NULL, 3350, NULL, 3764, '224677  ', 3764, '213499  ', NULL, '2018-11-06', NULL, 'PEREZ JUAN', 'MARAVILLA MARTA', 'F', 'S', NULL, NULL, 1, 0, 9, NULL, NULL);
INSERT INTO public.trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES (3, 23, 28678987, 'MANITTO ERCILIA', 'AL', '2018-11-12', NULL, 'LABALLE', 1212, NULL, NULL, 3350, 1518, 3764, '4234565 ', 3764, '334565  ', NULL, '1986-11-19', NULL, 'MANITTO JUANJO', 'RODRIGUEZ MARIA ESTER', 'F', 'S', NULL, NULL, 1, NULL, NULL, '8828678987', NULL);
INSERT INTO public.trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES (4, 23, 30897876, 'FERNANDEZ JORGE', 'AL', '2018-11-13', NULL, 'ALVEAR', 234, NULL, NULL, 3350, 1463, 3758, '426798  ', 3758, '356754  ', NULL, '2018-11-13', NULL, 'FERNANDEZ JOSE', 'CASTROCARABIA MARIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '5530897976', NULL);


--
-- TOC entry 2894 (class 0 OID 63092)
-- Dependencies: 274
-- Data for Name: antecentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.antecentes (id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES (1, '2018-11-19', 'N', '2019-02-19', 'todo ok', 6);
INSERT INTO public.antecentes (id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES (2, '2018-11-19', 'N', '2019-02-26', 'prueba', 6);
INSERT INTO public.antecentes (id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES (3, '2018-11-27', 'N', '2019-02-04', NULL, 10);


--
-- TOC entry 2927 (class 0 OID 0)
-- Dependencies: 273
-- Name: antecentes_id_antecedente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.antecentes_id_antecedente_seq', 3, true);


--
-- TOC entry 2913 (class 0 OID 63419)
-- Dependencies: 293
-- Data for Name: articulos_inasistencias; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2928 (class 0 OID 0)
-- Dependencies: 292
-- Name: articulos_inasistencias_id_articulo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articulos_inasistencias_id_articulo_seq', 1, false);


--
-- TOC entry 2882 (class 0 OID 62542)
-- Dependencies: 262
-- Data for Name: tipos_asignaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipos_asignaciones (id_tipo_asignacion, nombre, descripcion) VALUES (1, 'Asignación prenatal', 'Es el pago mensual de un monto equivalente a la asignación por hijo. Podés solicitarla, acreditando el embarazo, a partir de las 12 semanas de gestación y hasta el mes en que se produzca el nacimiento o interrupción del embarazo. La pueden cobrar la madre o el padre acreditando la relación de matrimonio o convivencia con la mujer embarazada.');
INSERT INTO public.tipos_asignaciones (id_tipo_asignacion, nombre, descripcion) VALUES (2, 'Asignación por maternidad', 'Si trabajás en relación de dependencia o en casas particulares podés tramitar la asignación por maternidad que otorga ANSES');
INSERT INTO public.tipos_asignaciones (id_tipo_asignacion, nombre, descripcion) VALUES (3, 'Asignación familiar por hijo o hijo con discapacidad', 'Si trabajás en relación de dependencia y los ingresos del grupo familiar se encuentran entre los topes mínimo y máximo vigentes, tanto el individual como el del grupo familiar podés solicitar el pago de la asignación.');
INSERT INTO public.tipos_asignaciones (id_tipo_asignacion, nombre, descripcion) VALUES (4, 'Asignación familiar por ayuda escolar anual', 'Si trabajás en relación de dependencia podés acceder al pago anual por escolaridad o rehabilitación, de tu hijo o hijo con discapacidad');
INSERT INTO public.tipos_asignaciones (id_tipo_asignacion, nombre, descripcion) VALUES (5, 'Asignación familiar por matrimonio', 'Si vos y/o tu pareja trabajan en relación de dependencia pueden recibir el pago de esta asignación por única vez al contraer matrimonio.');
INSERT INTO public.tipos_asignaciones (id_tipo_asignacion, nombre, descripcion) VALUES (6, 'Asignación familiar por nacimiento o adopción', 'Si trabajás en relación de dependencia podés cobrar el pago extraordinario por el nacimiento o adopción de tu hijo.');


--
-- TOC entry 2892 (class 0 OID 62977)
-- Dependencies: 272
-- Data for Name: asignaciones_flia_trabajador; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.asignaciones_flia_trabajador (id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion) VALUES (1, 2, 6, '2018-11-19', 'aaaa ccc');
INSERT INTO public.asignaciones_flia_trabajador (id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion) VALUES (2, 4, 7, '2018-04-05', NULL);


--
-- TOC entry 2929 (class 0 OID 0)
-- Dependencies: 271
-- Name: asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq', 2, true);


--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 223
-- Name: cargos_id_cargo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cargos_id_cargo_seq', 1, false);


--
-- TOC entry 2839 (class 0 OID 41657)
-- Dependencies: 219
-- Data for Name: convenios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.convenios (id_convenio, nombre) VALUES (1, 'Judiciales');
INSERT INTO public.convenios (id_convenio, nombre) VALUES (2, 'Camioneros');


--
-- TOC entry 2842 (class 0 OID 42141)
-- Dependencies: 222
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (101, 'JUEZ DE LA CORTE SUPREMA', 27886.869999999999, 0, 183601.929999999993, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (1501, 'SECRETARIO DE LA CORTE SUPREMA', 25120.2700000000004, 1, 151767.01999999999, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (1520, 'SECRET GRAL DE ADMINISTRACION', 25120.2700000000004, 1, 151767.01999999999, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (1504, 'SECRETARIO LETRADO C.SUPREMA', 22867.1100000000006, 1, 119142.899999999994, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (3501, 'DIRECTOR GENERAL', 22867.1100000000006, 1, 119142.899999999994, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (4001, 'SUBDIRECTOR GENERAL', 20078.4000000000015, 1, 99322.8099999999977, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (3502, 'DIRECTOR MEDICO', 20078.4000000000015, 1, 99322.8099999999977, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (4501, 'PERITO MEDICO', 20078.4000000000015, 1, 99322.8099999999977, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (4502, 'PERITO QUIMICO', 20078.4000000000015, 1, 99322.8099999999977, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (4507, 'PERITO', 20078.4000000000015, 1, 99322.8099999999977, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (4508, 'PERITO ABOGADO', 20078.4000000000015, 1, 99322.8099999999977, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (4503, 'PERITO CONTADOR', 20078.4000000000015, 1, 99322.8099999999977, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (4504, 'PERITO CALIGRAFO', 20078.4000000000015, 1, 99322.8099999999977, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (1507, 'SECRETARIO DE CAMARA', 18265.5400000000009, 1, 92142.6999999999971, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (3002, 'PROSECRETARIO LETRADO', 18265.5400000000009, 1, 92142.6300000000047, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (1511, 'SECRETARIO DE JUZGADO', 17708.2299999999996, 1, 86192.3399999999965, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (1518, 'SECRETARIO CONTABLE', 17708.2299999999996, 1, 86192.3800000000047, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (1519, 'SUBINTENDENTE', 17708.2299999999996, 1, 86192.3800000000047, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (2504, 'SUBSECRETARIO ADMINISTRATIVO', 17708.2299999999996, 1, 86192.3399999999965, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (3003, 'PROSECRETARIO JEFE', 17429.0699999999997, 1, 73049.320000000007, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (5501, 'JEFE DE DEPARTAMENTO', 17010.7700000000004, 1, 71417.0200000000041, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (6001, '2DO.JEFE DE DEPARTAMENTO', 14747.9500000000007, 1, 67325.5099999999948, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (3007, 'PROSECRETARIO ADMINISTRATIVO', 14747.9500000000007, 1, 67325.5500000000029, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (6390, 'JEFE DE DESPACHO', 11910.1000000000004, 2, 57872.9300000000003, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (6400, 'OFICIAL MAYOR', 9929.67000000000007, 2, 50150.010000000002, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (6401, 'OFICIAL', 9034.47999999999956, 2, 43731.5299999999988, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (6402, 'ESCRIBIENTE', 7943.85999999999967, 2, 38359.6900000000023, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (6403, 'ESCRIBIENTE AUXILIAR', 6417.10000000000036, 2, 33899.260000000002, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (6404, 'AUXILIAR', 5234.60999999999967, 2, 30153.8899999999994, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (8301, 'SUPERVISOR', 11910.1000000000004, 3, 57872.9300000000003, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (8400, 'JEFE DE SECCION', 9929.67000000000007, 3, 50150.010000000002, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (8401, 'ENCARGADO DE SECCION', 9034.3700000000008, 3, 43731.4199999999983, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (8402, 'OFICIAL DE SERVICIO', 7943.85999999999967, 3, 38359.6900000000023, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (8403, 'MEDIO OFICIAL', 6417.10000000000036, 3, 35406.0899999999965, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (8404, 'AYUDANTE', 5234.60999999999967, 3, 31419.7700000000004, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (1, 'JEFE DE DEPARTAMENTO', 1800, 4, 25655.3899999999994, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (2, 'JEFE DE DIVISION', 1656, 4, 24281.369999999999, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (3, 'OFICIAL SUPERIOR DE 1ERA', 1602, 4, 23232.4300000000003, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (4, 'OFICIAL SUPERIOR DE 2Da', 1518, 4, 21371.380000000001, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (5, 'JEFE DE DESPACHO', 1461, 4, 20508.6599999999999, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (6, 'OFICIAL MAYOR', 1341, 4, 18433.1899999999987, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (7, 'OFICIAL PRINCIPAL', 1224, 4, 17151.4799999999996, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (8, 'OFICIAL', 1140, 4, 16022.5699999999997, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (9, 'OFICIAL AUXILIAR', 1050, 4, 14975.7399999999998, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (10, 'ESCRIBIENTE MAYOR', 956, 4, 13295.4400000000005, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (11, 'ESCRIBIENTE', 849, 4, 11909.7099999999991, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (12, 'AUXILIAR', 768, 4, 11056.3700000000008, 1);
INSERT INTO public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES (13, 'AYUDANTE', 660, 4, 10053.3400000000001, 1);


--
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 218
-- Name: convenios_id_convenio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.convenios_id_convenio_seq', 2, true);


--
-- TOC entry 2915 (class 0 OID 64502)
-- Dependencies: 295
-- Data for Name: conyugue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.conyugue (id_conyugue, apeynom, sexo, dom_calle, dom_num, id_trabajador) VALUES (1, 'DUARTE ORTELLADO PEDRO', 'M', 'LIBERTAD', 780, 6);
INSERT INTO public.conyugue (id_conyugue, apeynom, sexo, dom_calle, dom_num, id_trabajador) VALUES (2, 'RODRIGUEZ MANUEL', 'M', 'LIBERTAD', 234, 10);


--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 294
-- Name: conyugue_id_conyugue_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conyugue_id_conyugue_seq', 2, true);


--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 281
-- Name: dcumentos_id_documento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dcumentos_id_documento_seq', 1, false);


--
-- TOC entry 2848 (class 0 OID 42304)
-- Dependencies: 228
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10007, NULL, 'DEPARTAMENTO POLICÍA EN FUNCIÓN JUDICIAL', 'DEPARTAMENTO POLICÍA EN FUNCIÓN JUDICIAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-09-17', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10008, NULL, 'TRIBUNAL ELECTORAL', 'TRIBUNAL ELECTORAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-09-19', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10009, NULL, 'SECRETARÍA DE VIOLENCIA FAMILIAR', 'SECRETARÍA DE VIOLENCIA FAMILIAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-10-24', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10010, NULL, 'CITACIONES JUDICIALES POSADAS', 'CITACIONES JUDICIALES POSADAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-12-22', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (75, 2, 'JUZGADO LABORAL Nº 2', 'JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 2', 'Bolívar', 1745, '3', NULL, NULL, 1, '4446465', '6465', 'J.LAB.Nº 2', NULL, '2012-01-01', NULL, 346, 1, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10012, NULL, 'OFICINA DE PERSONAL - Posadas', 'OFICINA DE PERSONAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-02-04', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10014, NULL, 'REGISTRO PUBLICO DE BIENES ENTREGADOS EN DEPOSITO JUDICIAL', 'REGISTRO PUBLICO DE BIENES ENTREGADOS EN DEPOSITO JUDICIAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-02-12', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10013, NULL, 'LINEA 137', 'LINEA 137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-02-09', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (74, 2, 'JUZGADO LABORAL Nº 1', 'JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 1', 'Bolívar', 1745, '1', NULL, NULL, 1, '4446464', '6464', 'J.LAB.Nº 1', NULL, '2012-01-01', NULL, 517, 1, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (19, 2, 'JUZGADO DE INSTRUCCIÓN N° 2', 'JUZGADO DE INSTRUCCIÓN N° 2', 'SANTA FE', 1630, 'PB   ', NULL, NULL, 1, '4446440', '131', 'JUZ.INST.Nº 2', NULL, '2012-01-01', 1, 2566, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (253, 1, 'Municipalidad de Oberá', 'Municipalidad de Oberá', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (281, 1, 'JUZGADO PENAL Nº 2', 'JUZGADO PENAL Nº 2', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (280, 1, 'JUZGADO PENAL Nº1', 'JUZGADO PENAL Nº 1', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (43, 2, 'DEFENSORIA DE INSTRUCCION Nº 4', 'DEFENSORIA OFICIAL DE INSTRUCCION Nº 4', 'BUENOS AIRES', 1231, 'PB   ', '   ', NULL, 1, '4446571', '6477', 'DEF.INSTR.Nº 4', NULL, '2012-01-01', 1, 964, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (288, 1, 'JUZGADO PENAL Nº 2', 'JUZGADO PENAL Nº 2', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 17, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (35, 2, 'FISCALÍA DE INSTRUCCIÓN Nº 7', 'FISCALÍA DE INSTRUCCIÓN Nº 7', 'PEDRO MENDEZ ESQ. URUGUAY', 2221, '1', '   ', NULL, 1, '4446576', '6576', 'FIS.INST.Nº 7', NULL, '2012-01-01', 1, 1109, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (168, 2, 'FISCALIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 2', 'FISCALIA DE 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 2', 'DINAMARCA ESQ.LA RIOJA', 306, NULL, '   ', NULL, 1, '3751426526', NULL, 'F.C.C.L.Y F.Nº2', NULL, '2012-01-01', 1, 1794, 17, 7, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (122, 2, 'FISCALIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 2', 'FISCALIA DE 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 2', 'GOBERNADOR BARREIRO', 1012, NULL, '   ', NULL, 1, NULL, NULL, 'F.C.C.L.Y F.Nº2', NULL, '2012-01-01', 1, 1436, 48, 7, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (152, 1, 'Juzgado de Paz de Colonia Guaraní', 'Juzgado de Paz de Colonia Guaraní', 'San Martín', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 51, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (285, 1, 'JUZGADO PENAL Nº 2', 'JUZGADO PENAL Nº 2', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (146, 1, 'Juzgado de Paz de Campo ramón', 'Juzgado de Paz de Campo Ramón', 'S/ Nombre', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 49, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (243, 1, 'Instituto Provincial de Desarrollo Habitacional (I.PRO.D.HA.)', 'Instituto Provincial de Desarrollo Habitacional (I.PRO.D.HA.)', 'AVDA. ROQUE PEREZ', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, 'SANTIAGO ROS', '2012-01-01', NULL, NULL, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (242, 1, 'Instituto Provincial de Previsión Social', 'Instituto Provincial de Previsión Social', 'JUNIN', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, 'SANDRA MONTIEL', '2012-01-01', NULL, NULL, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (23, 2, 'JUZGADO DE INSTRUCCIÓN Nº 6', 'JUZGADO DE INSTRUCCIÓN Nº 6', 'BUENOS AIRES', 1231, 'PB   ', '   ', NULL, 1, '4446571', NULL, 'JUZ.INST.Nº 6', NULL, '2012-01-01', 1, 746, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (262, 1, 'DEFENSORÍA PENAL Nº 1', 'DEFENSORÍA PENAL Nº 1', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (322, NULL, 'POLICIA DE MISIONES', 'POLICIA DE LA PROVINCIA DE MISIONES', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-11-14', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (267, 1, 'Fiscalía Penal N-3', 'Fiscalía Penal N-3', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (144, 1, 'Juzgado de Paz de Campo Grande', 'Juzgado de Paz de Campo Grande', 'Avda.Los Cafetales', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 81, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (153, 1, 'Juzgado de Paz de Colonia Alberdi', 'Juzgado de Paz de Colonia Alberdi', 'Avda.Río Uruguay', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 53, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (232, 1, 'Ministerio de Ecología, Reursos Naturarles Renovables', 'Ministerio de Ecología, Reursos Naturarles Renovables', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (228, 1, 'Ministerio de Hacienda, Finanzas, Obras y Servicios Públicos', 'Ministerio de Hacienda, Finanzas, Obras y Servicios Públicos', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (64, 2, 'Juzgado Civil, Comercial, Laboral y de Familia N-1', 'Juzgado de Primera Instancia en lo Civil, Comercial, Laboral y de Familia N-1', 'San Lorenzo y San Martín', NULL, '1', NULL, NULL, 1, NULL, NULL, 'J.C.C.L.F.1', NULL, '2012-01-01', NULL, 1, 31, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (353, 3, 'CAMARA DE APELACIONES EN LO PENAL Y DE MENORES', 'CÁMARA DE APELACIONES EN LO PENAL Y DE MENORES', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2013-09-17', NULL, NULL, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10001, 3, 'REGISTRO DE LAS PERSONAS', 'REGISTRO DE LAS PERSONAS - POSADAS MNES.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2013-10-17', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10004, 2, 'CAMARA DE APELACION EN LO CIVIL - COMERCIAL Y LABORAL', 'CAMARA DE APELACION EN LO CIVIL - COMERCIAL Y LABORAL - OBERA MNES.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2013-12-11', NULL, NULL, 48, 5, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10006, NULL, 'DIRECCION GENERAL JUDICIAL DE LA POLICIA DE MISIONES', 'DIRECCION GENERAL JUDICIAL DE LA POLICIA DE MISIONES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-04-23', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (354, 3, 'DEFENSORIA CAMARA DE APELACIONES EN LO PENAL Y DE MENORES', 'DEFENSORIA CAMARA DE APELACIONES EN LO PENAL Y DE MENORES', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2013-09-17', NULL, NULL, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (355, 3, 'FISCALIA DE CAMARA DE APELACIONES EN LO PENAL Y DE MENORES', 'FISCALIA CAMARA DE APELACIONES EN LO PENAL Y DE MENORES', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2013-09-17', NULL, NULL, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (117, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 3', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 3', 'Misiones y Bolivia', NULL, NULL, '   ', NULL, 1, '3755453002', NULL, 'J.C.Y C.Nº 3', NULL, '2012-01-01', 1, 1114, 48, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (154, 1, 'Juzgado de Paz de San Vicente', 'Juzgado de Paz de San Vicente', 'Ricardo Balbín', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 26, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (131, 2, 'FISCALIA DE INSTRUCCIÓN Nº 2', 'FISCALIA DE INSTRUCCIÓN Nº 2', 'Avda.Sarmiento', 1180, NULL, '   ', NULL, 1, '3755425684', '1034', 'FIS.INST.Nº 2', NULL, '2012-01-01', 1, 1077, 48, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (321, 2, 'MINISTERIO PUBLICO PENAL', 'MINISTERIO PUBLICO PENAL', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2012-11-13', NULL, NULL, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (118, 2, 'Fiscalia Civil y Comercial', 'Fiscalia en lo Civil y Comercial', 'Avda. Sarmiento', 1180, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (27, 2, 'Fiscalía del Tribunal Penal N-1', 'Fiscalía del Tribunal en lo Penal N-1', 'Santa Fé', 1630, NULL, '   ', NULL, 1, NULL, NULL, 'F.T.P.1', NULL, '2012-01-01', NULL, 1, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (28, 2, 'Fiscalía del Tribunal Penal N-2', 'Fiscalía del Tribunal en lo Penal N-2', 'La Rioja', 1561, NULL, '   ', NULL, 1, NULL, NULL, 'F.T.P.2', NULL, '2012-01-01', NULL, 1, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (158, 1, 'DEFENS.CAM.CIVIL,COMERCIAL Y LAB.', 'DEFENSORIA DE CAMARA CIVIL, COMERCIAL Y LABORAL', 'Paraguay', 1339, NULL, '   ', NULL, 1, '3751424019', '1219', 'D.CAM.C.C.Y L.', NULL, '2012-01-01', NULL, 49, 17, 5, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (1, 1, 'SIN DEPENDENCIA', 'SIN DEPENDENCIA', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, 'SD', NULL, '2012-01-01', NULL, 1, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (135, 2, 'DEFENSORIA DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 2', 'DEFENSORIA OFIC. DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 2', 'AVDA.SARMIENTO', 1217, NULL, '   ', NULL, 1, '3755426225', '1003', 'D.IN.CO.Y M.Nº2', NULL, '2012-01-01', NULL, 601, 48, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (68, 2, 'FISCALIA DE CAMARA CIVIL Y COMERCIAL', 'FISCALIA DE CAMARA CIVIL Y COMERCIAL', 'LA RIOJA', 1561, 'PB   ', '   ', NULL, 1, '4446475', NULL, 'FIS.CAM.C.Y C.', NULL, '2012-01-01', 1, 1574, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (179, 2, 'DEFENSORIA DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 1', 'DEFENSORIA OFIC. DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 1', 'AVDA.SAN MARTIN "E"', 1569, NULL, '   ', NULL, 1, '3751424267', '1167', 'D.IN.CO.Y M.Nº1', NULL, '2012-01-01', 1, 567, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (147, 1, 'Juzgado de Paz de Dos de Mayo', 'Juzgado de Paz de Dos de Mayo', 'San Lorenzo', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 79, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (155, 1, 'Juzgado de Paz de Alba Posse', 'Juzgado de Paz de Alba Posse', 'Belgrano', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 70, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (72, 2, 'SECRETARIA DE EJECUCIÓN TRIBUTARIA Nº 8', 'SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 8', 'Avda. Santa Catalina', 1735, '2', NULL, NULL, 1, '4446700', '1387', 'S.EJ.TRIB.8', NULL, '2012-01-01', 1, 1616, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (308, 1, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 4', 'DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'D.C.C.L.Y F.Nº4', NULL, '2012-11-02', NULL, NULL, 22, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (31, 2, 'FISCALÍA DE INSTRUCCIÓN Nº 3', 'FISCALÍA DE INSTRUCCIÓN Nº 3', 'SANTA FE', 1630, '1', NULL, NULL, 1, '4446440', '167', 'FIS.INST.Nº 3', NULL, '2012-01-01', 1, 1635, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (71, 2, 'SECRETARIA DE EJECUCIÓN TRIBUTARIA Nº 4', 'SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 4', 'AVDA.SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1364', 'S.EJ.TRIB.4', NULL, '2012-01-01', 1, 1773, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (76, 2, 'JUZGADO LABORAL Nº 3', 'JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 3', 'Bolívar', 1745, '1', NULL, NULL, 1, '4446470', '6470', 'J.LAB.Nº 3', NULL, '2012-01-01', NULL, 186, 1, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (40, 2, 'DEFENSORIA DE INSTRUCCION Nº 3', 'DEFENSORIA OFICIAL DE INSTRUCCION Nº 3', 'SANTA FE', 1630, '1', NULL, NULL, 1, '4446440', '124', 'DEF.INSTR.Nº 3', NULL, '2012-01-01', 1, 1457, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (77, 2, 'JUZGADO LABORAL Nº 4', 'JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 4', 'Bolívar', 1745, '6', NULL, NULL, 1, '4446467', '6448', 'J.LAB.Nº 4', NULL, '2012-01-01', NULL, 891, 1, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (54, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 7', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 7', 'Avda. Santa Catalina', 1735, '2', NULL, NULL, 1, '4446700', '1571', 'J.C.Y C.Nº 7', NULL, '2012-01-01', NULL, NULL, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (216, 2, 'Juzgado de Paz de General Urquiza', 'Juzgado de Paz de General Urquiza', 'S/Nombre', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 62, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (180, 2, 'DEFENSORIA DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 2', 'DEFENSORIA OFIC. DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 2', 'AVDA.SAN MARTIN "E"', 1569, '2', NULL, NULL, 1, '3751426447', '1147', 'D.IN.CO.Y M.Nº2', NULL, '2012-01-01', 1, 1201, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (177, 2, 'FISCALIA DE INSTRUCCIÓN Nº 2', 'FISCALIA DE INSTRUCCIÓN Nº 2', 'Avda. San Martin "E"', 1569, '2', NULL, NULL, 1, '3751424935', '1235', 'FIS.INST.Nº 2', NULL, '2012-01-01', 1, 870, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (185, 1, 'OFIC.MANDAM.Y NOTIFIC.', 'OFICINA DE MANDAMIENTOS Y NOTIFICACIONES', 'General Lavalle', 2093, NULL, '   ', NULL, 1, '3751422795', '6620', 'OF.MAN.Y N.', NULL, '2012-01-01', NULL, 50, 17, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (186, 1, 'CUERPO MEDICO FORENSE', 'CUERPO MEDICO FORENSE', 'CONGRESO ESQ. MALIBÚ', 23, 'PB   ', '   ', NULL, 1, '3751424505', '1105', 'C.MED.FO.', NULL, '2012-01-01', NULL, 1416, 17, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (187, 1, 'SECC.BIBLIOT.Y ARCHIVO PRELIM.', 'SECCION BIBLIOTECA Y ARCHIVO PRELIMINAR', 'Paraguay', 1339, 'PB   ', NULL, NULL, 1, '3751424019', '1219', 'S.BIBL.Y A.PREL', NULL, '2012-01-01', 1, 49, 17, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (112, 2, 'FISCALIA DE CAMARA CIVIL, COMERCIAL Y LABORAL', 'FISCALIA DE CAMARA CIVIL, COMERCIAL Y LABORAL', 'JUJUY', 235, NULL, '   ', NULL, 1, '3755421721', '1021', 'F.CAM.C.C.Y LAB', NULL, '2012-01-01', 1, 1204, 48, 5, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (175, 1, 'Juzgado de Instrucción N- 3', 'Juzgado de Instrucción N- 3', 'Avda. Republica Argentina', 69, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 27, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (173, 2, 'JUZGADO DE INSTRUCCIÓN Nº 1', 'JUZGADO DE INSTRUCCIÓN Nº 1', 'AVDA. SAN MARTÍN "E"', 1569, '1er. ', '9', NULL, 1, '3751421267', '1267', 'J.INST.Nº 1', NULL, '2012-01-01', 1, 521, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (174, 2, 'JUZGADO DE INSTRUCCIÓN Nº 2', 'JUZGADO DE INSTRUCCIÓN Nº 2', 'Avda. San Martin "E"', 1569, '2', NULL, NULL, 1, '3751422498', '1198', 'J.INST.Nº 2', NULL, '2012-01-01', 1, 640, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (2, 1, 'SUPERIOR TRIBUNAL DE JUSTICIA', 'SUPERIOR TRIBUNAL DE JUSTICIA', 'AVDA. SANTA CATALINA', 1735, '5', NULL, NULL, 1, '4446700', '1127', 'S.T.J.', NULL, '2012-01-01', NULL, 1765, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (7, 6, 'JURADO DE ENJUICIAMIENTO', 'JURADO DE ENJUICIAMIENTO DE MAGISTRADOS Y FUNCIONARIOS DEL PODER JUDICIAL', 'Avda. Santa Catalina', 1735, '4', NULL, NULL, 1, '4446700', '1052', 'JUR.ENJ.', NULL, '2012-01-01', NULL, 957, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (130, 2, 'FISCALIA DE INSTRUCCIÓN Nº 1', 'FISCALIA DE INSTRUCCIÓN Nº 1', 'Avda.Sarmiento', 1180, NULL, '   ', NULL, 1, '3755423600', NULL, 'FIS.INST.Nº 1', NULL, '2012-01-01', 1, 1390, 48, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (132, 2, 'FISCALIA DE INSTRUCCIÓN Nº 3', 'FISCALIA DE INSTRUCCIÓN Nº 3', 'Moreno e/R.Balbin y J.Peron', NULL, NULL, '   ', NULL, 1, '3755460340', NULL, 'FIS.INST.Nº 3', NULL, '2012-01-01', 1, 781, 26, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (214, 2, 'Juzgado de Paz de Puerto Rico', 'Juzgado de Paz de Puerto Rico', 'SANTIAGO DE LINIERS Y PASAJE', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 39, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (48, 2, 'Juzgado Civil y Comercial N-1', 'Juzgado de Primera Instancia en lo Civil y Comercial N-1', 'Bolívar', 1745, 'PB   ', NULL, NULL, 1, NULL, NULL, 'J.C.C.1', NULL, '2012-01-01', NULL, 1, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (89, 1, 'Juzgado de Paz de Apóstoles', 'Juzgado de Paz de Apóstoles', 'Belgrano', 1093, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 2, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (96, 1, 'Juzgado de Paz de Santo Pipó', 'Juzgado de Paz de Santo Pipó', 'Barrio 22 Viviendas', 36, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 59, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (313, 2, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 2', 'DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 2', 'GOBERNADOR BARREIRO', 1012, NULL, NULL, NULL, 0, NULL, NULL, 'D.C.C.L.Y F.Nº2', NULL, '2012-11-06', NULL, 2625, 48, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (103, 1, 'Juzgado de Paz de Garupá', 'Juzgado de Paz de Garupá', 'Avda.  Corrientes e/ 9 de Julio y Rivadavia', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 13, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (97, 1, 'Juzgado de Paz de Cerro Azul', 'Juzgado de Paz de Cerro Azul', 'Aguado y Maipú', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 32, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (151, 1, 'Juzgado de Paz de Colonia Aurora', 'Juzgado de Paz de Colonia Aurora', 'S/ Nombre', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 71, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (80, 1, 'OFIC.MANDAM.Y NOTIFIC.', 'OFICINA DE MANDAMIENTOS Y NOTIFICACIONES', 'Salta', 1845, '1', NULL, NULL, 1, '4446471', '6471', 'O.M.N.', NULL, '2012-01-01', NULL, 142, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10018, NULL, ' JUZGADO DE PAZ DE ITAEMBÉ MINÍ', ' JUZGADO DE PAZ DE ITAEMBÉ MINÍ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-09-24', NULL, NULL, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (51, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 4', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 4', 'AVDA. SANTA CATALINA', 1735, 'PB   ', '   ', NULL, 1, '4446449', '1361', 'J.C.Y C.Nº 4', NULL, '2012-01-01', NULL, 179, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (55, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 8', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 8', 'Avda. Santa Catalina', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1382', 'J.C.Y C.Nº 8', NULL, '2012-01-01', 1, 717, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (194, 1, 'Juzgado de Paz de Bernardo de Irigoyen', 'Juzgado de Paz de Bernardo de Irigoyen', 'Avda. Libertador', 171, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 22, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (52, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 5', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 5', 'Avda. Santa Catalina', 1735, '2', NULL, NULL, 1, '4446700', '1537', 'J.C.Y C.Nº 5', NULL, '2012-01-01', 1, 411, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (69, 2, 'DEFENS.CAM.CIVIL Y COMERCIAL', 'DEFENSORIA DE CAMARA CIVIL Y COMERCIAL', 'La Rioja', 1561, NULL, '   ', NULL, 1, '4446400', '6475', 'D.CAM.C.Y C.', NULL, '2012-01-01', NULL, 201, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (70, 2, 'SECRETARIA DE EJECUCIÓN TRIBUTARIA Nº 1', 'SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 1', 'AVDA.SANTA CATALINA', 1745, 'PB   ', NULL, NULL, 1, '4446700', '1517', 'S.EJ.TRIB.1', NULL, '2012-01-01', NULL, 2436, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (49, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 2', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 2', '3 de Febrero', 270, NULL, '   ', NULL, 1, '4446445', NULL, 'JUZ.C.Y C.Nº 2', NULL, '2012-01-01', 1, 140, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (78, 1, 'REG.PUBL.DE COMERCIO', 'REGISTRO PUBLICO DE COMERCIO', 'AVDA.SANTA CATALINA', 1745, 'PB   ', NULL, NULL, 1, '4446700', '1516', 'R.P.C', NULL, '2012-01-01', NULL, 1233, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (114, 1, 'MESA ENTRADAS UNICA INFORMATIZADA', 'MESA DE ENTRADAS UNICA INFORMATIZADA', 'Misiones y Bolivia', NULL, NULL, '   ', NULL, 1, '3755453040', '3040', 'M.E,U.I.', NULL, '2012-01-01', NULL, 1439, 48, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (324, 2, 'SECRETARIA DE APOYO PARA INVESTIGACIONES COMPLEJAS', 'SECRETARIA DE APOYO PARA INVESTIGACIONES COMPLEJAS', 'PEDRO MENDEZ ESQ. URUGUAY', 2221, '1', NULL, NULL, 1, '4446573', NULL, 'S.A.IC.', NULL, '2012-11-19', NULL, 666, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (310, 2, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 8 -GARUPA', 'DEFENSORIA 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 8 -GARUPA', 'AVDA.CORRIENTES', NULL, NULL, NULL, NULL, 1, '4491070', NULL, 'DEF.C.Y C.N º 8', NULL, '2012-11-05', 1, NULL, 1, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (16, 3, 'Tribunal Penal N-1', 'Tribunal en lo Penal N-1', 'La Rioja', 1561, 'PB   ', '   ', NULL, 1, NULL, NULL, 'T.P.1', NULL, '2012-01-01', NULL, 1, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (84, 1, 'SUB-JEFATURA CUERPO MEDICO FORENSE', 'SUB-JEFATURA CUERPO MEDICO FORENSE', 'Santa Fé', 1669, 'PB   ', '   ', NULL, 1, '4446500', '32', 'SUB-J.C.MED.FO.', NULL, '2012-01-01', NULL, 2111, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (105, 1, 'Juzgado de Paz de Itacaruaré', 'Juzgado de Paz de Itacaruaré', 'Mateo Escalada y 3 de Febrero', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 66, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (63, 2, 'DEFENSORIA CIVIL Y COMERCIAL Nº 6', 'DEFENSORIA 1RA. INSTANCIA EN LO CIVIL Y COMERCIAL Nº 6', 'AVDA. SANTA CATALINA', 1735, '1', NULL, NULL, 1, '4446700', '1186', 'DEF.C.Y C.N º 6', NULL, '2012-01-01', 1, 1336, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (67, 2, 'DEFENSORIA DEL TRABAJADOR', 'DEFENSORIA DEL TRABAJADOR', 'Bolívar', 1745, '4', NULL, NULL, 1, '4446468', NULL, 'DEF.TRAB.', NULL, '2012-01-01', 1, 550, 1, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (12, 1, 'Biblioteca', 'Biblioteca Central del Poder Judicial', 'La Rioja', 1561, 'PB   ', NULL, NULL, 1, '4446400', '229', 'B.C.P.J.', NULL, '2012-01-01', NULL, 836, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (101, 1, 'Juzgado de Paz de Cerro Corá', 'Juzgado de Paz de Cerro Corá', 'San Martín', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 10, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (100, 1, 'Juzgado de Paz de Candelaria', 'Juzgado de Paz de Candelaria', 'Liberación e/ R. S. Peña y Mitre', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 6, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (292, 1, 'MORGUE JUDICIAL', 'MORGUE JUDICIAL', 'AVDA. QUARANTA', NULL, NULL, NULL, NULL, 1, '4446472', NULL, 'MO.JUD.', NULL, '2012-06-27', NULL, 597, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (301, 1, 'SECRET.DE INFORMAT.JURIDICA', 'SECRETARIA DE INFORMATICA JURIDICA', 'JUNÍN', 2472, '1', NULL, NULL, 2, '4446559', '6559', 'S.I.J', NULL, '2012-10-25', NULL, 1660, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (184, 2, 'DEFENSORIA DEL TRABAJADOR', 'DEFENSORIA DEL TRABAJADOR', 'GRAL.LAVALLE', 2093, NULL, '   ', NULL, 1, '3751426441', '1121', 'DEF.TRAB.', NULL, '2012-01-01', NULL, 484, 17, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (15, 1, 'MESA ENTRADA UNICA INF.', 'MESA DE ENTRADAS UNICA INFORMATIZADA', 'AVDA.SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1358', 'M.E.U.', NULL, '2012-01-01', NULL, 141, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (32, 2, 'FISCALÍA DE INSTRUCCIÓN Nº 4', 'FISCALÍA DE INSTRUCCIÓN Nº 4', 'JUAN JOSE LANUSSE', 344, NULL, '   ', NULL, 1, '3758423606', '3516', 'FIS.INST.Nº 4', NULL, '2012-01-01', 1, 1262, 2, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (17, 3, 'TRIBUNAL PENAL Nº 2', 'TRIBUNAL EN LO PENAL Nº 2', 'San Martín', 1432, 'PB   ', NULL, NULL, 1, '4446430', NULL, 'TR.P. Nº 2', NULL, '2012-01-01', NULL, 301, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (22, 2, 'Juzgado de Instrucción N-5', 'Juzgado de Instrucción N-5', 'Sarmiento', 26, NULL, '   ', NULL, 1, NULL, NULL, 'J.I.5', NULL, '2012-01-01', NULL, 1, 31, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (3, 1, 'PROC. GENERAL', 'PROCURACION GENERAL', 'Alvear', 2098, 'PB   ', NULL, NULL, 1, '4446522', '6522', 'P.G.', NULL, '2012-01-01', NULL, 878, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (82, 1, 'SERVICIO SOCIAL', 'SERVICIO SOCIAL', 'AVDA.SANTA CATALINA', 1735, '1', NULL, NULL, 1, '4446700', '1299', 'SERV.SOC.', NULL, '2012-01-01', 1, 878, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (209, 1, 'CUERPO MEDICO FORENSE', 'CUERPO MEDICO FORENSE', 'Sarmiento', 251, NULL, '   ', NULL, 1, '3743421939', '1539', 'C.MED.FO.', NULL, '2012-01-01', NULL, 1429, 39, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (26, 2, 'JUZGADO CORRECCIONAL Y MENORES Nº 2', 'JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 2', 'AVDA.SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1434', 'J.CORR.Y M.Nº 2', NULL, '2012-01-01', NULL, 1044, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (116, 2, 'Juzgado Civil y Comercial N- 2', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 2', 'Misiones y Bolivia', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (314, 2, 'JUZGADO CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 1', 'JUZGADO 1RA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 1', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'J.C.C.L.Y F.Nº1', NULL, '2012-09-03', NULL, 2691, 26, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (33, 2, 'FISCALÍA DE INSTRUCCIÓN Nº 5', 'FISCALÍA DE INSTRUCCIÓN Nº 5', 'SARMIENTO', 26, NULL, '   ', NULL, 1, '3754420482', '4392', 'FIS.INST.Nº 5', NULL, '2012-01-01', 1, 1120, 31, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (317, 2, 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -ELDORADO', 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -ELDORADO', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2012-11-08', NULL, NULL, 17, 5, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (106, 1, 'Juzgado de Paz de Olegario Víctor Andrade', 'Juzgado de Paz de Olegario Víctor Andrade', 'San  Martín', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 36, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (309, 2, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 7 -VILLA CABELLO', 'DEFENSORIA 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 7 -VILLA CABELLO', 'CENTRO COMERCIAL', NULL, NULL, NULL, NULL, 1, '4593800', NULL, 'D.C.C.L.Y F.Nº7', NULL, '2012-11-05', 1, 8214, 1, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (13, 1, 'Centro de Capacitación Judicial', 'Centro de Capacitación Judicial Dr. Mario Dei Castelli', 'Junín', 2472, '2', NULL, NULL, 1, '4446557', NULL, 'C.C.J.', NULL, '2012-01-01', 1, 2378, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (247, 1, 'Unidad III - Eldorado', 'Unidad III - Eldorado', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 17, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (59, 2, 'Fiscalía Civil y Comercial N-2', 'Fiscalía en lo Civil y Comercial N-2', 'Bolívar', 1745, '5', NULL, NULL, 1, NULL, NULL, 'F.C.C.2', NULL, '2012-01-01', NULL, 1, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (11, 1, 'OFIC.DE AUDIT.Y C.DE TASA DE JUST.', 'OFICINA DE AUDITORIA Y CONTROL DE TASA DE JUSTICIA, LIQUIDACION Y ASESORAMIENTO', 'Rivadavia', 2237, 'PB   ', '   ', NULL, 1, '4446411', '248', 'O.A.Y C.T.J.Y M', NULL, '2012-01-01', NULL, 1207, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (18, 2, 'JUZGADO DE INSTRUCCIÓN Nº 1', 'JUZGADO DE INSTRUCCIÓN Nº 1', 'SANTA FE C/ENTRADA POR BS.AS.', 1630, '2', NULL, NULL, 1, '4446440', '10', 'JUZ.INS.Nº 1', NULL, '2012-01-01', 1, 2564, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (20, 2, 'JUZGADO DE INSTRUCCIÓN Nº 3', 'JUZGADO DE INSTRUCCIÓN Nº 3', 'SANTA FE', 1630, '1', NULL, NULL, 1, '4446440', '150', 'JUZ.INST.Nº 3', NULL, '2012-01-01', 1, 1796, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (21, 2, 'JUZGADO DE INSTRUCCIÓN Nº4', 'JUZGADO DE INSTRUCCIÓN Nº4', 'Juan José Lanusse', 344, NULL, '   ', NULL, 1, '3758423268', '3568', 'J.I.4', NULL, '2012-01-01', NULL, 1181, 2, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (37, 2, 'FISCALÍA CORRECCIONAL Y DE MENORES Nº 2', 'FISCALÍA EN LO CORRECCIONAL Y DE MENORES Nº 2', 'SANTA FE', 1630, 'PB   ', NULL, NULL, 1, '4446440', NULL, 'FIS.C.Y M.Nº 2', NULL, '2012-01-01', 1, 1208, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (162, 2, 'JUZGADO CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 1', 'JUZGADO 1RA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 1', 'AVDA. GUARANI', 128, NULL, '   ', NULL, 1, '3757425046', NULL, 'J.C.C.L.Y F.Nº1', NULL, '2012-01-01', 1, 2241, 27, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (36, 2, 'FISCALÍA CORRECCIONAL Y DE MENORES Nº 1', 'FISCALÍA EN LO CORRECCIONAL Y DE MENORES Nº 1', 'SANTA FE', 1630, '1', NULL, NULL, 1, '4446440', '227', 'FIS.C.Y M.Nº 1', NULL, '2012-01-01', 1, 1, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (29, 2, 'FISCALÍA DE INSTRUCCIÓN Nº 1', 'FISCALÍA DE INSTRUCCIÓN Nº 1', 'SANTA FE', 1630, '2', NULL, NULL, 1, '4446440', '127', 'FIS.INST.Nº 1', NULL, '2012-01-01', 1, 1380, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (30, 2, 'FISCALÍA DE INSTRUCCIÓN Nº 2', 'FISCALÍA DE INSTRUCCIÓN Nº 2', 'SANTA FE', 1630, 'PB   ', NULL, NULL, 1, '4446440', '147', 'FIS.INST.Nº 2', NULL, '2012-01-01', 1, 1454, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (25, 2, 'JUZGADO CORRECCIONAL Y MENORES Nº 1', 'JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 1', 'AVDA.SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1438', 'J.CORR.Y M.Nº 1', NULL, '2012-01-01', NULL, 1220, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (95, 1, 'Juzgado de Paz de San Javier', 'Juzgado de Paz de San Javier', 'Avda. 25 de Mayo', 96, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 65, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (60, 2, 'DEFENSORIA CIVIL Y COMERCIAL Nº 3', 'DEFENSORIA 1RA. INSTANCIA EN LO CIVIL Y COMERCIAL Nº 3', 'AVDA. SANTA CATALINA', 1735, '1', NULL, NULL, 1, '4446700', '1305', 'DEF.C.Y C.N º 3', NULL, '2012-01-01', 1, 1124, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (61, 2, 'DEFENSORIA CIVIL Y COMERCIAL Nº 4', 'DEFENSORIA 1RA. INSTANCIA EN LO CIVIL Y COMERCIAL Nº 4', 'AVDA. SANTA CATALINA', 1735, '1', NULL, NULL, 1, '4446700', '1316', 'DEF.C.Y C.N º 4', NULL, '2012-01-01', 1, 1141, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (319, 1, 'OFICINA DE SEGURIDAD', 'OFICINA DE SEGURIDAD', 'AVDA. SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1158', 'OFIC.SEGUR.', NULL, '2012-11-12', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (62, 2, 'DEFENSORIA CIVIL Y COMERCIAL Nº 5', 'DEFENSORIA 1RA. INSTANCIA EN LO CIVIL Y COMERCIAL Nº 5', 'AVDA. SANTA CATALINA', 1735, '1', NULL, NULL, 1, '4446700', '1184', 'DEF.C.Y C.N º 5', NULL, '2012-01-01', 1, 1540, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (65, 2, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 1', 'DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 1', 'Avda. Almirante Brown', 41, 'PB   ', NULL, NULL, 1, '3754423805', '4305', 'D.C.C.L.Y F.Nº1', NULL, '2012-01-01', NULL, 1829, 31, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (113, 2, 'DEFENS.CAM.CIVIL,COMERCIAL Y LAB.', 'DEFENSORIA DE CAMARA CIVIL, COMERCIAL Y LABORAL', 'Jujuy', 235, NULL, '   ', NULL, 1, '3755421721', '1006', 'D.CAM.C.C.Y L.', NULL, '2012-01-01', NULL, 653, 48, 5, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (269, 2, 'Juzgado Civil y Comercial -Eldorado-', 'Juzgado Civil y Comercial -Eldorado-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 17, 1, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (191, 1, 'Juzgado de Paz de Puerto Iguazú', 'Juzgado de Paz de Puerto Iguazú', 'Avda. Córdoba', 250, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 27, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (196, 1, 'Juzgado de Paz de Puerto Libertad', 'Juzgado de Paz de Puerto Libertad', 'Salta', 350, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 30, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (201, 2, 'Juzgado Civil, Comercial y Laboral', 'Juzgado de Primera Instancia en lo Civil, Comercial y Laboral', 'Avda. 9 de Julio', 1876, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 39, 5, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (4, 1, 'SECRET.ADMIN.Y DE SUPERINT.', 'SECRETARIA ADMINISTRATIVA Y DE SUPERINTENDENCIA', 'Avda. Santa Catalina', 1735, '4', NULL, 'personal-stj.@jusmisiones.gov.ar', 1, '4446700', '1240', 'SEC.AD.Y SUP.', NULL, '2012-01-01', 1, 266, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (166, 2, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 1', 'DEFENSORIA OFICIAL DE 1RA.INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 1', 'BERTONI', 64, NULL, '   ', NULL, 1, NULL, NULL, 'D.C.C.L.Y F.Nº1', NULL, '2012-01-01', NULL, 1705, 27, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (172, 2, 'FISCALIA DEL TRIBUNAL PENAL Nº 1', 'FISCALIA DEL TRIBUNAL EN LO PENAL Nº 1', 'SAN JUAN ESQ. AMERICA', 1974, NULL, '   ', NULL, 1, '3751424080', '1280', 'FIS.TRI.P. Nº 1', NULL, '2012-01-01', NULL, 1389, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (207, 2, 'JUZGADO DE INSTRUCCIÓN Nº 1', 'JUZGADO DE INSTRUCCIÓN Nº 1', 'Sarmiento', 251, NULL, '   ', NULL, 1, NULL, NULL, 'JUZ.INS.Nº 1', NULL, '2012-01-01', NULL, 1, 39, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (208, 2, 'JUZGADO CORRECCIONAL Y MENORES Nº 1', 'JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 1', 'Sarmiento', 251, NULL, '   ', NULL, 1, '3743420444', '1644', 'J.CORR.Y M.Nº 1', NULL, '2012-01-01', NULL, 889, 39, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (221, 2, 'SECRET.GRAL.ACC.A JUST.Y DER.HUMANOS', 'SECRETARIA GENERAL DE ACCESO A LA JUSTICIA Y DERECHOS HUMANOS', 'Alvear', 2098, NULL, NULL, NULL, 1, '4446424', '6424', 'S.G.A.J.Y D.HUM', NULL, '2012-01-01', NULL, 1089, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (183, 1, 'Fiscalía Correccional y Menores N-1', 'Fiscalía en lo Correccional y de Menores N- 1', 'General Lavalle', 2093, '1', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (143, 1, 'Juzgado de Paz de Aritóbulo del Valle', 'Juzgado de Paz de Aritóbulo del Valle', 'Amadeo Bonpland', 1074, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 80, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (145, 1, 'Juzgado de Paz de Campo Viera', 'Juzgado de Paz de Campo Viera', 'Avda.del Té', 40, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 50, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (169, 2, 'JUZGADO LABORAL Nº 1', 'JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 1', 'GRAL. LAVALLE', 2093, NULL, '   ', NULL, 1, '3751423630', '1230', 'J.LAB.Nº 1', NULL, '2012-01-01', NULL, 616, 17, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (92, 1, 'Juzgado de Paz de Dos Arroyos', 'Juzgado de Paz de Dos Arroyos', 'Lote', 88, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 33, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (195, 1, 'Juzgado de Paz de San Antonio', 'Juzgado de Paz de San Antonio', 'Soberanía', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 24, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (129, 2, 'Fiscalia de Tribunal Penal N- 1', 'Fiscalia del Tribunal en lo Penal N- 1', 'Avda.Livertad y 9 de Julio', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (178, 2, 'FISCALIA DE INSTRUCCIÓN Nº 3', 'FISCALIA DE INSTRUCCIÓN Nº 3', 'AVDA. REPUBLICA ARGENTINA', 69, NULL, '   ', NULL, 1, '3757425041', '1742', 'FIS.INST.Nº 3', NULL, '2012-01-01', 1, 1, 27, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (193, 1, 'Juzgado de Paz de San Pedro', 'Juzgado de Paz de San Pedro', '25 de Mayo', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 69, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (198, 1, 'Juzgado de Paz de Comandante Andresito', 'Juzgado de Paz de Comandante Andresito', 'Canadá', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 23, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (300, 1, 'SECRET. DE TECNOLOGÍA INFORM.', 'SECRETARÍA DE TECNOLOGÍA INFORMÁTICA', 'JUNÍN', 2472, '1', NULL, NULL, 1, '4446558', '6558', 'S.T.I', NULL, '2012-10-25', NULL, 1095, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (176, 2, 'FISCALIA DE INSTRUCCIÓN Nº 1', 'FISCALIA DE INSTRUCCIÓN Nº 1', 'Avda.San Martin "E"', 1569, NULL, '   ', NULL, 1, '3751420066', '1166', 'FIS.INST.Nº 1', NULL, '2012-01-01', 1, 873, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (189, 1, 'Juzgado de Paz de Montecarlo', 'Juzgado de Paz de Montecarlo', 'Brasil y Mitre', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 45, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (315, 2, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 2', 'DEFENSORIA 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 2', 'DINAMARCA ESQ.LA RIOJA', 306, NULL, NULL, NULL, 1, NULL, NULL, 'D.C.C.L.Y F.Nº2', NULL, '2012-11-08', 1, 2624, 17, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (190, 1, 'Juzgado de Paz de Puerto Esperanza', 'Juzgado de Paz de Puerto Esperanza', '25 de Mayo', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 28, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (318, 3, 'CAMARA APELACIONES EN LO CRIMINAL, CORRECCIONAL Y MENORES', 'CAMARA DE APELACIONES EN LO CRIMINAL, CORRECCIONAL Y DE MENORES', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2012-11-12', NULL, NULL, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (192, 1, 'Juzgado de Paz de Puerto Piray', 'Juzgado de Paz de Puerto Piray', 'Juan José Paso', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 46, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (157, 2, 'FISCALIA DE CAMARA CIVIL, COMERCIAL Y LABORAL', 'FISCALIA DE CAMARA CIVIL, COMERCIAL Y LABORAL', 'PARAGUAY', 1339, NULL, '   ', NULL, 1, '3751424019', '1219', 'F.CAM.C.C.Y LAB', NULL, '2012-01-01', 1, 1388, 17, 5, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (50, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 3', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 3', 'Avda. Santa Catalina', 1735, '2', NULL, NULL, 1, '4446700', '1549', 'J.C.Y C.Nº 3', NULL, '2012-01-01', 1, 136, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (90, 1, 'Juzgado de Paz de Leandro N. Alem', 'Juzgado de Paz de Leandro N. Alem', '25 de Mayo', 131, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 31, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (126, 2, 'JUZGADO DE INSTRUCCIÓN Nº 2', 'JUZGADO DE INSTRUCCIÓN Nº 2', 'AVDA.SARMIENTO', 1217, NULL, '   ', NULL, 1, '3755421296', '1095', 'JUZ.INS.Nº 1', NULL, '2012-01-01', 1, 1048, 48, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (86, 2, 'JUZGADO DE PAZ EN CONTRAVENCIONAL', 'JUZGADO DE PAZ EN LO CONTRAVENCIONAL', 'AVDA. SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1258', 'JUZ.PAZ CON.', NULL, '2012-01-01', NULL, 477, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (104, 1, 'Juzgado de Paz de Gobernador López', 'Juzgado de Paz de Gobernador López', 'Ruta Pcial. 215', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 34, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (91, 1, 'Juzgado de Paz de San Ignacio', 'Juzgado de Paz de San Ignacio', 'San Martín', 19, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 57, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (140, 1, 'Biblioteca Seccional Oberá', 'Biblioteca Seccional Oberá', 'San Martín', 1068, NULL, '   ', NULL, 1, '3755453049', NULL, 'B.OB.', NULL, '2012-01-01', NULL, 1140, 48, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (94, 1, 'Juzgado de Paz de Gobernador Roca', 'Juzgado de Paz de Gobernador Roca', '20 de Junio c/ Avda. San Martín', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 64, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (115, 2, 'Juzgado Civil y Comercial N- 1', 'Juzgado de Primera Instancia en lo Civil y Comercial N- 1', 'Buenos Aires', 193, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (148, 1, 'Juzgado de Paz de El Soberbio', 'Juzgado de Paz de El Soberbio', 'Lavalle y Capdevila', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 25, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (171, 1, 'TRIBUNAL PENAL Nº 1', 'TRIBUNAL EN LO PENAL Nº 1', 'SAN JUAN', 1974, NULL, '   ', NULL, 1, '3751424422', '1132', 'TRIB.P. Nº 1', NULL, '2012-01-01', NULL, 782, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (182, 2, 'JUZGADO CORRECCIONAL Y MENORES Nº 1', 'JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 1', 'GRAL. LAVALLE', 2093, '1', NULL, NULL, 1, '3751424090', '1160', 'J.CORR.Y M.Nº 1', NULL, '2012-01-01', 1, 505, 17, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (205, 2, 'DEFENS.FUERO UNIVERSAL', 'DEFENSORIA DE FUERO UNIVERSAL', 'Sarmiento', 251, NULL, '   ', NULL, 1, '3743420884', '1184', 'DEF.F.UNIV.', NULL, '2012-01-01', NULL, 1198, 39, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (303, 2, 'JUZGADO DE PAZ DE ARROYO DEL MEDIO', 'JUZGADO DE PAZ DE ARROYO DEL MEDIO', 'LINDANTE A LA MUNICIPALIDAD', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'J.PAZ.A.DEL MED', NULL, '2012-11-01', NULL, 8181, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (120, 2, 'JUZGADO LABORAL Nº 1', 'JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 1', 'Córdoba', 35, NULL, '   ', NULL, 1, '3755424177', '1077', 'J.LAB.Nº 1', NULL, '2012-01-01', NULL, 342, 48, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (202, 2, 'Juzgado Civil, Comercial, Laboral y de Familia N- 2', 'Juzgado de Primera Instancia en lo Civil, Comercial, Laboral y de Familia N- 2', 'Moreno', 730, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 58, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (199, 1, 'Juzgado de Paz de Wanda', 'Juzgado de Paz de Wanda', 'Parcela 16 Mz. 21', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 29, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (188, 2, 'Juzgado de Paz de Eldorado', 'Juzgado de Paz de Eldorado', 'Cuyo', 205, NULL, '   ', NULL, 1, '3751421474', '1174', 'J.PAZ ELDOR.', NULL, '2012-01-01', NULL, 2489, 17, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (200, 1, 'Juzgado de Paz de Caraguatay', 'Juzgado de Paz de Caraguatay', 'S/ Nombre', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 47, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (217, 5, 'Juzgado de Paz de El Alcázar', 'Juzgado de Paz de El Alcázar', 'LUIS CANDELARIA Y MATIENZO', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 42, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (159, 1, 'MESA ENTRADA UNICA INF.', 'MESA DE ENTRADAS UNICA INFORMATIZADA', 'Paraguay', 1339, NULL, '   ', NULL, 1, '3751426466', '3466', 'M.E.U.I.', NULL, '2012-01-01', NULL, 1478, 17, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (220, 1, 'OFIC.PRENSA Y CEREM.', 'OFICINA DE PRENSA Y CEREMONIAL', 'Avda. Santa Catalina', 1735, '5', NULL, NULL, 1, '4446700', '1122', 'O.PR.Y CER.', NULL, '2012-01-01', NULL, 1307, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (38, 2, 'DEFENSORIA DE INSTRUCCION Nº 1', 'DEFENSORIA OFICIAL DE INSTRUCCION Nº 1', 'SANTA FE', 1630, '2', NULL, NULL, 1, '4446440', '125', 'DEF.INSTR.Nº 1', NULL, '2012-01-01', 1, 794, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (39, 2, 'DEFENSORIA DE INSTRUCCION Nº 2', 'DEFENSORIA OFICIAL DE INSTRUCCION Nº 2', 'SANTA FE', 1630, 'PB   ', NULL, NULL, 1, '4446440', '144', 'DEF.INSTR.Nº 2', NULL, '2012-01-01', 1, 1238, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (41, 2, 'DEFENSORIA DE FUERO UNIVERSAL Nº 1', 'DEFENSORIA OFICIAL DE FUERO UNIVERSAL Nº 1', 'Juan José Lanusse', 360, NULL, '   ', NULL, 1, '3758424027', '3527', 'DEF.F.UN.Nº 1', NULL, '2012-01-01', 1, 1121, 2, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (42, 2, 'DEFENSORIA DE FUERO UNIVERSAL Nº 2', 'DEFENSORIA OFICIAL DE FUERO UNIVERSAL Nº 2', 'Sarmiento', 26, NULL, '   ', NULL, 1, '3754422342', '4342', 'DEF.F.UN.Nº 2', NULL, '2012-01-01', 1, 1122, 31, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (45, 2, 'DEFENSORIA CORRECCIONAL Y DE MENORES Nº 1', 'DEFENSORIA EN LO CORRECCIONAL Y DE MENORES Nº 1', 'AVDA. SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1414', 'D.COR.Y MEN.Nº1', NULL, '2012-01-01', 1, 699, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (215, 2, 'Juzgado de Paz de Capioví', 'Juzgado de Paz de Capioví', 'Ruta 12', 246, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 41, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (5, 1, 'SECRET.JUDICIAL', 'SECRETARIA JUDICIAL', 'Avda. Santa Catalina', 1735, '4', NULL, NULL, 2, '4446700', '1019', 'S.JUD.', NULL, '2012-01-01', NULL, 958, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (6, 1, 'SECRET.INFORM.', 'SECRETARIA DE INFORMATICA', 'Rivadavia', 2035, 'PB   ', NULL, NULL, 1, '4446420', '6418', 'S.I.', NULL, '2012-01-01', NULL, 1445, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (14, 1, 'CENTRO JUDICIAL DE MEDIACION', 'CENTRO JUDICIAL DE MEDIACION', 'Entre Ríos', 579, NULL, NULL, NULL, 1, '4446620', NULL, 'CE.JU.ME.', NULL, '2012-01-01', NULL, 79, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10, 1, 'CUERPO DE INSPECTORES', 'CUERPO DE INSPECTORES DEL FONDO DE JUSTICIA', 'Rivadavia', 2041, '2', NULL, NULL, 1, '4446400', '219', 'C.IN.F.JUS.', NULL, '2012-01-01', NULL, 1079, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (133, 2, 'Fiscalia Correcional y Menores N- 1', 'Fiscalia en lo Correcional y de Menores N- 1', 'Avda.Sarmiento', 1180, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (136, 2, 'DEFENS.FUERO UNIVERSAL', 'DEFENSORIA DE FUERO UNIVERSAL Nº 1', 'MARIANO MORENO E/BALBIN YPERON', NULL, NULL, '   ', NULL, 1, '3755461820', NULL, 'DEF.F.UNIV.', NULL, '2012-01-01', NULL, 2552, 26, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (164, 2, 'DEFENSORIA CIVIL Y COMERCIAL', 'DEFENSORIA OFICIAL DE 1RA.INSTANCIA EN LO CIVIL Y COMERCIAL', 'GRAL.LAVALLE KM.9', 2093, NULL, '   ', NULL, 1, '3751421100', '1200', 'DEF.CIV. Y COM.', NULL, '2012-01-01', NULL, 457, 17, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (316, 2, 'DEFENSORIAS OFICIALES', 'DEFENSORIAS OFICIALES', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'DEF.OFIC.', NULL, '2012-11-08', NULL, NULL, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (58, 2, 'Fiscalía Civil y Comercial N-1', 'Fiscalía en lo Civil y Comercial N-1', 'Bolívar', 1745, '3', NULL, NULL, 1, NULL, NULL, 'F.C.C.1', NULL, '2012-01-01', NULL, 1, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (57, 2, 'JUZGADO DE FAMILIA Nº 2', 'JUZGADO DE FAMILIA Nº 2', 'Avda. Santa Catalina', 1735, '1er. ', '1', NULL, 1, '4446700', '1206', 'J.F.2', NULL, '2012-01-01', NULL, 1046, 1, 3, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (98, 1, 'Juzgado de Paz de Azara', 'Juzgado de Paz de Azara', 'Sarmiento', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 3, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (150, 1, 'Juzgado de Paz de Panambí', 'Juzgado de Paz de Panambí', 'S/ Nombre', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 54, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (304, 1, 'JUZGADO DE PAZ DE RUIZ DE MONTOYA', 'JUZGADO DE PAZ DE RUIZ DE MONTOYA', NULL, NULL, NULL, NULL, NULL, 0, '3743495040', '495396', 'J.PAZ RUIZ MONT', NULL, '2012-11-01', NULL, 17, 44, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (125, 2, 'JUZGADO DE INSTRUCCIÓN Nº 1', 'JUZGADO DE INSTRUCCIÓN N-º 1', 'AVDA.SARMIENTO', 1180, NULL, '   ', NULL, 1, '3755421385', '1085', 'JUZ.INS.Nº 1', NULL, '2012-01-01', 1, 669, 48, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (213, 2, 'Juzgado de Paz de Jardín América', 'Juzgado de Paz de Jardín América', 'Avda. 9 de Julio', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 58, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (85, 1, 'INSPECCION JUSTICIA DE PAZ', 'INSPECCION JUSTICIA DE PAZ', 'BOLIVAR', 1745, '7', NULL, NULL, 1, '4446487', NULL, 'INS.JU.P.', NULL, '2012-01-01', 1, 832, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (81, 1, 'DIRECCION TECNICA INTERDISCIPLINARIA DE ASISTENCIA A VICTIMAS Y TESTIGOS', 'DIRECCION TECNICA INTERDISCIPLINARIA DE ASISTENCIA A VICTIMAS Y TESTIGOS', 'AVDA. SANTA CATALINA', 1735, 'S.S  ', NULL, NULL, 1, '4446700', '1253', 'D.T.I.A.V. Y T.', NULL, '2012-01-01', 1, 1547, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (134, 2, 'DEFENSORIA DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 1', 'DEFENSORIA OFIC. DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 1', 'AVDA.SARMIENTO', 1217, NULL, '   ', NULL, 1, '3755426225', '1003', 'D.IN.CO.Y M.Nº1', NULL, '2012-01-01', 1, 501, 48, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (107, 1, 'Juzgado de Paz de Mártirez', 'Juzgado de Paz de Mártirez', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 11, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (204, 2, 'FISCALIA DE FUERO UNIVERSAL', 'FISCALIA DE FUERO UNIVERSAL', 'Sarmiento', 251, NULL, '   ', NULL, 1, '3743420884', '1584', 'FIS.F.UNIV.', NULL, '2012-01-01', 1, 1198, 39, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (302, 1, 'SECRET.ADM.Y DE SUP.-SECCION ACUERDOS-', 'SECRETARIA ADMINISTRATIVA Y DE SUPERINTENDENCIA -SECCION ACUERDOS-', 'AVDA.SANTA CATALINA', 1735, '4', NULL, NULL, 1, '4446700', '1234', 'S.A.Y S-S.ACU.-', NULL, '2012-10-31', 1, 520, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (197, 1, 'Juzgado de Paz de 9 de Julio', 'Juzgado de Paz de 9 de Julio', 'Ruta Provincial 17 Km 23', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 19, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (46, 2, 'DEFENSORIA CORRECCIONAL Y DE MENORES Nº 2', 'DEFENSORIA EN LO CORRECCIONAL Y DE MENORES Nº 2', 'AVDA. SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1408', 'D.COR.Y MEN.Nº2', NULL, '2012-01-01', 1, 96, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (156, 3, 'Cámara Civil, Comercial y Laboral', 'Cámara de Apelaciones en lo Civil, Comercial y Laboral', 'Paraguay', 1339, NULL, '   ', NULL, 1, '3751424040', '1260', 'C.C.C Y LAB.', NULL, '2012-01-01', NULL, 512, 17, 5, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (219, 1, 'OFIC.MANDAM.Y NOTIFIC.', 'OFICINA DE MANDAMIENTOS Y NOTIFICACIONES', 'San Lorenzo y San Martín', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'OF.MAN.Y N.', NULL, '2012-01-01', NULL, 142, 31, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (108, 1, 'Juzgado de Paz de Santa Ana', 'Juzgado de Paz de Santa Ana', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 7, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (206, 2, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA', 'DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA', 'Moreno', 730, NULL, '   ', NULL, 1, '3743461716', '1616', 'D.C.C.L.Y FLIA.', NULL, '2012-01-01', NULL, 1962, 58, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (307, 2, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 3', 'DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 3', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'D.C.C.L.Y F.Nº3', NULL, '2012-11-02', 1, NULL, 69, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (305, 2, 'FISCALIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 3', 'FISCALIA DE 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 3', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'F.C.C.L.Y F.Nº3', NULL, '2012-11-02', NULL, NULL, 26, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (124, 3, 'TRIBUNAL PENAL Nº 1', 'TRIBUNAL EN LO PENAL Nº 1', '9 de Julio', 734, NULL, '   ', NULL, 1, '3755425909', '9909', 'TR.P. Nº 1', NULL, '2012-01-01', NULL, 5, 48, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (128, 2, 'JUZGADO CORRECCIONAL Y MENORES Nº 1', 'JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 1', 'BOLIVIA', 487, NULL, '   ', NULL, 1, '3755421361', '1061', 'J.CORR.Y M.Nº 1', NULL, '2012-01-01', NULL, 327, 48, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (165, 1, 'Fiscalia Civil, Comercial, Laboral y Familia', 'Fiscalia Oficial de Primera Instancia en lo Civil, Comercial, Laboral y de Familia', 'Avda. Guarani', 128, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 27, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (127, 2, 'Juzgado de Instrucción N- 3', 'Juzgado de Instrucción N- 3', 'Moreno e/R.Balbin y J.Peron', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 26, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (139, 1, 'OFIC.MANDAM.Y NOTIFIC.', 'OFICINA DE MANDAMIENTOS Y NOTIFICACIONES', 'San Martín', 1068, NULL, '   ', NULL, 1, '3755420272', '1072', 'OF.MAN.Y N.', NULL, '2012-01-01', NULL, 343, 48, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (141, 1, 'CUERPO MEDICO FORENSE', 'CUERPO MEDICO FORENSE', 'Avda.Sarmiento', 1219, NULL, '   ', NULL, 1, '3755423737', '1017', 'C.MED.FO.', NULL, '2012-01-01', NULL, 1283, 48, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (181, 2, 'DEFENSORIA DE INSTRUCCION Nº 3', 'DEFENSORIA OFICIAL DE INSTRUCCION Nº 3', 'AVDA. REPUBLICA ARGENTINA', 69, NULL, '   ', NULL, 1, '3757425043', '1743', 'DEF.INSTR.Nº 3', NULL, '2012-01-01', 1, 1771, 27, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (9, 1, 'DIRECCION DE ARQUITECTURA JUDICIAL', 'DIRECCION DE ARQUITECTURA JUDICIAL', 'Rivadavia', 2237, '4', NULL, NULL, 1, '4446000', '253', 'DIR.ARQ.JUD.', NULL, '2012-01-01', 1, 702, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (211, 1, 'OFIC.MANDAM.Y NOTIFIC.', 'OFICINA DE MANDAMIENTOS Y NOTIFICACIONES', 'Avda. 9 de Julio', 1876, NULL, '   ', NULL, 1, '3743421404', '1504', 'OF.MAN.Y N.', NULL, '2012-01-01', NULL, 459, 39, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (8, 1, 'DIRECCION DE ADMINISTRACION', 'DIRECCION DE ADMINISTRACION', 'Rivadavia', 2237, NULL, '   ', NULL, 1, '4446400', '281', 'DIR.ADM.', NULL, '2012-01-01', 1, 970, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (203, 2, 'Fiscalía Civil, Comercial, Laboral y de Familia', 'Fiscalía de Primera Instancia en lo Civil, Comercial, Laboral y de Familia', 'Moreno', 730, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 58, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (137, 2, 'DEF. DEL TRABAJADOR', 'DEFENSORIA DEL TRABAJADOR', 'Córdoba', 35, NULL, '   ', NULL, 1, '3755421004', '1094', 'DEF.TR.', NULL, '2012-01-01', NULL, 435, 48, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (138, 1, 'REG.PUBL.DE COMERCIO', 'REGISTRO PUBLICO DE COMERCIO', 'BUENOS AIRES ESQ. SAN MARTIN', 193, 'PB   ', '   ', NULL, 1, '3755421305', NULL, 'R.P.COM.', NULL, '2012-01-01', NULL, 1140, 48, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (210, 1, 'SECC.BIBLIOT.Y ARCHIVO PRELIM.', 'SECCION BIBLIOTECA Y ARCHIVO PRELIMINAR', 'Sarmiento', 251, NULL, '   ', NULL, 1, '3743420444', '1644', 'S.BIBL.Y A.PREL', NULL, '2012-01-01', NULL, 889, 39, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (110, 1, 'Juzgado de Paz de Santa María', 'Juzgado de Paz de Santa María', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 16, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (212, 1, 'OFIC.MANDAM.Y NOTIFIC.', 'OFICINA DE MANDAMIENTOS Y NOTIFICACIONES', 'Moreno', 730, NULL, '   ', NULL, 1, '3743461715', '1615', 'OF.MAN.Y N.', NULL, '2012-01-01', NULL, 1215, 58, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (276, 1, 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 1-OBERÁ-', 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 1-OBERÁ-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 5, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (306, 2, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 3', 'DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 3', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'D.C.C.L.Y F.Nº3', NULL, '2012-11-02', NULL, 1581, 26, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (289, 1, 'Juzgado de Paz N- 1 -Posadas-', 'Juzgado de Paz N- 1 -Posadas-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (273, 1, 'Juzgado Civil, Comercial y Laboral N-3 -Posadas-', 'Juzgado Civil, Comercial y Laboral N-3 -Posadas-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 5, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (271, 2, 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 1', 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 1', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 17, 5, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (167, 2, 'JUZGADO DE FAMILIA Nº 1', 'JUZGADO DE PRIMERA INSTANCIA DE FAMILIA', 'DINAMARCA', 36, NULL, '   ', NULL, 1, '3751426524', '6624', 'J.FLIA.Nº 1', NULL, '2012-01-01', 1, 2629, 17, 3, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (123, 2, 'Juzgado de Fuero Uniersal', 'Juzgado de Primera Instancia de Fuero Universal', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 26, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (47, 3, 'CAMARA CIVIL Y COMERCIAL', 'CAMARA DE APELACIONES EN LO CIVIL Y COMERCIAL', 'Alvear', 2098, '2', NULL, NULL, 1, '4446435', NULL, 'CAM.CIV. Y COM.', NULL, '2012-01-01', NULL, 138, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (218, 2, 'Fiscalía Civil, Comercial, Laboral y de Familia', 'Fiscalía de Primera Instancia en lo Civil, Comercial, Laboral y de Familia', 'Almirante Brown', 41, 'PB   ', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 31, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (66, 2, 'DEPARTAMENTO DE ENTRADA UNICA DE TRAMITES DE LAS DEFENSORIAS OFICIALES', 'DEPARTAMENTO DE ENTRA UNICA DE TRAMITES DE LAS DEFENSORIAS OFICIALES', 'AVDA. SANTA CATALINA', 1858, '3', NULL, NULL, 1, '4446543', '6543', 'D.E.U.T', NULL, '2012-01-01', 1, 1089, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (293, 1, NULL, 'OFICIALES DE JUSTICIA AD-HOC', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2012-06-28', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (299, 2, 'DEFENS.CIV. COM. LAB.Y FLIA. Nº 4', 'DEFENSORIA OFICIAL DE 1RA.INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'D.C.C.L.Y F.Nº4', NULL, '2012-10-25', NULL, 8146, 22, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (311, NULL, 'SECRETARIA DE TRATAMIENTO JURIDICO, DOCUMENTAL Y ESTADISTICAS', 'SECRETARIA DE TRATAMIENTO JURIDICO, DOCUMENTAL Y ESTADISTICAS', 'RIVADAVIA', 2035, NULL, NULL, NULL, 1, '4446416', '102', 'S.TR.DOC.Y EST.', NULL, '2012-11-06', 1, 1161, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (83, 1, 'CUERPO MEDICO FORENSE', 'CUERPO MEDICO FORENSE', 'La Rioja', 1615, 'PB   ', '   ', NULL, 1, '4446500', '30', 'C.MED.FO.', NULL, '2012-01-01', NULL, 597, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (163, 2, 'FISCALIA CIVIL, COMERCIAL Y LABORAL Nº 1', 'FISCALIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL Y LABORAL Nº 1', 'GRAL.LAVALLE KM.9', 2093, NULL, '   ', NULL, 1, '3751426446', '1142', 'FIS.C.C.Y L.Nº1', NULL, '2012-01-01', NULL, 443, 17, 5, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (297, 3, 'TRIBUNAL PENAL Nº 1', 'TRIBUNAL PENAL Nº 1', 'LA RIOJA', 1561, 'PB   ', NULL, NULL, 1, '4446412', '212', 'TR.P.Nº 1', NULL, '2012-10-23', 1, 1412, 1, 4, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (320, 1, 'DEFENSORIA OFICIAL Nº 2 -3RA. CIRCUNSCRIPCION JUDICIAL', 'DEFENSORIA OFICIAL Nº 2 -3RA CIRCUNSCRIPCION JUDICIAL', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'DEF.OF.Nº 2', NULL, '2012-11-12', NULL, NULL, 17, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (323, 2, 'DEFENSORIA OFICIAL Nº 1 -3RA CIRCUNSCRIPCION JUDICIAL', 'DEFENSORIA OFICIAL Nº 1 -3RA CIRCUNSCRIPCION JUDICIAL', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 'D.OF. Nº 3', NULL, '2012-11-19', NULL, NULL, 17, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (119, 2, 'DEFENSORIA CIVIL Y COMERCIAL Nº 1', 'DEFENSORIA OFICIAL DE 1RA.INSTANCIA EN LO CIVIL Y COMERCIAL Nº 1', 'BRASIL ESQ. MISIONES', 1180, NULL, '   ', NULL, 1, '3755421384', '1084', 'DEF.CIV.Y C.Nº1', NULL, '2012-01-01', 1, 462, 48, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (44, 2, 'DEFENSORIA DE INSTRUCCION Nº 5', 'DEFENSORIA OFICIAL DE INSTRUCCION Nº 5', 'PEDRO MENDEZ ESQ. URUGUAY', 2221, '1', '   ', NULL, 1, '4446578', '6578', 'DEF.INSTR.Nº 5', NULL, '2012-01-01', 1, 773, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (279, 2, 'JUZGADO PENAL Nº 1', 'JUZGADO PENAL Nº 1', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 39, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (286, 1, 'JUZGADO PENAL Nº 3', 'JUZGADO PENAL Nº 3', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (284, 1, 'JUZGADO PENAL Nº 1', 'JUZGADO PENAL Nº 1', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (260, 2, 'DEFENSORÍA OFICIAL Nº 2 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-', 'DEFENSORÍA OFICIAL Nº 2 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 1, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (261, 2, 'DEFENSORÍA OFICIAL Nº 3 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-', 'DEFENSORÍA OFICIAL Nº 3 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 1, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (245, 1, 'Unidad I - Loreto', 'Unidad I - Loreto', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 9, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (227, 1, 'Ministerio de Acción Cooperativa, Mutual, Comercio e Integración', 'Ministerio de Acción Cooperativa, Mutual, Comercio e Integración', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (259, 2, 'DEFENSORÍA OFICIAL Nº 1 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-', 'DEFENSORÍA OFICIAL Nº 1 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 1, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (249, 1, 'Unidad V - Instituto Correccional de Mujeres', 'Unidad V - Instituto Correccional de Mujeres', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (24, 2, 'JUZGADO DE INSTRUCCIÓN Nº 7', 'JUZGADO DE INSTRUCCIÓN Nº 7', 'PEDRO MENDEZ ESQ. URUGUAY', 2221, 'PB   ', '   ', NULL, 1, '4446570', NULL, 'JUZ.INST.Nº 7', NULL, '2012-01-01', 1, 2626, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10021, NULL, 'JUZGADO DE PAZ DE FÁTIMA', 'JUZGADO DE PAZ DE FÁTIMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-16', NULL, NULL, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (222, 1, 'Gobernación', 'Gobernación', 'FELIX DE AZARA', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, 'MAURICE FABIAN CLOSS', '2012-01-01', NULL, NULL, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (240, 1, 'Consejo General de Educación', 'Consejo General de Educación', 'CENTRO CIVICO', NULL, NULL, '   ', NULL, 1, NULL, NULL, 'C.GRAL.EDUC.', NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (234, 1, 'TRIBUNAL DE CUENTAS', 'TRIBUNAL DE CUENTAS', 'BUENOS AIRES', NULL, NULL, '   ', NULL, 0, NULL, NULL, 'TR.CUENT.', 'FORES, PERPETUO', '2012-01-01', NULL, NULL, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (255, 1, 'Camara de Representantes de la  Provincia de Misiones', 'Camara de Representantes de la  Provincia de Misiones', 'IVANOSKY', NULL, NULL, '   ', NULL, 1, NULL, NULL, 'CAM.REPR.', 'ING. CARLOS EDUARDO ROVIRA', '2012-01-01', NULL, NULL, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (34, 2, 'FISCALÍA DE INSTRUCCIÓN Nº 6', 'FISCALÍA DE INSTRUCCIÓN Nº 6', 'BUENOS AIRES', 1231, 'PB   ', '   ', NULL, 1, '4446440', '247', 'FIS.INST.Nº 6', NULL, '2012-01-01', 1, 1082, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (241, 1, 'Honorable Consejo Deliberante', 'Honorable Consejo Deliberante', 'RIVADAVIA Y BOLIVAR', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, 'MAGI SOLARI', '2012-01-01', NULL, NULL, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (239, 1, 'Servicio Penitenciario Provincial', 'Servicio Penitenciario Provincial', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, 'SERV.PENT.PRO.', NULL, '2012-01-01', NULL, NULL, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (236, 1, 'CONSEJO DE LA MAGISTRATURA', 'CONSEJO DE LA MAGISTRATURA', 'SANTA FE', NULL, NULL, '   ', NULL, 1, '4446610', NULL, 'C.DE LA MAG.', NULL, '2012-01-01', 1, 1765, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (233, 1, 'Ministerio de Salud Pública', 'Ministerio de Salud Pública', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10025, NULL, 'DEFENSORIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL, DE FAMILIA Y VIOLENCIA FAMILIAR', 'DEFENSORIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL, DE FAMILIA Y VIOLENCIA FAMILIAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-09', NULL, NULL, 80, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (282, 1, 'JUZGADO PENAL Nº 3', 'JUZGADO PENAL Nº 3', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (283, 1, 'JUZGADO PENAL Nº 4', 'JUZGADO PENAL Nº 4', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10026, NULL, 'FISCALIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL, DE FAMILIA Y VIOLENCIA FAMILIAR', 'FISCALIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL, DE FAMILIA Y VIOLENCIA FAMILIAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-09', NULL, NULL, 80, 7, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (257, 2, 'DEFENSORIA OFICIAL Nº 1', 'DEFENSORIA OFICIAL Nº 1', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, 'DEF.OFIC.Nº 1', NULL, '2012-01-01', NULL, 1, 1, 1, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (258, 2, 'DEFENSORIA OFICIAL Nº 2', 'DEFENSORIA OFICIAL Nº 2', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, 'DEF.OFIC.Nº 2', NULL, '2012-01-01', NULL, 1, 1, 1, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (263, 2, 'DEFENSORIA PENAL Nº 2', 'DEFENSORIA PENAL Nº 2', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (248, 1, 'Unidad IV - Instituto Correccional de Menores', 'Unidad IV - Instituto Correccional de Menores', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (278, 1, 'JUZGADO PENAL', 'JUZGADO DE PRIMERA INSTANCIA PENAL', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 17, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (287, 2, 'JUZGADO PENAL Nº 1', 'JUZGADO PENAL Nº 1', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 17, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (250, 1, 'Unidad VI - Instituto de Encausados y Procesados', 'Unidad VI - Instituto de Encausados y Procesados', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (244, 1, 'Instituto Provincial de Lotería y Casinos', 'Instituto Provincial de Lotería y Casinos', 'FELIX DE AZARA', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, 'BALERO TORREZ', '2012-01-01', NULL, NULL, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (256, 1, 'Centro de Cómputos de la Provincia', 'Centro de Cómputos de la Provincia', 'SANTA FE', NULL, NULL, '   ', NULL, 1, NULL, NULL, 'C.COMP.', NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (265, 1, 'Fiscalía Penal N-1', 'Fiscalía Penal N-1', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (266, 1, 'Fiscalía Penal N-2', 'Fiscalía Penal N-2', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (268, 1, 'Fiscalía Penal N-4', 'Fiscalía Penal N-4', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 4, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (246, 1, 'Unidad II - Oberá', 'UNIDAD PENAL II - OBERÁ', NULL, NULL, NULL, '   ', NULL, 0, NULL, NULL, 'UPII', NULL, '2012-01-01', NULL, 1, 48, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (254, 1, 'Subsecretaria de Cultura', 'Subsecretaria de Cultura', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (235, 1, 'TRIBUNAL ELECTORAL', 'TRIBUNAL ELECTORAL DE LA PROVINCIA DE MISIONES', NULL, NULL, NULL, '   ', NULL, 1, '4422033', NULL, 'TRIB.ELECT.', NULL, '2012-01-01', NULL, 1767, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (238, 1, 'TESORERIA GENERAL', 'TESORERIA GENERAL DE LA PROVINCIA', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, 'TE.GRAL.', NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (252, 1, 'Municipalidad de Eldorado', 'Municipalidad de Eldorado', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 17, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (224, 1, 'Ministerio de Bienestar Social de la Mujer y la Juventud', 'Ministerio de Bienestar Social de la Mujer y la Juventud', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (231, 1, 'Ministerio de Coordinación General de Gabinete', 'Ministerio de Coordinación General de Gabinete', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (229, 1, 'Ministerio de Cultura, Educación, Ciencia y Tecnología', 'Ministerio de Cultura, Educación, Ciencia y Tecnología', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (251, 1, 'Municipalidad de Posadas', 'Municipalidad de Posadas', 'RIVADAVIA', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (226, 1, 'Ministerio de Turismo', 'Ministerio de Turismo', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (223, 1, 'Ministerio de Gobierno', 'Ministerio de Gobierno', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (225, 1, 'Ministerio del Agro y la Producción', 'Ministerio del Agro y la Producción', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10003, 3, 'DIRECCION GENERAL DE RENTAS', 'DIRECCION GENERAL DE RENTAS - POSADAS MNES.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2013-11-27', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (298, 1, 'DIRECCION DE ASUNTOS JURIDICOS', 'DIRECCION DE ASUNTOS JURIDICOS', 'AVDA. SANTA CATALINA', 1735, 'S.S  ', NULL, NULL, 1, NULL, NULL, 'DIR.AS.JUR.', NULL, '2012-10-24', NULL, 2638, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10016, NULL, 'JUZGADO DE PAZ DE CAÁ YARÍ', 'JUZGADO DE PAZ DE CAÁ YARÍ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-04-13', NULL, NULL, 37, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10019, NULL, 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA N° 9 - ITAEMBE MINI', 'DEFENSORIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA N° 9 - ITAEMBE MINI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-05', NULL, NULL, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10028, NULL, 'JUZGADO DE PAZ DE TRES CAPONES', 'JUZGADO DE PAZ DE TRES CAPONES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-05-27', NULL, NULL, 5, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10029, NULL, 'MINISTERIO DE DESARROLLO SOCIAL', 'MINISTERIO DE DESARROLLO SOCIAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-26', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10030, NULL, 'LEGAJO ELECTRONICO UNICO', 'LEGAJO ELECTRONICO UNICO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-10-31', NULL, NULL, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10011, NULL, 'SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 7 - Posadas', 'SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 7 - Posadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-02-02', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (121, 2, 'JUZGADO DE FAMILIA Nº 1', 'JUZGADO DE PRIMERA INSTANCIA DE FAMILIA Nº 1', 'GOBERNADOR BARREIRO', 1012, NULL, '   ', NULL, 1, '3755403334', NULL, 'JUZ.FLIA.Nº 1', NULL, '2012-01-01', 1, 776, 48, 3, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (291, 1, 'Juzgado de Paz N- 3 -Posadas-', 'Juzgado de Paz N- 3 -Posadas-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (290, 1, 'Juzgado de Paz N- 2 -Posadas-', 'Juzgado de Paz N- 2 -Posadas-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 8, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (87, 2, 'JUZGADO DE PAZ EN LO CIVIL Y COMERCIAL Nº 1', 'JUZGADO DE PAZ EN LO CIVIL Y COMERCIAL Nº 1', 'AVDA. SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1285', 'J.PAZ.C.C.Nº 1', NULL, '2012-01-01', NULL, 515, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (149, 1, 'Juzgado de Paz de 25 de Mayo', 'Juzgado de Paz de 25 de Mayo', 'Rivadavia', 330, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 72, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (109, 1, 'Juzgado de Paz de San José', 'Juzgado de Paz de San José', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 4, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (99, 1, 'Juzgado de Paz de Bonpland', 'Juzgado de Paz de Bonpland', 'San Martín', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 8, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (102, 1, 'Juzgado de Paz de Corpus', 'Juzgado de Paz de Corpus', 'Libertad', NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 60, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (93, 1, 'Juzgado de Paz de Concepción de la Sierra', 'Juzgado de Paz de Concepción de la Sierra', 'Rivadavia', 610, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 15, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (160, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 1', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 1', 'GRAL. LAVALLE', 2093, NULL, '   ', NULL, 1, '3751426521', NULL, 'J.C.Y C.Nº1', NULL, '2012-01-01', NULL, 1663, 17, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (170, 2, 'JUZGADO LABORAL Nº 2', 'JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 2', 'GRAL. LAVALLE', 2093, NULL, '   ', NULL, 1, '3751420770', '1270', 'J.LAB.Nº 2', NULL, '2012-01-01', 1, 530, 17, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (142, 1, 'Juzgado de Paz de Oberá', 'Juzgado de Paz de Oberá', 'Santiago del Estero', 423, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (161, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 2', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 2', 'GRAL. LAVALLE', 2093, NULL, '   ', NULL, 1, '3751422571', '1171', 'J.C.Y C.Nº2', NULL, '2012-01-01', NULL, 1597, 17, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (53, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 6', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 6', 'Avda. Santa Catalina', 1858, '3', NULL, NULL, 1, '4446601', '6601', 'J.C.Y C.Nº 6', NULL, '2012-01-01', 1, 1845, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10020, NULL, 'MINISTERIO DE TRABAJO Y EMPLEO DE LA PROVINCIA DE MISIONES', 'MINISTERIO DE TRABAJO Y EMPLEO DE LA PROVINCIA DE MISIONES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-10-14', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (277, 2, 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -OBERÁ-', 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -OBERÁ-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 48, 5, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (270, 2, 'JUZGADO CIVIL Y COMERCIAL Nº 1', 'JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 1', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, 'JUZ.C.Y C. Nº1', NULL, '2012-01-01', NULL, 969, 1, 1, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (272, 2, 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -POSADAS-', 'JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -POSADAS-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 5, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (274, 1, 'Juzgado Civil, Comercial y Laboral N-4 -Posadas-', 'Juzgado Civil, Comercial y Laboral N-4 -Posadas-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 5, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (275, 1, 'Juzgado Civil, Comercial y Laboral N-5 -Posadas-', 'Juzgado Civil, Comercial y Laboral N-5 -Posadas-', NULL, NULL, NULL, '   ', NULL, 1, NULL, NULL, NULL, NULL, '2012-01-01', NULL, 1, 1, 5, false);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10036, NULL, 'OFICINA DE ESTADISTICAS', 'OFICINA DE ESTADISTICAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-26', NULL, NULL, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10037, NULL, 'JUZGADO DE PAZ DE GARUHAPÉ', 'JUZGADO DE PAZ DE GARUHAPÉ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-27', NULL, NULL, 40, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (73, 3, 'Cámara Laboral', 'Cámara de Apelación en lo Laboral', 'Bolívar', 1745, '2', NULL, NULL, 1, '4446438', NULL, 'C.A.L.', NULL, '2012-01-01', NULL, 618, 1, 2, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (79, 1, 'Archivo de Tribunales', 'Archivo General de los Tribunales', 'Buenos  Aires', 2124, NULL, NULL, NULL, 1, '4446485', NULL, 'A.G.T', NULL, '2018-02-19', NULL, 540, 1, 8, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (56, 2, 'JUZGADO DE FAMILIA Nº 1', 'JUZGADO DE FAMILIA Nº 1', 'AVDA. SANTA CATALINA', 1735, '1', NULL, NULL, 1, '4446700', '1218', 'JUZ.FLIA.Nº 1', NULL, '2018-02-19', 1, 1492, 1, 3, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10032, NULL, 'JUZGADO DE VIOLENCIA FAMILIAR Nº 1', 'JUZGADO DE VIOLENCIA FAMILIAR Nº 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12', NULL, NULL, 1, 3, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (88, 2, 'JUZGADO DE PAZ EN LO CIVIL Y COMERCIAL Nº 2', 'JUZGADO DE PAZ EN LO CIVIL Y COMERCIAL Nº 2', 'AVDA. SANTA CATALINA', 1735, 'PB   ', NULL, NULL, 1, '4446700', '1297', 'J.PAZ C.C.Nº 2', NULL, '2012-01-01', NULL, 2248, 1, 1, true);
INSERT INTO public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES (10033, 2, 'DEFENSORÍA DE VIOLENCIA FAMILIAR Nº 1', 'DEFENSORÍA DE VIOLENCIA FAMILIAR Nº 1', NULL, NULL, '1', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2017-06-12', 1, 1492, 1, 3, true);


--
-- TOC entry 2900 (class 0 OID 63141)
-- Dependencies: 280
-- Data for Name: tipos_certificados; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipos_certificados (id_tipo_certificado, nombre) VALUES (1, 'Fotocopia DNI');
INSERT INTO public.tipos_certificados (id_tipo_certificado, nombre) VALUES (6, 'Declaracion jurada');
INSERT INTO public.tipos_certificados (id_tipo_certificado, nombre) VALUES (10, 'Certificado de nacimiento');
INSERT INTO public.tipos_certificados (id_tipo_certificado, nombre) VALUES (11, 'Certificado de matrimonio');
INSERT INTO public.tipos_certificados (id_tipo_certificado, nombre) VALUES (12, 'Certificado de discapacidad');
INSERT INTO public.tipos_certificados (id_tipo_certificado, nombre) VALUES (13, 'Certificado de escolaridad');
INSERT INTO public.tipos_certificados (id_tipo_certificado, nombre) VALUES (2, 'Fotocopia de CUIL o CUIT');
INSERT INTO public.tipos_certificados (id_tipo_certificado, nombre) VALUES (3, 'Fotocopia de titulo');
INSERT INTO public.tipos_certificados (id_tipo_certificado, nombre) VALUES (4, 'Fotocopia de Curriculum');


--
-- TOC entry 2902 (class 0 OID 63152)
-- Dependencies: 282
-- Data for Name: documentos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 283
-- Name: domicilio_id_domicilio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.domicilio_id_domicilio_seq', 13, true);


--
-- TOC entry 2904 (class 0 OID 63173)
-- Dependencies: 284
-- Data for Name: domicilios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES (6, 'EE', 45, NULL, 6, 'AC');
INSERT INTO public.domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES (1, 'AV. corrientes', 2323, '2018-11-19', 1, 'AC');
INSERT INTO public.domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES (4, 'Av cocomarola', 77, '2018-11-25', 4, 'AC');
INSERT INTO public.domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES (3, 'San Luis', 1321, '2018-11-24', 3, 'AC');
INSERT INTO public.domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES (7, 'Jujuy', 33, '2018-11-25', 7, 'AC');
INSERT INTO public.domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES (2, 'Cordoba', 33, '2018-11-19', 2, 'AC');
INSERT INTO public.domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES (5, 'Entre Rios', 33, '2018-11-24', 5, 'AC');
INSERT INTO public.domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES (13, 'LIBERTAD', 345, '2018-11-27', 10, 'AC');


--
-- TOC entry 2858 (class 0 OID 43283)
-- Dependencies: 238
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2846 (class 0 OID 42177)
-- Dependencies: 226
-- Data for Name: estados_civiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estados_civiles (id_estado_civil, nombre) VALUES ('S', 'Soltero/a');
INSERT INTO public.estados_civiles (id_estado_civil, nombre) VALUES ('C', 'Casado/a');
INSERT INTO public.estados_civiles (id_estado_civil, nombre) VALUES ('D', 'Divorciado/a');
INSERT INTO public.estados_civiles (id_estado_civil, nombre) VALUES ('V', 'Viudo/a');


--
-- TOC entry 2872 (class 0 OID 62432)
-- Dependencies: 252
-- Data for Name: tipos_examenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipos_examenes (id_tipo_examen, nombre) VALUES (1, 'Exámenes Preocupacionales o de Ingreso');
INSERT INTO public.tipos_examenes (id_tipo_examen, nombre) VALUES (2, 'Exámenes Periódicos');
INSERT INTO public.tipos_examenes (id_tipo_examen, nombre) VALUES (3, 'Exámenes de Egreso');


--
-- TOC entry 2874 (class 0 OID 62443)
-- Dependencies: 254
-- Data for Name: examenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.examenes (id_examen, nombre, descripcion, id_tipo_examen) VALUES (1, 'Declaración Jurada de Antecedentes Médicos', 'El postulante responde un cuestionario sencillo al que convalida con su firma, con la supervisión del Médico Laboral', 1);
INSERT INTO public.examenes (id_examen, nombre, descripcion, id_tipo_examen) VALUES (2, 'Examen Clínico', 'Incluye examen de agudeza visual, bucodental y evaluación de todos los aparatos y sistemas, con énfasis en los más comprometidos por la tarea a realizar.', 1);
INSERT INTO public.examenes (id_examen, nombre, descripcion, id_tipo_examen) VALUES (3, 'Radiografía de Tórax (digitalizada)', 'Placa radiográfica con informe del Médico Especialista en Diagnóstico por Imágenes.', 1);
INSERT INTO public.examenes (id_examen, nombre, descripcion, id_tipo_examen) VALUES (4, 'Análisis de Laboratorio', 'El perfil básico incluye hemograma, eritrosedimentación, glucemia, uremia y examen completo de orina.', 1);
INSERT INTO public.examenes (id_examen, nombre, descripcion, id_tipo_examen) VALUES (5, 'Electrocardiograma', 'Examen electrocardiográfico informado por Médico Especialista en Cardiología.', 1);
INSERT INTO public.examenes (id_examen, nombre, descripcion, id_tipo_examen) VALUES (6, 'Informe Final de Aptitud', 'Informe del Médico Laboral sobre la aptitud del postulante.', 1);


--
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 253
-- Name: examenes_id_examen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.examenes_id_examen_seq', 6, true);


--
-- TOC entry 2876 (class 0 OID 62459)
-- Dependencies: 256
-- Data for Name: resultados_examenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.resultados_examenes (id_resultado, nombre, descripcion) VALUES (1, 'Apto', 'para la tarea propuesta. Quiere decir que es un paciente sano con capacidad laboral considerada normal.');
INSERT INTO public.resultados_examenes (id_resultado, nombre, descripcion) VALUES (2, 'Apto con patologías preexistentes', 'Son aquellos pacientes que a pesar de tener algunas patologías pueden desarrollar la labor normalmente teniendo ciertas precauciones, para que ellas no disminuyan el rendimiento ni tampoco afecten su salud.');
INSERT INTO public.resultados_examenes (id_resultado, nombre, descripcion) VALUES (3, 'Apto con patologías que se pueden agravar con el trabajo', 'Son pacientes que tienen algún tipo de lesiones orgánicas que con el desempeño de la labor pueden verse incrementadas (por ejemplo, várices, disminución de agudeza visual, etc), y deben ser cobijados con programas de vigilancia epidemiológica específicos, deben tener controles periódicos de su estado de salud y se debe dejar constancia de su patología al ingreso.');
INSERT INTO public.resultados_examenes (id_resultado, nombre, descripcion) VALUES (4, 'No apto', 'Son pacientes que por patologías, lesiones o secuelas de enfermedades o accidentes tienen limitaciones orgánicas que les hacen imposible la labor en las circunstancias en que está planteada dentro de la empresa, que por sus condiciones físicas, no le permitirían el desarrollo normal de las labores. En estos casos es indispensable emitir un concepto claro y fundamentado, que defina las causas por las cuales no hay aptitud.');


--
-- TOC entry 2878 (class 0 OID 62470)
-- Dependencies: 258
-- Data for Name: examenes_trabajadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.examenes_trabajadores (id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES (1, 1, '2018-11-19', 2, 'aaaaaa bbb', 6, NULL);
INSERT INTO public.examenes_trabajadores (id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES (2, 2, '2018-11-24', 2, NULL, 6, '2018-11-27');
INSERT INTO public.examenes_trabajadores (id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES (3, 1, '2018-11-27', 1, NULL, 10, NULL);


--
-- TOC entry 2936 (class 0 OID 0)
-- Dependencies: 257
-- Name: examenes_trabajadores_id_examen_trabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.examenes_trabajadores_id_examen_trabajador_seq', 3, true);


--
-- TOC entry 2835 (class 0 OID 41635)
-- Dependencies: 215
-- Data for Name: formas_cotizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.formas_cotizacion (id_forma_cotizacion, nombre) VALUES (1, 'Mensual');


--
-- TOC entry 2937 (class 0 OID 0)
-- Dependencies: 214
-- Name: formas_cotizacion_id_forma_cotizacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.formas_cotizacion_id_forma_cotizacion_seq', 1, true);


--
-- TOC entry 2837 (class 0 OID 41646)
-- Dependencies: 217
-- Data for Name: grupos_cotizaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.grupos_cotizaciones (id_grupo_cotizacion, nombre) VALUES (2, 'Part Time');
INSERT INTO public.grupos_cotizaciones (id_grupo_cotizacion, nombre) VALUES (1, 'Full  Time');


--
-- TOC entry 2938 (class 0 OID 0)
-- Dependencies: 216
-- Name: grupos_cotizaciones_id_grupo_cotizacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grupos_cotizaciones_id_grupo_cotizacion_seq', 2, true);


--
-- TOC entry 2864 (class 0 OID 53050)
-- Dependencies: 244
-- Data for Name: hijos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES (1, 'MANITTO SHARA', '2016-11-17', 3, 'NO', NULL);
INSERT INTO public.hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES (5, 'DUARTE ORTELLADO VERONICA', '2017-05-16', 6, 'NO', 'F');
INSERT INTO public.hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES (3, 'DUEARTE ORTELLADO ARTURO', '2007-08-09', 6, 'NO', 'M');
INSERT INTO public.hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES (4, 'DUARTE ORTELLADO LEONARDO', '2011-08-25', 6, 'NO', 'M');
INSERT INTO public.hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES (6, 'MENDEZ JUAN', '2015-11-18', 7, 'NO', NULL);
INSERT INTO public.hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES (7, 'Benitez Camila', '2017-05-16', 1, 'SI', 'F');
INSERT INTO public.hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES (9, 'PEREZ MARIO', '2017-11-14', 10, 'NO', 'M');
INSERT INTO public.hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES (10, 'PEREZ MARTA', '2000-07-10', 10, 'SI', 'F');


--
-- TOC entry 2939 (class 0 OID 0)
-- Dependencies: 243
-- Name: hijos_id_hijo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hijos_id_hijo_seq', 10, true);


--
-- TOC entry 2896 (class 0 OID 63109)
-- Dependencies: 276
-- Data for Name: inasistencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.inasistencias (id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador, cantidad) VALUES (1, 'J', NULL, '2018-11-18', '2018-11-18', 'ddd', 4, NULL);
INSERT INTO public.inasistencias (id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador, cantidad) VALUES (2, 'I', NULL, '2018-11-18', NULL, 'aaaaacccccc', 6, NULL);
INSERT INTO public.inasistencias (id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador, cantidad) VALUES (3, 'T', NULL, '2018-11-25', NULL, NULL, 6, 12);
INSERT INTO public.inasistencias (id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador, cantidad) VALUES (4, 'T', NULL, '2018-11-27', NULL, NULL, 10, 15);


--
-- TOC entry 2940 (class 0 OID 0)
-- Dependencies: 275
-- Name: inasistencias_id_insistencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inasistencias_id_insistencia_seq', 4, true);


--
-- TOC entry 2868 (class 0 OID 62405)
-- Dependencies: 248
-- Data for Name: tipos_licencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipos_licencias (id_tipo_licencia, nombre) VALUES (1, 'LICENCIAS QUE SURGEN DE LA LEY DE CONTRATO DE TRABAJO');
INSERT INTO public.tipos_licencias (id_tipo_licencia, nombre) VALUES (3, 'LICENCIAS DISPUESTAS EN LEYES COMPLEMENTARIAS');
INSERT INTO public.tipos_licencias (id_tipo_licencia, nombre) VALUES (4, 'LICENCIA INCAUSADA SIN GOCE DE SUELDO');
INSERT INTO public.tipos_licencias (id_tipo_licencia, nombre) VALUES (5, 'LICENCIA POR MATERNIDAD');
INSERT INTO public.tipos_licencias (id_tipo_licencia, nombre) VALUES (6, 'LICENCIA POR ENFERMEDAD');
INSERT INTO public.tipos_licencias (id_tipo_licencia, nombre) VALUES (2, 'LICENCIAS ESPECIALES');


--
-- TOC entry 2870 (class 0 OID 62416)
-- Dependencies: 250
-- Data for Name: licencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (1, 'Por nacimiento de hijo', 'Deben otorgarse 2 días corridos, uno de los cuales debe ser día hábil, cuando la licencia coincidiera con domingo, feriado o día no laborable. El empleado, debe acreditar el nacimiento, mediante la partida respectiva.', 1, 2);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (2, 'Por matrimonio', 'Corresponden 10 días corridos. A solicitud del trabajador, el empleador debe concederla acumulada con las vacaciones, aún cuando esto implique alterar la oportunidad de concesión prefijada por ley. El empleado, debe acreditar el matrimonio, mediante la partida respectiva.', 1, 10);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (3, 'Por fallecimiento de hijos, padres, cónyuge o de la persona con la cual hubiese vivido públicamente, durante al menos 2 años anteriores al fallecimiento', 'La licencia será de 3 días corridos, uno de los cuales debe ser día hábil, cuando la licencia coincidiera con domingo, feriado o día no laborable. Tanto el fallecimiento, como el vínculo familiar, deberá ser acreditado con las partidas correspondientes', 1, 3);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (4, 'Por fallecimiento de hermano', 'Corresponde 1 día hábil de licencia, debiendo acreditar vínculo y fallecimiento con partidas.', 1, 1);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (5, 'Para rendir examen', 'En la enseñanza media o universitaria, 2 días corridos por examen, con un máximo de 10 días por año calendario. Los exámenes, deberán estar referidos a los planes de enseñanza oficiales o autorizados por organismo provincial o nacional competente. El beneficiario, deberá acreditar ante el empleador haber rendido el examen mediante la presentación del certificado expedido por el instituto en el cual curse los estudios.', 1, 2);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (6, 'Por casamiento', '12 días corridos, con goce total de sus remuneraciones, pudiendo, si así lo decidiere el empleado, adicionarlo al período de vacaciones anuales. Asimismo, el trabajador, tendrá derecho a un día de permiso sin pérdida de remuneración por todo concepto para trámites prematrimoniales.', 2, 12);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (7, 'Por enfermedad del cónyuge, padres o hijos que requiera necesariamente la asistencia personal del empleado', 'Licencia de hasta 30 días por año, sin goce de remuneraciones.', 2, 30);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (8, 'Por fallecimiento de padres, hijos, cónyuges o hermanos/as, debidamente comprobado', '4 días corridos de licencia, con goce total de sus remuneraciones', 2, 4);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (9, 'Por fallecimiento de abuelos, padres o hermanos políticos o hijos del cónyuge', '2 días de licencia corridos, con goce total de sus remuneraciones.', 2, 2);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (10, 'Por mudanza debidamente acreditada', '2 días corridos de licencia con goce total de remuneraciones.', 2, 2);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (11, 'Para los estudiantes secundarios, a efectos de preparar sus materias y rendir exámenes', '10 días de licencia como máximo por año, con goce total de sus remuneraciones. Esta licencia, a solicitud del empleado/a, podrá acumularse al período ordinario de vacaciones anuales.', 2, 10);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (12, 'Para los estudiantes universitarios, a efectos de preparar sus materias y rendir exámenes', '20 días de licencia como máximo por año, con goce total de sus remuneraciones, pudiendo solicitar hasta un máximo de 4 días por examen. Cuando en el año, se excediera de cinco exámenes sin repetirlos, se otorgarán cuatro días más de licencia con goce de remuneraciones. Esta licencia, a solicitud del empleado/a, podrá acumularse al período ordinario de vacaciones anuales.', 2, 20);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (13, 'Licencia por donación de sangre', 'La ley 22.990, en su artículo 47, inciso c, establece, que por donación de sangre, el trabajador podrá justificar inasistencia por el plazo de 24 horas incluido el día de la donación. Cuando la donación, sea realizada por hemaféresis, la justificación abarcará 36 horas. La ley aclara que en ninguna circunstancia se producirá pérdida o disminución de sueldos, salarios o premios por este concepto.', 3, 1);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (14, 'Licencia por trámites y citaciones', 'La ley 23.691, prevé que cualquier persona citada por los tribunales nacionales o provinciales, que preste servicio en relación de dependencia, tendrá derecho a no asistir a sus tareas durante el tiempo necesario para acudir a la citación sin perder el derecho a su remuneración.
Igual derecho, le asistirá a toda persona que deba realizar trámites personales y obligatorios ante las autoridades nacionales, provinciales o municipales, siempre y cuando los mismos no pudieran ser efectuados fuera del horario normal de trabajo.', 3, NULL);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (15, 'Licencia para votar', 'El Codigo Nacional Electoral Argentino, dispone que las personas que por razones de trabajo deban estar ocupadas durante las horas del acto electoral, tienen derecho a obtener una licencia especial de sus empleadores con el objeto de concurrir a emitir el voto o desempeñar funciones en el comicio, sin deducción alguna del salario ni posterior recarga de horario.
En estos casos, el empleador, deberá otorgar al dependiente una licencia por todo el lapso que le implique a este trasladarse desde el lugar de trabajo hasta el lugar de votación, emitir el sufragio y volver al lugar de trabajo', 3, NULL);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (16, 'Licencia para votar en países limítrofes', 'Según lo dispuesto por la ley 23.759, los ciudadanos de Países limítrofes, gozarán en sus empleos de hasta 4 días de licencia, a los fines de que puedan concurrir a emitir su voto en las elecciones que se realicen en su país de origen. Sin embargo, dicha licencia se considerará a cuenta de la licencia ordinaria. A los fines de justificar la ausencia, se exige como obligación del trabajador, la presentación del documento electoral en el que deberá constar la emisión del voto.
Se aclara, que las elecciones a las que se refiere esta ley, son exclusivamente las que abarcan todo el país de origen del trabajador y para cargos nacionales, y no las que se lleven a cabo sólo en algún o algunos estados, provincias, departamentos, municipios, u otros distritos políticos existentes o a crearse en el país de origen.', 3, NULL);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (17, 'Licencia deportiva', 'La ley 20.596, dispone que, todo deportista aficionado que como consecuencia de su actividad sea designado para intervenir en campeonatos regionales selectivos, dispuestos por los organismos competentes de su deporte en los campeonatos argentinos para integrar delegaciones que figuren regular y habitualmente en el calendario de las organizaciones internacionales, podrá disponer de una licencia especial deportiva en sus obligaciones laborales, tanto en el sector público como en el privado, para su preparación y/o participación en las mismas.
Para gozar de la “licencia especial deportiva” el solicitante deberá tener una antigüedad en el lugar de trabajo no inferior a seis meses anteriores a la fecha de su presentación.
El plazo de licencia es de hasta 60 días para el deportista y hasta 30 días para dirigentes o representantes, congresistas, jueces, árbitros o jurados, directores técnicos o entrenadores. El sueldo del trabajador y los aportes previsionales correspondientes serán entregados al empleador por el órgano de aplicación y con recursos provenientes del Fondo Nacional del Deporte.
Esta licencia, no se imputará a ninguna otra clase de licencias, ni a vacaciones, ni podrá incidir en la foja de servicios de los interesados para modificar desfavorablemente sus calificaciones, concepto y carrera dentro del escalafón.
La licencia especial deportiva, para su validez, debe ser homologada por el órgano de aplicación que determine la ley de la materia, el cual llevará, así mismo, un registro donde se asentarán las que así lo fueran. En el ámbito nacional, cuando se trate de campeonatos argentinos, la solicitarán las entidades que dirigen el deporte aficionado respectivo. Así mismo deberán tener afiliación directa al organismo internacional que corresponda cuando se trate de competencias de este carácter.', 3, NULL);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (18, 'LICENCIA INCAUSADA SIN GOCE DE SUELDO', 'El otorgamiento de una licencia sin causa legal alguna, solicitada por el trabajador, esta supeditado a lo que el empleador puede resolver en cada caso concreto. Si la otorga, deberá respetar lo convenido, pero si decide no darla, el empleado no puede objetar tal decisión.
Sin perjuicio de ello, algunos Convenios Colectivos de Trabajo, prevén la obligatoriedad del empleador de otorgar este tipo de licencias (Por ejemplo, el Convenio aplicable a los Encargados y Trabajadores de Edificios concede la licencia, si se verifica el cumplimiento de ciertos requisitos objetivos), por lo que en estos casos, debe autorizarsela sin mayor trámite.', 4, NULL);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (19, 'LICENCIA POR MATERNIDAD', 'LICENCIA POR MATERNIDAD', 5, NULL);
INSERT INTO public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES (20, 'LICENCIA POR ENFERMEDAD', 'LICENCIA POR ENFERMEDAD', 6, NULL);


--
-- TOC entry 2941 (class 0 OID 0)
-- Dependencies: 249
-- Name: licencias_id_licencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.licencias_id_licencia_seq', 20, true);


--
-- TOC entry 2880 (class 0 OID 62496)
-- Dependencies: 260
-- Data for Name: licencias_trabajadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.licencias_trabajadores (id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_licencia, id_trabajador, observacion) VALUES (2, 1, '2018-11-19', '2018-11-19', 5, 6, 'aaa cccc');
INSERT INTO public.licencias_trabajadores (id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_licencia, id_trabajador, observacion) VALUES (3, 2, '2018-11-27', '2018-11-29', 1, 10, NULL);


--
-- TOC entry 2942 (class 0 OID 0)
-- Dependencies: 259
-- Name: licencias_trabajadores_id_licencia_trabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.licencias_trabajadores_id_licencia_trabajador_seq', 3, true);


--
-- TOC entry 2943 (class 0 OID 0)
-- Dependencies: 198
-- Name: localidad_id_localidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.localidad_id_localidad_seq', 1, false);


--
-- TOC entry 2859 (class 0 OID 51583)
-- Dependencies: 239
-- Data for Name: obras_sociales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.obras_sociales (id_obra_social, nombre) VALUES (1, 'I.P.S.');


--
-- TOC entry 2944 (class 0 OID 0)
-- Dependencies: 201
-- Name: pais_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pais_id_pais_seq', 16, true);


--
-- TOC entry 2847 (class 0 OID 42182)
-- Dependencies: 227
-- Data for Name: profesiones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.profesiones (id_profesion, nombre) VALUES (1, 'Psicologo');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (3, 'Contador Público');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (6, 'Lic. Trabajo Social');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (2, 'Licenciado en Comunicacion Social');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (7, 'Abogado');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (10, 'Otro/a');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (4, 'Analista en sistemas');
INSERT INTO public.profesiones (id_profesion, nombre) VALUES (5, 'Licenciado en sistemas');


--
-- TOC entry 2945 (class 0 OID 0)
-- Dependencies: 202
-- Name: provincia_id_provincia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provincia_id_provincia_seq', 26, false);


--
-- TOC entry 2946 (class 0 OID 0)
-- Dependencies: 255
-- Name: resultados_examenes_id_resultado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resultados_examenes_id_resultado_seq', 4, true);


--
-- TOC entry 2898 (class 0 OID 63125)
-- Dependencies: 278
-- Data for Name: sanciones_disciplinarias; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2947 (class 0 OID 0)
-- Dependencies: 277
-- Name: sanciones_disciplinarias_id_sancion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sanciones_disciplinarias_id_sancion_seq', 1, false);


--
-- TOC entry 2824 (class 0 OID 41512)
-- Dependencies: 204
-- Data for Name: situaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES (3, 1, 300, 1, 1, 7, 1, 10, 8);
INSERT INTO public.situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES (6, 2, 240, 1, 1, 9, 1, 5, 8);
INSERT INTO public.situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES (7, 3, 265, 1, 1, 8, 1, 10, 8);
INSERT INTO public.situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES (8, 4, 273, 1, 1, 12, 1, 10, 8);
INSERT INTO public.situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES (22, 7, 9, 1, 1, 12, 1, 6, 8);
INSERT INTO public.situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES (10, 6, 300, 1, 1, 7, 1, 4, 8);
INSERT INTO public.situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES (23, 5, 300, 1, 1, 12, 1, 4, 6);
INSERT INTO public.situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES (24, 10, 300, 1, 1, 12, 1, 4, 6);


--
-- TOC entry 2948 (class 0 OID 0)
-- Dependencies: 205
-- Name: situaciones_id_situacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.situaciones_id_situacion_seq', 24, true);


--
-- TOC entry 2949 (class 0 OID 0)
-- Dependencies: 261
-- Name: tipos_asignaciones_id_tipo_asignacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_asignaciones_id_tipo_asignacion_seq', 6, true);


--
-- TOC entry 2950 (class 0 OID 0)
-- Dependencies: 279
-- Name: tipos_certificados_id_tipo_certificado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_certificados_id_tipo_certificado_seq', 9, true);


--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 221
-- Name: tipos_de_documento_id_tipo_documento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_de_documento_id_tipo_documento_seq', 2, true);


--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 251
-- Name: tipos_examenes_id_tipo_examen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_examenes_id_tipo_examen_seq', 3, true);


--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 247
-- Name: tipos_licencias_id_tipo_licencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_licencias_id_tipo_licencia_seq', 6, true);


--
-- TOC entry 2844 (class 0 OID 42166)
-- Dependencies: 224
-- Data for Name: tipos_parientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (1, 'Padre');
INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (2, 'Madre');
INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (3, 'Hijo/a');
INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (5, 'Tio/a');
INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (7, 'Abuelo/a');
INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (9, 'Cónyuge');
INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (6, 'Tio/a');
INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (4, 'Cónyuge');
INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (10, 'Primo/a');
INSERT INTO public.tipos_parientes (id_tipo_parentesco, nombre) VALUES (0, 'Ninguno');


--
-- TOC entry 2954 (class 0 OID 0)
-- Dependencies: 225
-- Name: tipos_parientes_id_tipo_parentesco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_parientes_id_tipo_parentesco_seq', 10, true);


--
-- TOC entry 2955 (class 0 OID 0)
-- Dependencies: 207
-- Name: trabajador_id_trabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trabajador_id_trabajador_seq', 10, true);


--
-- TOC entry 2921 (class 0 OID 65793)
-- Dependencies: 301
-- Data for Name: traslados; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.traslados (id_traslado, id_trabajador, id_departamento, fecha_desde, fecha_hasta, observaciones, tipo_traslado) VALUES (1, 6, 255, '2018-11-25', '2018-11-25', 'prueba', 'T');


--
-- TOC entry 2956 (class 0 OID 0)
-- Dependencies: 300
-- Name: traslados_id_traslado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.traslados_id_traslado_seq', 1, true);


--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 209
-- Name: vinculos_familiares_id_vinculo_familiar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vinculos_familiares_id_vinculo_familiar_seq', 1, false);


--
-- TOC entry 2905 (class 0 OID 63283)
-- Dependencies: 285
-- Data for Name: logs_antecentes; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_antecentes (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES ('toba', '2018-11-18 23:23:05.744869', 'I', 103006557, 1, '2018-11-19', 'N', '2019-02-19', NULL, 20);
INSERT INTO public_auditoria.logs_antecentes (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES ('toba', '2018-11-18 23:23:21.106479', 'U', 103006559, 1, '2018-11-19', 'N', '2019-02-19', 'todo ok', 20);
INSERT INTO public_auditoria.logs_antecentes (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES ('toba', '2018-11-19 01:04:14.259283', 'I', 103007100, 2, '2018-11-19', 'N', '2018-11-19', 'wwwwwwwwwwwwww', 20);
INSERT INTO public_auditoria.logs_antecentes (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 1, '2018-11-19', 'N', '2019-02-19', 'todo ok', 6);
INSERT INTO public_auditoria.logs_antecentes (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 2, '2018-11-19', 'N', '2018-11-19', 'wwwwwwwwwwwwww', 6);
INSERT INTO public_auditoria.logs_antecentes (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES ('toba', '2018-11-25 23:38:31.921419', 'U', 103008292, 2, '2018-11-19', 'N', '2018-11-19', 'prueba', 6);
INSERT INTO public_auditoria.logs_antecentes (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES ('toba', '2018-11-25 23:39:02.579185', 'U', 103008294, 2, '2018-11-19', 'N', '2019-02-26', 'prueba', 6);
INSERT INTO public_auditoria.logs_antecentes (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) VALUES ('toba', '2018-11-27 16:12:51.166892', 'I', 103008350, 3, '2018-11-27', 'N', '2019-02-04', NULL, 10);


--
-- TOC entry 2916 (class 0 OID 65277)
-- Dependencies: 296
-- Data for Name: logs_articulos_inasistencias; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2906 (class 0 OID 63289)
-- Dependencies: 286
-- Data for Name: logs_asignaciones_flia_trabajador; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_asignaciones_flia_trabajador (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion) VALUES ('toba', '2018-11-18 23:29:49.302958', 'I', 103006613, 1, 2, 20, '2018-11-19', 'aaaa');
INSERT INTO public_auditoria.logs_asignaciones_flia_trabajador (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion) VALUES ('toba', '2018-11-18 23:29:59.669082', 'U', 103006615, 1, 2, 20, '2018-11-19', 'aaaa ccc');
INSERT INTO public_auditoria.logs_asignaciones_flia_trabajador (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 1, 2, 6, '2018-11-19', 'aaaa ccc');
INSERT INTO public_auditoria.logs_asignaciones_flia_trabajador (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion) VALUES ('toba', '2018-11-25 23:21:55.466233', 'I', 103008247, 2, 4, 7, '2018-11-26', NULL);
INSERT INTO public_auditoria.logs_asignaciones_flia_trabajador (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion) VALUES ('toba', '2018-11-25 23:22:12.786209', 'U', 103008249, 2, 4, 7, '2018-04-05', NULL);


--
-- TOC entry 2849 (class 0 OID 42418)
-- Dependencies: 229
-- Data for Name: logs_categorias; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:37:53.123217', 'U', NULL, 2, 'PROCURADOR GENERAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:59:07.549368', 'I', NULL, 101, 'JUEZ DE LA CORTE SUPREMA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:59:43.940855', 'D', NULL, 101, 'JUEZ DE LA CORTE SUPREMA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.577884', 'I', NULL, 101, 'JUEZ DE LA CORTE SUPREMA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.619776', 'I', NULL, 1501, 'SECRETARIO DE LA CORTE SUPREMA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.641045', 'I', NULL, 1520, 'SECRET GRAL DE ADMINISTRACION', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.662116', 'I', NULL, 1504, 'SECRETARIO LETRADO C.SUPREMA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.683302', 'I', NULL, 3501, 'DIRECTOR GENERAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.704964', 'I', NULL, 4001, 'SUBDIRECTOR GENERAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.725896', 'I', NULL, 3502, 'DIRECTOR MEDICO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.747086', 'I', NULL, 4501, 'PERITO MEDICO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.768305', 'I', NULL, 4502, 'PERITO QUIMICO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.789531', 'I', NULL, 4507, 'PERITO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.810795', 'I', NULL, 4508, 'PERITO ABOGADO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.831955', 'I', NULL, 4503, 'PERITO CONTADOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.853299', 'I', NULL, 4504, 'PERITO CALIGRAFO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.874523', 'I', NULL, 1507, 'SECRETARIO DE CAMARA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.895708', 'I', NULL, 3002, 'PROSECRETARIO LETRADO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.91708', 'I', NULL, 1511, 'SECRETARIO DE JUZGADO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.938228', 'I', NULL, 1518, 'SECRETARIO CONTABLE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.959411', 'I', NULL, 1519, 'SUBINTENDENTE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:15.980303', 'I', NULL, 2504, 'SUBSECRETARIO ADMINISTRATIVO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.001478', 'I', NULL, 3003, 'PROSECRETARIO JEFE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.022595', 'I', NULL, 5501, 'JEFE DE DEPARTAMENTO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.043737', 'I', NULL, 6001, '2DO.JEFE DE DEPARTAMENTO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.065212', 'I', NULL, 3007, 'PROSECRETARIO ADMINISTRATIVO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.086133', 'I', NULL, 6390, 'JEFE DE DESPACHO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.1074', 'I', NULL, 6400, 'OFICIAL MAYOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.128807', 'I', NULL, 6401, 'OFICIAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.149657', 'I', NULL, 6402, 'ESCRIBIENTE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.171062', 'I', NULL, 6403, 'ESCRIBIENTE AUXILIAR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.191784', 'I', NULL, 6404, 'AUXILIAR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.212896', 'I', NULL, 8301, 'SUPERVISOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.233999', 'I', NULL, 8400, 'JEFE DE SECCION', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.254784', 'I', NULL, 8401, 'ENCARGADO DE SECCION', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.275626', 'I', NULL, 8402, 'OFICIAL DE SERVICIO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.297131', 'I', NULL, 8403, 'MEDIO OFICIAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 10:08:16.317882', 'I', NULL, 8404, 'AYUDANTE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:40:36.556374', 'I', NULL, 1, 'JEFE DE DEPARTAMENTO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:41:18.183433', 'I', NULL, 2, 'JEFE DE DIVISION', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:41:55.427098', 'I', NULL, 3, 'OFICIAL SUPERIOR DE 1ERA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:42:33.296771', 'I', NULL, 4, 'OFICIAL SUPERIOR DE 2Da', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:43:19.801062', 'I', NULL, 5, 'JEFE DE DESPACHO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:44:03.66967', 'I', NULL, 6, 'OFICIAL MAYOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:44:31.317299', 'I', NULL, 7, 'OFICIAL PRINCIPAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:45:00.542295', 'I', NULL, 8, 'OFICIAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:45:34.957829', 'I', NULL, 9, 'OFICIAL AUXILIAR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:47:57.754825', 'I', NULL, 10, 'ESCRIBIENTE MAYOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:48:26.955712', 'I', NULL, 11, 'ESCRIBIENTE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:48:58.165266', 'I', NULL, 12, 'AUXILIAR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:50:09.802857', 'I', NULL, 13, 'AYUDANTE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-01 07:50:42.048837', 'U', NULL, 13, 'AYUDANTE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 101, 'JUEZ DE LA CORTE SUPREMA', 27886.869999999999, 0, 183601.929999999993, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 1501, 'SECRETARIO DE LA CORTE SUPREMA', 25120.2700000000004, 1, 151767.01999999999, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 1520, 'SECRET GRAL DE ADMINISTRACION', 25120.2700000000004, 1, 151767.01999999999, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 1504, 'SECRETARIO LETRADO C.SUPREMA', 22867.1100000000006, 1, 119142.899999999994, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 3501, 'DIRECTOR GENERAL', 22867.1100000000006, 1, 119142.899999999994, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 4001, 'SUBDIRECTOR GENERAL', 20078.4000000000015, 1, 99322.8099999999977, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 3502, 'DIRECTOR MEDICO', 20078.4000000000015, 1, 99322.8099999999977, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 4501, 'PERITO MEDICO', 20078.4000000000015, 1, 99322.8099999999977, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 4502, 'PERITO QUIMICO', 20078.4000000000015, 1, 99322.8099999999977, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 4507, 'PERITO', 20078.4000000000015, 1, 99322.8099999999977, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 4508, 'PERITO ABOGADO', 20078.4000000000015, 1, 99322.8099999999977, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 4503, 'PERITO CONTADOR', 20078.4000000000015, 1, 99322.8099999999977, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 4504, 'PERITO CALIGRAFO', 20078.4000000000015, 1, 99322.8099999999977, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 1507, 'SECRETARIO DE CAMARA', 18265.5400000000009, 1, 92142.6999999999971, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 3002, 'PROSECRETARIO LETRADO', 18265.5400000000009, 1, 92142.6300000000047, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 1511, 'SECRETARIO DE JUZGADO', 17708.2299999999996, 1, 86192.3399999999965, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 1518, 'SECRETARIO CONTABLE', 17708.2299999999996, 1, 86192.3800000000047, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 1519, 'SUBINTENDENTE', 17708.2299999999996, 1, 86192.3800000000047, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 2504, 'SUBSECRETARIO ADMINISTRATIVO', 17708.2299999999996, 1, 86192.3399999999965, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 3003, 'PROSECRETARIO JEFE', 17429.0699999999997, 1, 73049.320000000007, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 5501, 'JEFE DE DEPARTAMENTO', 17010.7700000000004, 1, 71417.0200000000041, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 6001, '2DO.JEFE DE DEPARTAMENTO', 14747.9500000000007, 1, 67325.5099999999948, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 3007, 'PROSECRETARIO ADMINISTRATIVO', 14747.9500000000007, 1, 67325.5500000000029, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 1, 'MINISTRO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 3, 'VOCAL DE CAMARA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 4, 'JUEZ DE TRIBUNALES', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 5, 'JUEZ DE 1° INSTANCIA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 6, 'JUEZ DE INSTRUCCIÓN', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 7, 'JUEZ CORRECCIONAL Y DE MENORES', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 8, 'JUEZ DE PAZ TITULAR - 1° CATEG.', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 9, 'JUEZ DE PAZ TITULAR - 2° CATEG.', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 10, 'JUEZ DE PAZ TITULAR - 3° CATEG.', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 11, 'JUEZ DE PAZ SUPLENTE - 1° CATEG.', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 12, 'JUEZ DE PAZ SUPLENTE - 2° CATEG.', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 13, 'JUEZ DE PAZ SUPLENTE - 3° CATEG.', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 14, 'ADMINISTRADOR GENERAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 15, 'FISCAL DE CAMARA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 16, 'DEFENSOR OFICIAL DE CAMARA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 17, 'FISCAL DE TRIBUNALES', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 18, 'SEC.GRAL. DE ACCESO A LA JUST. Y DERECHOS HUMANOS', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 19, 'SEC. ADMINISTRAT. DE SUPERINT.Y JUDICIAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 20, 'SECRETARIO DE SUPERINTENDENCIA DEL S.TJ', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 21, 'JEFE- SECRETARIA  APOYO INVESTIG.COMPLEJAS', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 22, 'SEC. LETRADO DE PROCURACIÓN GRAL.', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 23, 'FISCAL DE 1° INSTANCIA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 24, 'DEFENSOR OFICIAL DE 1° INSTANCIA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 25, 'DEFENSOR OFICIAL DEL TRABAJADOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 26, 'AGENTE FISCAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 27, 'DEFENSOR DE OFICIO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 28, 'SUB JEFE- SECRETARIA  APOYO INVESTIG. COMPLEJAS', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 29, 'SECRETARIO DE CAMARA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 30, 'DIRECTOR DE ADMINISTRACION', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 31, 'SEC. LETRADO DE TRIBUNALES', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 32, 'SEC. DE 1RA INSTANCIA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 33, 'SEC. JUZGADO DE INSTRUCCIÓN', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 34, 'SEC. CORRECCIONAL Y DE MENORES', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 35, 'SUB SECRETARIO TECNICO Y DE SERVICIO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 36, 'SUB SECRETARIO TÉCNICO CONTABLE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 37, 'DIRECTOR DEL CE.JU.ME.', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 38, 'DIRECTOR DE ARQUITECTURA JUDICIAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 39, 'SUB DIRECTOR DE ARQUITECTURA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 40, 'SUB DIRECTOR SUB-SECRET.INFORM.JURIDICA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 41, 'DIRECTOR DE INFORMATICA JURIDICA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 42, 'DIRECTOR DE BIBLIOTECA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 43, 'DIRECTOR DE ARCHIVO TRIBUNALES', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 44, 'SUB-DIRECTOR DE ADMINISTRACION', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 45, 'TESORERO DIRECCION ADMINISTRACIÓN', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 46, 'SUB-TESORERO DIRECCION ADMINISTRACIÓN', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 47, 'MEDICO DE TRIBUNALES', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 48, 'JEFE DE GABINETE DE GENÉTICA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 49, 'JEFE - INSPECCION JUSTICIA DE PAZ', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 50, 'JEFE - OFICINA MANDAMIENTOS', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 51, 'FUNCIONARIO ADJUNTO-SECR.ADM.DE SUPERIN.Y JUDICIAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 52, 'SUB-DIRECTOR DE BIBLIOTECA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 53, 'SUB-JEFE DE INSPECCION JUSTICIA DE PAZ', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 54, 'SECRETARIO TECNICO CONTABLE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 55, 'OFICIAL DE JUSTICIA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 56, 'SECRETARIO JUZG. PAZ 1° CATEGORÍA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 57, 'SECRETARIO JUZG. PAZ 2° CATEGORÍA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 58, 'JEFE - CUERPO MEDICO FORENSE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 59, 'SUB JEFE - CUERPO MEDICO FORENSE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 60, 'BIOQUIMICO - CUERPO MED.FORENSE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 61, 'CONTADOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 62, 'ARQUITECTO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 63, 'INGENIERO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 64, 'MEDIADOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 65, 'CO-MEDIADOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 66, 'PSICOLOGO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 67, 'LICENCIADO EN PSICOPEDAGOGIA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 68, 'LICENCIADO EN GENÉTICA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 69, 'LICENCIADO EN TRABAJO SOCIAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 70, 'PRO-SECRETARIO LETRADO DE PROCURACION GRAL.', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 71, 'SEC. ADMINIST. DE SUPER.Y JUD. EN INFORMATICA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 72, 'DIRECTORA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 73, 'SECRETARIO DE PLANEAMIENTO Y CONTROL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 74, 'SECRETARIO DE RESOLUCION ALTERNATIVA DE CONFLICTOS', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 75, 'MEDICO FORENSE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 76, 'ANALISTA DE SISTEMAS', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 77, 'SECRETARIO TECNICO INFORMATICO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 78, 'LICENCIADO EN ADMINISTRACION DE EMPRESAS', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 79, 'SECRETARIO GRAL. ADMINISTRAT. Y DE SUPERINT', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 80, 'JEFE DE DEPARTAMENTO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 81, 'JEFE DE DIVISION', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 82, 'OFICIAL SUPERIOR DE PRIMERA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 83, 'OFICIAL SUPERIOR DE SEGUNDA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 84, 'JEFE DE DESPACHO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 85, 'OFICIAL MAYOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 86, 'OFICIAL PRINCIPAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 87, 'OFICIAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 88, 'OFICIAL AUXILIAR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 89, 'ESCRIBIENTE MAYOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 90, 'ESCRIBIENTE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 91, 'AUXILIAR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 92, 'AUXILIAR SUPERIOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 93, 'AUXILIAR MAYOR', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 94, 'AUXILIAR PRINCIPAL TECNICO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 95, 'AUXILIAR TECNICO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 96, 'AUXILIAR DE PRIMERA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 97, 'AUXILIAR DE SEGUNDA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 98, 'AUXILIAR AYUDANTE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 99, 'AYUDANTE FORENSE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 100, 'AYUDANTE', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 101, 'OFICIAL DE JUSTICIA (AD-HOC)', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 102, 'CATEGORIA PRIMERA', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 103, 'ADSCRIPTO', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-10-31 09:58:58.905278', 'D', NULL, 2, 'PROCURADOR GENERAL', NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 6390, 'JEFE DE DESPACHO', 11910.1000000000004, 2, 57872.9300000000003, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 6400, 'OFICIAL MAYOR', 9929.67000000000007, 2, 50150.010000000002, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 6401, 'OFICIAL', 9034.47999999999956, 2, 43731.5299999999988, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 6402, 'ESCRIBIENTE', 7943.85999999999967, 2, 38359.6900000000023, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 6403, 'ESCRIBIENTE AUXILIAR', 6417.10000000000036, 2, 33899.260000000002, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 6404, 'AUXILIAR', 5234.60999999999967, 2, 30153.8899999999994, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 8301, 'SUPERVISOR', 11910.1000000000004, 3, 57872.9300000000003, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 8400, 'JEFE DE SECCION', 9929.67000000000007, 3, 50150.010000000002, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 8401, 'ENCARGADO DE SECCION', 9034.3700000000008, 3, 43731.4199999999983, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 8402, 'OFICIAL DE SERVICIO', 7943.85999999999967, 3, 38359.6900000000023, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 8403, 'MEDIO OFICIAL', 6417.10000000000036, 3, 35406.0899999999965, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 8404, 'AYUDANTE', 5234.60999999999967, 3, 31419.7700000000004, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 1, 'JEFE DE DEPARTAMENTO', 1800, 4, 25655.3899999999994, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 2, 'JEFE DE DIVISION', 1656, 4, 24281.369999999999, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 3, 'OFICIAL SUPERIOR DE 1ERA', 1602, 4, 23232.4300000000003, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 4, 'OFICIAL SUPERIOR DE 2Da', 1518, 4, 21371.380000000001, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 5, 'JEFE DE DESPACHO', 1461, 4, 20508.6599999999999, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 6, 'OFICIAL MAYOR', 1341, 4, 18433.1899999999987, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 7, 'OFICIAL PRINCIPAL', 1224, 4, 17151.4799999999996, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 8, 'OFICIAL', 1140, 4, 16022.5699999999997, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 9, 'OFICIAL AUXILIAR', 1050, 4, 14975.7399999999998, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 10, 'ESCRIBIENTE MAYOR', 956, 4, 13295.4400000000005, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 11, 'ESCRIBIENTE', 849, 4, 11909.7099999999991, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 12, 'AUXILIAR', 768, 4, 11056.3700000000008, NULL);
INSERT INTO public_auditoria.logs_categorias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_categoria, nombre, basico, partida, basico_total, id_convenio) VALUES ('postgres', '2018-11-12 22:06:23.995278', 'U', NULL, 13, 'AYUDANTE', 660, 4, 10053.3400000000001, NULL);


--
-- TOC entry 2850 (class 0 OID 42421)
-- Dependencies: 230
-- Data for Name: logs_convenios; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2917 (class 0 OID 65283)
-- Dependencies: 297
-- Data for Name: logs_conyugue; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_conyugue (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_conyugue, apeynom, sexo, dom_calle, dom_num, id_trabajador) VALUES ('postgres', '2018-11-24 22:28:47.997773', 'U', NULL, 1, 'DUARTE ORTELLADO PEDRO', 'M', 'LIBERTAD', 780, 21);
INSERT INTO public_auditoria.logs_conyugue (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_conyugue, apeynom, sexo, dom_calle, dom_num, id_trabajador) VALUES ('postgres', '2018-11-24 22:30:31.575353', 'U', NULL, 1, 'DUARTE ORTELLADO PEDRO', 'M', 'LIBERTAD', 780, 6);
INSERT INTO public_auditoria.logs_conyugue (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_conyugue, apeynom, sexo, dom_calle, dom_num, id_trabajador) VALUES ('toba', '2018-11-27 16:07:20.335084', 'I', 103008339, 2, 'RODRIGUEZ MANUEL', 'M', 'LIBERTAD', 234, 10);


--
-- TOC entry 2907 (class 0 OID 63295)
-- Dependencies: 287
-- Data for Name: logs_dcumentos; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2851 (class 0 OID 42427)
-- Dependencies: 231
-- Data for Name: logs_departamentos; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_departamentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) VALUES ('postgres', '2018-11-01 08:01:47.354659', 'D', NULL, 22222, 1, 'qq', 'qq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-14', NULL, NULL, 1, NULL, true);


--
-- TOC entry 2918 (class 0 OID 65289)
-- Dependencies: 298
-- Data for Name: logs_documentos; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2908 (class 0 OID 63301)
-- Dependencies: 288
-- Data for Name: logs_domicilio; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_domicilio (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador) VALUES ('toba', '2018-11-18 23:40:25.706693', 'I', 103006666, 1, 'aaa', 2323, '2018-11-19', 20);
INSERT INTO public_auditoria.logs_domicilio (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador) VALUES ('toba', '2018-11-18 23:40:33.991671', 'I', 103006667, 2, 'ww', 33, '2018-11-19', 20);
INSERT INTO public_auditoria.logs_domicilio (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador) VALUES ('toba', '2018-11-18 23:40:38.439942', 'U', 103006669, 1, 'aaa', 2323, '2018-11-19', 20);


--
-- TOC entry 2919 (class 0 OID 65295)
-- Dependencies: 299
-- Data for Name: logs_domicilios; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-24 22:07:30.094254', 'I', 103007664, 3, 'aaaaa', 1321, '2018-11-24', 29, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 2, 'ww', 33, '2018-11-19', 6, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 1, 'aaa', 2323, '2018-11-19', 6, 'AN');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:30:45.813132', 'U', NULL, 3, 'aaaaa', 1321, '2018-11-24', 8, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:32:14.712772', 'I', NULL, 4, 'aa', 77, NULL, 4, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:32:16.376844', 'U', NULL, 1, 'aaa', 2323, '2018-11-19', 1, 'AN');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:32:17.817071', 'U', NULL, 2, 'ww', 33, '2018-11-19', 2, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:32:19.057155', 'U', NULL, 3, 'aaaaa', 1321, '2018-11-24', 3, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:32:33.440955', 'I', NULL, 5, 'CC', 33, NULL, 5, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:32:47.953469', 'I', NULL, 6, 'EE', 45, NULL, 6, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:32:56.210972', 'I', NULL, 7, 'W', 33, NULL, 7, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 22:33:19.909182', 'I', NULL, 10, 'EEE', 5, NULL, 8, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-24 23:33:08.748643', 'D', NULL, 10, 'EEE', 5, NULL, 8, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-24 23:35:14.919112', 'U', 103007970, 5, 'CC', 33, '2018-11-24', 5, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-25 23:12:05.53501', 'I', 103008192, 12, 'ddd', 232, '2018-11-25', 9, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('postgres', '2018-11-25 23:14:00.745529', 'D', NULL, 12, 'ddd', 232, '2018-11-25', 9, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-25 23:18:16.79477', 'U', 103008205, 1, 'corrientes', 2323, '2018-11-19', 1, 'AN');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-25 23:18:54.504476', 'U', 103008210, 1, 'AV. corrientes', 2323, '2018-11-19', 1, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-25 23:20:13.382115', 'U', 103008226, 4, 'Av cocomarola', 77, '2018-11-25', 4, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-25 23:21:00.427887', 'U', 103008235, 3, 'San Luis', 1321, '2018-11-24', 3, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-25 23:21:38.198938', 'U', 103008243, 7, 'Jujuy', 33, '2018-11-25', 7, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-25 23:23:36.462148', 'U', 103008260, 2, 'Cordoba', 33, '2018-11-19', 2, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-25 23:24:39.867315', 'U', 103008268, 5, 'Entre Rios', 33, '2018-11-24', 5, 'AC');
INSERT INTO public_auditoria.logs_domicilios (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) VALUES ('toba', '2018-11-27 16:02:41.626391', 'I', 103008332, 13, 'LIBERTAD', 345, '2018-11-27', 10, 'AC');


--
-- TOC entry 2860 (class 0 OID 51953)
-- Dependencies: 240
-- Data for Name: logs_empresa; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2852 (class 0 OID 42433)
-- Dependencies: 232
-- Data for Name: logs_estados_civiles; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2883 (class 0 OID 62811)
-- Dependencies: 263
-- Data for Name: logs_examenes; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2884 (class 0 OID 62817)
-- Dependencies: 264
-- Data for Name: logs_examenes_trabajadores; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_examenes_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES ('toba', '2018-11-18 23:44:41.716032', 'I', 103006703, 1, 1, '2018-11-19', 1, NULL, 20, NULL);
INSERT INTO public_auditoria.logs_examenes_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES ('toba', '2018-11-18 23:44:48.050156', 'U', 103006705, 1, 1, '2018-11-19', 1, 'aaaaaa', 20, NULL);
INSERT INTO public_auditoria.logs_examenes_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES ('toba', '2018-11-18 23:54:07.750838', 'U', 103006722, 1, 1, '2018-11-19', 1, 'aaaaaa bbb', 20, NULL);
INSERT INTO public_auditoria.logs_examenes_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES ('toba', '2018-11-18 23:54:14.629417', 'U', 103006724, 1, 1, '2018-11-19', 2, 'aaaaaa bbb', 20, NULL);
INSERT INTO public_auditoria.logs_examenes_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 1, 1, '2018-11-19', 2, 'aaaaaa bbb', 6, NULL);
INSERT INTO public_auditoria.logs_examenes_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES ('toba', '2018-11-24 22:57:58.553078', 'I', 103007698, 2, 1, '2018-11-24', NULL, NULL, 6, '2018-11-27');
INSERT INTO public_auditoria.logs_examenes_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES ('toba', '2018-11-24 23:37:19.07667', 'U', 103007980, 2, 2, '2018-11-24', 2, NULL, 6, '2018-11-27');
INSERT INTO public_auditoria.logs_examenes_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) VALUES ('toba', '2018-11-27 16:38:11.687775', 'I', 103008361, 3, 1, '2018-11-27', 1, NULL, 10, NULL);


--
-- TOC entry 2853 (class 0 OID 42436)
-- Dependencies: 233
-- Data for Name: logs_formas_cotizacion; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2854 (class 0 OID 42442)
-- Dependencies: 234
-- Data for Name: logs_grupos_cotizaciones; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2865 (class 0 OID 53252)
-- Dependencies: 245
-- Data for Name: logs_hijos; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-12 22:35:24.898586', 'I', 103004265, 1, 'MANITTO SHARA', '2016-11-17', 17, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-13 08:54:57.258333', 'I', 103004852, 2, NULL, NULL, 20, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-13 08:55:19.155063', 'D', NULL, 2, NULL, NULL, 20, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-13 08:57:36.204879', 'I', 103004861, 3, 'DUEARTE ORTELLADO ARTURO', '2007-08-09', 20, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-13 08:58:27.334907', 'I', 103004866, 4, 'DUARTE ORTELLADO LEONARDO', '2011-08-25', 20, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-13 09:01:09.883442', 'I', 103004872, 5, 'DUARTE ORTELLADO VERONICA', '2017-05-16', 20, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-13 09:17:38.789064', 'I', 103004929, 6, 'MENDEZ JUAN', '2015-11-18', 21, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-16 00:58:05.960722', 'U', NULL, 1, 'MANITTO SHARA', '2016-11-17', 17, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-16 00:58:22.558526', 'U', NULL, 3, 'DUEARTE ORTELLADO ARTURO', '2007-08-09', 20, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-16 00:58:25.802737', 'U', NULL, 4, 'DUARTE ORTELLADO LEONARDO', '2011-08-25', 20, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-16 00:58:27.703439', 'U', NULL, 5, 'DUARTE ORTELLADO VERONICA', '2017-05-16', 20, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-16 00:58:32.098442', 'U', NULL, 6, 'MENDEZ JUAN', '2015-11-18', 21, NULL, NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-16 01:03:00.469166', 'I', 103005586, 7, 'AAAAA', '2017-05-16', 3, 'SI', NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-18 17:56:10.774783', 'I', 103006234, 8, 'DUEARTE ORTELLADO ARTURO', '2018-11-21', 3, 'NO', 'M');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-18 17:56:10.774783', 'U', 103006234, 7, 'AAAAA', '2017-05-16', 3, 'SI', 'F');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-18 17:56:22.528141', 'D', 103006238, 8, 'DUEARTE ORTELLADO ARTURO', '2018-11-21', 3, 'NO', 'M');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-19 01:11:13.252131', 'U', 103007112, 3, 'DUEARTE ORTELLADO ARTURO', '2007-08-09', 20, 'NO', 'F');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-19 01:11:13.252131', 'U', 103007112, 4, 'DUARTE ORTELLADO LEONARDO', '2011-08-25', 20, 'NO', 'F');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-19 01:11:13.252131', 'U', 103007112, 5, 'DUARTE ORTELLADO VERONICA', '2017-05-16', 20, 'NO', 'F');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-20 16:16:55.197138', 'U', 103007223, 3, 'DUEARTE ORTELLADO ARTURO', '2007-08-09', 20, 'NO', 'M');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-20 16:16:55.197138', 'U', 103007223, 4, 'DUARTE ORTELLADO LEONARDO', '2011-08-25', 20, 'NO', 'M');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-24 22:26:49.974739', 'U', NULL, 7, 'AAAAA', '2017-05-16', 1, 'SI', 'F');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-24 22:27:02.084811', 'U', NULL, 1, 'MANITTO SHARA', '2016-11-17', 3, 'NO', NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 5, 'DUARTE ORTELLADO VERONICA', '2017-05-16', 6, 'NO', 'F');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 3, 'DUEARTE ORTELLADO ARTURO', '2007-08-09', 6, 'NO', 'M');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 4, 'DUARTE ORTELLADO LEONARDO', '2011-08-25', 6, 'NO', 'M');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('postgres', '2018-11-24 22:30:42.13197', 'U', NULL, 6, 'MENDEZ JUAN', '2015-11-18', 7, 'NO', NULL);
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-25 23:19:28.703116', 'U', 103008217, 7, 'Benitez Camila', '2017-05-16', 1, 'SI', 'F');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-27 16:05:41.577542', 'I', 103008335, 9, 'PEREZ MARIO', '2017-11-14', 10, 'NO', 'M');
INSERT INTO public_auditoria.logs_hijos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) VALUES ('toba', '2018-11-27 16:05:41.577542', 'I', 103008335, 10, 'PEREZ MARTA', '2000-07-10', 10, 'SI', 'F');


--
-- TOC entry 2909 (class 0 OID 63307)
-- Dependencies: 289
-- Data for Name: logs_inasistencias; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_inasistencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador) VALUES ('toba', '2018-11-18 18:45:08.317138', 'I', 103006411, 1, 'J', NULL, '2018-11-18', '2018-11-18', 'ddd', 18);
INSERT INTO public_auditoria.logs_inasistencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador) VALUES ('toba', '2018-11-18 22:48:16.066475', 'I', 103006457, 2, 'J', NULL, '2018-11-18', NULL, 'aaaaa', 20);
INSERT INTO public_auditoria.logs_inasistencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador) VALUES ('toba', '2018-11-18 22:55:54.818422', 'U', 103006472, 2, 'I', NULL, '2018-11-18', NULL, 'aaaaacccccc', 20);
INSERT INTO public_auditoria.logs_inasistencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador) VALUES ('postgres', '2018-11-24 22:27:04.420733', 'U', NULL, 1, 'J', NULL, '2018-11-18', '2018-11-18', 'ddd', 4);
INSERT INTO public_auditoria.logs_inasistencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 2, 'I', NULL, '2018-11-18', NULL, 'aaaaacccccc', 6);
INSERT INTO public_auditoria.logs_inasistencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador) VALUES ('toba', '2018-11-24 23:17:14.954036', 'I', 103007837, 3, 'T', NULL, '2018-11-25', NULL, NULL, 6);
INSERT INTO public_auditoria.logs_inasistencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador) VALUES ('toba', '2018-11-27 16:10:23.27241', 'I', 103008343, 4, 'T', NULL, '2018-11-27', NULL, NULL, 10);


--
-- TOC entry 2885 (class 0 OID 62823)
-- Dependencies: 265
-- Data for Name: logs_licencias; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_licencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES ('postgres', '2018-11-18 17:03:50.139639', 'I', NULL, 19, 'LICENCIA POR MATERNIDAD', 'LICENCIA POR MATERNIDAD', 5, NULL);
INSERT INTO public_auditoria.logs_licencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_licencia, nombre, descripcion, id_tipo_licencia, dias) VALUES ('postgres', '2018-11-18 17:04:23.036311', 'I', NULL, 20, 'LICENCIA POR ENFERMEDAD', 'LICENCIA POR ENFERMEDAD', 6, NULL);


--
-- TOC entry 2886 (class 0 OID 62829)
-- Dependencies: 266
-- Data for Name: logs_licencias_trabajadores; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_licencias_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_trabajador, observacion, id_licencia) VALUES ('toba', '2018-11-18 18:41:03.163875', 'I', 103006390, 1, NULL, '2018-11-18', '2018-11-18', 20, NULL, NULL);
INSERT INTO public_auditoria.logs_licencias_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_trabajador, observacion, id_licencia) VALUES ('toba', '2018-11-19 00:02:45.569282', 'I', 103006776, 2, 1, '2018-11-19', '2018-11-19', 20, 'aaa', 5);
INSERT INTO public_auditoria.logs_licencias_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_trabajador, observacion, id_licencia) VALUES ('toba', '2018-11-19 00:03:22.716498', 'U', 103006787, 2, 1, '2018-11-19', '2018-11-19', 20, 'aaa cccc', 5);
INSERT INTO public_auditoria.logs_licencias_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_trabajador, observacion, id_licencia) VALUES ('postgres', '2018-11-19 00:03:35.351666', 'D', NULL, 1, NULL, '2018-11-18', '2018-11-18', 20, NULL, NULL);
INSERT INTO public_auditoria.logs_licencias_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_trabajador, observacion, id_licencia) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 2, 1, '2018-11-19', '2018-11-19', 6, 'aaa cccc', 5);
INSERT INTO public_auditoria.logs_licencias_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_trabajador, observacion, id_licencia) VALUES ('toba', '2018-11-27 16:41:47.704525', 'I', 103008369, 3, 2, '2018-11-27', '2018-11-29', 10, NULL, 1);


--
-- TOC entry 2830 (class 0 OID 41587)
-- Dependencies: 210
-- Data for Name: logs_localidades; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2861 (class 0 OID 51959)
-- Dependencies: 241
-- Data for Name: logs_obras_sociales; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2831 (class 0 OID 41593)
-- Dependencies: 211
-- Data for Name: logs_paises; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2855 (class 0 OID 42448)
-- Dependencies: 235
-- Data for Name: logs_profesiones; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_profesiones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_profesion, nombre) VALUES ('postgres', '2018-11-12 22:03:07.154022', 'D', NULL, 9, 'Empleado');
INSERT INTO public_auditoria.logs_profesiones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_profesion, nombre) VALUES ('postgres', '2018-11-12 22:03:11.60996', 'D', NULL, 11, 'Ama de casa');
INSERT INTO public_auditoria.logs_profesiones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_profesion, nombre) VALUES ('postgres', '2018-11-21 23:51:50.051218', 'U', NULL, 4, 'Analista en sistemas');
INSERT INTO public_auditoria.logs_profesiones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_profesion, nombre) VALUES ('postgres', '2018-11-21 23:51:56.019348', 'U', NULL, 5, 'Abogado');
INSERT INTO public_auditoria.logs_profesiones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_profesion, nombre) VALUES ('postgres', '2018-11-21 23:52:09.422374', 'U', NULL, 5, 'Ingeniero en sistemas');
INSERT INTO public_auditoria.logs_profesiones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_profesion, nombre) VALUES ('postgres', '2018-11-21 23:52:23.668838', 'U', NULL, 5, 'Licenciado en sistemas');


--
-- TOC entry 2832 (class 0 OID 41599)
-- Dependencies: 212
-- Data for Name: logs_provincias; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2887 (class 0 OID 62835)
-- Dependencies: 267
-- Data for Name: logs_resultados_examenes; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2910 (class 0 OID 63313)
-- Dependencies: 290
-- Data for Name: logs_sanciones_disciplinarias; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2862 (class 0 OID 52298)
-- Dependencies: 242
-- Data for Name: logs_situaciones; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-06 07:48:35.846905', 'I', 103003359, 6, 8, 240, 1, 1, 9, 1, 5, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-12 22:35:24.898586', 'I', 103004265, 7, 17, 265, 1, 1, 8, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 06:59:30.126511', 'I', 103004574, 8, 18, 273, 1, 1, 12, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 07:32:10.576922', 'I', 103004660, 9, 24, 300, 1, 1, 8, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-13 07:45:14.522868', 'D', NULL, 9, 24, 300, 1, 1, 8, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 07:46:03.767723', 'I', 103004690, 10, 20, 300, 1, 1, 8, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 07:55:16.092288', 'I', 103004725, 11, 3, 300, 1, 1, 7, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 07:59:21.397405', 'I', 103004732, 12, 3, 300, 1, 1, 11, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-13 08:02:36.262828', 'D', NULL, 12, 3, 300, 1, 1, 11, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-13 08:02:36.274851', 'D', NULL, 11, 3, 300, 1, 1, 7, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 08:03:53.273455', 'I', 103004744, 13, 3, 300, 1, 1, 8, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-13 08:14:21.926051', 'D', NULL, 13, 3, 300, 1, 1, 8, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 08:14:53.030173', 'I', 103004751, 14, 3, 300, 1, 1, 11, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-13 08:15:59.002177', 'D', NULL, 14, 3, 300, 1, 1, 11, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 08:20:35.045887', 'I', 103004762, 15, 3, 300, 1, 1, 9, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-13 08:29:57.436244', 'D', NULL, 15, 3, 300, 1, 1, 9, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 08:31:02.662164', 'U', 103004781, 3, 3, 300, 1, 1, 11, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 08:31:28.616108', 'U', 103004787, 3, 3, 300, 1, 1, 7, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 09:17:38.789064', 'I', 103004929, 16, 21, 8, 1, 1, 11, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('admin', '2018-11-13 11:28:57.035078', 'I', 103005010, 17, 25, 273, 1, 1, 11, 1, 5, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('admin', '2018-11-13 11:31:37.251728', 'I', 103005023, 18, 26, 275, 1, 1, 1, 1, 7, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-13 11:35:41.93006', 'I', 103005059, 19, 27, 236, 1, 1, 7, 1, 4, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-19 00:19:50.084176', 'I', 103006809, 20, 20, 300, 1, 1, 8, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-21 23:50:27.674347', 'D', NULL, 19, 27, 236, 1, 1, 7, 1, 4, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-21 23:50:27.68623', 'D', NULL, 18, 26, 275, 1, 1, 1, 1, 7, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-21 23:50:27.690845', 'D', NULL, 17, 25, 273, 1, 1, 11, 1, 5, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-21 23:50:27.693893', 'D', NULL, 16, 21, 8, 1, 1, 11, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-21 23:53:40.617206', 'D', NULL, 20, 20, 300, 1, 1, 8, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-21 23:54:37.488942', 'I', 103007412, 21, 20, 300, 1, 1, 8, 1, 4, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-22 00:15:15.504599', 'D', NULL, 21, 20, 300, 1, 1, 8, 1, 4, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-22 00:24:48.634264', 'U', 103007487, 10, 20, 300, 1, 1, 8, 1, 4, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-22 00:25:27.456631', 'I', 103007495, 22, 21, 9, 1, 1, 11, 1, 6, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-22 00:27:53.551827', 'U', 103007506, 22, 21, 9, 1, 1, 12, 1, 6, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-24 22:26:49.974739', 'U', NULL, 3, 1, 300, 1, 1, 7, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-24 22:26:59.804541', 'U', NULL, 6, 2, 240, 1, 1, 9, 1, 5, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-24 22:27:02.084811', 'U', NULL, 7, 3, 265, 1, 1, 8, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-24 22:27:04.420733', 'U', NULL, 8, 4, 273, 1, 1, 12, 1, 10, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 10, 6, 300, 1, 1, 8, 1, 4, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('postgres', '2018-11-24 22:30:42.13197', 'U', NULL, 22, 7, 9, 1, 1, 12, 1, 6, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-24 22:55:09.789889', 'U', 103007681, 10, 6, 300, 1, 1, 7, 1, 4, 8);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-24 23:34:50.9657', 'I', 103007966, 23, 5, 300, 1, 1, 12, 1, 4, 6);
INSERT INTO public_auditoria.logs_situaciones (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) VALUES ('toba', '2018-11-27 16:43:53.484784', 'I', 103008374, 24, 10, 300, 1, 1, 12, 1, 4, 6);


--
-- TOC entry 2888 (class 0 OID 62841)
-- Dependencies: 268
-- Data for Name: logs_tipos_asignaciones; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2911 (class 0 OID 63319)
-- Dependencies: 291
-- Data for Name: logs_tipos_certificados; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2856 (class 0 OID 42454)
-- Dependencies: 236
-- Data for Name: logs_tipos_documentos; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.702658', 'D', NULL, 'FISICA', 'DNI5', 'DNI5', 136);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.715676', 'D', NULL, 'FISICA', 'L5', 'L5', 134);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.718693', 'D', NULL, 'FISICA', 'DNI11', 'DNI11', 133);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.721347', 'D', NULL, 'FISICA', 'DNI-ES', 'DNI-ES', 132);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.724058', 'D', NULL, 'FISICA', 'L', 'L', 131);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.727748', 'D', NULL, 'FISICA', 'L6', 'L6', 130);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.730401', 'D', NULL, 'FISICA', 'DNI13', 'DNI13', 129);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.73267', 'D', NULL, 'FISICA', 'LD', 'LD', 128);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.734945', 'D', NULL, 'FISICA', 'DNI-EZ', 'DNI-EZ', 127);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.738273', 'D', NULL, 'FISICA', 'DNI8', 'DNI8', 126);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.740676', 'D', NULL, 'FISICA', 'DNI-EC', 'DNI-EC', 125);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.74349', 'D', NULL, 'FISICA', 'DNI9', 'DNI9', 124);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.746065', 'D', NULL, 'FISICA', 'DNI10', 'DNI10', 123);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.749393', 'D', NULL, 'FISICA', 'LT', 'LT', 122);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.75166', 'D', NULL, 'FISICA', 'DNI6', 'DNI6', 121);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.754013', 'D', NULL, 'FISICA', 'DNI-EE', 'DNI-EE', 120);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.756371', 'D', NULL, 'FISICA', 'DNI-EB', 'DNI-EB', 119);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.759768', 'D', NULL, 'FISICA', 'DNIC', 'DNIC', 118);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.761899', 'D', NULL, 'FISICA', 'DNIT', 'DNIT', 117);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.763993', 'D', NULL, 'FISICA', 'DNI-EA', 'DNI-EA', 116);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:07.766075', 'D', NULL, 'FISICA', 'DNI14', 'DNI14', 138);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:14.45508', 'D', NULL, 'FISICA', 'DNI', 'DNI', 115);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:14.457921', 'D', NULL, 'FISICA', 'DNI12', 'DNI12', 114);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:14.461147', 'D', NULL, 'FISICA', 'DNI-ED', 'DNI-ED', 113);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:14.463362', 'D', NULL, 'FISICA', 'DNID', 'DNID', 112);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.598565', 'D', NULL, 'JURIDICA', 'S.C.A.', 'Sociedad Comandita por Acciones', 19);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.60127', 'D', NULL, 'JURIDICA', 'S.A. May. Est.', 'Sociedad Anonima Mayoritaria Estatal', 18);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.603434', 'D', NULL, 'JURIDICA', 'Asoc. Civ.', 'Asociacion Civil', 17);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.605612', 'D', NULL, 'JURIDICA', 'S.A.', 'Sociedad Anonima', 4);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.608833', 'D', NULL, 'JURIDICA', 'UTE', 'Union Transitoria de Empresas', 28);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.610975', 'D', NULL, 'JURIDICA', 'S.A.C.I.F.', 'S.A.C.I.F.', 14);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.612743', 'D', NULL, 'JURIDICA', 'S. del Est.', 'Sociedad del Estado', 13);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.614767', 'D', NULL, 'JURIDICA', 'S.R.L.', 'Sociedad Responsabilidad Limitada', 12);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.618033', 'D', NULL, 'JURIDICA', 'Ent. Finan.', 'Entidad Financiera', 11);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.619952', 'D', NULL, 'JURIDICA', 'S. en P.', 'Sociedad', 10);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.621656', 'D', NULL, 'JURIDICA', 'S. De H.', 'Sociedad de Hecho', 9);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.623363', 'D', NULL, 'JURIDICA', 'S. Coop.', 'Sociedad Cooperativa', 8);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.626153', 'D', NULL, 'JURIDICA', 'S.C.S.', 'Sociedad Comandita Simple', 7);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.628077', 'D', NULL, 'JURIDICA', 'S.C.', 'Sociedad Comandita', 6);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:23.629815', 'D', NULL, 'JURIDICA', 'SAICyF', 'S.A.I.C. y F.', 33);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:32.534554', 'D', NULL, 'ORGANISMO', 'CUIT', 'C.U.I.T.', 21);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:32.537165', 'D', NULL, 'JURIDICA', 'FIDEI', 'Fideicomiso', 32);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:32.539621', 'D', NULL, 'JURIDICA', 'Corp.', 'Corporacion', 70);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:32.542761', 'D', NULL, 'JURIDICA', 'SM', 'Sociedad Mutual', 30);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:32.544873', 'D', NULL, 'JURIDICA', 'S.C. e I.', 'Sociedad Comandita e Industrial', 5);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:32.547028', 'D', NULL, 'JURIDICA', 'S. en. Mix.', 'Sociedad Economica Mixta', 20);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:37.47063', 'D', NULL, 'JURIDICA', 'LTDA', 'LTDA', 25);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:28:57.998315', 'D', NULL, 'FISICA', 'CI Bol', 'Cedula Identidad Bolivia', 29);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:29:18.862222', 'D', NULL, 'FISICA', 'Adm.', 'Administrador', 35);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:29:28.502022', 'D', NULL, 'FISICA', 'DNI7', 'DNI7', 137);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:29:34.710246', 'D', NULL, 'ESPECIAL', 'Esp.', 'Especial', 100);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:29:44.246014', 'D', NULL, 'FISICA', 'DNI-NIF (esp)', 'DNI-NIF (esp)', 31);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:29:49.84592', 'D', NULL, 'FISICA', 'M.I. Bol', 'M.I. Bol', 34);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:29:54.18203', 'D', NULL, 'FISICA', 'CI chile', 'CI chile', 36);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:29:54.184735', 'D', NULL, 'FISICA', 'CI Peru        ', 'CI Peru        ', 37);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:30:06.798018', 'D', NULL, 'FISICA', 'DNI-M', 'Documento Nacional de Ident (Masculino)', 1);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:30:17.110615', 'U', NULL, 'FISICA', 'DNI-F', 'Documento Nacional de Identidad', 23);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:30:20.692797', 'U', NULL, 'FISICA', 'DNI', 'Documento Nacional de Identidad', 23);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:30:28.469502', 'D', NULL, 'FISICA', 'CI Py', 'Cedula Identidad - Paraguay', 27);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:30:28.472169', 'D', NULL, 'FISICA', 'CI Brasil', 'Cedula Identidad - Brasil', 26);
INSERT INTO public_auditoria.logs_tipos_documentos (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, tipo_persona, nombre, descripcion, id_tipo_documento) VALUES ('postgres', '2018-11-12 23:30:38.109542', 'D', NULL, 'FISICA', 'Indoc.', 'Indocumentado', 24);


--
-- TOC entry 2889 (class 0 OID 62847)
-- Dependencies: 269
-- Data for Name: logs_tipos_examenes; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



--
-- TOC entry 2890 (class 0 OID 62853)
-- Dependencies: 270
-- Data for Name: logs_tipos_licencias; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_tipos_licencias (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_tipo_licencia, nombre) VALUES ('postgres', '2018-11-18 17:02:46.257402', 'U', NULL, 2, 'LICENCIAS ESPECIALES');


--
-- TOC entry 2857 (class 0 OID 42460)
-- Dependencies: 237
-- Data for Name: logs_tipos_parientes; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_tipos_parientes (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_tipo_parentesco, nombre) VALUES ('postgres', '2018-10-30 08:40:00.651198', 'I', NULL, 0, 'Ninguno');


--
-- TOC entry 2866 (class 0 OID 53305)
-- Dependencies: 246
-- Data for Name: logs_trabajadores; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--

INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-12 22:35:24.898586', 'I', 103004265, 17, 23, 28678987, 'MANITTO ERCILIA', 'AL', '2018-11-12', NULL, 'LABALLE', 1212, NULL, NULL, 3350, 1518, 3764, '4234565 ', 3764, '334565  ', NULL, '1986-11-19', NULL, 'MANITTO JUANJO', 'RODRIGUEZ MARIA ESTER', 'F', 'S', NULL, NULL, 1, NULL, NULL, '8828678987', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 06:59:30.126511', 'I', 103004574, 18, 23, 30897876, 'FERNANDEZ JORGE', 'AL', '2018-11-13', NULL, 'ALVEAR', 234, NULL, NULL, 3350, 1463, 3758, '426798  ', 3758, '356754  ', NULL, '2018-11-13', NULL, 'FERNANDEZ JOSE', 'CASTROCARABIA MARIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '5530897976', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:05:05.110083', 'I', 103004589, 19, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2018-11-12', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, 1518, 3764, '426798  ', 3764, '213454  ', NULL, '2018-11-12', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'C', NULL, NULL, 1, NULL, NULL, '4523.567.899', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:06:51.204821', 'I', 103004601, 20, 23, 29895984, 'ZACHARSKI SANDRA', 'AL', '2018-10-29', '2018-10-29', NULL, NULL, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1983-05-01', NULL, 'ZACHARSKI ALBERTO', 'BRESZINSKI VERONICA', 'F', 'S', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:25:43.734956', 'I', 103004608, 21, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2018-11-12', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '2018-11-12', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'C', NULL, 'probando', 1, NULL, NULL, '4523.567.899', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:27:16.311887', 'I', 103004629, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:28:19.836538', 'I', 103004643, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-13 07:29:20.649967', 'D', NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-13 07:29:20.663808', 'D', NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-13 07:29:26.317572', 'D', NULL, 9, NULL, NULL, NULL, 'AL', '2018-11-12', '2018-11-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-12', NULL, NULL, NULL, 'F', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-13 07:30:09.077085', 'U', NULL, 20, 23, 29895984, 'ZACHARSKI SANDRA', 'AL', '2018-10-29', '2018-10-29', NULL, NULL, NULL, NULL, NULL, 1518, 3764, '224655  ', NULL, NULL, NULL, '1983-05-01', NULL, 'ZACHARSKI ALBERTO', 'BRESZINSKI VERONICA', 'F', 'S', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:32:10.576922', 'I', 103004660, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-13 07:45:28.14631', 'D', NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:52:49.421759', 'U', 103004712, 3, 23, 29895984, 'BENITEZ JUAN', 'AL', '2018-10-29', '2018-10-29', NULL, NULL, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'F', '1', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:54:08.064862', 'U', 103004718, 3, 23, 29895980, 'BENITEZ JUAN', 'AL', '2018-10-29', '2018-10-29', 'ALVEAR', 200, NULL, NULL, NULL, 1469, 3764, '224655  ', NULL, NULL, NULL, '1982-05-30', NULL, 'BENITEZ MARIO', 'PEREZ ROSARIO', 'M', 'S', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:55:16.092288', 'U', 103004725, 3, 23, 29895980, 'BENITEZ JUAN', 'AL', '2018-10-29', '2018-10-29', 'ALVEAR', 200, NULL, NULL, NULL, 1465, 3764, '224655  ', NULL, NULL, NULL, '1982-05-30', NULL, 'BENITEZ MARIO', 'PEREZ ROSARIO', 'M', 'S', NULL, NULL, 1, NULL, NULL, '2329895980', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 07:59:21.397405', 'U', 103004732, 3, 23, 29895980, 'BENITEZ JUAN', 'AL', '2018-10-29', '2018-10-29', 'ALVEAR', 200, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1982-05-30', NULL, 'BENITEZ MARIO', 'PEREZ ROSARIO', 'M', 'S', NULL, NULL, 1, NULL, NULL, '2329895980', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 08:14:53.030173', 'U', 103004751, 3, 23, 29895980, 'BENITEZ JUAN', 'AL', '2018-10-29', NULL, 'ALVEAR', 200, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1982-05-30', NULL, 'BENITEZ MARIO', 'PEREZ ROSARIO', 'M', 'S', NULL, NULL, 1, NULL, NULL, '2329895980', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 08:54:57.258333', 'U', 103004852, 20, 23, 29895984, 'ZACHARSKI SANDRA', 'AL', '2018-10-29', '2018-10-29', NULL, NULL, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1983-05-01', NULL, 'ZACHARSKI ALBERTO', 'BRESZINSKI VERONICA', 'F', 'S', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 09:13:40.371548', 'U', 103004913, 21, 23, 26564328, 'MENDEZ GUSTAVO', 'AL', '2018-11-12', NULL, 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '2018-11-12', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'C', NULL, 'probando', 1, NULL, NULL, '564322222', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 09:25:17.104539', 'U', 103004934, 8, 23, 28987345, 'PEREZ MARIA DE LOS ANGELES', 'AL', '2018-11-06', NULL, 'LIBERTAD', 21, NULL, NULL, 3350, NULL, 3764, '224677  ', 3764, '213499  ', NULL, '2018-11-06', NULL, 'PEREZ JUAN', 'MARAVILLA MARTA', 'F', 'S', NULL, NULL, 1, 0, 9, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('admin', '2018-11-13 11:25:28.405687', 'I', 103004997, 25, 2, NULL, 'FAGUNDEZ OSCAR', 'AL', '2018-11-13', '2018-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13', NULL, 'FAGUNDES ERNESTOR', NULL, 'F', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('admin', '2018-11-13 11:27:40.55776', 'I', 103005002, 26, NULL, NULL, 'KRAINSKI GABRIELA', 'AL', '2018-11-13', '2018-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('admin', '2018-11-13 11:28:57.035078', 'U', 103005010, 25, 2, 23456788, 'FAGUNDEZ OSCAR', 'AL', '2018-11-13', NULL, 'AV CORRIENTES', 1234, NULL, NULL, NULL, 1463, NULL, NULL, NULL, NULL, NULL, '2018-11-13', NULL, 'FAGUNDES ERNESTOR', NULL, 'F', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('admin', '2018-11-13 11:31:37.251728', 'U', 103005023, 26, 23, 30897654, 'KRAINSKI GABRIELA', 'AL', '2018-11-13', '2018-11-13', 'las heras', 77, NULL, NULL, 3350, 1463, 3758, '423546  ', NULL, NULL, NULL, '1988-11-21', NULL, 'KRAISKI JUAN', 'PERES MARIA', 'F', 'S', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-13 11:35:41.93006', 'I', 103005059, 27, 15, 23456543, 'FRANCO MARIA', 'AL', '2018-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2080-11-13', NULL, NULL, NULL, 'F', 'C', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-19 00:19:50.084176', 'U', 103006809, 20, 23, 29895984, 'ZACHARSKI SANDRA', 'AL', '2018-10-29', '2018-10-29', NULL, NULL, NULL, NULL, NULL, 1463, 3764, '224655  ', NULL, NULL, NULL, '1983-05-01', NULL, 'ZACHARSKI ALBERTO', 'BRESZINSKI VERONICA', 'F', 'S', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-21 23:48:30.132547', 'I', 103007399, 28, 15, 1231313, 'aaa', 'AL', '2018-11-22', '2018-11-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-21 23:49:20.946333', 'D', NULL, 28, 15, 1231313, 'aaa', 'AL', '2018-11-22', '2018-11-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-21 23:50:50.465602', 'D', NULL, 27, 15, 23456543, 'FRANCO MARIA', 'AL', '2018-11-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2080-11-13', NULL, NULL, NULL, 'F', 'C', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-21 23:50:50.485905', 'D', NULL, 26, 23, 30897654, 'KRAINSKI GABRIELA', 'AL', '2018-11-13', '2018-11-13', 'las heras', 77, NULL, NULL, 3350, 1463, 3758, '423546  ', NULL, NULL, NULL, '1988-11-21', NULL, 'KRAISKI JUAN', 'PERES MARIA', 'F', 'S', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-21 23:50:50.489441', 'D', NULL, 25, 2, 23456788, 'FAGUNDEZ OSCAR', 'AL', '2018-11-13', NULL, 'AV CORRIENTES', 1234, NULL, NULL, NULL, 1463, NULL, NULL, NULL, NULL, NULL, '2018-11-13', NULL, 'FAGUNDES ERNESTOR', NULL, 'F', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-21 23:54:37.488942', 'U', 103007412, 20, 23, 29895984, 'ZACHARSKI SANDRA', 'AL', '2018-10-29', '2018-10-29', NULL, NULL, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1983-05-01', NULL, 'ZACHARSKI ALBERTO', 'BRESZINSKI VERONICA', 'F', 'S', NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-22 00:29:45.129149', 'U', 103007527, 19, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2018-11-12', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '2018-11-12', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '4523.567.899', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-22 00:32:15.218365', 'U', 103007535, 19, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2018-11-12', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, 1612, 3764, '426798  ', 3764, '213454  ', NULL, '2018-11-12', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '4523.567.899', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-22 00:35:15.773488', 'U', 103007558, 19, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2000-11-21', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '2018-11-12', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '4523.567.899', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-22 00:35:56.604865', 'U', 103007562, 19, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2018-11-04', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '2000-11-21', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '4523.567.899', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-22 00:36:13.603629', 'U', 103007566, 19, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2018-11-04', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '1990-11-21', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '4523.567.899', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-24 22:07:30.094254', 'I', 103007664, 29, 15, 1231313, 'aaa', 'AL', '2018-11-24', '2018-11-24', 'aaaaa', 1321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 34343453453);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-24 22:26:49.974739', 'U', NULL, 1, 23, 29895980, 'BENITEZ JUAN', 'AL', '2018-10-29', NULL, 'ALVEAR', 200, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1982-05-30', NULL, 'BENITEZ MARIO', 'PEREZ ROSARIO', 'M', 'S', NULL, NULL, 1, NULL, NULL, '2329895980', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-24 22:26:59.804541', 'U', NULL, 2, 23, 28987345, 'PEREZ MARIA DE LOS ANGELES', 'AL', '2018-11-06', NULL, 'LIBERTAD', 21, NULL, NULL, 3350, NULL, 3764, '224677  ', 3764, '213499  ', NULL, '2018-11-06', NULL, 'PEREZ JUAN', 'MARAVILLA MARTA', 'F', 'S', NULL, NULL, 1, 0, 9, NULL, NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-24 22:27:02.084811', 'U', NULL, 3, 23, 28678987, 'MANITTO ERCILIA', 'AL', '2018-11-12', NULL, 'LABALLE', 1212, NULL, NULL, 3350, 1518, 3764, '4234565 ', 3764, '334565  ', NULL, '1986-11-19', NULL, 'MANITTO JUANJO', 'RODRIGUEZ MARIA ESTER', 'F', 'S', NULL, NULL, 1, NULL, NULL, '8828678987', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-24 22:27:04.420733', 'U', NULL, 4, 23, 30897876, 'FERNANDEZ JORGE', 'AL', '2018-11-13', NULL, 'ALVEAR', 234, NULL, NULL, 3350, 1463, 3758, '426798  ', 3758, '356754  ', NULL, '2018-11-13', NULL, 'FERNANDEZ JOSE', 'CASTROCARABIA MARIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '5530897976', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-24 22:27:06.568347', 'U', NULL, 5, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2018-11-04', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '1990-11-21', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '4523.567.899', 34343453453);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-24 22:29:13.525127', 'U', NULL, 6, 23, 29895984, 'ZACHARSKI SANDRA', 'AL', '2018-10-29', '2018-10-29', NULL, NULL, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1983-05-01', NULL, 'ZACHARSKI ALBERTO', 'BRESZINSKI VERONICA', 'F', 'S', NULL, NULL, 1, NULL, NULL, NULL, 329895984);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-24 22:30:42.13197', 'U', NULL, 7, 23, 26564328, 'MENDEZ GUSTAVO', 'AL', '2018-11-12', NULL, 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '2018-11-12', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'C', NULL, 'probando', 1, NULL, NULL, '564322222', NULL);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-24 22:30:45.813132', 'U', NULL, 8, 15, 1231313, 'aaa', 'AL', '2018-11-24', '2018-11-24', 'aaaaa', 1321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 34343453453);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-24 23:33:24.106808', 'D', NULL, 8, 15, 1231313, 'aaa', 'AL', '2018-11-24', '2018-11-24', 'aaaaa', 1321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 34343453453);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-25 23:12:05.53501', 'I', 103008192, 9, 15, 32332342, 'aa', 'AL', '2018-11-25', '2018-11-25', 'ddd', 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-25', NULL, NULL, NULL, 'F', 'C', NULL, NULL, 1, NULL, NULL, NULL, 23423422);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('postgres', '2018-11-25 23:14:14.144938', 'D', NULL, 9, 15, 32332342, 'aa', 'AL', '2018-11-25', '2018-11-25', 'ddd', 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-25', NULL, NULL, NULL, 'F', 'C', NULL, NULL, 1, NULL, NULL, NULL, 23423422);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-25 23:22:35.7972', 'U', 103008253, 7, 23, 26564328, 'MENDEZ GUSTAVO', 'AL', '2017-11-15', NULL, 'RIOJA', 456, NULL, NULL, 3350, NULL, 3764, '426798  ', 3764, '213454  ', NULL, '2018-11-12', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'C', NULL, 'probando', 1, NULL, NULL, '564322222', 564322222);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-25 23:28:59.398654', 'U', 103008277, 5, 23, 23567899, 'RODRIGUEZ PABLO', 'AL', '2018-11-04', '2018-11-12', 'RIOJA', 456, NULL, NULL, 3350, 1518, 3764, '426798  ', 3764, '213454  ', NULL, '1990-11-21', NULL, 'RODRIGUEZ PEPE', 'SANTAL LUCIA', 'M', 'S', NULL, NULL, 1, NULL, NULL, '4523.567.899', 34343453453);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-27 16:02:41.626391', 'I', 103008332, 10, 23, 29893983, 'PEREZ JUAN', 'AL', '2018-11-27', NULL, 'LIBERTAD', 345, NULL, NULL, NULL, 1463, NULL, NULL, NULL, NULL, NULL, '1984-11-27', NULL, NULL, NULL, 'M', 'C', NULL, NULL, 1, NULL, NULL, '987', 4298939833);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2018-11-27 16:49:19.059086', 'U', 103008380, 10, 23, 29893983, 'PEREZ JUAN', 'BA', '2018-11-27', '2018-11-27', 'LIBERTAD', 345, NULL, NULL, NULL, 1463, NULL, NULL, NULL, NULL, NULL, '1984-11-27', NULL, NULL, NULL, 'M', 'C', NULL, NULL, 1, NULL, NULL, '987', 4298939833);
INSERT INTO public_auditoria.logs_trabajadores (auditoria_usuario, auditoria_fecha, auditoria_operacion, auditoria_id_solicitud, id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) VALUES ('toba', '2019-04-06 23:01:47.511459', 'U', 103011640, 1, 23, 29895980, 'BENITEZ JUAN', 'AL', '2018-10-29', NULL, 'ALVEAR', 200, NULL, NULL, NULL, NULL, 3764, '224655  ', NULL, NULL, NULL, '1982-05-30', NULL, 'BENITEZ MARIO', 'PEREZ ROSARIO', 'M', 'S', NULL, NULL, 1, NULL, NULL, '2329895980', 2223);


--
-- TOC entry 2833 (class 0 OID 41614)
-- Dependencies: 213
-- Data for Name: logs_vinculos_familiares; Type: TABLE DATA; Schema: public_auditoria; Owner: postgres
--



-- Completed on 2019-09-16 23:05:14 -03

--
-- PostgreSQL database dump complete
--

