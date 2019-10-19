--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.24
-- Dumped by pg_dump version 9.6.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: paises; Type: TABLE DATA; Schema: public; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.paises DISABLE TRIGGER ALL;

COPY public.paises (id_pais, nombre) FROM stdin;
1	Argentina
3	Paraguay
5	Brasil
\.


ALTER TABLE public.paises ENABLE TRIGGER ALL;

--
-- Data for Name: provincias; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.provincias DISABLE TRIGGER ALL;

COPY public.provincias (id_provincia, nombre, id_pais) FROM stdin;
1	Buenos Aires        	1
2	Buenos Aires-GBA    	1
3	Capital Federal     	1
4	Catamarca           	1
5	Chaco               	1
6	Chubut              	1
7	Córdoba             	1
8	Corrientes          	1
9	Entre Ríos          	1
10	Formosa             	1
11	Jujuy               	1
12	La Pampa            	1
13	La Rioja            	1
14	Mendoza             	1
15	Misiones            	1
16	Neuquén             	1
17	Río Negro           	1
18	Salta               	1
19	San Juan            	1
20	San Luis            	1
21	Santa Cruz          	1
22	Santa Fe            	1
23	Santiago del Estero 	1
24	Tierra del Fuego    	1
25	Tucumán             	1
\.


ALTER TABLE public.provincias ENABLE TRIGGER ALL;

--
-- Data for Name: localidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.localidades DISABLE TRIGGER ALL;

COPY public.localidades (id_localidad, nombre, id_provincia) FROM stdin;
10000	test	2
1	25 de Mayo	1
2	3 de febrero	1
3	A. Alsina	1
4	A. Gonzáles Cháves	1
5	Aguas Verdes	1
6	Alberti	1
7	Arrecifes	1
8	Ayacucho	1
9	Azul	1
10	Bahía Blanca	1
11	Balcarce	1
12	Baradero	1
13	Benito Juárez	1
14	Berisso	1
15	Bolívar	1
16	Bragado	1
17	Brandsen	1
18	Campana	1
19	Cañuelas	1
20	Capilla del Señor	1
21	Capitán Sarmiento	1
22	Carapachay	1
23	Carhue	1
24	Cariló	1
25	Carlos Casares	1
26	Carlos Tejedor	1
27	Carmen de Areco	1
28	Carmen de Patagones	1
29	Castelli	1
30	Chacabuco	1
31	Chascomús	1
32	Chivilcoy	1
33	Colón	1
34	Coronel Dorrego	1
35	Coronel Pringles	1
36	Coronel Rosales	1
37	Coronel Suarez	1
38	Costa Azul	1
39	Costa Chica	1
40	Costa del Este	1
41	Costa Esmeralda	1
42	Daireaux	1
43	Darregueira	1
44	Del Viso	1
45	Dolores	1
46	Don Torcuato	1
47	Ensenada	1
48	Escobar	1
49	Exaltación de la Cruz	1
50	Florentino Ameghino	1
51	Garín	1
52	Gral. Alvarado	1
53	Gral. Alvear	1
54	Gral. Arenales	1
55	Gral. Belgrano	1
56	Gral. Guido	1
57	Gral. Lamadrid	1
58	Gral. Las Heras	1
59	Gral. Lavalle	1
60	Gral. Madariaga	1
61	Gral. Pacheco	1
62	Gral. Paz	1
63	Gral. Pinto	1
64	Gral. Pueyrredón	1
65	Gral. Rodríguez	1
66	Gral. Viamonte	1
67	Gral. Villegas	1
68	Guaminí	1
69	Guernica	1
70	Hipólito Yrigoyen	1
71	Ing. Maschwitz	1
72	Junín	1
73	La Plata	1
74	Laprida	1
75	Las Flores	1
76	Las Toninas	1
77	Leandro N. Alem	1
78	Lincoln	1
79	Loberia	1
80	Lobos	1
81	Los Cardales	1
82	Los Toldos	1
83	Lucila del Mar	1
84	Luján	1
85	Magdalena	1
86	Maipú	1
87	Mar Chiquita	1
88	Mar de Ajó	1
89	Mar de las Pampas	1
90	Mar del Plata	1
91	Mar del Tuyú	1
92	Marcos Paz	1
93	Mercedes	1
94	Miramar	1
95	Monte	1
96	Monte Hermoso	1
97	Munro	1
98	Navarro	1
99	Necochea	1
100	Olavarría	1
101	Partido de la Costa	1
102	Pehuajó	1
103	Pellegrini	1
104	Pergamino	1
105	Pigüé	1
106	Pila	1
107	Pilar	1
108	Pinamar	1
109	Pinar del Sol	1
110	Polvorines	1
111	Pte. Perón	1
112	Puán	1
113	Punta Indio	1
114	Ramallo	1
115	Rauch	1
116	Rivadavia	1
117	Rojas	1
118	Roque Pérez	1
119	Saavedra	1
120	Saladillo	1
121	Salliqueló	1
122	Salto	1
123	San Andrés de Giles	1
124	San Antonio de Areco	1
125	San Antonio de Padua	1
126	San Bernardo	1
127	San Cayetano	1
128	San Clemente del Tuyú	1
129	San Nicolás	1
130	San Pedro	1
131	San Vicente	1
132	Santa Teresita	1
133	Suipacha	1
134	Tandil	1
135	Tapalqué	1
136	Tordillo	1
137	Tornquist	1
138	Trenque Lauquen	1
139	Tres Lomas	1
140	Villa Gesell	1
141	Villarino	1
142	Zárate	1
143	11 de Septiembre	2
144	20 de Junio	2
145	25 de Mayo	2
146	Acassuso	2
147	Adrogué	2
148	Aldo Bonzi	2
149	Área Reserva Cinturón Ecológico	2
150	Avellaneda	2
151	Banfield	2
152	Barrio Parque	2
153	Barrio Santa Teresita	2
154	Beccar	2
155	Bella Vista	2
156	Berazategui	2
157	Bernal Este	2
158	Bernal Oeste	2
159	Billinghurst	2
160	Boulogne	2
161	Burzaco	2
162	Carapachay	2
163	Caseros	2
164	Castelar	2
165	Churruca	2
166	Ciudad Evita	2
167	Ciudad Madero	2
168	Ciudadela	2
169	Claypole	2
170	Crucecita	2
171	Dock Sud	2
172	Don Bosco	2
173	Don Orione	2
174	El Jagüel	2
175	El Libertador	2
176	El Palomar	2
177	El Tala	2
178	El Trébol	2
179	Ezeiza	2
180	Ezpeleta	2
181	Florencio Varela	2
182	Florida	2
183	Francisco Álvarez	2
184	Gerli	2
185	Glew	2
186	González Catán	2
187	Gral. Lamadrid	2
188	Grand Bourg	2
189	Gregorio de Laferrere	2
190	Guillermo Enrique Hudson	2
191	Haedo	2
192	Hurlingham	2
193	Ing. Sourdeaux	2
194	Isidro Casanova	2
195	Ituzaingó	2
196	José C. Paz	2
197	José Ingenieros	2
198	José Marmol	2
199	La Lucila	2
200	La Reja	2
201	La Tablada	2
202	Lanús	2
203	Llavallol	2
204	Loma Hermosa	2
205	Lomas de Zamora	2
206	Lomas del Millón	2
207	Lomas del Mirador	2
208	Longchamps	2
209	Los Polvorines	2
210	Luis Guillón	2
211	Malvinas Argentinas	2
212	Martín Coronado	2
213	Martínez	2
214	Merlo	2
215	Ministro Rivadavia	2
216	Monte Chingolo	2
217	Monte Grande	2
218	Moreno	2
219	Morón	2
220	Muñiz	2
221	Olivos	2
222	Pablo Nogués	2
223	Pablo Podestá	2
224	Paso del Rey	2
225	Pereyra	2
226	Piñeiro	2
227	Plátanos	2
228	Pontevedra	2
229	Quilmes	2
230	Rafael Calzada	2
231	Rafael Castillo	2
232	Ramos Mejía	2
233	Ranelagh	2
234	Remedios de Escalada	2
235	Sáenz Peña	2
236	San Antonio de Padua	2
237	San Fernando	2
238	San Francisco Solano	2
239	San Isidro	2
240	San José	2
241	San Justo	2
242	San Martín	2
243	San Miguel	2
244	Santos Lugares	2
245	Sarandí	2
246	Sourigues	2
247	Tapiales	2
248	Temperley	2
249	Tigre	2
250	Tortuguitas	2
251	Tristán Suárez	2
252	Trujui	2
253	Turdera	2
254	Valentín Alsina	2
255	Vicente López	2
256	Villa Adelina	2
257	Villa Ballester	2
258	Villa Bosch	2
259	Villa Caraza	2
260	Villa Celina	2
261	Villa Centenario	2
262	Villa de Mayo	2
263	Villa Diamante	2
264	Villa Domínico	2
265	Villa España	2
266	Villa Fiorito	2
267	Villa Guillermina	2
268	Villa Insuperable	2
269	Villa José León Suárez	2
270	Villa La Florida	2
271	Villa Luzuriaga	2
272	Villa Martelli	2
273	Villa Obrera	2
274	Villa Progreso	2
275	Villa Raffo	2
276	Villa Sarmiento	2
277	Villa Tesei	2
278	Villa Udaondo	2
279	Virrey del Pino	2
280	Wilde	2
281	William Morris	2
282	Agronomía	3
283	Almagro	3
284	Balvanera	3
285	Barracas	3
286	Belgrano	3
287	Boca	3
288	Boedo	3
289	Caballito	3
290	Chacarita	3
291	Coghlan	3
292	Colegiales	3
293	Constitución	3
294	Flores	3
295	Floresta	3
296	La Paternal	3
297	Liniers	3
298	Mataderos	3
299	Monserrat	3
300	Monte Castro	3
301	Nueva Pompeya	3
302	Núñez	3
303	Palermo	3
304	Parque Avellaneda	3
305	Parque Chacabuco	3
306	Parque Chas	3
307	Parque Patricios	3
308	Puerto Madero	3
309	Recoleta	3
310	Retiro	3
311	Saavedra	3
312	San Cristóbal	3
313	San Nicolás	3
314	San Telmo	3
315	Vélez Sársfield	3
316	Versalles	3
317	Villa Crespo	3
318	Villa del Parque	3
319	Villa Devoto	3
320	Villa Gral. Mitre	3
321	Villa Lugano	3
322	Villa Luro	3
323	Villa Ortúzar	3
324	Villa Pueyrredón	3
325	Villa Real	3
326	Villa Riachuelo	3
327	Villa Santa Rita	3
328	Villa Soldati	3
329	Villa Urquiza	3
330	Aconquija	4
331	Ancasti	4
332	Andalgalá	4
333	Antofagasta	4
334	Belén	4
335	Capayán	4
336	Capital	4
338	Corral Quemado	4
339	El Alto	4
340	El Rodeo	4
341	F.Mamerto Esquiú	4
342	Fiambalá	4
343	Hualfín	4
344	Huillapima	4
345	Icaño	4
346	La Puerta	4
347	Las Juntas	4
348	Londres	4
349	Los Altos	4
350	Los Varela	4
351	Mutquín	4
352	Paclín	4
353	Poman	4
354	Pozo de La Piedra	4
355	Puerta de Corral	4
356	Puerta San José	4
357	Recreo	4
358	S.F.V de 4	4
359	San Fernando	4
360	San Fernando del Valle	4
361	San José	4
362	Santa María	4
363	Santa Rosa	4
364	Saujil	4
365	Tapso	4
366	Tinogasta	4
367	Valle Viejo	4
368	Villa Vil	4
369	Aviá Teraí	5
370	Barranqueras	5
371	Basail	5
372	Campo Largo	5
373	Capital	5
374	Capitán Solari	5
375	Charadai	5
376	Charata	5
377	Chorotis	5
378	Ciervo Petiso	5
379	Cnel. Du Graty	5
380	Col. Benítez	5
381	Col. Elisa	5
382	Col. Popular	5
383	Colonias Unidas	5
384	Concepción	5
385	Corzuela	5
386	Cote Lai	5
387	El Sauzalito	5
388	Enrique Urien	5
389	Fontana	5
390	Fte. Esperanza	5
391	Gancedo	5
392	Gral. Capdevila	5
393	Gral. Pinero	5
394	Gral. San Martín	5
395	Gral. Vedia	5
396	Hermoso Campo	5
397	I. del Cerrito	5
398	J.J. Castelli	5
399	La Clotilde	5
400	La Eduvigis	5
401	La Escondida	5
402	La Leonesa	5
403	La Tigra	5
404	La Verde	5
405	Laguna Blanca	5
406	Laguna Limpia	5
407	Lapachito	5
408	Las Breñas	5
409	Las Garcitas	5
410	Las Palmas	5
411	Los Frentones	5
412	Machagai	5
413	Makallé	5
414	Margarita Belén	5
415	Miraflores	5
416	Misión N. Pompeya	5
417	Napenay	5
418	Pampa Almirón	5
419	Pampa del Indio	5
420	Pampa del Infierno	5
421	Pdcia. de La Plaza	5
422	Pdcia. Roca	5
423	Pdcia. Roque Sáenz Peña	5
424	Pto. Bermejo	5
425	Pto. Eva Perón	5
426	Puero Tirol	5
427	Puerto Vilelas	5
428	Quitilipi	5
429	Resistencia	5
430	Sáenz Peña	5
431	Samuhú	5
432	San Bernardo	5
433	Santa Sylvina	5
434	Taco Pozo	5
435	Tres Isletas	5
436	Villa Ángela	5
437	Villa Berthet	5
438	Villa R. Bermejito	5
439	Aldea Apeleg	6
440	Aldea Beleiro	6
441	Aldea Epulef	6
442	Alto Río Sengerr	6
443	Buen Pasto	6
444	Camarones	6
445	Carrenleufú	6
446	Cholila	6
447	Co. Centinela	6
448	Colan Conhué	6
449	Comodoro Rivadavia	6
450	Corcovado	6
451	Cushamen	6
452	Dique F. Ameghino	6
453	Dolavón	6
454	Dr. R. Rojas	6
455	El Hoyo	6
456	El Maitén	6
457	Epuyén	6
458	Esquel	6
459	Facundo	6
460	Gaimán	6
461	Gan Gan	6
462	Gastre	6
463	Gdor. Costa	6
464	Gualjaina	6
465	J. de San Martín	6
466	Lago Blanco	6
467	Lago Puelo	6
468	Lagunita Salada	6
469	Las Plumas	6
470	Los Altares	6
471	Paso de los Indios	6
472	Paso del Sapo	6
473	Pto. Madryn	6
474	Pto. Pirámides	6
475	Rada Tilly	6
476	Rawson	6
477	Río Mayo	6
478	Río Pico	6
479	Sarmiento	6
480	Tecka	6
481	Telsen	6
482	Trelew	6
483	Trevelin	6
484	Veintiocho de Julio	6
485	Achiras	7
486	Adelia Maria	7
487	Agua de Oro	7
488	Alcira Gigena	7
489	Aldea Santa Maria	7
490	Alejandro Roca	7
491	Alejo Ledesma	7
492	Alicia	7
493	Almafuerte	7
494	Alpa Corral	7
495	Alta Gracia	7
496	Alto Alegre	7
497	Alto de Los Quebrachos	7
498	Altos de Chipion	7
499	Amboy	7
500	Ambul	7
501	Ana Zumaran	7
502	Anisacate	7
503	Arguello	7
504	Arias	7
505	Arroyito	7
506	Arroyo Algodon	7
507	Arroyo Cabral	7
508	Arroyo Los Patos	7
509	Assunta	7
510	Atahona	7
511	Ausonia	7
512	Avellaneda	7
513	Ballesteros	7
514	Ballesteros Sud	7
515	Balnearia	7
516	Bañado de Soto	7
517	Bell Ville	7
518	Bengolea	7
519	Benjamin Gould	7
520	Berrotaran	7
521	Bialet Masse	7
522	Bouwer	7
523	Brinkmann	7
524	Buchardo	7
525	Bulnes	7
526	Cabalango	7
527	Calamuchita	7
528	Calchin	7
529	Calchin Oeste	7
530	Calmayo	7
531	Camilo Aldao	7
532	Caminiaga	7
533	Cañada de Luque	7
534	Cañada de Machado	7
535	Cañada de Rio Pinto	7
536	Cañada del Sauce	7
537	Canals	7
538	Candelaria Sud	7
539	Capilla de Remedios	7
540	Capilla de Siton	7
541	Capilla del Carmen	7
542	Capilla del Monte	7
543	Capital	7
544	Capitan Gral B. O´Higgins	7
545	Carnerillo	7
546	Carrilobo	7
547	Casa Grande	7
548	Cavanagh	7
549	Cerro Colorado	7
550	Chaján	7
551	Chalacea	7
552	Chañar Viejo	7
553	Chancaní	7
554	Charbonier	7
555	Charras	7
556	Chazón	7
557	Chilibroste	7
558	Chucul	7
559	Chuña	7
560	Chuña Huasi	7
561	Churqui Cañada	7
562	Cienaga Del Coro	7
563	Cintra	7
564	Col. Almada	7
565	Col. Anita	7
566	Col. Barge	7
567	Col. Bismark	7
568	Col. Bremen	7
569	Col. Caroya	7
570	Col. Italiana	7
571	Col. Iturraspe	7
572	Col. Las Cuatro Esquinas	7
573	Col. Las Pichanas	7
574	Col. Marina	7
575	Col. Prosperidad	7
576	Col. San Bartolome	7
577	Col. San Pedro	7
578	Col. Tirolesa	7
579	Col. Vicente Aguero	7
580	Col. Videla	7
581	Col. Vignaud	7
582	Col. Waltelina	7
583	Colazo	7
584	Comechingones	7
585	Conlara	7
586	Copacabana	7
588	Coronel Baigorria	7
589	Coronel Moldes	7
590	Corral de Bustos	7
591	Corralito	7
592	Cosquín	7
593	Costa Sacate	7
594	Cruz Alta	7
595	Cruz de Caña	7
596	Cruz del Eje	7
597	Cuesta Blanca	7
598	Dean Funes	7
599	Del Campillo	7
600	Despeñaderos	7
601	Devoto	7
602	Diego de Rojas	7
603	Dique Chico	7
604	El Arañado	7
605	El Brete	7
606	El Chacho	7
607	El Crispín	7
608	El Fortín	7
609	El Manzano	7
610	El Rastreador	7
611	El Rodeo	7
612	El Tío	7
613	Elena	7
614	Embalse	7
615	Esquina	7
616	Estación Gral. Paz	7
617	Estación Juárez Celman	7
618	Estancia de Guadalupe	7
619	Estancia Vieja	7
620	Etruria	7
621	Eufrasio Loza	7
622	Falda del Carmen	7
623	Freyre	7
624	Gral. Baldissera	7
625	Gral. Cabrera	7
626	Gral. Deheza	7
627	Gral. Fotheringham	7
628	Gral. Levalle	7
629	Gral. Roca	7
630	Guanaco Muerto	7
631	Guasapampa	7
632	Guatimozin	7
633	Gutenberg	7
634	Hernando	7
635	Huanchillas	7
636	Huerta Grande	7
637	Huinca Renanco	7
638	Idiazabal	7
639	Impira	7
640	Inriville	7
641	Isla Verde	7
642	Italó	7
643	James Craik	7
644	Jesús María	7
645	Jovita	7
646	Justiniano Posse	7
647	Km 658	7
648	L. V. Mansilla	7
649	La Batea	7
650	La Calera	7
651	La Carlota	7
652	La Carolina	7
653	La Cautiva	7
654	La Cesira	7
655	La Cruz	7
656	La Cumbre	7
657	La Cumbrecita	7
658	La Falda	7
659	La Francia	7
660	La Granja	7
661	La Higuera	7
662	La Laguna	7
663	La Paisanita	7
664	La Palestina	7
666	La Paquita	7
667	La Para	7
668	La Paz	7
669	La Playa	7
670	La Playosa	7
671	La Población	7
672	La Posta	7
673	La Puerta	7
674	La Quinta	7
675	La Rancherita	7
676	La Rinconada	7
677	La Serranita	7
678	La Tordilla	7
679	Laborde	7
680	Laboulaye	7
681	Laguna Larga	7
682	Las Acequias	7
683	Las Albahacas	7
684	Las Arrias	7
685	Las Bajadas	7
686	Las Caleras	7
687	Las Calles	7
688	Las Cañadas	7
689	Las Gramillas	7
690	Las Higueras	7
691	Las Isletillas	7
692	Las Junturas	7
693	Las Palmas	7
694	Las Peñas	7
695	Las Peñas Sud	7
696	Las Perdices	7
697	Las Playas	7
698	Las Rabonas	7
699	Las Saladas	7
700	Las Tapias	7
701	Las Varas	7
702	Las Varillas	7
703	Las Vertientes	7
704	Leguizamón	7
705	Leones	7
706	Los Cedros	7
707	Los Cerrillos	7
708	Los Chañaritos (C.E)	7
709	Los Chanaritos (R.S)	7
710	Los Cisnes	7
711	Los Cocos	7
712	Los Cóndores	7
713	Los Hornillos	7
714	Los Hoyos	7
715	Los Mistoles	7
716	Los Molinos	7
717	Los Pozos	7
718	Los Reartes	7
719	Los Surgentes	7
720	Los Talares	7
721	Los Zorros	7
722	Lozada	7
723	Luca	7
724	Luque	7
725	Luyaba	7
726	Malagueño	7
727	Malena	7
728	Malvinas Argentinas	7
729	Manfredi	7
730	Maquinista Gallini	7
731	Marcos Juárez	7
732	Marull	7
733	Matorrales	7
734	Mattaldi	7
735	Mayu Sumaj	7
736	Media Naranja	7
737	Melo	7
738	Mendiolaza	7
739	Mi Granja	7
740	Mina Clavero	7
741	Miramar	7
742	Morrison	7
743	Morteros	7
744	Mte. Buey	7
745	Mte. Cristo	7
746	Mte. De Los Gauchos	7
747	Mte. Leña	7
748	Mte. Maíz	7
749	Mte. Ralo	7
750	Nicolás Bruzone	7
751	Noetinger	7
752	Nono	7
753	Nueva 7	7
754	Obispo Trejo	7
755	Olaeta	7
756	Oliva	7
757	Olivares San Nicolás	7
758	Onagolty	7
759	Oncativo	7
760	Ordoñez	7
761	Pacheco De Melo	7
762	Pampayasta N.	7
763	Pampayasta S.	7
764	Panaholma	7
765	Pascanas	7
766	Pasco	7
767	Paso del Durazno	7
768	Paso Viejo	7
769	Pilar	7
770	Pincén	7
771	Piquillín	7
772	Plaza de Mercedes	7
773	Plaza Luxardo	7
774	Porteña	7
775	Potrero de Garay	7
776	Pozo del Molle	7
777	Pozo Nuevo	7
778	Pueblo Italiano	7
779	Puesto de Castro	7
780	Punta del Agua	7
781	Quebracho Herrado	7
782	Quilino	7
783	Rafael García	7
784	Ranqueles	7
785	Rayo Cortado	7
786	Reducción	7
787	Rincón	7
788	Río Bamba	7
789	Río Ceballos	7
790	Río Cuarto	7
791	Río de Los Sauces	7
792	Río Primero	7
793	Río Segundo	7
794	Río Tercero	7
795	Rosales	7
796	Rosario del Saladillo	7
797	Sacanta	7
798	Sagrada Familia	7
799	Saira	7
800	Saladillo	7
801	Saldán	7
802	Salsacate	7
803	Salsipuedes	7
804	Sampacho	7
805	San Agustín	7
806	San Antonio de Arredondo	7
807	San Antonio de Litín	7
808	San Basilio	7
809	San Carlos Minas	7
810	San Clemente	7
811	San Esteban	7
812	San Francisco	7
813	San Ignacio	7
814	San Javier	7
815	San Jerónimo	7
816	San Joaquín	7
817	San José de La Dormida	7
818	San José de Las Salinas	7
819	San Lorenzo	7
820	San Marcos Sierras	7
821	San Marcos Sud	7
822	San Pedro	7
823	San Pedro N.	7
824	San Roque	7
825	San Vicente	7
826	Santa Catalina	7
827	Santa Elena	7
828	Santa Eufemia	7
829	Santa Maria	7
830	Sarmiento	7
831	Saturnino M.Laspiur	7
832	Sauce Arriba	7
833	Sebastián Elcano	7
834	Seeber	7
835	Segunda Usina	7
836	Serrano	7
837	Serrezuela	7
838	Sgo. Temple	7
839	Silvio Pellico	7
840	Simbolar	7
841	Sinsacate	7
842	Sta. Rosa de Calamuchita	7
843	Sta. Rosa de Río Primero	7
844	Suco	7
845	Tala Cañada	7
846	Tala Huasi	7
847	Talaini	7
848	Tancacha	7
849	Tanti	7
850	Ticino	7
851	Tinoco	7
852	Tío Pujio	7
853	Toledo	7
854	Toro Pujio	7
855	Tosno	7
856	Tosquita	7
857	Tránsito	7
858	Tuclame	7
859	Tutti	7
860	Ucacha	7
861	Unquillo	7
862	Valle de Anisacate	7
863	Valle Hermoso	7
864	Vélez Sarfield	7
865	Viamonte	7
866	Vicuña Mackenna	7
867	Villa Allende	7
868	Villa Amancay	7
869	Villa Ascasubi	7
870	Villa Candelaria N.	7
871	Villa Carlos Paz	7
872	Villa Cerro Azul	7
873	Villa Ciudad de América	7
874	Villa Ciudad Pque Los Reartes	7
875	Villa Concepción del Tío	7
876	Villa Cura Brochero	7
877	Villa de Las Rosas	7
878	Villa de María	7
879	Villa de Pocho	7
880	Villa de Soto	7
881	Villa del Dique	7
882	Villa del Prado	7
883	Villa del Rosario	7
884	Villa del Totoral	7
885	Villa Dolores	7
886	Villa El Chancay	7
887	Villa Elisa	7
888	Villa Flor Serrana	7
889	Villa Fontana	7
890	Villa Giardino	7
891	Villa Gral. Belgrano	7
892	Villa Gutierrez	7
893	Villa Huidobro	7
894	Villa La Bolsa	7
895	Villa Los Aromos	7
896	Villa Los Patos	7
897	Villa María	7
898	Villa Nueva	7
899	Villa Pque. Santa Ana	7
900	Villa Pque. Siquiman	7
901	Villa Quillinzo	7
902	Villa Rossi	7
903	Villa Rumipal	7
904	Villa San Esteban	7
905	Villa San Isidro	7
906	Villa 21	7
907	Villa Sarmiento (G.R)	7
908	Villa Sarmiento (S.A)	7
909	Villa Tulumba	7
910	Villa Valeria	7
911	Villa Yacanto	7
912	Washington	7
913	Wenceslao Escalante	7
914	Ycho Cruz Sierras	7
915	Alvear	8
916	Bella Vista	8
917	Berón de Astrada	8
918	Bonpland	8
919	Caá Cati	8
920	Capital	8
921	Chavarría	8
922	Col. C. Pellegrini	8
923	Col. Libertad	8
924	Col. Liebig	8
925	Col. Sta Rosa	8
926	Concepción	8
927	Cruz de Los Milagros	8
928	Curuzú-Cuatiá	8
929	Empedrado	8
930	Esquina	8
931	Estación Torrent	8
932	Felipe Yofré	8
933	Garruchos	8
934	Gdor. Agrónomo	8
935	Gdor. Martínez	8
936	Goya	8
937	Guaviravi	8
938	Herlitzka	8
939	Ita-Ibate	8
940	Itatí	8
941	Ituzaingó	8
942	José Rafael Gómez	8
943	Juan Pujol	8
944	La Cruz	8
945	Lavalle	8
946	Lomas de Vallejos	8
947	Loreto	8
948	Mariano I. Loza	8
949	Mburucuyá	8
950	Mercedes	8
951	Mocoretá	8
952	Mte. Caseros	8
953	Nueve de Julio	8
954	Palmar Grande	8
955	Parada Pucheta	8
956	Paso de La Patria	8
957	Paso de Los Libres	8
958	Pedro R. Fernandez	8
959	Perugorría	8
960	Pueblo Libertador	8
961	Ramada Paso	8
962	Riachuelo	8
963	Saladas	8
964	San Antonio	8
965	San Carlos	8
966	San Cosme	8
967	San Lorenzo	8
968	20 del Palmar	8
969	San Miguel	8
970	San Roque	8
971	Santa Ana	8
972	Santa Lucía	8
973	Santo Tomé	8
974	Sauce	8
975	Tabay	8
976	Tapebicuá	8
977	Tatacua	8
978	Virasoro	8
979	Yapeyú	8
980	Yataití Calle	8
981	Alarcón	9
982	Alcaraz	9
983	Alcaraz N.	9
984	Alcaraz S.	9
985	Aldea Asunción	9
986	Aldea Brasilera	9
987	Aldea Elgenfeld	9
988	Aldea Grapschental	9
989	Aldea Ma. Luisa	9
990	Aldea Protestante	9
991	Aldea Salto	9
992	Aldea San Antonio (G)	9
993	Aldea San Antonio (P)	9
994	Aldea 19	9
995	Aldea San Miguel	9
996	Aldea San Rafael	9
997	Aldea Spatzenkutter	9
998	Aldea Sta. María	9
999	Aldea Sta. Rosa	9
1000	Aldea Valle María	9
1001	Altamirano Sur	9
1002	Antelo	9
1003	Antonio Tomás	9
1004	Aranguren	9
1005	Arroyo Barú	9
1006	Arroyo Burgos	9
1007	Arroyo Clé	9
1008	Arroyo Corralito	9
1009	Arroyo del Medio	9
1010	Arroyo Maturrango	9
1011	Arroyo Palo Seco	9
1012	Banderas	9
1013	Basavilbaso	9
1014	Betbeder	9
1015	Bovril	9
1016	Caseros	9
1017	Ceibas	9
1018	Cerrito	9
1019	Chajarí	9
1020	Chilcas	9
1021	Clodomiro Ledesma	9
1022	Col. Alemana	9
1023	Col. Avellaneda	9
1024	Col. Avigdor	9
1025	Col. Ayuí	9
1026	Col. Baylina	9
1027	Col. Carrasco	9
1028	Col. Celina	9
1029	Col. Cerrito	9
1030	Col. Crespo	9
1031	Col. Elia	9
1032	Col. Ensayo	9
1033	Col. Gral. Roca	9
1034	Col. La Argentina	9
1035	Col. Merou	9
1036	Col. Oficial Nª3	9
1037	Col. Oficial Nº13	9
1038	Col. Oficial Nº14	9
1039	Col. Oficial Nº5	9
1040	Col. Reffino	9
1041	Col. Tunas	9
1042	Col. Viraró	9
1043	Colón	9
1044	Concepción del Uruguay	9
1045	Concordia	9
1046	Conscripto Bernardi	9
1047	Costa Grande	9
1048	Costa San Antonio	9
1049	Costa Uruguay N.	9
1050	Costa Uruguay S.	9
1051	Crespo	9
1052	Crucecitas 3ª	9
1053	Crucecitas 7ª	9
1054	Crucecitas 8ª	9
1055	Cuchilla Redonda	9
1056	Curtiembre	9
1057	Diamante	9
1058	Distrito 6º	9
1059	Distrito Chañar	9
1060	Distrito Chiqueros	9
1061	Distrito Cuarto	9
1062	Distrito Diego López	9
1063	Distrito Pajonal	9
1064	Distrito Sauce	9
1065	Distrito Tala	9
1066	Distrito Talitas	9
1067	Don Cristóbal 1ª Sección	9
1068	Don Cristóbal 2ª Sección	9
1069	Durazno	9
1070	El Cimarrón	9
1071	El Gramillal	9
1072	El Palenque	9
1073	El Pingo	9
1074	El Quebracho	9
1075	El Redomón	9
1076	El Solar	9
1077	Enrique Carbo	9
1079	Espinillo N.	9
1080	Estación Campos	9
1081	Estación Escriña	9
1082	Estación Lazo	9
1083	Estación Raíces	9
1084	Estación Yerúa	9
1085	Estancia Grande	9
1086	Estancia Líbaros	9
1087	Estancia Racedo	9
1088	Estancia Solá	9
1089	Estancia Yuquerí	9
1090	Estaquitas	9
1091	Faustino M. Parera	9
1092	Febre	9
1093	Federación	9
1094	Federal	9
1095	Gdor. Echagüe	9
1096	Gdor. Mansilla	9
1097	Gilbert	9
1098	González Calderón	9
1099	Gral. Almada	9
1100	Gral. Alvear	9
1101	Gral. Campos	9
1102	Gral. Galarza	9
1103	Gral. Ramírez	9
1104	Gualeguay	9
1105	Gualeguaychú	9
1106	Gualeguaycito	9
1107	Guardamonte	9
1108	Hambis	9
1109	Hasenkamp	9
1110	Hernandarias	9
1111	Hernández	9
1112	Herrera	9
1113	Hinojal	9
1114	Hocker	9
1115	Ing. Sajaroff	9
1116	Irazusta	9
1117	Isletas	9
1118	J.J De Urquiza	9
1119	Jubileo	9
1120	La Clarita	9
1121	La Criolla	9
1122	La Esmeralda	9
1123	La Florida	9
1124	La Fraternidad	9
1125	La Hierra	9
1126	La Ollita	9
1127	La Paz	9
1128	La Picada	9
1129	La Providencia	9
1130	La Verbena	9
1131	Laguna Benítez	9
1132	Larroque	9
1133	Las Cuevas	9
1134	Las Garzas	9
1135	Las Guachas	9
1136	Las Mercedes	9
1137	Las Moscas	9
1138	Las Mulitas	9
1139	Las Toscas	9
1140	Laurencena	9
1141	Libertador San Martín	9
1142	Loma Limpia	9
1143	Los Ceibos	9
1144	Los Charruas	9
1145	Los Conquistadores	9
1146	Lucas González	9
1147	Lucas N.	9
1148	Lucas S. 1ª	9
1149	Lucas S. 2ª	9
1150	Maciá	9
1151	María Grande	9
1152	María Grande 2ª	9
1153	Médanos	9
1154	Mojones N.	9
1155	Mojones S.	9
1156	Molino Doll	9
1157	Monte Redondo	9
1158	Montoya	9
1159	Mulas Grandes	9
1160	Ñancay	9
1161	Nogoyá	9
1162	Nueva Escocia	9
1163	Nueva Vizcaya	9
1164	Ombú	9
1165	Oro Verde	9
1166	Paraná	9
1167	Pasaje Guayaquil	9
1168	Pasaje Las Tunas	9
1169	Paso de La Arena	9
1170	Paso de La Laguna	9
1171	Paso de Las Piedras	9
1172	Paso Duarte	9
1173	Pastor Britos	9
1174	Pedernal	9
1175	Perdices	9
1176	Picada Berón	9
1177	Piedras Blancas	9
1178	Primer Distrito Cuchilla	9
1179	Primero de Mayo	9
1180	Pronunciamiento	9
1181	Pto. Algarrobo	9
1182	Pto. Ibicuy	9
1183	Pueblo Brugo	9
1184	Pueblo Cazes	9
1185	Pueblo Gral. Belgrano	9
1186	Pueblo Liebig	9
1187	Puerto Yeruá	9
1188	Punta del Monte	9
1189	Quebracho	9
1190	Quinto Distrito	9
1191	Raices Oeste	9
1192	Rincón de Nogoyá	9
1193	Rincón del Cinto	9
1194	Rincón del Doll	9
1195	Rincón del Gato	9
1196	Rocamora	9
1197	Rosario del Tala	9
1198	San Benito	9
1199	San Cipriano	9
1200	San Ernesto	9
1201	San Gustavo	9
1202	San Jaime	9
1203	San José	9
1204	San José de Feliciano	9
1205	San Justo	9
1206	San Marcial	9
1207	San Pedro	9
1208	San Ramírez	9
1209	San Ramón	9
1210	San Roque	9
1211	San Salvador	9
1212	San Víctor	9
1213	Santa Ana	9
1214	Santa Anita	9
1215	Santa Elena	9
1216	Santa Lucía	9
1217	Santa Luisa	9
1218	Sauce de Luna	9
1219	Sauce Montrull	9
1220	Sauce Pinto	9
1221	Sauce Sur	9
1222	Seguí	9
1223	Sir Leonard	9
1224	Sosa	9
1225	Tabossi	9
1226	Tezanos Pinto	9
1227	Ubajay	9
1228	Urdinarrain	9
1229	Veinte de Septiembre	9
1230	Viale	9
1231	Victoria	9
1232	Villa Clara	9
1233	Villa del Rosario	9
1234	Villa Domínguez	9
1235	Villa Elisa	9
1236	Villa Fontana	9
1237	Villa Gdor. Etchevehere	9
1238	Villa Mantero	9
1239	Villa Paranacito	9
1240	Villa Urquiza	9
1241	Villaguay	9
1242	Walter Moss	9
1243	Yacaré	9
1244	Yeso Oeste	9
1245	Buena Vista	10
1246	Clorinda	10
1247	Col. Pastoril	10
1248	Cte. Fontana	10
1249	El Colorado	10
1250	El Espinillo	10
1251	Estanislao Del Campo	10
1253	Fortín Lugones	10
1254	Gral. Lucio V. Mansilla	10
1255	Gral. Manuel Belgrano	10
1256	Gral. Mosconi	10
1257	Gran Guardia	10
1258	Herradura	10
1259	Ibarreta	10
1260	Ing. Juárez	10
1261	Laguna Blanca	10
1262	Laguna Naick Neck	10
1263	Laguna Yema	10
1264	Las Lomitas	10
1265	Los Chiriguanos	10
1266	Mayor V. Villafañe	10
1267	Misión San Fco.	10
1268	Palo Santo	10
1269	Pirané	10
1270	Pozo del Maza	10
1271	Riacho He-He	10
1272	San Hilario	10
1273	San Martín II	10
1274	Siete Palmas	10
1275	Subteniente Perín	10
1276	Tres Lagunas	10
1277	Villa Dos Trece	10
1278	Villa Escolar	10
1279	Villa Gral. Güemes	10
1280	Abdon Castro Tolay	11
1281	Abra Pampa	11
1282	Abralaite	11
1283	Aguas Calientes	11
1284	Arrayanal	11
1285	Barrios	11
1286	Caimancito	11
1287	Calilegua	11
1288	Cangrejillos	11
1289	Caspala	11
1290	Catuá	11
1291	Cieneguillas	11
1292	Coranzulli	11
1293	Cusi-Cusi	11
1294	El Aguilar	11
1295	El Carmen	11
1296	El Cóndor	11
1297	El Fuerte	11
1298	El Piquete	11
1299	El Talar	11
1300	Fraile Pintado	11
1301	Hipólito Yrigoyen	11
1302	Huacalera	11
1303	Humahuaca	11
1304	La Esperanza	11
1305	La Mendieta	11
1306	La Quiaca	11
1307	Ledesma	11
1308	Libertador Gral. San Martin	11
1309	Maimara	11
1310	Mina Pirquitas	11
1311	Monterrico	11
1312	Palma Sola	11
1313	Palpalá	11
1314	Pampa Blanca	11
1315	Pampichuela	11
1316	Perico	11
1317	Puesto del Marqués	11
1318	Puesto Viejo	11
1319	Pumahuasi	11
1320	Purmamarca	11
1321	Rinconada	11
1322	Rodeitos	11
1323	Rosario de Río Grande	11
1324	San Antonio	11
1325	San Francisco	11
1326	San Pedro	11
1327	San Rafael	11
1328	San Salvador	11
1329	Santa Ana	11
1330	Santa Catalina	11
1331	Santa Clara	11
1332	Susques	11
1333	Tilcara	11
1334	Tres Cruces	11
1335	Tumbaya	11
1336	Valle Grande	11
1337	Vinalito	11
1338	Volcán	11
1339	Yala	11
1340	Yaví	11
1341	Yuto	11
1342	Abramo	12
1343	Adolfo Van Praet	12
1344	Agustoni	12
1345	Algarrobo del Aguila	12
1346	Alpachiri	12
1347	Alta Italia	12
1348	Anguil	12
1349	Arata	12
1350	Ataliva Roca	12
1351	Bernardo Larroude	12
1352	Bernasconi	12
1353	Caleufú	12
1354	Carro Quemado	12
1355	Catriló	12
1356	Ceballos	12
1357	Chacharramendi	12
1358	Col. Barón	12
1359	Col. Santa María	12
1360	Conhelo	12
1361	Coronel Hilario Lagos	12
1362	Cuchillo-Có	12
1363	Doblas	12
1364	Dorila	12
1365	Eduardo Castex	12
1366	Embajador Martini	12
1367	Falucho	12
1368	Gral. Acha	12
1369	Gral. Manuel Campos	12
1370	Gral. Pico	12
1371	Guatraché	12
1372	Ing. Luiggi	12
1373	Intendente Alvear	12
1374	Jacinto Arauz	12
1375	La Adela	12
1376	La Humada	12
1377	La Maruja	12
1379	La Reforma	12
1380	Limay Mahuida	12
1381	Lonquimay	12
1382	Loventuel	12
1383	Luan Toro	12
1384	Macachín	12
1385	Maisonnave	12
1386	Mauricio Mayer	12
1387	Metileo	12
1388	Miguel Cané	12
1389	Miguel Riglos	12
1390	Monte Nievas	12
1391	Parera	12
1392	Perú	12
1393	Pichi-Huinca	12
1394	Puelches	12
1395	Puelén	12
1396	Quehue	12
1397	Quemú Quemú	12
1398	Quetrequén	12
1399	Rancul	12
1400	Realicó	12
1401	Relmo	12
1402	Rolón	12
1403	Rucanelo	12
1404	Sarah	12
1405	Speluzzi	12
1406	Sta. Isabel	12
1407	Sta. Rosa	12
1408	Sta. Teresa	12
1409	Telén	12
1410	Toay	12
1411	Tomas M. de Anchorena	12
1412	Trenel	12
1413	Unanue	12
1414	Uriburu	12
1415	Veinticinco de Mayo	12
1416	Vertiz	12
1417	Victorica	12
1418	Villa Mirasol	12
1419	Winifreda	12
1420	Arauco	13
1421	Capital	13
1422	Castro Barros	13
1423	Chamical	13
1424	Chilecito	13
1425	Coronel F. Varela	13
1426	Famatina	13
1427	Gral. A.V.Peñaloza	13
1428	Gral. Belgrano	13
1429	Gral. J.F. Quiroga	13
1430	Gral. Lamadrid	13
1431	Gral. Ocampo	13
1432	Gral. San Martín	13
1433	Independencia	13
1434	Rosario Penaloza	13
1435	San Blas de Los Sauces	13
1436	Sanagasta	13
1437	Vinchina	13
1438	Capital	14
1439	Chacras de Coria	14
1440	Dorrego	14
1441	Gllen	14
1442	Godoy Cruz	14
1443	Gral. Alvear	14
1444	Guaymallén	14
1445	Junín	14
1446	La Paz	14
1447	Las Heras	14
1448	Lavalle	14
1449	Luján	14
1450	Luján De Cuyo	14
1451	Maipú	14
1452	Malargüe	14
1453	Rivadavia	14
1454	San Carlos	14
1455	San Martín	14
1456	San Rafael	14
1457	Sta. Rosa	14
1458	Tunuyán	14
1459	Tupungato	14
1460	Villa Nueva	14
1461	Alba Posse	15
1462	Almafuerte	15
1463	Apóstoles	15
1464	Aristóbulo Del Valle	15
1465	Arroyo Del Medio	15
1466	Azara	15
1467	Bdo. De Irigoyen	15
1468	Bonpland	15
1469	Caá Yari	15
1470	Campo Grande	15
1471	Campo Ramón	15
1472	Campo Viera	15
1473	Candelaria	15
1474	Capioví	15
1475	Caraguatay	15
1476	Cdte. Guacurarí	15
1477	Cerro Azul	15
1478	Cerro Corá	15
1479	Col. Alberdi	15
1480	Col. Aurora	15
1481	Col. Delicia	15
1482	Col. Polana	15
1483	Col. Victoria	15
1484	Col. Wanda	15
1485	Concepción De La Sierra	15
1486	Corpus	15
1487	Dos Arroyos	15
1488	Dos de Mayo	15
1489	El Alcázar	15
1490	El Dorado	15
1491	El Soberbio	15
1492	Esperanza	15
1493	F. Ameghino	15
1494	Fachinal	15
1495	Garuhapé	15
1496	Garupá	15
1497	Gdor. López	15
1498	Gdor. Roca	15
1499	Gral. Alvear	15
1500	Gral. Urquiza	15
1501	Guaraní	15
1502	H. Yrigoyen	15
1503	Iguazú	15
1504	Itacaruaré	15
1505	Jardín América	15
1506	Leandro N. Alem	15
1507	Libertad	15
1508	Loreto	15
1509	Los Helechos	15
1510	Mártires	15
1512	Mojón Grande	15
1513	Montecarlo	15
1514	Nueve de Julio	15
1515	Oberá	15
1516	Olegario V. Andrade	15
1517	Panambí	15
1518	Posadas	15
1519	Profundidad	15
1520	Pto. Iguazú	15
1521	Pto. Leoni	15
1522	Pto. Piray	15
1523	Pto. Rico	15
1524	Ruiz de Montoya	15
1525	San Antonio	15
1526	San Ignacio	15
1527	San Javier	15
1528	San José	15
1529	San Martín	15
1530	San Pedro	15
1531	San Vicente	15
1532	Santiago De Liniers	15
1533	Santo Pipo	15
1534	Sta. Ana	15
1535	Sta. María	15
1536	Tres Capones	15
1537	Veinticinco de Mayo	15
1538	Wanda	15
1539	Aguada San Roque	16
1540	Aluminé	16
1541	Andacollo	16
1542	Añelo	16
1543	Bajada del Agrio	16
1544	Barrancas	16
1545	Buta Ranquil	16
1546	Capital	16
1547	Caviahué	16
1548	Centenario	16
1549	Chorriaca	16
1550	Chos Malal	16
1551	Cipolletti	16
1552	Covunco Abajo	16
1553	Coyuco Cochico	16
1554	Cutral Có	16
1555	El Cholar	16
1556	El Huecú	16
1557	El Sauce	16
1558	Guañacos	16
1559	Huinganco	16
1560	Las Coloradas	16
1561	Las Lajas	16
1562	Las Ovejas	16
1563	Loncopué	16
1564	Los Catutos	16
1565	Los Chihuidos	16
1566	Los Miches	16
1567	Manzano Amargo	16
1569	Octavio Pico	16
1570	Paso Aguerre	16
1571	Picún Leufú	16
1572	Piedra del Aguila	16
1573	Pilo Lil	16
1574	Plaza Huincul	16
1575	Plottier	16
1576	Quili Malal	16
1577	Ramón Castro	16
1578	Rincón de Los Sauces	16
1579	San Martín de Los Andes	16
1580	San Patricio del Chañar	16
1581	Santo Tomás	16
1582	Sauzal Bonito	16
1583	Senillosa	16
1584	Taquimilán	16
1585	Tricao Malal	16
1586	Varvarco	16
1587	Villa Curí Leuvu	16
1588	Villa del Nahueve	16
1589	Villa del Puente Picún Leuvú	16
1590	Villa El Chocón	16
1591	Villa La Angostura	16
1592	Villa Pehuenia	16
1593	Villa Traful	16
1594	Vista Alegre	16
1595	Zapala	16
1596	Aguada Cecilio	17
1597	Aguada de Guerra	17
1598	Allén	17
1599	Arroyo de La Ventana	17
1600	Arroyo Los Berros	17
1601	Bariloche	17
1602	Calte. Cordero	17
1603	Campo Grande	17
1604	Catriel	17
1605	Cerro Policía	17
1606	Cervantes	17
1607	Chelforo	17
1608	Chimpay	17
1609	Chinchinales	17
1610	Chipauquil	17
1611	Choele Choel	17
1612	Cinco Saltos	17
1613	Cipolletti	17
1614	Clemente Onelli	17
1615	Colán Conhue	17
1616	Comallo	17
1617	Comicó	17
1618	Cona Niyeu	17
1619	Coronel Belisle	17
1620	Cubanea	17
1621	Darwin	17
1622	Dina Huapi	17
1623	El Bolsón	17
1624	El Caín	17
1625	El Manso	17
1626	Gral. Conesa	17
1627	Gral. Enrique Godoy	17
1628	Gral. Fernandez Oro	17
1629	Gral. Roca	17
1630	Guardia Mitre	17
1631	Ing. Huergo	17
1632	Ing. Jacobacci	17
1633	Laguna Blanca	17
1634	Lamarque	17
1635	Las Grutas	17
1636	Los Menucos	17
1637	Luis Beltrán	17
1638	Mainqué	17
1639	Mamuel Choique	17
1640	Maquinchao	17
1641	Mencué	17
1642	Mtro. Ramos Mexia	17
1643	Nahuel Niyeu	17
1644	Naupa Huen	17
1645	Ñorquinco	17
1646	Ojos de Agua	17
1647	Paso de Agua	17
1648	Paso Flores	17
1649	Peñas Blancas	17
1650	Pichi Mahuida	17
1651	Pilcaniyeu	17
1652	Pomona	17
1653	Prahuaniyeu	17
1654	Rincón Treneta	17
1655	Río Chico	17
1656	Río Colorado	17
1657	Roca	17
1658	San Antonio Oeste	17
1659	San Javier	17
1660	Sierra Colorada	17
1661	Sierra Grande	17
1662	Sierra Pailemán	17
1663	Valcheta	17
1664	Valle Azul	17
1665	Viedma	17
1666	Villa Llanquín	17
1667	Villa Mascardi	17
1668	Villa Regina	17
1669	Yaminué	17
1670	A. Saravia	18
1671	Aguaray	18
1672	Angastaco	18
1673	Animaná	18
1674	Cachi	18
1675	Cafayate	18
1676	Campo Quijano	18
1677	Campo Santo	18
1678	Capital	18
1679	Cerrillos	18
1680	Chicoana	18
1681	Col. Sta. Rosa	18
1682	Coronel Moldes	18
1683	El Bordo	18
1684	El Carril	18
1685	El Galpón	18
1686	El Jardín	18
1687	El Potrero	18
1688	El Quebrachal	18
1689	El Tala	18
1690	Embarcación	18
1691	Gral. Ballivian	18
1692	Gral. Güemes	18
1693	Gral. Mosconi	18
1694	Gral. Pizarro	18
1695	Guachipas	18
1696	Hipólito Yrigoyen	18
1697	Iruyá	18
1698	Isla De Cañas	18
1699	J. V. Gonzalez	18
1700	La Caldera	18
1701	La Candelaria	18
1702	La Merced	18
1703	La Poma	18
1704	La Viña	18
1705	Las Lajitas	18
1706	Los Toldos	18
1707	Metán	18
1708	Molinos	18
1709	Nazareno	18
1710	Orán	18
1711	Payogasta	18
1712	Pichanal	18
1713	Prof. S. Mazza	18
1714	Río Piedras	18
1715	Rivadavia Banda Norte	18
1716	Rivadavia Banda Sur	18
1717	Rosario de La Frontera	18
1718	Rosario de Lerma	18
1719	Saclantás	18
1721	San Antonio	18
1722	San Carlos	18
1723	San José De Metán	18
1724	San Ramón	18
1725	Santa Victoria E.	18
1726	Santa Victoria O.	18
1727	Tartagal	18
1728	Tolar Grande	18
1729	Urundel	18
1730	Vaqueros	18
1731	Villa San Lorenzo	18
1732	Albardón	19
1733	Angaco	19
1734	Calingasta	19
1735	Capital	19
1736	Caucete	19
1737	Chimbas	19
1738	Iglesia	19
1739	Jachal	19
1740	Nueve de Julio	19
1741	Pocito	19
1742	Rawson	19
1743	Rivadavia	19
1745	San Martín	19
1746	Santa Lucía	19
1747	Sarmiento	19
1748	Ullum	19
1749	Valle Fértil	19
1750	Veinticinco de Mayo	19
1751	Zonda	19
1752	Alto Pelado	20
1753	Alto Pencoso	20
1754	Anchorena	20
1755	Arizona	20
1756	Bagual	20
1757	Balde	20
1758	Batavia	20
1759	Beazley	20
1760	Buena Esperanza	20
1761	Candelaria	20
1762	Capital	20
1763	Carolina	20
1764	Carpintería	20
1765	Concarán	20
1766	Cortaderas	20
1767	El Morro	20
1768	El Trapiche	20
1769	El Volcán	20
1770	Fortín El Patria	20
1771	Fortuna	20
1772	Fraga	20
1773	Juan Jorba	20
1774	Juan Llerena	20
1775	Juana Koslay	20
1776	Justo Daract	20
1777	La Calera	20
1778	La Florida	20
1779	La Punilla	20
1780	La Toma	20
1781	Lafinur	20
1782	Las Aguadas	20
1783	Las Chacras	20
1784	Las Lagunas	20
1785	Las Vertientes	20
1786	Lavaisse	20
1787	Leandro N. Alem	20
1788	Los Molles	20
1789	Luján	20
1790	Mercedes	20
1791	Merlo	20
1792	Naschel	20
1793	Navia	20
1794	Nogolí	20
1795	Nueva Galia	20
1796	Papagayos	20
1797	Paso Grande	20
1798	Potrero de Los Funes	20
1799	Quines	20
1800	Renca	20
1801	Saladillo	20
1802	San Francisco	20
1803	San Gerónimo	20
1804	San Martín	20
1805	San Pablo	20
1806	Santa Rosa de Conlara	20
1807	Talita	20
1808	Tilisarao	20
1809	Unión	20
1810	Villa de La Quebrada	20
1811	Villa de Praga	20
1812	Villa del Carmen	20
1813	Villa Gral. Roca	20
1814	Villa Larca	20
1815	Villa Mercedes	20
1816	Zanjitas	20
1817	Calafate	21
1818	Caleta Olivia	21
1819	Cañadón Seco	21
1820	Comandante Piedrabuena	21
1821	El Calafate	21
1822	El Chaltén	21
1823	Gdor. Gregores	21
1824	Hipólito Yrigoyen	21
1825	Jaramillo	21
1826	Koluel Kaike	21
1827	Las Heras	21
1828	Los Antiguos	21
1829	Perito Moreno	21
1830	Pico Truncado	21
1831	Pto. Deseado	21
1832	Pto. San Julián	21
1833	Pto. 21	21
1834	Río Cuarto	21
1835	Río Gallegos	21
1836	Río Turbio	21
1837	Tres Lagos	21
1838	Veintiocho De Noviembre	21
1839	Aarón Castellanos	22
1840	Acebal	22
1841	Aguará Grande	22
1842	Albarellos	22
1843	Alcorta	22
1844	Aldao	22
1845	Alejandra	22
1846	Álvarez	22
1847	Ambrosetti	22
1848	Amenábar	22
1849	Angélica	22
1850	Angeloni	22
1851	Arequito	22
1852	Arminda	22
1853	Armstrong	22
1854	Arocena	22
1855	Arroyo Aguiar	22
1856	Arroyo Ceibal	22
1857	Arroyo Leyes	22
1858	Arroyo Seco	22
1859	Arrufó	22
1860	Arteaga	22
1861	Ataliva	22
1862	Aurelia	22
1863	Avellaneda	22
1864	Barrancas	22
1865	Bauer Y Sigel	22
1866	Bella Italia	22
1867	Berabevú	22
1868	Berna	22
1869	Bernardo de Irigoyen	22
1870	Bigand	22
1871	Bombal	22
1872	Bouquet	22
1873	Bustinza	22
1874	Cabal	22
1875	Cacique Ariacaiquin	22
1876	Cafferata	22
1877	Calchaquí	22
1878	Campo Andino	22
1879	Campo Piaggio	22
1880	Cañada de Gómez	22
1881	Cañada del Ucle	22
1882	Cañada Rica	22
1883	Cañada Rosquín	22
1884	Candioti	22
1885	Capital	22
1886	Capitán Bermúdez	22
1887	Capivara	22
1888	Carcarañá	22
1889	Carlos Pellegrini	22
1890	Carmen	22
1891	Carmen Del Sauce	22
1892	Carreras	22
1893	Carrizales	22
1894	Casalegno	22
1895	Casas	22
1896	Casilda	22
1897	Castelar	22
1898	Castellanos	22
1899	Cayastá	22
1900	Cayastacito	22
1901	Centeno	22
1902	Cepeda	22
1903	Ceres	22
1904	Chabás	22
1905	Chañar Ladeado	22
1906	Chapuy	22
1907	Chovet	22
1908	Christophersen	22
1909	Classon	22
1910	Cnel. Arnold	22
1911	Cnel. Bogado	22
1912	Cnel. Dominguez	22
1913	Cnel. Fraga	22
1914	Col. Aldao	22
1915	Col. Ana	22
1916	Col. Belgrano	22
1917	Col. Bicha	22
1918	Col. Bigand	22
1919	Col. Bossi	22
1920	Col. Cavour	22
1921	Col. Cello	22
1922	Col. Dolores	22
1923	Col. Dos Rosas	22
1924	Col. Durán	22
1925	Col. Iturraspe	22
1926	Col. Margarita	22
1927	Col. Mascias	22
1928	Col. Raquel	22
1929	Col. Rosa	22
1930	Col. San José	22
1931	Constanza	22
1932	Coronda	22
1933	Correa	22
1934	Crispi	22
1935	Cululú	22
1936	Curupayti	22
1937	Desvio Arijón	22
1938	Diaz	22
1939	Diego de Alvear	22
1940	Egusquiza	22
1941	El Arazá	22
1942	El Rabón	22
1943	El Sombrerito	22
1944	El Trébol	22
1945	Elisa	22
1946	Elortondo	22
1947	Emilia	22
1948	Empalme San Carlos	22
1949	Empalme Villa Constitucion	22
1950	Esmeralda	22
1951	Esperanza	22
1952	Estación Alvear	22
1953	Estacion Clucellas	22
1954	Esteban Rams	22
1955	Esther	22
1956	Esustolia	22
1957	Eusebia	22
1958	Felicia	22
1959	Fidela	22
1960	Fighiera	22
1961	Firmat	22
1962	Florencia	22
1963	Fortín Olmos	22
1964	Franck	22
1965	Fray Luis Beltrán	22
1966	Frontera	22
1967	Fuentes	22
1968	Funes	22
1969	Gaboto	22
1970	Galisteo	22
1971	Gálvez	22
1972	Garabalto	22
1973	Garibaldi	22
1974	Gato Colorado	22
1975	Gdor. Crespo	22
1976	Gessler	22
1977	Godoy	22
1978	Golondrina	22
1979	Gral. Gelly	22
1980	Gral. Lagos	22
1981	Granadero Baigorria	22
1982	Gregoria Perez De Denis	22
1983	Grutly	22
1984	Guadalupe N.	22
1985	Gödeken	22
1986	Helvecia	22
1987	Hersilia	22
1988	Hipatía	22
1989	Huanqueros	22
1990	Hugentobler	22
1991	Hughes	22
1992	Humberto 1º	22
1993	Humboldt	22
1994	Ibarlucea	22
1995	Ing. Chanourdie	22
1996	Intiyaco	22
1997	Ituzaingó	22
1998	Jacinto L. Aráuz	22
1999	Josefina	22
2000	Juan B. Molina	22
2001	Juan de Garay	22
2002	Juncal	22
2003	La Brava	22
2004	La Cabral	22
2005	La Camila	22
2006	La Chispa	22
2007	La Clara	22
2008	La Criolla	22
2009	La Gallareta	22
2010	La Lucila	22
2011	La Pelada	22
2012	La Penca	22
2013	La Rubia	22
2014	La Sarita	22
2015	La Vanguardia	22
2016	Labordeboy	22
2017	Laguna Paiva	22
2018	Landeta	22
2019	Lanteri	22
2020	Larrechea	22
2021	Las Avispas	22
2022	Las Bandurrias	22
2023	Las Garzas	22
2024	Las Palmeras	22
2025	Las Parejas	22
2026	Las Petacas	22
2027	Las Rosas	22
2028	Las Toscas	22
2029	Las Tunas	22
2030	Lazzarino	22
2031	Lehmann	22
2032	Llambi Campbell	22
2033	Logroño	22
2034	Loma Alta	22
2035	López	22
2036	Los Amores	22
2037	Los Cardos	22
2038	Los Laureles	22
2039	Los Molinos	22
2040	Los Quirquinchos	22
2041	Lucio V. Lopez	22
2042	Luis Palacios	22
2043	Ma. Juana	22
2044	Ma. Luisa	22
2045	Ma. Susana	22
2046	Ma. Teresa	22
2047	Maciel	22
2048	Maggiolo	22
2049	Malabrigo	22
2050	Marcelino Escalada	22
2051	Margarita	22
2052	Matilde	22
2053	Mauá	22
2054	Máximo Paz	22
2055	Melincué	22
2056	Miguel Torres	22
2057	Moisés Ville	22
2058	Monigotes	22
2059	Monje	22
2060	Monte Obscuridad	22
2061	Monte Vera	22
2062	Montefiore	22
2063	Montes de Oca	22
2064	Murphy	22
2065	Ñanducita	22
2066	Naré	22
2067	Nelson	22
2068	Nicanor E. Molinas	22
2069	Nuevo Torino	22
2070	Oliveros	22
2071	Palacios	22
2072	Pavón	22
2073	Pavón Arriba	22
2074	Pedro Gómez Cello	22
2075	Pérez	22
2076	Peyrano	22
2077	Piamonte	22
2078	Pilar	22
2079	Piñero	22
2080	Plaza Clucellas	22
2081	Portugalete	22
2082	Pozo Borrado	22
2083	Progreso	22
2084	Providencia	22
2085	Pte. Roca	22
2086	Pueblo Andino	22
2087	Pueblo Esther	22
2088	Pueblo Gral. San Martín	22
2089	Pueblo Irigoyen	22
2090	Pueblo Marini	22
2091	Pueblo Muñoz	22
2092	Pueblo Uranga	22
2093	Pujato	22
2094	Pujato N.	22
2095	Rafaela	22
2096	Ramayón	22
2097	Ramona	22
2098	Reconquista	22
2099	Recreo	22
2100	Ricardone	22
2101	Rivadavia	22
2102	Roldán	22
2103	Romang	22
2104	Rosario	22
2105	Rueda	22
2106	Rufino	22
2107	Sa Pereira	22
2108	Saguier	22
2109	Saladero M. Cabal	22
2110	Salto Grande	22
2111	San Agustín	22
2112	San Antonio de Obligado	22
2113	San Bernardo (N.J.)	22
2114	San Bernardo (S.J.)	22
2115	San Carlos Centro	22
2116	San Carlos N.	22
2117	San Carlos S.	22
2118	San Cristóbal	22
2119	San Eduardo	22
2120	San Eugenio	22
2121	San Fabián	22
2122	San Fco. de Santa Fé	22
2123	San Genaro	22
2124	San Genaro N.	22
2125	San Gregorio	22
2126	San Guillermo	22
2127	San Javier	22
2128	San Jerónimo del Sauce	22
2129	San Jerónimo N.	22
2130	San Jerónimo S.	22
2131	San Jorge	22
2132	San José de La Esquina	22
2133	San José del Rincón	22
2134	San Justo	22
2135	San Lorenzo	22
2136	San Mariano	22
2137	San Martín de Las Escobas	22
2138	San Martín N.	22
2139	San Vicente	22
2140	Sancti Spititu	22
2141	Sanford	22
2142	Santo Domingo	22
2143	Santo Tomé	22
2144	Santurce	22
2145	Sargento Cabral	22
2146	Sarmiento	22
2147	Sastre	22
2148	Sauce Viejo	22
2149	Serodino	22
2150	Silva	22
2151	Soldini	22
2152	Soledad	22
2153	Soutomayor	22
2154	Sta. Clara de Buena Vista	22
2155	Sta. Clara de Saguier	22
2156	Sta. Isabel	22
2157	Sta. Margarita	22
2158	Sta. Maria Centro	22
2159	Sta. María N.	22
2160	Sta. Rosa	22
2161	Sta. Teresa	22
2162	Suardi	22
2163	Sunchales	22
2164	Susana	22
2165	Tacuarendí	22
2166	Tacural	22
2167	Tartagal	22
2168	Teodelina	22
2169	Theobald	22
2170	Timbúes	22
2171	Toba	22
2172	Tortugas	22
2173	Tostado	22
2174	Totoras	22
2175	Traill	22
2176	Venado Tuerto	22
2177	Vera	22
2178	Vera y Pintado	22
2179	Videla	22
2180	Vila	22
2181	Villa Amelia	22
2182	Villa Ana	22
2183	Villa Cañas	22
2184	Villa Constitución	22
2185	Villa Eloísa	22
2186	Villa Gdor. Gálvez	22
2187	Villa Guillermina	22
2188	Villa Minetti	22
2189	Villa Mugueta	22
2190	Villa Ocampo	22
2191	Villa San José	22
2192	Villa Saralegui	22
2193	Villa Trinidad	22
2194	Villada	22
2195	Virginia	22
2196	Wheelwright	22
2197	Zavalla	22
2198	Zenón Pereira	22
2199	Añatuya	23
2200	Árraga	23
2201	Bandera	23
2202	Bandera Bajada	23
2203	Beltrán	23
2204	Brea Pozo	23
2205	Campo Gallo	23
2206	Capital	23
2207	Chilca Juliana	23
2208	Choya	23
2209	Clodomira	23
2210	Col. Alpina	23
2211	Col. Dora	23
2212	Col. El Simbolar Robles	23
2213	El Bobadal	23
2214	El Charco	23
2215	El Mojón	23
2216	Estación Atamisqui	23
2217	Estación Simbolar	23
2218	Fernández	23
2219	Fortín Inca	23
2220	Frías	23
2221	Garza	23
2222	Gramilla	23
2223	Guardia Escolta	23
2224	Herrera	23
2225	Icaño	23
2226	Ing. Forres	23
2227	La Banda	23
2228	La Cañada	23
2229	Laprida	23
2230	Lavalle	23
2231	Loreto	23
2232	Los Juríes	23
2233	Los Núñez	23
2234	Los Pirpintos	23
2235	Los Quiroga	23
2236	Los Telares	23
2237	Lugones	23
2238	Malbrán	23
2239	Matara	23
2240	Medellín	23
2241	Monte Quemado	23
2242	Nueva Esperanza	23
2243	Nueva Francia	23
2244	Palo Negro	23
2245	Pampa de Los Guanacos	23
2246	Pinto	23
2247	Pozo Hondo	23
2248	Quimilí	23
2249	Real Sayana	23
2250	Sachayoj	23
2251	San Pedro de Guasayán	23
2252	Selva	23
2253	Sol de Julio	23
2254	Sumampa	23
2255	Suncho Corral	23
2256	Taboada	23
2257	Tapso	23
2258	Termas de Rio Hondo	23
2259	Tintina	23
2260	Tomas Young	23
2261	Vilelas	23
2262	Villa Atamisqui	23
2263	Villa La Punta	23
2264	Villa Ojo de Agua	23
2265	Villa Río Hondo	23
2266	Villa Salavina	23
2267	Villa Unión	23
2268	Vilmer	23
2269	Weisburd	23
2270	Río Grande	24
2271	Tolhuin	24
2272	Ushuaia	24
2273	Acheral	25
2274	Agua Dulce	25
2275	Aguilares	25
2276	Alderetes	25
2277	Alpachiri	25
2278	Alto Verde	25
2279	Amaicha del Valle	25
2280	Amberes	25
2281	Ancajuli	25
2282	Arcadia	25
2283	Atahona	25
2284	Banda del Río Sali	25
2285	Bella Vista	25
2286	Buena Vista	25
2287	Burruyacú	25
2288	Capitán Cáceres	25
2289	Cevil Redondo	25
2290	Choromoro	25
2291	Ciudacita	25
2292	Colalao del Valle	25
2293	Colombres	25
2294	Concepción	25
2295	Delfín Gallo	25
2296	El Bracho	25
2297	El Cadillal	25
2298	El Cercado	25
2299	El Chañar	25
2300	El Manantial	25
2301	El Mojón	25
2302	El Mollar	25
2303	El Naranjito	25
2304	El Naranjo	25
2305	El Polear	25
2306	El Puestito	25
2307	El Sacrificio	25
2308	El Timbó	25
2309	Escaba	25
2310	Esquina	25
2311	Estación Aráoz	25
2312	Famaillá	25
2313	Gastone	25
2314	Gdor. Garmendia	25
2315	Gdor. Piedrabuena	25
2316	Graneros	25
2317	Huasa Pampa	25
2318	J. B. Alberdi	25
2319	La Cocha	25
2320	La Esperanza	25
2321	La Florida	25
2322	La Ramada	25
2323	La Trinidad	25
2324	Lamadrid	25
2325	Las Cejas	25
2326	Las Talas	25
2327	Las Talitas	25
2328	Los Bulacio	25
2329	Los Gómez	25
2330	Los Nogales	25
2331	Los Pereyra	25
2332	Los Pérez	25
2333	Los Puestos	25
2334	Los Ralos	25
2335	Los Sarmientos	25
2336	Los Sosa	25
2337	Lules	25
2338	M. García Fernández	25
2339	Manuela Pedraza	25
2340	Medinas	25
2341	Monte Bello	25
2342	Monteagudo	25
2343	Monteros	25
2344	Padre Monti	25
2345	Pampa Mayo	25
2346	Quilmes	25
2347	Raco	25
2348	Ranchillos	25
2349	Río Chico	25
2350	Río Colorado	25
2351	Río Seco	25
2352	Rumi Punco	25
2353	San Andrés	25
2354	San Felipe	25
2355	San Ignacio	25
2356	San Javier	25
2357	San José	25
2358	San Miguel de 25	25
2359	San Pedro	25
2360	San Pedro de Colalao	25
2361	Santa Rosa de Leales	25
2362	Sgto. Moya	25
2363	Siete de Abril	25
2364	Simoca	25
2365	Soldado Maldonado	25
2366	Sta. Ana	25
2367	Sta. Cruz	25
2368	Sta. Lucía	25
2369	Taco Ralo	25
2370	Tafí del Valle	25
2371	Tafí Viejo	25
2372	Tapia	25
2373	Teniente Berdina	25
2374	Trancas	25
2375	Villa Belgrano	25
2376	Villa Benjamín Araoz	25
2377	Villa Chiligasta	25
2378	Villa de Leales	25
2379	Villa Quinteros	25
2380	Yánima	25
2381	Yerba Buena	25
2382	Yerba Buena (S)	25
\.


ALTER TABLE public.localidades ENABLE TRIGGER ALL;

--
-- Data for Name: tipos_documentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.tipos_documentos DISABLE TRIGGER ALL;

COPY public.tipos_documentos (tipo_persona, nombre, descripcion, id_tipo_documento) FROM stdin;
FISICA	LE	Libreta de Enrolamiento	2
FISICA	PASAP	Pasaporte	3
FISICA	CI	Cedula de Identidad	15
FISICA	LC	Libreta Civica	16
FISICA	DNI	Documento Nacional de Identidad	23
\.


ALTER TABLE public.tipos_documentos ENABLE TRIGGER ALL;

--
-- Data for Name: vinculos_familiares; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.vinculos_familiares DISABLE TRIGGER ALL;

COPY public.vinculos_familiares (id_vinculo_familiar, nombre) FROM stdin;
\.


ALTER TABLE public.vinculos_familiares ENABLE TRIGGER ALL;

--
-- Data for Name: trabajadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.trabajadores DISABLE TRIGGER ALL;

COPY public.trabajadores (id_trabajador, id_tipo_dni, numero_dni, apeynom, estado, fecha_alta, fecha_baja, dom_nombre_calle, dom_numero_calle, dom_nombre_edificio, dom_numero_piso, codigo_postal, id_localidad, codigo_telefono, numero_telefono, codigo_celular, numero_celular, email, fecha_nacimiento, porcentaje_minusvalia, nombre_padre, nombre_madre, sexo, estado_civil, id_vinculo_familiar, observaciones, id_obra_social, numero_seguridad_social_a, numero_seguridad_social_b, numero_seguridad_social, cuil) FROM stdin;
6	23	29895984	ZACHARSKI SANDRA	AL	2018-10-29	2018-10-29	\N	\N	\N	\N	\N	\N	3764	224655  	\N	\N	\N	1983-05-01	\N	ZACHARSKI ALBERTO	BRESZINSKI VERONICA	F	S	\N	\N	1	\N	\N	\N	329895984
7	23	26564328	MENDEZ GUSTAVO	AL	2017-11-15	\N	RIOJA	456	\N	\N	3350	\N	3764	426798  	3764	213454  	\N	2018-11-12	\N	RODRIGUEZ PEPE	SANTAL LUCIA	M	C	\N	probando	1	\N	\N	564322222	564322222
5	23	23567899	RODRIGUEZ PABLO	AL	2018-11-04	2018-11-12	RIOJA	456	\N	\N	3350	1518	3764	426798  	3764	213454  	\N	1990-11-21	\N	RODRIGUEZ PEPE	SANTAL LUCIA	M	S	\N	\N	1	\N	\N	4523.567.899	34343453453
10	23	29893983	PEREZ JUAN	BA	2018-11-27	2018-11-27	LIBERTAD	345	\N	\N	\N	1463	\N	\N	\N	\N	\N	1984-11-27	\N	\N	\N	M	C	\N	\N	1	\N	\N	987	4298939833
1	23	29895980	BENITEZ JUAN	AL	2018-10-29	\N	ALVEAR	200	\N	\N	\N	\N	3764	224655  	\N	\N	\N	1982-05-30	\N	BENITEZ MARIO	PEREZ ROSARIO	M	S	\N	\N	1	\N	\N	2329895980	2223
2	23	28987345	PEREZ MARIA DE LOS ANGELES	AL	2018-11-06	\N	LIBERTAD	21	\N	\N	3350	\N	3764	224677  	3764	213499  	\N	2018-11-06	\N	PEREZ JUAN	MARAVILLA MARTA	F	S	\N	\N	1	0	9	\N	\N
3	23	28678987	MANITTO ERCILIA	AL	2018-11-12	\N	LABALLE	1212	\N	\N	3350	1518	3764	4234565 	3764	334565  	\N	1986-11-19	\N	MANITTO JUANJO	RODRIGUEZ MARIA ESTER	F	S	\N	\N	1	\N	\N	8828678987	\N
4	23	30897876	FERNANDEZ JORGE	AL	2018-11-13	\N	ALVEAR	234	\N	\N	3350	1463	3758	426798  	3758	356754  	\N	2018-11-13	\N	FERNANDEZ JOSE	CASTROCARABIA MARIA	M	S	\N	\N	1	\N	\N	5530897976	\N
\.


ALTER TABLE public.trabajadores ENABLE TRIGGER ALL;

--
-- Data for Name: antecentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.antecentes DISABLE TRIGGER ALL;

COPY public.antecentes (id_antecedente, fecha_emision, posee_antecedente, fecha_vencimiento, observaciones, id_trabajador) FROM stdin;
1	2018-11-19	N	2019-02-19	todo ok	6
2	2018-11-19	N	2019-02-26	prueba	6
3	2018-11-27	N	2019-02-04	\N	10
\.


ALTER TABLE public.antecentes ENABLE TRIGGER ALL;

--
-- Name: antecentes_id_antecedente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.antecentes_id_antecedente_seq', 3, true);


--
-- Data for Name: articulos_inasistencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.articulos_inasistencias DISABLE TRIGGER ALL;

COPY public.articulos_inasistencias (id_articulo, nombre) FROM stdin;
\.


ALTER TABLE public.articulos_inasistencias ENABLE TRIGGER ALL;

--
-- Name: articulos_inasistencias_id_articulo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articulos_inasistencias_id_articulo_seq', 1, false);


--
-- Data for Name: tipos_asignaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.tipos_asignaciones DISABLE TRIGGER ALL;

COPY public.tipos_asignaciones (id_tipo_asignacion, nombre, descripcion) FROM stdin;
1	Asignación prenatal	Es el pago mensual de un monto equivalente a la asignación por hijo. Podés solicitarla, acreditando el embarazo, a partir de las 12 semanas de gestación y hasta el mes en que se produzca el nacimiento o interrupción del embarazo. La pueden cobrar la madre o el padre acreditando la relación de matrimonio o convivencia con la mujer embarazada.
2	Asignación por maternidad	Si trabajás en relación de dependencia o en casas particulares podés tramitar la asignación por maternidad que otorga ANSES
3	Asignación familiar por hijo o hijo con discapacidad	Si trabajás en relación de dependencia y los ingresos del grupo familiar se encuentran entre los topes mínimo y máximo vigentes, tanto el individual como el del grupo familiar podés solicitar el pago de la asignación.
4	Asignación familiar por ayuda escolar anual	Si trabajás en relación de dependencia podés acceder al pago anual por escolaridad o rehabilitación, de tu hijo o hijo con discapacidad
5	Asignación familiar por matrimonio	Si vos y/o tu pareja trabajan en relación de dependencia pueden recibir el pago de esta asignación por única vez al contraer matrimonio.
6	Asignación familiar por nacimiento o adopción	Si trabajás en relación de dependencia podés cobrar el pago extraordinario por el nacimiento o adopción de tu hijo.
\.


ALTER TABLE public.tipos_asignaciones ENABLE TRIGGER ALL;

--
-- Data for Name: asignaciones_flia_trabajador; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.asignaciones_flia_trabajador DISABLE TRIGGER ALL;

COPY public.asignaciones_flia_trabajador (id_asignacion_flia_trabajador, id_tipo_asignacion, id_trabajador, fecha, observacion) FROM stdin;
1	2	6	2018-11-19	aaaa ccc
2	4	7	2018-04-05	\N
\.


ALTER TABLE public.asignaciones_flia_trabajador ENABLE TRIGGER ALL;

--
-- Name: asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asignaciones_flia_trabajador_id_asignacion_flia_trabajador_seq', 2, true);


--
-- Name: cargos_id_cargo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cargos_id_cargo_seq', 1, false);


--
-- Data for Name: convenios; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.convenios DISABLE TRIGGER ALL;

COPY public.convenios (id_convenio, nombre) FROM stdin;
1	Judiciales
2	Camioneros
\.


ALTER TABLE public.convenios ENABLE TRIGGER ALL;

--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.categorias DISABLE TRIGGER ALL;

COPY public.categorias (id_categoria, nombre, basico, partida, basico_total, id_convenio) FROM stdin;
101	JUEZ DE LA CORTE SUPREMA	27886.869999999999	0	183601.929999999993	1
1501	SECRETARIO DE LA CORTE SUPREMA	25120.2700000000004	1	151767.01999999999	1
1520	SECRET GRAL DE ADMINISTRACION	25120.2700000000004	1	151767.01999999999	1
1504	SECRETARIO LETRADO C.SUPREMA	22867.1100000000006	1	119142.899999999994	1
3501	DIRECTOR GENERAL	22867.1100000000006	1	119142.899999999994	1
4001	SUBDIRECTOR GENERAL	20078.4000000000015	1	99322.8099999999977	1
3502	DIRECTOR MEDICO	20078.4000000000015	1	99322.8099999999977	1
4501	PERITO MEDICO	20078.4000000000015	1	99322.8099999999977	1
4502	PERITO QUIMICO	20078.4000000000015	1	99322.8099999999977	1
4507	PERITO	20078.4000000000015	1	99322.8099999999977	1
4508	PERITO ABOGADO	20078.4000000000015	1	99322.8099999999977	1
4503	PERITO CONTADOR	20078.4000000000015	1	99322.8099999999977	1
4504	PERITO CALIGRAFO	20078.4000000000015	1	99322.8099999999977	1
1507	SECRETARIO DE CAMARA	18265.5400000000009	1	92142.6999999999971	1
3002	PROSECRETARIO LETRADO	18265.5400000000009	1	92142.6300000000047	1
1511	SECRETARIO DE JUZGADO	17708.2299999999996	1	86192.3399999999965	1
1518	SECRETARIO CONTABLE	17708.2299999999996	1	86192.3800000000047	1
1519	SUBINTENDENTE	17708.2299999999996	1	86192.3800000000047	1
2504	SUBSECRETARIO ADMINISTRATIVO	17708.2299999999996	1	86192.3399999999965	1
3003	PROSECRETARIO JEFE	17429.0699999999997	1	73049.320000000007	1
5501	JEFE DE DEPARTAMENTO	17010.7700000000004	1	71417.0200000000041	1
6001	2DO.JEFE DE DEPARTAMENTO	14747.9500000000007	1	67325.5099999999948	1
3007	PROSECRETARIO ADMINISTRATIVO	14747.9500000000007	1	67325.5500000000029	1
6390	JEFE DE DESPACHO	11910.1000000000004	2	57872.9300000000003	1
6400	OFICIAL MAYOR	9929.67000000000007	2	50150.010000000002	1
6401	OFICIAL	9034.47999999999956	2	43731.5299999999988	1
6402	ESCRIBIENTE	7943.85999999999967	2	38359.6900000000023	1
6403	ESCRIBIENTE AUXILIAR	6417.10000000000036	2	33899.260000000002	1
6404	AUXILIAR	5234.60999999999967	2	30153.8899999999994	1
8301	SUPERVISOR	11910.1000000000004	3	57872.9300000000003	1
8400	JEFE DE SECCION	9929.67000000000007	3	50150.010000000002	1
8401	ENCARGADO DE SECCION	9034.3700000000008	3	43731.4199999999983	1
8402	OFICIAL DE SERVICIO	7943.85999999999967	3	38359.6900000000023	1
8403	MEDIO OFICIAL	6417.10000000000036	3	35406.0899999999965	1
8404	AYUDANTE	5234.60999999999967	3	31419.7700000000004	1
1	JEFE DE DEPARTAMENTO	1800	4	25655.3899999999994	1
2	JEFE DE DIVISION	1656	4	24281.369999999999	1
3	OFICIAL SUPERIOR DE 1ERA	1602	4	23232.4300000000003	1
4	OFICIAL SUPERIOR DE 2Da	1518	4	21371.380000000001	1
5	JEFE DE DESPACHO	1461	4	20508.6599999999999	1
6	OFICIAL MAYOR	1341	4	18433.1899999999987	1
7	OFICIAL PRINCIPAL	1224	4	17151.4799999999996	1
8	OFICIAL	1140	4	16022.5699999999997	1
9	OFICIAL AUXILIAR	1050	4	14975.7399999999998	1
10	ESCRIBIENTE MAYOR	956	4	13295.4400000000005	1
11	ESCRIBIENTE	849	4	11909.7099999999991	1
12	AUXILIAR	768	4	11056.3700000000008	1
13	AYUDANTE	660	4	10053.3400000000001	1
\.


ALTER TABLE public.categorias ENABLE TRIGGER ALL;

--
-- Name: convenios_id_convenio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.convenios_id_convenio_seq', 2, true);


--
-- Data for Name: conyugue; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.conyugue DISABLE TRIGGER ALL;

COPY public.conyugue (id_conyugue, apeynom, sexo, dom_calle, dom_num, id_trabajador) FROM stdin;
1	DUARTE ORTELLADO PEDRO	M	LIBERTAD	780	6
2	RODRIGUEZ MANUEL	M	LIBERTAD	234	10
\.


ALTER TABLE public.conyugue ENABLE TRIGGER ALL;

--
-- Name: conyugue_id_conyugue_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conyugue_id_conyugue_seq', 2, true);


--
-- Name: dcumentos_id_documento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dcumentos_id_documento_seq', 1, false);


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.departamentos DISABLE TRIGGER ALL;

COPY public.departamentos (id_departamento, idinstancia, nombre_corto, nombre_largo, calle, nro_propiedad, piso, depto, email, nivel_organigrama, telefono_numero, telefono_centrex, abreviatura, responsable_externo, fecha, idnorma, idagente, id_localidad, id_fuero, activa) FROM stdin;
10007	\N	DEPARTAMENTO POLICÍA EN FUNCIÓN JUDICIAL	DEPARTAMENTO POLICÍA EN FUNCIÓN JUDICIAL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2014-09-17	\N	\N	1	8	t
10008	\N	TRIBUNAL ELECTORAL	TRIBUNAL ELECTORAL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2014-09-19	\N	\N	1	8	t
10009	\N	SECRETARÍA DE VIOLENCIA FAMILIAR	SECRETARÍA DE VIOLENCIA FAMILIAR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2014-10-24	\N	\N	1	8	t
10010	\N	CITACIONES JUDICIALES POSADAS	CITACIONES JUDICIALES POSADAS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2014-12-22	\N	\N	1	8	t
75	2	JUZGADO LABORAL Nº 2	JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 2	Bolívar	1745	3	\N	\N	1	4446465	6465	J.LAB.Nº 2	\N	2012-01-01	\N	346	1	2	t
10012	\N	OFICINA DE PERSONAL - Posadas	OFICINA DE PERSONAL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-02-04	\N	\N	1	8	t
10014	\N	REGISTRO PUBLICO DE BIENES ENTREGADOS EN DEPOSITO JUDICIAL	REGISTRO PUBLICO DE BIENES ENTREGADOS EN DEPOSITO JUDICIAL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-02-12	\N	\N	1	8	t
10013	\N	LINEA 137	LINEA 137	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-02-09	\N	\N	1	8	t
74	2	JUZGADO LABORAL Nº 1	JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 1	Bolívar	1745	1	\N	\N	1	4446464	6464	J.LAB.Nº 1	\N	2012-01-01	\N	517	1	2	t
19	2	JUZGADO DE INSTRUCCIÓN N° 2	JUZGADO DE INSTRUCCIÓN N° 2	SANTA FE	1630	PB   	\N	\N	1	4446440	131	JUZ.INST.Nº 2	\N	2012-01-01	1	2566	1	4	t
253	1	Municipalidad de Oberá	Municipalidad de Oberá	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	8	f
281	1	JUZGADO PENAL Nº 2	JUZGADO PENAL Nº 2	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
280	1	JUZGADO PENAL Nº1	JUZGADO PENAL Nº 1	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
43	2	DEFENSORIA DE INSTRUCCION Nº 4	DEFENSORIA OFICIAL DE INSTRUCCION Nº 4	BUENOS AIRES	1231	PB   	   	\N	1	4446571	6477	DEF.INSTR.Nº 4	\N	2012-01-01	1	964	1	4	f
288	1	JUZGADO PENAL Nº 2	JUZGADO PENAL Nº 2	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	17	4	f
35	2	FISCALÍA DE INSTRUCCIÓN Nº 7	FISCALÍA DE INSTRUCCIÓN Nº 7	PEDRO MENDEZ ESQ. URUGUAY	2221	1	   	\N	1	4446576	6576	FIS.INST.Nº 7	\N	2012-01-01	1	1109	1	4	f
168	2	FISCALIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 2	FISCALIA DE 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 2	DINAMARCA ESQ.LA RIOJA	306	\N	   	\N	1	3751426526	\N	F.C.C.L.Y F.Nº2	\N	2012-01-01	1	1794	17	7	f
122	2	FISCALIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 2	FISCALIA DE 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 2	GOBERNADOR BARREIRO	1012	\N	   	\N	1	\N	\N	F.C.C.L.Y F.Nº2	\N	2012-01-01	1	1436	48	7	f
152	1	Juzgado de Paz de Colonia Guaraní	Juzgado de Paz de Colonia Guaraní	San Martín	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	51	8	t
285	1	JUZGADO PENAL Nº 2	JUZGADO PENAL Nº 2	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	4	f
146	1	Juzgado de Paz de Campo ramón	Juzgado de Paz de Campo Ramón	S/ Nombre	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	49	8	t
243	1	Instituto Provincial de Desarrollo Habitacional (I.PRO.D.HA.)	Instituto Provincial de Desarrollo Habitacional (I.PRO.D.HA.)	AVDA. ROQUE PEREZ	\N	\N	   	\N	1	\N	\N	\N	SANTIAGO ROS	2012-01-01	\N	\N	1	8	f
242	1	Instituto Provincial de Previsión Social	Instituto Provincial de Previsión Social	JUNIN	\N	\N	   	\N	1	\N	\N	\N	SANDRA MONTIEL	2012-01-01	\N	\N	1	8	f
23	2	JUZGADO DE INSTRUCCIÓN Nº 6	JUZGADO DE INSTRUCCIÓN Nº 6	BUENOS AIRES	1231	PB   	   	\N	1	4446571	\N	JUZ.INST.Nº 6	\N	2012-01-01	1	746	1	4	f
262	1	DEFENSORÍA PENAL Nº 1	DEFENSORÍA PENAL Nº 1	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
322	\N	POLICIA DE MISIONES	POLICIA DE LA PROVINCIA DE MISIONES	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	2012-11-14	\N	\N	1	8	t
267	1	Fiscalía Penal N-3	Fiscalía Penal N-3	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
144	1	Juzgado de Paz de Campo Grande	Juzgado de Paz de Campo Grande	Avda.Los Cafetales	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	81	8	t
153	1	Juzgado de Paz de Colonia Alberdi	Juzgado de Paz de Colonia Alberdi	Avda.Río Uruguay	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	53	8	t
232	1	Ministerio de Ecología, Reursos Naturarles Renovables	Ministerio de Ecología, Reursos Naturarles Renovables	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
228	1	Ministerio de Hacienda, Finanzas, Obras y Servicios Públicos	Ministerio de Hacienda, Finanzas, Obras y Servicios Públicos	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
64	2	Juzgado Civil, Comercial, Laboral y de Familia N-1	Juzgado de Primera Instancia en lo Civil, Comercial, Laboral y de Familia N-1	San Lorenzo y San Martín	\N	1	\N	\N	1	\N	\N	J.C.C.L.F.1	\N	2012-01-01	\N	1	31	7	t
353	3	CAMARA DE APELACIONES EN LO PENAL Y DE MENORES	CÁMARA DE APELACIONES EN LO PENAL Y DE MENORES	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	2013-09-17	\N	\N	1	4	t
10001	3	REGISTRO DE LAS PERSONAS	REGISTRO DE LAS PERSONAS - POSADAS MNES.	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	2013-10-17	\N	\N	1	8	t
10004	2	CAMARA DE APELACION EN LO CIVIL - COMERCIAL Y LABORAL	CAMARA DE APELACION EN LO CIVIL - COMERCIAL Y LABORAL - OBERA MNES.	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	2013-12-11	\N	\N	48	5	t
10006	\N	DIRECCION GENERAL JUDICIAL DE LA POLICIA DE MISIONES	DIRECCION GENERAL JUDICIAL DE LA POLICIA DE MISIONES	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2014-04-23	\N	\N	1	8	t
354	3	DEFENSORIA CAMARA DE APELACIONES EN LO PENAL Y DE MENORES	DEFENSORIA CAMARA DE APELACIONES EN LO PENAL Y DE MENORES	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	2013-09-17	\N	\N	1	4	t
355	3	FISCALIA DE CAMARA DE APELACIONES EN LO PENAL Y DE MENORES	FISCALIA CAMARA DE APELACIONES EN LO PENAL Y DE MENORES	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	2013-09-17	\N	\N	1	4	t
117	2	JUZGADO CIVIL Y COMERCIAL Nº 3	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 3	Misiones y Bolivia	\N	\N	   	\N	1	3755453002	\N	J.C.Y C.Nº 3	\N	2012-01-01	1	1114	48	1	t
154	1	Juzgado de Paz de San Vicente	Juzgado de Paz de San Vicente	Ricardo Balbín	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	26	8	t
131	2	FISCALIA DE INSTRUCCIÓN Nº 2	FISCALIA DE INSTRUCCIÓN Nº 2	Avda.Sarmiento	1180	\N	   	\N	1	3755425684	1034	FIS.INST.Nº 2	\N	2012-01-01	1	1077	48	4	t
321	2	MINISTERIO PUBLICO PENAL	MINISTERIO PUBLICO PENAL	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	2012-11-13	\N	\N	1	4	t
118	2	Fiscalia Civil y Comercial	Fiscalia en lo Civil y Comercial	Avda. Sarmiento	1180	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	1	t
27	2	Fiscalía del Tribunal Penal N-1	Fiscalía del Tribunal en lo Penal N-1	Santa Fé	1630	\N	   	\N	1	\N	\N	F.T.P.1	\N	2012-01-01	\N	1	1	4	t
28	2	Fiscalía del Tribunal Penal N-2	Fiscalía del Tribunal en lo Penal N-2	La Rioja	1561	\N	   	\N	1	\N	\N	F.T.P.2	\N	2012-01-01	\N	1	1	4	t
158	1	DEFENS.CAM.CIVIL,COMERCIAL Y LAB.	DEFENSORIA DE CAMARA CIVIL, COMERCIAL Y LABORAL	Paraguay	1339	\N	   	\N	1	3751424019	1219	D.CAM.C.C.Y L.	\N	2012-01-01	\N	49	17	5	t
1	1	SIN DEPENDENCIA	SIN DEPENDENCIA	\N	\N	\N	   	\N	1	\N	\N	SD	\N	2012-01-01	\N	1	1	8	t
135	2	DEFENSORIA DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 2	DEFENSORIA OFIC. DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 2	AVDA.SARMIENTO	1217	\N	   	\N	1	3755426225	1003	D.IN.CO.Y M.Nº2	\N	2012-01-01	\N	601	48	1	t
68	2	FISCALIA DE CAMARA CIVIL Y COMERCIAL	FISCALIA DE CAMARA CIVIL Y COMERCIAL	LA RIOJA	1561	PB   	   	\N	1	4446475	\N	FIS.CAM.C.Y C.	\N	2012-01-01	1	1574	1	1	t
179	2	DEFENSORIA DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 1	DEFENSORIA OFIC. DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 1	AVDA.SAN MARTIN "E"	1569	\N	   	\N	1	3751424267	1167	D.IN.CO.Y M.Nº1	\N	2012-01-01	1	567	17	4	t
147	1	Juzgado de Paz de Dos de Mayo	Juzgado de Paz de Dos de Mayo	San Lorenzo	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	79	8	t
155	1	Juzgado de Paz de Alba Posse	Juzgado de Paz de Alba Posse	Belgrano	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	70	8	t
72	2	SECRETARIA DE EJECUCIÓN TRIBUTARIA Nº 8	SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 8	Avda. Santa Catalina	1735	2	\N	\N	1	4446700	1387	S.EJ.TRIB.8	\N	2012-01-01	1	1616	1	1	t
308	1	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 4	DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 4	\N	\N	\N	\N	\N	0	\N	\N	D.C.C.L.Y F.Nº4	\N	2012-11-02	\N	\N	22	7	t
31	2	FISCALÍA DE INSTRUCCIÓN Nº 3	FISCALÍA DE INSTRUCCIÓN Nº 3	SANTA FE	1630	1	\N	\N	1	4446440	167	FIS.INST.Nº 3	\N	2012-01-01	1	1635	1	4	t
71	2	SECRETARIA DE EJECUCIÓN TRIBUTARIA Nº 4	SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 4	AVDA.SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1364	S.EJ.TRIB.4	\N	2012-01-01	1	1773	1	1	t
76	2	JUZGADO LABORAL Nº 3	JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 3	Bolívar	1745	1	\N	\N	1	4446470	6470	J.LAB.Nº 3	\N	2012-01-01	\N	186	1	2	t
40	2	DEFENSORIA DE INSTRUCCION Nº 3	DEFENSORIA OFICIAL DE INSTRUCCION Nº 3	SANTA FE	1630	1	\N	\N	1	4446440	124	DEF.INSTR.Nº 3	\N	2012-01-01	1	1457	1	4	t
77	2	JUZGADO LABORAL Nº 4	JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 4	Bolívar	1745	6	\N	\N	1	4446467	6448	J.LAB.Nº 4	\N	2012-01-01	\N	891	1	2	t
54	2	JUZGADO CIVIL Y COMERCIAL Nº 7	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 7	Avda. Santa Catalina	1735	2	\N	\N	1	4446700	1571	J.C.Y C.Nº 7	\N	2012-01-01	\N	\N	1	1	t
216	2	Juzgado de Paz de General Urquiza	Juzgado de Paz de General Urquiza	S/Nombre	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	62	8	t
180	2	DEFENSORIA DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 2	DEFENSORIA OFIC. DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 2	AVDA.SAN MARTIN "E"	1569	2	\N	\N	1	3751426447	1147	D.IN.CO.Y M.Nº2	\N	2012-01-01	1	1201	17	4	t
177	2	FISCALIA DE INSTRUCCIÓN Nº 2	FISCALIA DE INSTRUCCIÓN Nº 2	Avda. San Martin "E"	1569	2	\N	\N	1	3751424935	1235	FIS.INST.Nº 2	\N	2012-01-01	1	870	17	4	t
185	1	OFIC.MANDAM.Y NOTIFIC.	OFICINA DE MANDAMIENTOS Y NOTIFICACIONES	General Lavalle	2093	\N	   	\N	1	3751422795	6620	OF.MAN.Y N.	\N	2012-01-01	\N	50	17	8	t
186	1	CUERPO MEDICO FORENSE	CUERPO MEDICO FORENSE	CONGRESO ESQ. MALIBÚ	23	PB   	   	\N	1	3751424505	1105	C.MED.FO.	\N	2012-01-01	\N	1416	17	8	t
187	1	SECC.BIBLIOT.Y ARCHIVO PRELIM.	SECCION BIBLIOTECA Y ARCHIVO PRELIMINAR	Paraguay	1339	PB   	\N	\N	1	3751424019	1219	S.BIBL.Y A.PREL	\N	2012-01-01	1	49	17	8	t
112	2	FISCALIA DE CAMARA CIVIL, COMERCIAL Y LABORAL	FISCALIA DE CAMARA CIVIL, COMERCIAL Y LABORAL	JUJUY	235	\N	   	\N	1	3755421721	1021	F.CAM.C.C.Y LAB	\N	2012-01-01	1	1204	48	5	t
175	1	Juzgado de Instrucción N- 3	Juzgado de Instrucción N- 3	Avda. Republica Argentina	69	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	27	4	t
173	2	JUZGADO DE INSTRUCCIÓN Nº 1	JUZGADO DE INSTRUCCIÓN Nº 1	AVDA. SAN MARTÍN "E"	1569	1er. 	9	\N	1	3751421267	1267	J.INST.Nº 1	\N	2012-01-01	1	521	17	4	t
174	2	JUZGADO DE INSTRUCCIÓN Nº 2	JUZGADO DE INSTRUCCIÓN Nº 2	Avda. San Martin "E"	1569	2	\N	\N	1	3751422498	1198	J.INST.Nº 2	\N	2012-01-01	1	640	17	4	t
2	1	SUPERIOR TRIBUNAL DE JUSTICIA	SUPERIOR TRIBUNAL DE JUSTICIA	AVDA. SANTA CATALINA	1735	5	\N	\N	1	4446700	1127	S.T.J.	\N	2012-01-01	\N	1765	1	8	t
7	6	JURADO DE ENJUICIAMIENTO	JURADO DE ENJUICIAMIENTO DE MAGISTRADOS Y FUNCIONARIOS DEL PODER JUDICIAL	Avda. Santa Catalina	1735	4	\N	\N	1	4446700	1052	JUR.ENJ.	\N	2012-01-01	\N	957	1	8	t
130	2	FISCALIA DE INSTRUCCIÓN Nº 1	FISCALIA DE INSTRUCCIÓN Nº 1	Avda.Sarmiento	1180	\N	   	\N	1	3755423600	\N	FIS.INST.Nº 1	\N	2012-01-01	1	1390	48	4	t
132	2	FISCALIA DE INSTRUCCIÓN Nº 3	FISCALIA DE INSTRUCCIÓN Nº 3	Moreno e/R.Balbin y J.Peron	\N	\N	   	\N	1	3755460340	\N	FIS.INST.Nº 3	\N	2012-01-01	1	781	26	4	t
214	2	Juzgado de Paz de Puerto Rico	Juzgado de Paz de Puerto Rico	SANTIAGO DE LINIERS Y PASAJE	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	39	8	t
48	2	Juzgado Civil y Comercial N-1	Juzgado de Primera Instancia en lo Civil y Comercial N-1	Bolívar	1745	PB   	\N	\N	1	\N	\N	J.C.C.1	\N	2012-01-01	\N	1	1	1	t
89	1	Juzgado de Paz de Apóstoles	Juzgado de Paz de Apóstoles	Belgrano	1093	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	2	1	t
96	1	Juzgado de Paz de Santo Pipó	Juzgado de Paz de Santo Pipó	Barrio 22 Viviendas	36	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	59	1	t
313	2	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 2	DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 2	GOBERNADOR BARREIRO	1012	\N	\N	\N	0	\N	\N	D.C.C.L.Y F.Nº2	\N	2012-11-06	\N	2625	48	7	t
103	1	Juzgado de Paz de Garupá	Juzgado de Paz de Garupá	Avda.  Corrientes e/ 9 de Julio y Rivadavia	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	13	1	t
97	1	Juzgado de Paz de Cerro Azul	Juzgado de Paz de Cerro Azul	Aguado y Maipú	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	32	1	t
151	1	Juzgado de Paz de Colonia Aurora	Juzgado de Paz de Colonia Aurora	S/ Nombre	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	71	8	t
80	1	OFIC.MANDAM.Y NOTIFIC.	OFICINA DE MANDAMIENTOS Y NOTIFICACIONES	Salta	1845	1	\N	\N	1	4446471	6471	O.M.N.	\N	2012-01-01	\N	142	1	8	t
10018	\N	 JUZGADO DE PAZ DE ITAEMBÉ MINÍ	 JUZGADO DE PAZ DE ITAEMBÉ MINÍ	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-09-24	\N	\N	1	1	t
51	2	JUZGADO CIVIL Y COMERCIAL Nº 4	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 4	AVDA. SANTA CATALINA	1735	PB   	   	\N	1	4446449	1361	J.C.Y C.Nº 4	\N	2012-01-01	\N	179	1	1	t
55	2	JUZGADO CIVIL Y COMERCIAL Nº 8	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 8	Avda. Santa Catalina	1735	PB   	\N	\N	1	4446700	1382	J.C.Y C.Nº 8	\N	2012-01-01	1	717	1	1	t
194	1	Juzgado de Paz de Bernardo de Irigoyen	Juzgado de Paz de Bernardo de Irigoyen	Avda. Libertador	171	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	22	8	t
52	2	JUZGADO CIVIL Y COMERCIAL Nº 5	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 5	Avda. Santa Catalina	1735	2	\N	\N	1	4446700	1537	J.C.Y C.Nº 5	\N	2012-01-01	1	411	1	1	t
69	2	DEFENS.CAM.CIVIL Y COMERCIAL	DEFENSORIA DE CAMARA CIVIL Y COMERCIAL	La Rioja	1561	\N	   	\N	1	4446400	6475	D.CAM.C.Y C.	\N	2012-01-01	\N	201	1	1	t
70	2	SECRETARIA DE EJECUCIÓN TRIBUTARIA Nº 1	SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 1	AVDA.SANTA CATALINA	1745	PB   	\N	\N	1	4446700	1517	S.EJ.TRIB.1	\N	2012-01-01	\N	2436	1	1	t
49	2	JUZGADO CIVIL Y COMERCIAL Nº 2	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 2	3 de Febrero	270	\N	   	\N	1	4446445	\N	JUZ.C.Y C.Nº 2	\N	2012-01-01	1	140	1	1	t
78	1	REG.PUBL.DE COMERCIO	REGISTRO PUBLICO DE COMERCIO	AVDA.SANTA CATALINA	1745	PB   	\N	\N	1	4446700	1516	R.P.C	\N	2012-01-01	\N	1233	1	1	t
114	1	MESA ENTRADAS UNICA INFORMATIZADA	MESA DE ENTRADAS UNICA INFORMATIZADA	Misiones y Bolivia	\N	\N	   	\N	1	3755453040	3040	M.E,U.I.	\N	2012-01-01	\N	1439	48	8	t
324	2	SECRETARIA DE APOYO PARA INVESTIGACIONES COMPLEJAS	SECRETARIA DE APOYO PARA INVESTIGACIONES COMPLEJAS	PEDRO MENDEZ ESQ. URUGUAY	2221	1	\N	\N	1	4446573	\N	S.A.IC.	\N	2012-11-19	\N	666	1	4	t
310	2	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 8 -GARUPA	DEFENSORIA 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 8 -GARUPA	AVDA.CORRIENTES	\N	\N	\N	\N	1	4491070	\N	DEF.C.Y C.N º 8	\N	2012-11-05	1	\N	1	7	t
16	3	Tribunal Penal N-1	Tribunal en lo Penal N-1	La Rioja	1561	PB   	   	\N	1	\N	\N	T.P.1	\N	2012-01-01	\N	1	1	4	t
84	1	SUB-JEFATURA CUERPO MEDICO FORENSE	SUB-JEFATURA CUERPO MEDICO FORENSE	Santa Fé	1669	PB   	   	\N	1	4446500	32	SUB-J.C.MED.FO.	\N	2012-01-01	\N	2111	1	8	t
105	1	Juzgado de Paz de Itacaruaré	Juzgado de Paz de Itacaruaré	Mateo Escalada y 3 de Febrero	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	66	1	t
63	2	DEFENSORIA CIVIL Y COMERCIAL Nº 6	DEFENSORIA 1RA. INSTANCIA EN LO CIVIL Y COMERCIAL Nº 6	AVDA. SANTA CATALINA	1735	1	\N	\N	1	4446700	1186	DEF.C.Y C.N º 6	\N	2012-01-01	1	1336	1	1	t
67	2	DEFENSORIA DEL TRABAJADOR	DEFENSORIA DEL TRABAJADOR	Bolívar	1745	4	\N	\N	1	4446468	\N	DEF.TRAB.	\N	2012-01-01	1	550	1	2	t
12	1	Biblioteca	Biblioteca Central del Poder Judicial	La Rioja	1561	PB   	\N	\N	1	4446400	229	B.C.P.J.	\N	2012-01-01	\N	836	1	8	t
101	1	Juzgado de Paz de Cerro Corá	Juzgado de Paz de Cerro Corá	San Martín	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	10	1	t
100	1	Juzgado de Paz de Candelaria	Juzgado de Paz de Candelaria	Liberación e/ R. S. Peña y Mitre	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	6	1	t
292	1	MORGUE JUDICIAL	MORGUE JUDICIAL	AVDA. QUARANTA	\N	\N	\N	\N	1	4446472	\N	MO.JUD.	\N	2012-06-27	\N	597	1	8	t
301	1	SECRET.DE INFORMAT.JURIDICA	SECRETARIA DE INFORMATICA JURIDICA	JUNÍN	2472	1	\N	\N	2	4446559	6559	S.I.J	\N	2012-10-25	\N	1660	1	8	t
184	2	DEFENSORIA DEL TRABAJADOR	DEFENSORIA DEL TRABAJADOR	GRAL.LAVALLE	2093	\N	   	\N	1	3751426441	1121	DEF.TRAB.	\N	2012-01-01	\N	484	17	2	t
15	1	MESA ENTRADA UNICA INF.	MESA DE ENTRADAS UNICA INFORMATIZADA	AVDA.SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1358	M.E.U.	\N	2012-01-01	\N	141	1	1	t
32	2	FISCALÍA DE INSTRUCCIÓN Nº 4	FISCALÍA DE INSTRUCCIÓN Nº 4	JUAN JOSE LANUSSE	344	\N	   	\N	1	3758423606	3516	FIS.INST.Nº 4	\N	2012-01-01	1	1262	2	4	t
17	3	TRIBUNAL PENAL Nº 2	TRIBUNAL EN LO PENAL Nº 2	San Martín	1432	PB   	\N	\N	1	4446430	\N	TR.P. Nº 2	\N	2012-01-01	\N	301	1	4	t
22	2	Juzgado de Instrucción N-5	Juzgado de Instrucción N-5	Sarmiento	26	\N	   	\N	1	\N	\N	J.I.5	\N	2012-01-01	\N	1	31	4	t
3	1	PROC. GENERAL	PROCURACION GENERAL	Alvear	2098	PB   	\N	\N	1	4446522	6522	P.G.	\N	2012-01-01	\N	878	1	8	t
82	1	SERVICIO SOCIAL	SERVICIO SOCIAL	AVDA.SANTA CATALINA	1735	1	\N	\N	1	4446700	1299	SERV.SOC.	\N	2012-01-01	1	878	1	8	t
209	1	CUERPO MEDICO FORENSE	CUERPO MEDICO FORENSE	Sarmiento	251	\N	   	\N	1	3743421939	1539	C.MED.FO.	\N	2012-01-01	\N	1429	39	8	t
26	2	JUZGADO CORRECCIONAL Y MENORES Nº 2	JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 2	AVDA.SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1434	J.CORR.Y M.Nº 2	\N	2012-01-01	\N	1044	1	4	t
116	2	Juzgado Civil y Comercial N- 2	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 2	Misiones y Bolivia	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	1	t
314	2	JUZGADO CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 1	JUZGADO 1RA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 1	\N	\N	\N	\N	\N	1	\N	\N	J.C.C.L.Y F.Nº1	\N	2012-09-03	\N	2691	26	7	t
33	2	FISCALÍA DE INSTRUCCIÓN Nº 5	FISCALÍA DE INSTRUCCIÓN Nº 5	SARMIENTO	26	\N	   	\N	1	3754420482	4392	FIS.INST.Nº 5	\N	2012-01-01	1	1120	31	4	t
317	2	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -ELDORADO	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -ELDORADO	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	2012-11-08	\N	\N	17	5	t
106	1	Juzgado de Paz de Olegario Víctor Andrade	Juzgado de Paz de Olegario Víctor Andrade	San  Martín	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	36	1	t
309	2	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 7 -VILLA CABELLO	DEFENSORIA 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 7 -VILLA CABELLO	CENTRO COMERCIAL	\N	\N	\N	\N	1	4593800	\N	D.C.C.L.Y F.Nº7	\N	2012-11-05	1	8214	1	7	t
13	1	Centro de Capacitación Judicial	Centro de Capacitación Judicial Dr. Mario Dei Castelli	Junín	2472	2	\N	\N	1	4446557	\N	C.C.J.	\N	2012-01-01	1	2378	1	8	t
247	1	Unidad III - Eldorado	Unidad III - Eldorado	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	17	8	f
59	2	Fiscalía Civil y Comercial N-2	Fiscalía en lo Civil y Comercial N-2	Bolívar	1745	5	\N	\N	1	\N	\N	F.C.C.2	\N	2012-01-01	\N	1	1	1	t
11	1	OFIC.DE AUDIT.Y C.DE TASA DE JUST.	OFICINA DE AUDITORIA Y CONTROL DE TASA DE JUSTICIA, LIQUIDACION Y ASESORAMIENTO	Rivadavia	2237	PB   	   	\N	1	4446411	248	O.A.Y C.T.J.Y M	\N	2012-01-01	\N	1207	1	8	t
18	2	JUZGADO DE INSTRUCCIÓN Nº 1	JUZGADO DE INSTRUCCIÓN Nº 1	SANTA FE C/ENTRADA POR BS.AS.	1630	2	\N	\N	1	4446440	10	JUZ.INS.Nº 1	\N	2012-01-01	1	2564	1	4	t
20	2	JUZGADO DE INSTRUCCIÓN Nº 3	JUZGADO DE INSTRUCCIÓN Nº 3	SANTA FE	1630	1	\N	\N	1	4446440	150	JUZ.INST.Nº 3	\N	2012-01-01	1	1796	1	4	t
21	2	JUZGADO DE INSTRUCCIÓN Nº4	JUZGADO DE INSTRUCCIÓN Nº4	Juan José Lanusse	344	\N	   	\N	1	3758423268	3568	J.I.4	\N	2012-01-01	\N	1181	2	4	t
37	2	FISCALÍA CORRECCIONAL Y DE MENORES Nº 2	FISCALÍA EN LO CORRECCIONAL Y DE MENORES Nº 2	SANTA FE	1630	PB   	\N	\N	1	4446440	\N	FIS.C.Y M.Nº 2	\N	2012-01-01	1	1208	1	4	t
162	2	JUZGADO CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 1	JUZGADO 1RA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 1	AVDA. GUARANI	128	\N	   	\N	1	3757425046	\N	J.C.C.L.Y F.Nº1	\N	2012-01-01	1	2241	27	7	t
36	2	FISCALÍA CORRECCIONAL Y DE MENORES Nº 1	FISCALÍA EN LO CORRECCIONAL Y DE MENORES Nº 1	SANTA FE	1630	1	\N	\N	1	4446440	227	FIS.C.Y M.Nº 1	\N	2012-01-01	1	1	1	4	t
29	2	FISCALÍA DE INSTRUCCIÓN Nº 1	FISCALÍA DE INSTRUCCIÓN Nº 1	SANTA FE	1630	2	\N	\N	1	4446440	127	FIS.INST.Nº 1	\N	2012-01-01	1	1380	1	4	t
30	2	FISCALÍA DE INSTRUCCIÓN Nº 2	FISCALÍA DE INSTRUCCIÓN Nº 2	SANTA FE	1630	PB   	\N	\N	1	4446440	147	FIS.INST.Nº 2	\N	2012-01-01	1	1454	1	4	t
25	2	JUZGADO CORRECCIONAL Y MENORES Nº 1	JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 1	AVDA.SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1438	J.CORR.Y M.Nº 1	\N	2012-01-01	\N	1220	1	4	t
95	1	Juzgado de Paz de San Javier	Juzgado de Paz de San Javier	Avda. 25 de Mayo	96	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	65	1	t
245	1	Unidad I - Loreto	Unidad I - Loreto	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	9	8	f
60	2	DEFENSORIA CIVIL Y COMERCIAL Nº 3	DEFENSORIA 1RA. INSTANCIA EN LO CIVIL Y COMERCIAL Nº 3	AVDA. SANTA CATALINA	1735	1	\N	\N	1	4446700	1305	DEF.C.Y C.N º 3	\N	2012-01-01	1	1124	1	1	t
61	2	DEFENSORIA CIVIL Y COMERCIAL Nº 4	DEFENSORIA 1RA. INSTANCIA EN LO CIVIL Y COMERCIAL Nº 4	AVDA. SANTA CATALINA	1735	1	\N	\N	1	4446700	1316	DEF.C.Y C.N º 4	\N	2012-01-01	1	1141	1	1	t
319	1	OFICINA DE SEGURIDAD	OFICINA DE SEGURIDAD	AVDA. SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1158	OFIC.SEGUR.	\N	2012-11-12	\N	\N	1	8	t
62	2	DEFENSORIA CIVIL Y COMERCIAL Nº 5	DEFENSORIA 1RA. INSTANCIA EN LO CIVIL Y COMERCIAL Nº 5	AVDA. SANTA CATALINA	1735	1	\N	\N	1	4446700	1184	DEF.C.Y C.N º 5	\N	2012-01-01	1	1540	1	1	t
65	2	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 1	DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 1	Avda. Almirante Brown	41	PB   	\N	\N	1	3754423805	4305	D.C.C.L.Y F.Nº1	\N	2012-01-01	\N	1829	31	7	t
113	2	DEFENS.CAM.CIVIL,COMERCIAL Y LAB.	DEFENSORIA DE CAMARA CIVIL, COMERCIAL Y LABORAL	Jujuy	235	\N	   	\N	1	3755421721	1006	D.CAM.C.C.Y L.	\N	2012-01-01	\N	653	48	5	t
269	2	Juzgado Civil y Comercial -Eldorado-	Juzgado Civil y Comercial -Eldorado-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	17	1	f
191	1	Juzgado de Paz de Puerto Iguazú	Juzgado de Paz de Puerto Iguazú	Avda. Córdoba	250	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	27	8	t
196	1	Juzgado de Paz de Puerto Libertad	Juzgado de Paz de Puerto Libertad	Salta	350	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	30	8	t
201	2	Juzgado Civil, Comercial y Laboral	Juzgado de Primera Instancia en lo Civil, Comercial y Laboral	Avda. 9 de Julio	1876	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	39	5	t
4	1	SECRET.ADMIN.Y DE SUPERINT.	SECRETARIA ADMINISTRATIVA Y DE SUPERINTENDENCIA	Avda. Santa Catalina	1735	4	\N	personal-stj.@jusmisiones.gov.ar	1	4446700	1240	SEC.AD.Y SUP.	\N	2012-01-01	1	266	1	8	t
166	2	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 1	DEFENSORIA OFICIAL DE 1RA.INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 1	BERTONI	64	\N	   	\N	1	\N	\N	D.C.C.L.Y F.Nº1	\N	2012-01-01	\N	1705	27	7	t
172	2	FISCALIA DEL TRIBUNAL PENAL Nº 1	FISCALIA DEL TRIBUNAL EN LO PENAL Nº 1	SAN JUAN ESQ. AMERICA	1974	\N	   	\N	1	3751424080	1280	FIS.TRI.P. Nº 1	\N	2012-01-01	\N	1389	17	4	t
207	2	JUZGADO DE INSTRUCCIÓN Nº 1	JUZGADO DE INSTRUCCIÓN Nº 1	Sarmiento	251	\N	   	\N	1	\N	\N	JUZ.INS.Nº 1	\N	2012-01-01	\N	1	39	4	t
208	2	JUZGADO CORRECCIONAL Y MENORES Nº 1	JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 1	Sarmiento	251	\N	   	\N	1	3743420444	1644	J.CORR.Y M.Nº 1	\N	2012-01-01	\N	889	39	4	t
221	2	SECRET.GRAL.ACC.A JUST.Y DER.HUMANOS	SECRETARIA GENERAL DE ACCESO A LA JUSTICIA Y DERECHOS HUMANOS	Alvear	2098	\N	\N	\N	1	4446424	6424	S.G.A.J.Y D.HUM	\N	2012-01-01	\N	1089	1	8	t
183	1	Fiscalía Correccional y Menores N-1	Fiscalía en lo Correccional y de Menores N- 1	General Lavalle	2093	1	\N	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	17	4	t
143	1	Juzgado de Paz de Aritóbulo del Valle	Juzgado de Paz de Aritóbulo del Valle	Amadeo Bonpland	1074	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	80	8	t
145	1	Juzgado de Paz de Campo Viera	Juzgado de Paz de Campo Viera	Avda.del Té	40	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	50	8	t
169	2	JUZGADO LABORAL Nº 1	JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 1	GRAL. LAVALLE	2093	\N	   	\N	1	3751423630	1230	J.LAB.Nº 1	\N	2012-01-01	\N	616	17	2	t
92	1	Juzgado de Paz de Dos Arroyos	Juzgado de Paz de Dos Arroyos	Lote	88	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	33	1	t
195	1	Juzgado de Paz de San Antonio	Juzgado de Paz de San Antonio	Soberanía	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	24	8	t
129	2	Fiscalia de Tribunal Penal N- 1	Fiscalia del Tribunal en lo Penal N- 1	Avda.Livertad y 9 de Julio	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	4	t
178	2	FISCALIA DE INSTRUCCIÓN Nº 3	FISCALIA DE INSTRUCCIÓN Nº 3	AVDA. REPUBLICA ARGENTINA	69	\N	   	\N	1	3757425041	1742	FIS.INST.Nº 3	\N	2012-01-01	1	1	27	4	t
193	1	Juzgado de Paz de San Pedro	Juzgado de Paz de San Pedro	25 de Mayo	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	69	8	t
198	1	Juzgado de Paz de Comandante Andresito	Juzgado de Paz de Comandante Andresito	Canadá	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	23	8	t
300	1	SECRET. DE TECNOLOGÍA INFORM.	SECRETARÍA DE TECNOLOGÍA INFORMÁTICA	JUNÍN	2472	1	\N	\N	1	4446558	6558	S.T.I	\N	2012-10-25	\N	1095	1	8	t
176	2	FISCALIA DE INSTRUCCIÓN Nº 1	FISCALIA DE INSTRUCCIÓN Nº 1	Avda.San Martin "E"	1569	\N	   	\N	1	3751420066	1166	FIS.INST.Nº 1	\N	2012-01-01	1	873	17	4	t
189	1	Juzgado de Paz de Montecarlo	Juzgado de Paz de Montecarlo	Brasil y Mitre	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	45	8	t
315	2	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 2	DEFENSORIA 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 2	DINAMARCA ESQ.LA RIOJA	306	\N	\N	\N	1	\N	\N	D.C.C.L.Y F.Nº2	\N	2012-11-08	1	2624	17	7	t
190	1	Juzgado de Paz de Puerto Esperanza	Juzgado de Paz de Puerto Esperanza	25 de Mayo	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	28	8	t
318	3	CAMARA APELACIONES EN LO CRIMINAL, CORRECCIONAL Y MENORES	CAMARA DE APELACIONES EN LO CRIMINAL, CORRECCIONAL Y DE MENORES	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	2012-11-12	\N	\N	1	4	t
192	1	Juzgado de Paz de Puerto Piray	Juzgado de Paz de Puerto Piray	Juan José Paso	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	46	8	t
157	2	FISCALIA DE CAMARA CIVIL, COMERCIAL Y LABORAL	FISCALIA DE CAMARA CIVIL, COMERCIAL Y LABORAL	PARAGUAY	1339	\N	   	\N	1	3751424019	1219	F.CAM.C.C.Y LAB	\N	2012-01-01	1	1388	17	5	t
50	2	JUZGADO CIVIL Y COMERCIAL Nº 3	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 3	Avda. Santa Catalina	1735	2	\N	\N	1	4446700	1549	J.C.Y C.Nº 3	\N	2012-01-01	1	136	1	1	t
90	1	Juzgado de Paz de Leandro N. Alem	Juzgado de Paz de Leandro N. Alem	25 de Mayo	131	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	31	1	t
126	2	JUZGADO DE INSTRUCCIÓN Nº 2	JUZGADO DE INSTRUCCIÓN Nº 2	AVDA.SARMIENTO	1217	\N	   	\N	1	3755421296	1095	JUZ.INS.Nº 1	\N	2012-01-01	1	1048	48	4	t
86	2	JUZGADO DE PAZ EN CONTRAVENCIONAL	JUZGADO DE PAZ EN LO CONTRAVENCIONAL	AVDA. SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1258	JUZ.PAZ CON.	\N	2012-01-01	\N	477	1	1	t
104	1	Juzgado de Paz de Gobernador López	Juzgado de Paz de Gobernador López	Ruta Pcial. 215	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	34	1	t
91	1	Juzgado de Paz de San Ignacio	Juzgado de Paz de San Ignacio	San Martín	19	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	57	1	t
140	1	Biblioteca Seccional Oberá	Biblioteca Seccional Oberá	San Martín	1068	\N	   	\N	1	3755453049	\N	B.OB.	\N	2012-01-01	\N	1140	48	8	t
94	1	Juzgado de Paz de Gobernador Roca	Juzgado de Paz de Gobernador Roca	20 de Junio c/ Avda. San Martín	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	64	1	t
115	2	Juzgado Civil y Comercial N- 1	Juzgado de Primera Instancia en lo Civil y Comercial N- 1	Buenos Aires	193	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	1	t
148	1	Juzgado de Paz de El Soberbio	Juzgado de Paz de El Soberbio	Lavalle y Capdevila	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	25	8	t
171	1	TRIBUNAL PENAL Nº 1	TRIBUNAL EN LO PENAL Nº 1	SAN JUAN	1974	\N	   	\N	1	3751424422	1132	TRIB.P. Nº 1	\N	2012-01-01	\N	782	17	4	t
182	2	JUZGADO CORRECCIONAL Y MENORES Nº 1	JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 1	GRAL. LAVALLE	2093	1	\N	\N	1	3751424090	1160	J.CORR.Y M.Nº 1	\N	2012-01-01	1	505	17	4	t
205	2	DEFENS.FUERO UNIVERSAL	DEFENSORIA DE FUERO UNIVERSAL	Sarmiento	251	\N	   	\N	1	3743420884	1184	DEF.F.UNIV.	\N	2012-01-01	\N	1198	39	7	t
303	2	JUZGADO DE PAZ DE ARROYO DEL MEDIO	JUZGADO DE PAZ DE ARROYO DEL MEDIO	LINDANTE A LA MUNICIPALIDAD	\N	\N	\N	\N	0	\N	\N	J.PAZ.A.DEL MED	\N	2012-11-01	\N	8181	1	8	t
120	2	JUZGADO LABORAL Nº 1	JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 1	Córdoba	35	\N	   	\N	1	3755424177	1077	J.LAB.Nº 1	\N	2012-01-01	\N	342	48	2	t
202	2	Juzgado Civil, Comercial, Laboral y de Familia N- 2	Juzgado de Primera Instancia en lo Civil, Comercial, Laboral y de Familia N- 2	Moreno	730	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	58	7	t
199	1	Juzgado de Paz de Wanda	Juzgado de Paz de Wanda	Parcela 16 Mz. 21	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	29	8	t
188	2	Juzgado de Paz de Eldorado	Juzgado de Paz de Eldorado	Cuyo	205	\N	   	\N	1	3751421474	1174	J.PAZ ELDOR.	\N	2012-01-01	\N	2489	17	8	t
200	1	Juzgado de Paz de Caraguatay	Juzgado de Paz de Caraguatay	S/ Nombre	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	47	8	t
217	5	Juzgado de Paz de El Alcázar	Juzgado de Paz de El Alcázar	LUIS CANDELARIA Y MATIENZO	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	42	8	t
159	1	MESA ENTRADA UNICA INF.	MESA DE ENTRADAS UNICA INFORMATIZADA	Paraguay	1339	\N	   	\N	1	3751426466	3466	M.E.U.I.	\N	2012-01-01	\N	1478	17	1	t
220	1	OFIC.PRENSA Y CEREM.	OFICINA DE PRENSA Y CEREMONIAL	Avda. Santa Catalina	1735	5	\N	\N	1	4446700	1122	O.PR.Y CER.	\N	2012-01-01	\N	1307	1	8	t
38	2	DEFENSORIA DE INSTRUCCION Nº 1	DEFENSORIA OFICIAL DE INSTRUCCION Nº 1	SANTA FE	1630	2	\N	\N	1	4446440	125	DEF.INSTR.Nº 1	\N	2012-01-01	1	794	1	4	t
39	2	DEFENSORIA DE INSTRUCCION Nº 2	DEFENSORIA OFICIAL DE INSTRUCCION Nº 2	SANTA FE	1630	PB   	\N	\N	1	4446440	144	DEF.INSTR.Nº 2	\N	2012-01-01	1	1238	1	4	t
41	2	DEFENSORIA DE FUERO UNIVERSAL Nº 1	DEFENSORIA OFICIAL DE FUERO UNIVERSAL Nº 1	Juan José Lanusse	360	\N	   	\N	1	3758424027	3527	DEF.F.UN.Nº 1	\N	2012-01-01	1	1121	2	7	t
42	2	DEFENSORIA DE FUERO UNIVERSAL Nº 2	DEFENSORIA OFICIAL DE FUERO UNIVERSAL Nº 2	Sarmiento	26	\N	   	\N	1	3754422342	4342	DEF.F.UN.Nº 2	\N	2012-01-01	1	1122	31	4	t
45	2	DEFENSORIA CORRECCIONAL Y DE MENORES Nº 1	DEFENSORIA EN LO CORRECCIONAL Y DE MENORES Nº 1	AVDA. SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1414	D.COR.Y MEN.Nº1	\N	2012-01-01	1	699	1	4	t
215	2	Juzgado de Paz de Capioví	Juzgado de Paz de Capioví	Ruta 12	246	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	41	8	t
5	1	SECRET.JUDICIAL	SECRETARIA JUDICIAL	Avda. Santa Catalina	1735	4	\N	\N	2	4446700	1019	S.JUD.	\N	2012-01-01	\N	958	1	8	t
6	1	SECRET.INFORM.	SECRETARIA DE INFORMATICA	Rivadavia	2035	PB   	\N	\N	1	4446420	6418	S.I.	\N	2012-01-01	\N	1445	1	8	t
14	1	CENTRO JUDICIAL DE MEDIACION	CENTRO JUDICIAL DE MEDIACION	Entre Ríos	579	\N	\N	\N	1	4446620	\N	CE.JU.ME.	\N	2012-01-01	\N	79	1	8	t
10	1	CUERPO DE INSPECTORES	CUERPO DE INSPECTORES DEL FONDO DE JUSTICIA	Rivadavia	2041	2	\N	\N	1	4446400	219	C.IN.F.JUS.	\N	2012-01-01	\N	1079	1	8	t
133	2	Fiscalia Correcional y Menores N- 1	Fiscalia en lo Correcional y de Menores N- 1	Avda.Sarmiento	1180	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	4	t
136	2	DEFENS.FUERO UNIVERSAL	DEFENSORIA DE FUERO UNIVERSAL Nº 1	MARIANO MORENO E/BALBIN YPERON	\N	\N	   	\N	1	3755461820	\N	DEF.F.UNIV.	\N	2012-01-01	\N	2552	26	7	t
164	2	DEFENSORIA CIVIL Y COMERCIAL	DEFENSORIA OFICIAL DE 1RA.INSTANCIA EN LO CIVIL Y COMERCIAL	GRAL.LAVALLE KM.9	2093	\N	   	\N	1	3751421100	1200	DEF.CIV. Y COM.	\N	2012-01-01	\N	457	17	1	t
316	2	DEFENSORIAS OFICIALES	DEFENSORIAS OFICIALES	\N	\N	\N	\N	\N	0	\N	\N	DEF.OFIC.	\N	2012-11-08	\N	\N	1	1	t
58	2	Fiscalía Civil y Comercial N-1	Fiscalía en lo Civil y Comercial N-1	Bolívar	1745	3	\N	\N	1	\N	\N	F.C.C.1	\N	2012-01-01	\N	1	1	1	t
57	2	JUZGADO DE FAMILIA Nº 2	JUZGADO DE FAMILIA Nº 2	Avda. Santa Catalina	1735	1er. 	1	\N	1	4446700	1206	J.F.2	\N	2012-01-01	\N	1046	1	3	t
98	1	Juzgado de Paz de Azara	Juzgado de Paz de Azara	Sarmiento	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	3	1	t
150	1	Juzgado de Paz de Panambí	Juzgado de Paz de Panambí	S/ Nombre	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	54	8	t
304	1	JUZGADO DE PAZ DE RUIZ DE MONTOYA	JUZGADO DE PAZ DE RUIZ DE MONTOYA	\N	\N	\N	\N	\N	0	3743495040	495396	J.PAZ RUIZ MONT	\N	2012-11-01	\N	17	44	8	t
125	2	JUZGADO DE INSTRUCCIÓN Nº 1	JUZGADO DE INSTRUCCIÓN N-º 1	AVDA.SARMIENTO	1180	\N	   	\N	1	3755421385	1085	JUZ.INS.Nº 1	\N	2012-01-01	1	669	48	1	t
213	2	Juzgado de Paz de Jardín América	Juzgado de Paz de Jardín América	Avda. 9 de Julio	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	58	8	t
85	1	INSPECCION JUSTICIA DE PAZ	INSPECCION JUSTICIA DE PAZ	BOLIVAR	1745	7	\N	\N	1	4446487	\N	INS.JU.P.	\N	2012-01-01	1	832	1	8	t
81	1	DIRECCION TECNICA INTERDISCIPLINARIA DE ASISTENCIA A VICTIMAS Y TESTIGOS	DIRECCION TECNICA INTERDISCIPLINARIA DE ASISTENCIA A VICTIMAS Y TESTIGOS	AVDA. SANTA CATALINA	1735	S.S  	\N	\N	1	4446700	1253	D.T.I.A.V. Y T.	\N	2012-01-01	1	1547	1	8	t
134	2	DEFENSORIA DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 1	DEFENSORIA OFIC. DE INSTRUCCION Y EN LO CORRECCIONAL Y DE MENORES Nº 1	AVDA.SARMIENTO	1217	\N	   	\N	1	3755426225	1003	D.IN.CO.Y M.Nº1	\N	2012-01-01	1	501	48	4	t
107	1	Juzgado de Paz de Mártirez	Juzgado de Paz de Mártirez	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	11	1	t
204	2	FISCALIA DE FUERO UNIVERSAL	FISCALIA DE FUERO UNIVERSAL	Sarmiento	251	\N	   	\N	1	3743420884	1584	FIS.F.UNIV.	\N	2012-01-01	1	1198	39	7	t
302	1	SECRET.ADM.Y DE SUP.-SECCION ACUERDOS-	SECRETARIA ADMINISTRATIVA Y DE SUPERINTENDENCIA -SECCION ACUERDOS-	AVDA.SANTA CATALINA	1735	4	\N	\N	1	4446700	1234	S.A.Y S-S.ACU.-	\N	2012-10-31	1	520	1	8	t
197	1	Juzgado de Paz de 9 de Julio	Juzgado de Paz de 9 de Julio	Ruta Provincial 17 Km 23	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	19	8	t
46	2	DEFENSORIA CORRECCIONAL Y DE MENORES Nº 2	DEFENSORIA EN LO CORRECCIONAL Y DE MENORES Nº 2	AVDA. SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1408	D.COR.Y MEN.Nº2	\N	2012-01-01	1	96	1	4	t
156	3	Cámara Civil, Comercial y Laboral	Cámara de Apelaciones en lo Civil, Comercial y Laboral	Paraguay	1339	\N	   	\N	1	3751424040	1260	C.C.C Y LAB.	\N	2012-01-01	\N	512	17	5	t
219	1	OFIC.MANDAM.Y NOTIFIC.	OFICINA DE MANDAMIENTOS Y NOTIFICACIONES	San Lorenzo y San Martín	\N	\N	\N	\N	1	\N	\N	OF.MAN.Y N.	\N	2012-01-01	\N	142	31	8	t
108	1	Juzgado de Paz de Santa Ana	Juzgado de Paz de Santa Ana	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	7	1	t
206	2	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA	DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA	Moreno	730	\N	   	\N	1	3743461716	1616	D.C.C.L.Y FLIA.	\N	2012-01-01	\N	1962	58	7	t
307	2	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 3	DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 3	\N	\N	\N	\N	\N	0	\N	\N	D.C.C.L.Y F.Nº3	\N	2012-11-02	1	\N	69	7	t
305	2	FISCALIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 3	FISCALIA DE 1RA.INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 3	\N	\N	\N	\N	\N	0	\N	\N	F.C.C.L.Y F.Nº3	\N	2012-11-02	\N	\N	26	7	t
124	3	TRIBUNAL PENAL Nº 1	TRIBUNAL EN LO PENAL Nº 1	9 de Julio	734	\N	   	\N	1	3755425909	9909	TR.P. Nº 1	\N	2012-01-01	\N	5	48	4	t
128	2	JUZGADO CORRECCIONAL Y MENORES Nº 1	JUZGADO EN LO CORRECCIONAL Y DE MENORES Nº 1	BOLIVIA	487	\N	   	\N	1	3755421361	1061	J.CORR.Y M.Nº 1	\N	2012-01-01	\N	327	48	4	t
165	1	Fiscalia Civil, Comercial, Laboral y Familia	Fiscalia Oficial de Primera Instancia en lo Civil, Comercial, Laboral y de Familia	Avda. Guarani	128	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	27	7	t
127	2	Juzgado de Instrucción N- 3	Juzgado de Instrucción N- 3	Moreno e/R.Balbin y J.Peron	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	26	4	t
139	1	OFIC.MANDAM.Y NOTIFIC.	OFICINA DE MANDAMIENTOS Y NOTIFICACIONES	San Martín	1068	\N	   	\N	1	3755420272	1072	OF.MAN.Y N.	\N	2012-01-01	\N	343	48	8	t
141	1	CUERPO MEDICO FORENSE	CUERPO MEDICO FORENSE	Avda.Sarmiento	1219	\N	   	\N	1	3755423737	1017	C.MED.FO.	\N	2012-01-01	\N	1283	48	8	t
181	2	DEFENSORIA DE INSTRUCCION Nº 3	DEFENSORIA OFICIAL DE INSTRUCCION Nº 3	AVDA. REPUBLICA ARGENTINA	69	\N	   	\N	1	3757425043	1743	DEF.INSTR.Nº 3	\N	2012-01-01	1	1771	27	4	t
9	1	DIRECCION DE ARQUITECTURA JUDICIAL	DIRECCION DE ARQUITECTURA JUDICIAL	Rivadavia	2237	4	\N	\N	1	4446000	253	DIR.ARQ.JUD.	\N	2012-01-01	1	702	1	8	t
211	1	OFIC.MANDAM.Y NOTIFIC.	OFICINA DE MANDAMIENTOS Y NOTIFICACIONES	Avda. 9 de Julio	1876	\N	   	\N	1	3743421404	1504	OF.MAN.Y N.	\N	2012-01-01	\N	459	39	8	t
8	1	DIRECCION DE ADMINISTRACION	DIRECCION DE ADMINISTRACION	Rivadavia	2237	\N	   	\N	1	4446400	281	DIR.ADM.	\N	2012-01-01	1	970	1	8	t
203	2	Fiscalía Civil, Comercial, Laboral y de Familia	Fiscalía de Primera Instancia en lo Civil, Comercial, Laboral y de Familia	Moreno	730	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	58	7	t
137	2	DEF. DEL TRABAJADOR	DEFENSORIA DEL TRABAJADOR	Córdoba	35	\N	   	\N	1	3755421004	1094	DEF.TR.	\N	2012-01-01	\N	435	48	2	t
138	1	REG.PUBL.DE COMERCIO	REGISTRO PUBLICO DE COMERCIO	BUENOS AIRES ESQ. SAN MARTIN	193	PB   	   	\N	1	3755421305	\N	R.P.COM.	\N	2012-01-01	\N	1140	48	1	t
210	1	SECC.BIBLIOT.Y ARCHIVO PRELIM.	SECCION BIBLIOTECA Y ARCHIVO PRELIMINAR	Sarmiento	251	\N	   	\N	1	3743420444	1644	S.BIBL.Y A.PREL	\N	2012-01-01	\N	889	39	8	t
110	1	Juzgado de Paz de Santa María	Juzgado de Paz de Santa María	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	16	1	t
212	1	OFIC.MANDAM.Y NOTIFIC.	OFICINA DE MANDAMIENTOS Y NOTIFICACIONES	Moreno	730	\N	   	\N	1	3743461715	1615	OF.MAN.Y N.	\N	2012-01-01	\N	1215	58	8	t
276	1	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 1-OBERÁ-	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 1-OBERÁ-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	5	f
306	2	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y FAMILIA Nº 3	DEFENSORIA 1RA. INSTANCIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 3	\N	\N	\N	\N	\N	0	\N	\N	D.C.C.L.Y F.Nº3	\N	2012-11-02	\N	1581	26	7	t
289	1	Juzgado de Paz N- 1 -Posadas-	Juzgado de Paz N- 1 -Posadas-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
273	1	Juzgado Civil, Comercial y Laboral N-3 -Posadas-	Juzgado Civil, Comercial y Laboral N-3 -Posadas-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	5	f
271	2	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 1	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 1	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	17	5	f
167	2	JUZGADO DE FAMILIA Nº 1	JUZGADO DE PRIMERA INSTANCIA DE FAMILIA	DINAMARCA	36	\N	   	\N	1	3751426524	6624	J.FLIA.Nº 1	\N	2012-01-01	1	2629	17	3	f
123	2	Juzgado de Fuero Uniersal	Juzgado de Primera Instancia de Fuero Universal	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	26	8	f
47	3	CAMARA CIVIL Y COMERCIAL	CAMARA DE APELACIONES EN LO CIVIL Y COMERCIAL	Alvear	2098	2	\N	\N	1	4446435	\N	CAM.CIV. Y COM.	\N	2012-01-01	\N	138	1	1	t
218	2	Fiscalía Civil, Comercial, Laboral y de Familia	Fiscalía de Primera Instancia en lo Civil, Comercial, Laboral y de Familia	Almirante Brown	41	PB   	\N	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	31	7	t
66	2	DEPARTAMENTO DE ENTRADA UNICA DE TRAMITES DE LAS DEFENSORIAS OFICIALES	DEPARTAMENTO DE ENTRA UNICA DE TRAMITES DE LAS DEFENSORIAS OFICIALES	AVDA. SANTA CATALINA	1858	3	\N	\N	1	4446543	6543	D.E.U.T	\N	2012-01-01	1	1089	1	1	t
293	1	\N	OFICIALES DE JUSTICIA AD-HOC	\N	\N	\N	\N	\N	0	\N	\N	\N	\N	2012-06-28	\N	\N	1	8	t
299	2	DEFENS.CIV. COM. LAB.Y FLIA. Nº 4	DEFENSORIA OFICIAL DE 1RA.INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL Y DE FAMILIA Nº 4	\N	\N	\N	\N	\N	0	\N	\N	D.C.C.L.Y F.Nº4	\N	2012-10-25	\N	8146	22	7	t
311	\N	SECRETARIA DE TRATAMIENTO JURIDICO, DOCUMENTAL Y ESTADISTICAS	SECRETARIA DE TRATAMIENTO JURIDICO, DOCUMENTAL Y ESTADISTICAS	RIVADAVIA	2035	\N	\N	\N	1	4446416	102	S.TR.DOC.Y EST.	\N	2012-11-06	1	1161	1	8	t
83	1	CUERPO MEDICO FORENSE	CUERPO MEDICO FORENSE	La Rioja	1615	PB   	   	\N	1	4446500	30	C.MED.FO.	\N	2012-01-01	\N	597	1	8	t
163	2	FISCALIA CIVIL, COMERCIAL Y LABORAL Nº 1	FISCALIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL Y LABORAL Nº 1	GRAL.LAVALLE KM.9	2093	\N	   	\N	1	3751426446	1142	FIS.C.C.Y L.Nº1	\N	2012-01-01	\N	443	17	5	t
297	3	TRIBUNAL PENAL Nº 1	TRIBUNAL PENAL Nº 1	LA RIOJA	1561	PB   	\N	\N	1	4446412	212	TR.P.Nº 1	\N	2012-10-23	1	1412	1	4	t
320	1	DEFENSORIA OFICIAL Nº 2 -3RA. CIRCUNSCRIPCION JUDICIAL	DEFENSORIA OFICIAL Nº 2 -3RA CIRCUNSCRIPCION JUDICIAL	\N	\N	\N	\N	\N	1	\N	\N	DEF.OF.Nº 2	\N	2012-11-12	\N	\N	17	1	t
323	2	DEFENSORIA OFICIAL Nº 1 -3RA CIRCUNSCRIPCION JUDICIAL	DEFENSORIA OFICIAL Nº 1 -3RA CIRCUNSCRIPCION JUDICIAL	\N	\N	\N	\N	\N	1	\N	\N	D.OF. Nº 3	\N	2012-11-19	\N	\N	17	1	t
119	2	DEFENSORIA CIVIL Y COMERCIAL Nº 1	DEFENSORIA OFICIAL DE 1RA.INSTANCIA EN LO CIVIL Y COMERCIAL Nº 1	BRASIL ESQ. MISIONES	1180	\N	   	\N	1	3755421384	1084	DEF.CIV.Y C.Nº1	\N	2012-01-01	1	462	48	1	t
44	2	DEFENSORIA DE INSTRUCCION Nº 5	DEFENSORIA OFICIAL DE INSTRUCCION Nº 5	PEDRO MENDEZ ESQ. URUGUAY	2221	1	   	\N	1	4446578	6578	DEF.INSTR.Nº 5	\N	2012-01-01	1	773	1	4	f
279	2	JUZGADO PENAL Nº 1	JUZGADO PENAL Nº 1	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	39	4	f
286	1	JUZGADO PENAL Nº 3	JUZGADO PENAL Nº 3	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	4	f
284	1	JUZGADO PENAL Nº 1	JUZGADO PENAL Nº 1	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	4	f
260	2	DEFENSORÍA OFICIAL Nº 2 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-	DEFENSORÍA OFICIAL Nº 2 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	1	f
261	2	DEFENSORÍA OFICIAL Nº 3 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-	DEFENSORÍA OFICIAL Nº 3 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	1	f
227	1	Ministerio de Acción Cooperativa, Mutual, Comercio e Integración	Ministerio de Acción Cooperativa, Mutual, Comercio e Integración	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
259	2	DEFENSORÍA OFICIAL Nº 1 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-	DEFENSORÍA OFICIAL Nº 1 -SEGUNDA CIRCUNSCRIPCIÓN JUDICIAL-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	1	f
249	1	Unidad V - Instituto Correccional de Mujeres	Unidad V - Instituto Correccional de Mujeres	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
24	2	JUZGADO DE INSTRUCCIÓN Nº 7	JUZGADO DE INSTRUCCIÓN Nº 7	PEDRO MENDEZ ESQ. URUGUAY	2221	PB   	   	\N	1	4446570	\N	JUZ.INST.Nº 7	\N	2012-01-01	1	2626	1	4	f
10021	\N	JUZGADO DE PAZ DE FÁTIMA	JUZGADO DE PAZ DE FÁTIMA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-12-16	\N	\N	1	1	t
222	1	Gobernación	Gobernación	FELIX DE AZARA	\N	\N	   	\N	1	\N	\N	\N	MAURICE FABIAN CLOSS	2012-01-01	\N	\N	1	8	f
240	1	Consejo General de Educación	Consejo General de Educación	CENTRO CIVICO	\N	\N	   	\N	1	\N	\N	C.GRAL.EDUC.	\N	2012-01-01	\N	1	1	8	f
234	1	TRIBUNAL DE CUENTAS	TRIBUNAL DE CUENTAS	BUENOS AIRES	\N	\N	   	\N	0	\N	\N	TR.CUENT.	FORES, PERPETUO	2012-01-01	\N	\N	1	8	f
255	1	Camara de Representantes de la  Provincia de Misiones	Camara de Representantes de la  Provincia de Misiones	IVANOSKY	\N	\N	   	\N	1	\N	\N	CAM.REPR.	ING. CARLOS EDUARDO ROVIRA	2012-01-01	\N	\N	1	8	f
34	2	FISCALÍA DE INSTRUCCIÓN Nº 6	FISCALÍA DE INSTRUCCIÓN Nº 6	BUENOS AIRES	1231	PB   	   	\N	1	4446440	247	FIS.INST.Nº 6	\N	2012-01-01	1	1082	1	4	f
241	1	Honorable Consejo Deliberante	Honorable Consejo Deliberante	RIVADAVIA Y BOLIVAR	\N	\N	   	\N	1	\N	\N	\N	MAGI SOLARI	2012-01-01	\N	\N	1	8	f
239	1	Servicio Penitenciario Provincial	Servicio Penitenciario Provincial	\N	\N	\N	   	\N	1	\N	\N	SERV.PENT.PRO.	\N	2012-01-01	\N	\N	1	8	f
236	1	CONSEJO DE LA MAGISTRATURA	CONSEJO DE LA MAGISTRATURA	SANTA FE	\N	\N	   	\N	1	4446610	\N	C.DE LA MAG.	\N	2012-01-01	1	1765	1	8	f
233	1	Ministerio de Salud Pública	Ministerio de Salud Pública	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
10025	\N	DEFENSORIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL, DE FAMILIA Y VIOLENCIA FAMILIAR	DEFENSORIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL, DE FAMILIA Y VIOLENCIA FAMILIAR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2016-03-09	\N	\N	80	7	t
282	1	JUZGADO PENAL Nº 3	JUZGADO PENAL Nº 3	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
283	1	JUZGADO PENAL Nº 4	JUZGADO PENAL Nº 4	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
10026	\N	FISCALIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL, DE FAMILIA Y VIOLENCIA FAMILIAR	FISCALIA DE PRIMERA INSTANCIA EN LO CIVIL, COMERCIAL, LABORAL, DE FAMILIA Y VIOLENCIA FAMILIAR	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2016-03-09	\N	\N	80	7	t
257	2	DEFENSORIA OFICIAL Nº 1	DEFENSORIA OFICIAL Nº 1	\N	\N	\N	   	\N	1	\N	\N	DEF.OFIC.Nº 1	\N	2012-01-01	\N	1	1	1	f
258	2	DEFENSORIA OFICIAL Nº 2	DEFENSORIA OFICIAL Nº 2	\N	\N	\N	   	\N	1	\N	\N	DEF.OFIC.Nº 2	\N	2012-01-01	\N	1	1	1	f
263	2	DEFENSORIA PENAL Nº 2	DEFENSORIA PENAL Nº 2	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
248	1	Unidad IV - Instituto Correccional de Menores	Unidad IV - Instituto Correccional de Menores	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
278	1	JUZGADO PENAL	JUZGADO DE PRIMERA INSTANCIA PENAL	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	17	4	f
287	2	JUZGADO PENAL Nº 1	JUZGADO PENAL Nº 1	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	17	4	f
250	1	Unidad VI - Instituto de Encausados y Procesados	Unidad VI - Instituto de Encausados y Procesados	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
244	1	Instituto Provincial de Lotería y Casinos	Instituto Provincial de Lotería y Casinos	FELIX DE AZARA	\N	\N	   	\N	1	\N	\N	\N	BALERO TORREZ	2012-01-01	\N	\N	1	8	f
256	1	Centro de Cómputos de la Provincia	Centro de Cómputos de la Provincia	SANTA FE	\N	\N	   	\N	1	\N	\N	C.COMP.	\N	2012-01-01	\N	1	1	8	f
265	1	Fiscalía Penal N-1	Fiscalía Penal N-1	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
266	1	Fiscalía Penal N-2	Fiscalía Penal N-2	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
268	1	Fiscalía Penal N-4	Fiscalía Penal N-4	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	4	f
246	1	Unidad II - Oberá	UNIDAD PENAL II - OBERÁ	\N	\N	\N	   	\N	0	\N	\N	UPII	\N	2012-01-01	\N	1	48	8	f
254	1	Subsecretaria de Cultura	Subsecretaria de Cultura	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
235	1	TRIBUNAL ELECTORAL	TRIBUNAL ELECTORAL DE LA PROVINCIA DE MISIONES	\N	\N	\N	   	\N	1	4422033	\N	TRIB.ELECT.	\N	2012-01-01	\N	1767	1	8	f
238	1	TESORERIA GENERAL	TESORERIA GENERAL DE LA PROVINCIA	\N	\N	\N	   	\N	1	\N	\N	TE.GRAL.	\N	2012-01-01	\N	1	1	8	f
252	1	Municipalidad de Eldorado	Municipalidad de Eldorado	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	17	8	f
224	1	Ministerio de Bienestar Social de la Mujer y la Juventud	Ministerio de Bienestar Social de la Mujer y la Juventud	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
231	1	Ministerio de Coordinación General de Gabinete	Ministerio de Coordinación General de Gabinete	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
229	1	Ministerio de Cultura, Educación, Ciencia y Tecnología	Ministerio de Cultura, Educación, Ciencia y Tecnología	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
251	1	Municipalidad de Posadas	Municipalidad de Posadas	RIVADAVIA	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
226	1	Ministerio de Turismo	Ministerio de Turismo	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
223	1	Ministerio de Gobierno	Ministerio de Gobierno	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
225	1	Ministerio del Agro y la Producción	Ministerio del Agro y la Producción	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
10003	3	DIRECCION GENERAL DE RENTAS	DIRECCION GENERAL DE RENTAS - POSADAS MNES.	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	2013-11-27	\N	\N	1	8	t
298	1	DIRECCION DE ASUNTOS JURIDICOS	DIRECCION DE ASUNTOS JURIDICOS	AVDA. SANTA CATALINA	1735	S.S  	\N	\N	1	\N	\N	DIR.AS.JUR.	\N	2012-10-24	\N	2638	1	8	t
10016	\N	JUZGADO DE PAZ DE CAÁ YARÍ	JUZGADO DE PAZ DE CAÁ YARÍ	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-04-13	\N	\N	37	8	t
10019	\N	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA N° 9 - ITAEMBE MINI	DEFENSORIA CIVIL, COMERCIAL, LABORAL Y DE FAMILIA N° 9 - ITAEMBE MINI	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-10-05	\N	\N	1	1	t
10028	\N	JUZGADO DE PAZ DE TRES CAPONES	JUZGADO DE PAZ DE TRES CAPONES	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2016-05-27	\N	\N	5	1	t
10029	\N	MINISTERIO DE DESARROLLO SOCIAL	MINISTERIO DE DESARROLLO SOCIAL	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2016-08-26	\N	\N	1	8	t
10030	\N	LEGAJO ELECTRONICO UNICO	LEGAJO ELECTRONICO UNICO	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2016-10-31	\N	\N	1	1	t
10011	\N	SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 7 - Posadas	SECRETARIA DE EJECUCIÓN TRIBUTARIA DEL JUZGADO CIVIL Y COMERCIAL Nº 7 - Posadas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-02-02	\N	\N	1	8	t
121	2	JUZGADO DE FAMILIA Nº 1	JUZGADO DE PRIMERA INSTANCIA DE FAMILIA Nº 1	GOBERNADOR BARREIRO	1012	\N	   	\N	1	3755403334	\N	JUZ.FLIA.Nº 1	\N	2012-01-01	1	776	48	3	f
291	1	Juzgado de Paz N- 3 -Posadas-	Juzgado de Paz N- 3 -Posadas-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
290	1	Juzgado de Paz N- 2 -Posadas-	Juzgado de Paz N- 2 -Posadas-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	8	f
87	2	JUZGADO DE PAZ EN LO CIVIL Y COMERCIAL Nº 1	JUZGADO DE PAZ EN LO CIVIL Y COMERCIAL Nº 1	AVDA. SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1285	J.PAZ.C.C.Nº 1	\N	2012-01-01	\N	515	1	1	t
149	1	Juzgado de Paz de 25 de Mayo	Juzgado de Paz de 25 de Mayo	Rivadavia	330	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	72	8	t
109	1	Juzgado de Paz de San José	Juzgado de Paz de San José	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	4	1	t
99	1	Juzgado de Paz de Bonpland	Juzgado de Paz de Bonpland	San Martín	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	8	1	t
102	1	Juzgado de Paz de Corpus	Juzgado de Paz de Corpus	Libertad	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	60	1	t
93	1	Juzgado de Paz de Concepción de la Sierra	Juzgado de Paz de Concepción de la Sierra	Rivadavia	610	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	15	1	t
160	2	JUZGADO CIVIL Y COMERCIAL Nº 1	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 1	GRAL. LAVALLE	2093	\N	   	\N	1	3751426521	\N	J.C.Y C.Nº1	\N	2012-01-01	\N	1663	17	1	t
170	2	JUZGADO LABORAL Nº 2	JUZGADO DE PRIMERA INSTANCIA EN LO LABORAL Nº 2	GRAL. LAVALLE	2093	\N	   	\N	1	3751420770	1270	J.LAB.Nº 2	\N	2012-01-01	1	530	17	2	t
142	1	Juzgado de Paz de Oberá	Juzgado de Paz de Oberá	Santiago del Estero	423	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	8	t
161	2	JUZGADO CIVIL Y COMERCIAL Nº 2	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 2	GRAL. LAVALLE	2093	\N	   	\N	1	3751422571	1171	J.C.Y C.Nº2	\N	2012-01-01	\N	1597	17	1	t
53	2	JUZGADO CIVIL Y COMERCIAL Nº 6	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 6	Avda. Santa Catalina	1858	3	\N	\N	1	4446601	6601	J.C.Y C.Nº 6	\N	2012-01-01	1	1845	1	1	t
10020	\N	MINISTERIO DE TRABAJO Y EMPLEO DE LA PROVINCIA DE MISIONES	MINISTERIO DE TRABAJO Y EMPLEO DE LA PROVINCIA DE MISIONES	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-10-14	\N	\N	1	8	t
277	2	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -OBERÁ-	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -OBERÁ-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	48	5	f
270	2	JUZGADO CIVIL Y COMERCIAL Nº 1	JUZGADO DE PRIMERA INSTANCIA EN LO CIVIL Y COMERCIAL Nº 1	\N	\N	\N	   	\N	1	\N	\N	JUZ.C.Y C. Nº1	\N	2012-01-01	\N	969	1	1	f
272	2	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -POSADAS-	JUZGADO CIVIL, COMERCIAL Y LABORAL Nº 2 -POSADAS-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	5	f
274	1	Juzgado Civil, Comercial y Laboral N-4 -Posadas-	Juzgado Civil, Comercial y Laboral N-4 -Posadas-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	5	f
275	1	Juzgado Civil, Comercial y Laboral N-5 -Posadas-	Juzgado Civil, Comercial y Laboral N-5 -Posadas-	\N	\N	\N	   	\N	1	\N	\N	\N	\N	2012-01-01	\N	1	1	5	f
10036	\N	OFICINA DE ESTADISTICAS	OFICINA DE ESTADISTICAS	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-09-26	\N	\N	1	8	t
10037	\N	JUZGADO DE PAZ DE GARUHAPÉ	JUZGADO DE PAZ DE GARUHAPÉ	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-11-27	\N	\N	40	8	t
73	3	Cámara Laboral	Cámara de Apelación en lo Laboral	Bolívar	1745	2	\N	\N	1	4446438	\N	C.A.L.	\N	2012-01-01	\N	618	1	2	t
79	1	Archivo de Tribunales	Archivo General de los Tribunales	Buenos  Aires	2124	\N	\N	\N	1	4446485	\N	A.G.T	\N	2018-02-19	\N	540	1	8	t
56	2	JUZGADO DE FAMILIA Nº 1	JUZGADO DE FAMILIA Nº 1	AVDA. SANTA CATALINA	1735	1	\N	\N	1	4446700	1218	JUZ.FLIA.Nº 1	\N	2018-02-19	1	1492	1	3	t
10032	\N	JUZGADO DE VIOLENCIA FAMILIAR Nº 1	JUZGADO DE VIOLENCIA FAMILIAR Nº 1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2017-06-12	\N	\N	1	3	t
88	2	JUZGADO DE PAZ EN LO CIVIL Y COMERCIAL Nº 2	JUZGADO DE PAZ EN LO CIVIL Y COMERCIAL Nº 2	AVDA. SANTA CATALINA	1735	PB   	\N	\N	1	4446700	1297	J.PAZ C.C.Nº 2	\N	2012-01-01	\N	2248	1	1	t
10033	2	DEFENSORÍA DE VIOLENCIA FAMILIAR Nº 1	DEFENSORÍA DE VIOLENCIA FAMILIAR Nº 1	\N	\N	1	\N	\N	1	\N	\N	\N	\N	2017-06-12	1	1492	1	3	t
\.


ALTER TABLE public.departamentos ENABLE TRIGGER ALL;

--
-- Data for Name: tipos_certificados; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.tipos_certificados DISABLE TRIGGER ALL;

COPY public.tipos_certificados (id_tipo_certificado, nombre) FROM stdin;
1	Fotocopia DNI
6	Declaracion jurada
10	Certificado de nacimiento
11	Certificado de matrimonio
12	Certificado de discapacidad
13	Certificado de escolaridad
2	Fotocopia de CUIL o CUIT
3	Fotocopia de titulo
4	Fotocopia de Curriculum
\.


ALTER TABLE public.tipos_certificados ENABLE TRIGGER ALL;

--
-- Data for Name: documentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.documentos DISABLE TRIGGER ALL;

COPY public.documentos (id_documento, nombre, id_tipo_certificado, id_trabajador, fecha, doc_adjunto) FROM stdin;
\.


ALTER TABLE public.documentos ENABLE TRIGGER ALL;

--
-- Name: domicilio_id_domicilio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.domicilio_id_domicilio_seq', 13, true);


--
-- Data for Name: domicilios; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.domicilios DISABLE TRIGGER ALL;

COPY public.domicilios (id_domicilio, domicilio_calle, domicilio_num, fecha, id_trabajador, estado) FROM stdin;
6	EE	45	\N	6	AC
1	AV. corrientes	2323	2018-11-19	1	AC
4	Av cocomarola	77	2018-11-25	4	AC
3	San Luis	1321	2018-11-24	3	AC
7	Jujuy	33	2018-11-25	7	AC
2	Cordoba	33	2018-11-19	2	AC
5	Entre Rios	33	2018-11-24	5	AC
13	LIBERTAD	345	2018-11-27	10	AC
\.


ALTER TABLE public.domicilios ENABLE TRIGGER ALL;

--
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.empresa DISABLE TRIGGER ALL;

COPY public.empresa (id_empresa, nombre) FROM stdin;
\.


ALTER TABLE public.empresa ENABLE TRIGGER ALL;

--
-- Data for Name: estados_civiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.estados_civiles DISABLE TRIGGER ALL;

COPY public.estados_civiles (id_estado_civil, nombre) FROM stdin;
S	Soltero/a
C	Casado/a
D	Divorciado/a
V	Viudo/a
\.


ALTER TABLE public.estados_civiles ENABLE TRIGGER ALL;

--
-- Data for Name: tipos_examenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.tipos_examenes DISABLE TRIGGER ALL;

COPY public.tipos_examenes (id_tipo_examen, nombre) FROM stdin;
1	Exámenes Preocupacionales o de Ingreso
2	Exámenes Periódicos
3	Exámenes de Egreso
\.


ALTER TABLE public.tipos_examenes ENABLE TRIGGER ALL;

--
-- Data for Name: examenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.examenes DISABLE TRIGGER ALL;

COPY public.examenes (id_examen, nombre, descripcion, id_tipo_examen) FROM stdin;
1	Declaración Jurada de Antecedentes Médicos	El postulante responde un cuestionario sencillo al que convalida con su firma, con la supervisión del Médico Laboral	1
2	Examen Clínico	Incluye examen de agudeza visual, bucodental y evaluación de todos los aparatos y sistemas, con énfasis en los más comprometidos por la tarea a realizar.	1
3	Radiografía de Tórax (digitalizada)	Placa radiográfica con informe del Médico Especialista en Diagnóstico por Imágenes.	1
4	Análisis de Laboratorio	El perfil básico incluye hemograma, eritrosedimentación, glucemia, uremia y examen completo de orina.	1
5	Electrocardiograma	Examen electrocardiográfico informado por Médico Especialista en Cardiología.	1
6	Informe Final de Aptitud	Informe del Médico Laboral sobre la aptitud del postulante.	1
\.


ALTER TABLE public.examenes ENABLE TRIGGER ALL;

--
-- Name: examenes_id_examen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.examenes_id_examen_seq', 6, true);


--
-- Data for Name: resultados_examenes; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.resultados_examenes DISABLE TRIGGER ALL;

COPY public.resultados_examenes (id_resultado, nombre, descripcion) FROM stdin;
1	Apto	para la tarea propuesta. Quiere decir que es un paciente sano con capacidad laboral considerada normal.
2	Apto con patologías preexistentes	Son aquellos pacientes que a pesar de tener algunas patologías pueden desarrollar la labor normalmente teniendo ciertas precauciones, para que ellas no disminuyan el rendimiento ni tampoco afecten su salud.
3	Apto con patologías que se pueden agravar con el trabajo	Son pacientes que tienen algún tipo de lesiones orgánicas que con el desempeño de la labor pueden verse incrementadas (por ejemplo, várices, disminución de agudeza visual, etc), y deben ser cobijados con programas de vigilancia epidemiológica específicos, deben tener controles periódicos de su estado de salud y se debe dejar constancia de su patología al ingreso.
4	No apto	Son pacientes que por patologías, lesiones o secuelas de enfermedades o accidentes tienen limitaciones orgánicas que les hacen imposible la labor en las circunstancias en que está planteada dentro de la empresa, que por sus condiciones físicas, no le permitirían el desarrollo normal de las labores. En estos casos es indispensable emitir un concepto claro y fundamentado, que defina las causas por las cuales no hay aptitud.
\.


ALTER TABLE public.resultados_examenes ENABLE TRIGGER ALL;

--
-- Data for Name: examenes_trabajadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.examenes_trabajadores DISABLE TRIGGER ALL;

COPY public.examenes_trabajadores (id_examen_trabajador, id_tipo_examen, fecha, id_resultado_examen, observacion, id_trabajador, fecha_nuevo_estudio) FROM stdin;
1	1	2018-11-19	2	aaaaaa bbb	6	\N
2	2	2018-11-24	2	\N	6	2018-11-27
3	1	2018-11-27	1	\N	10	\N
\.


ALTER TABLE public.examenes_trabajadores ENABLE TRIGGER ALL;

--
-- Name: examenes_trabajadores_id_examen_trabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.examenes_trabajadores_id_examen_trabajador_seq', 3, true);


--
-- Data for Name: formas_cotizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.formas_cotizacion DISABLE TRIGGER ALL;

COPY public.formas_cotizacion (id_forma_cotizacion, nombre) FROM stdin;
1	Mensual
\.


ALTER TABLE public.formas_cotizacion ENABLE TRIGGER ALL;

--
-- Name: formas_cotizacion_id_forma_cotizacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.formas_cotizacion_id_forma_cotizacion_seq', 1, true);


--
-- Data for Name: grupos_cotizaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.grupos_cotizaciones DISABLE TRIGGER ALL;

COPY public.grupos_cotizaciones (id_grupo_cotizacion, nombre) FROM stdin;
2	Part Time
1	Full  Time
\.


ALTER TABLE public.grupos_cotizaciones ENABLE TRIGGER ALL;

--
-- Name: grupos_cotizaciones_id_grupo_cotizacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grupos_cotizaciones_id_grupo_cotizacion_seq', 2, true);


--
-- Data for Name: hijos; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.hijos DISABLE TRIGGER ALL;

COPY public.hijos (id_hijo, apeynom, fecha_nacimiento, id_trabajador, discapacidad, sexo) FROM stdin;
1	MANITTO SHARA	2016-11-17	3	NO	\N
5	DUARTE ORTELLADO VERONICA	2017-05-16	6	NO	F
3	DUEARTE ORTELLADO ARTURO	2007-08-09	6	NO	M
4	DUARTE ORTELLADO LEONARDO	2011-08-25	6	NO	M
6	MENDEZ JUAN	2015-11-18	7	NO	\N
7	Benitez Camila	2017-05-16	1	SI	F
9	PEREZ MARIO	2017-11-14	10	NO	M
10	PEREZ MARTA	2000-07-10	10	SI	F
\.


ALTER TABLE public.hijos ENABLE TRIGGER ALL;

--
-- Name: hijos_id_hijo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hijos_id_hijo_seq', 10, true);


--
-- Data for Name: inasistencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.inasistencias DISABLE TRIGGER ALL;

COPY public.inasistencias (id_insistencia, justificada, id_articulo, fecha_desde, fecha_hasta, observaciones, id_trabajador, cantidad) FROM stdin;
1	J	\N	2018-11-18	2018-11-18	ddd	4	\N
2	I	\N	2018-11-18	\N	aaaaacccccc	6	\N
3	T	\N	2018-11-25	\N	\N	6	12
4	T	\N	2018-11-27	\N	\N	10	15
\.


ALTER TABLE public.inasistencias ENABLE TRIGGER ALL;

--
-- Name: inasistencias_id_insistencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inasistencias_id_insistencia_seq', 4, true);


--
-- Data for Name: tipos_licencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.tipos_licencias DISABLE TRIGGER ALL;

COPY public.tipos_licencias (id_tipo_licencia, nombre) FROM stdin;
1	LICENCIAS QUE SURGEN DE LA LEY DE CONTRATO DE TRABAJO
3	LICENCIAS DISPUESTAS EN LEYES COMPLEMENTARIAS
4	LICENCIA INCAUSADA SIN GOCE DE SUELDO
5	LICENCIA POR MATERNIDAD
6	LICENCIA POR ENFERMEDAD
2	LICENCIAS ESPECIALES
\.


ALTER TABLE public.tipos_licencias ENABLE TRIGGER ALL;

--
-- Data for Name: licencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.licencias DISABLE TRIGGER ALL;

COPY public.licencias (id_licencia, nombre, descripcion, id_tipo_licencia, dias) FROM stdin;
1	Por nacimiento de hijo	Deben otorgarse 2 días corridos, uno de los cuales debe ser día hábil, cuando la licencia coincidiera con domingo, feriado o día no laborable. El empleado, debe acreditar el nacimiento, mediante la partida respectiva.	1	2
2	Por matrimonio	Corresponden 10 días corridos. A solicitud del trabajador, el empleador debe concederla acumulada con las vacaciones, aún cuando esto implique alterar la oportunidad de concesión prefijada por ley. El empleado, debe acreditar el matrimonio, mediante la partida respectiva.	1	10
3	Por fallecimiento de hijos, padres, cónyuge o de la persona con la cual hubiese vivido públicamente, durante al menos 2 años anteriores al fallecimiento	La licencia será de 3 días corridos, uno de los cuales debe ser día hábil, cuando la licencia coincidiera con domingo, feriado o día no laborable. Tanto el fallecimiento, como el vínculo familiar, deberá ser acreditado con las partidas correspondientes	1	3
4	Por fallecimiento de hermano	Corresponde 1 día hábil de licencia, debiendo acreditar vínculo y fallecimiento con partidas.	1	1
5	Para rendir examen	En la enseñanza media o universitaria, 2 días corridos por examen, con un máximo de 10 días por año calendario. Los exámenes, deberán estar referidos a los planes de enseñanza oficiales o autorizados por organismo provincial o nacional competente. El beneficiario, deberá acreditar ante el empleador haber rendido el examen mediante la presentación del certificado expedido por el instituto en el cual curse los estudios.	1	2
6	Por casamiento	12 días corridos, con goce total de sus remuneraciones, pudiendo, si así lo decidiere el empleado, adicionarlo al período de vacaciones anuales. Asimismo, el trabajador, tendrá derecho a un día de permiso sin pérdida de remuneración por todo concepto para trámites prematrimoniales.	2	12
7	Por enfermedad del cónyuge, padres o hijos que requiera necesariamente la asistencia personal del empleado	Licencia de hasta 30 días por año, sin goce de remuneraciones.	2	30
8	Por fallecimiento de padres, hijos, cónyuges o hermanos/as, debidamente comprobado	4 días corridos de licencia, con goce total de sus remuneraciones	2	4
9	Por fallecimiento de abuelos, padres o hermanos políticos o hijos del cónyuge	2 días de licencia corridos, con goce total de sus remuneraciones.	2	2
10	Por mudanza debidamente acreditada	2 días corridos de licencia con goce total de remuneraciones.	2	2
11	Para los estudiantes secundarios, a efectos de preparar sus materias y rendir exámenes	10 días de licencia como máximo por año, con goce total de sus remuneraciones. Esta licencia, a solicitud del empleado/a, podrá acumularse al período ordinario de vacaciones anuales.	2	10
12	Para los estudiantes universitarios, a efectos de preparar sus materias y rendir exámenes	20 días de licencia como máximo por año, con goce total de sus remuneraciones, pudiendo solicitar hasta un máximo de 4 días por examen. Cuando en el año, se excediera de cinco exámenes sin repetirlos, se otorgarán cuatro días más de licencia con goce de remuneraciones. Esta licencia, a solicitud del empleado/a, podrá acumularse al período ordinario de vacaciones anuales.	2	20
13	Licencia por donación de sangre	La ley 22.990, en su artículo 47, inciso c, establece, que por donación de sangre, el trabajador podrá justificar inasistencia por el plazo de 24 horas incluido el día de la donación. Cuando la donación, sea realizada por hemaféresis, la justificación abarcará 36 horas. La ley aclara que en ninguna circunstancia se producirá pérdida o disminución de sueldos, salarios o premios por este concepto.	3	1
14	Licencia por trámites y citaciones	La ley 23.691, prevé que cualquier persona citada por los tribunales nacionales o provinciales, que preste servicio en relación de dependencia, tendrá derecho a no asistir a sus tareas durante el tiempo necesario para acudir a la citación sin perder el derecho a su remuneración.\nIgual derecho, le asistirá a toda persona que deba realizar trámites personales y obligatorios ante las autoridades nacionales, provinciales o municipales, siempre y cuando los mismos no pudieran ser efectuados fuera del horario normal de trabajo.	3	\N
15	Licencia para votar	El Codigo Nacional Electoral Argentino, dispone que las personas que por razones de trabajo deban estar ocupadas durante las horas del acto electoral, tienen derecho a obtener una licencia especial de sus empleadores con el objeto de concurrir a emitir el voto o desempeñar funciones en el comicio, sin deducción alguna del salario ni posterior recarga de horario.\nEn estos casos, el empleador, deberá otorgar al dependiente una licencia por todo el lapso que le implique a este trasladarse desde el lugar de trabajo hasta el lugar de votación, emitir el sufragio y volver al lugar de trabajo	3	\N
16	Licencia para votar en países limítrofes	Según lo dispuesto por la ley 23.759, los ciudadanos de Países limítrofes, gozarán en sus empleos de hasta 4 días de licencia, a los fines de que puedan concurrir a emitir su voto en las elecciones que se realicen en su país de origen. Sin embargo, dicha licencia se considerará a cuenta de la licencia ordinaria. A los fines de justificar la ausencia, se exige como obligación del trabajador, la presentación del documento electoral en el que deberá constar la emisión del voto.\nSe aclara, que las elecciones a las que se refiere esta ley, son exclusivamente las que abarcan todo el país de origen del trabajador y para cargos nacionales, y no las que se lleven a cabo sólo en algún o algunos estados, provincias, departamentos, municipios, u otros distritos políticos existentes o a crearse en el país de origen.	3	\N
17	Licencia deportiva	La ley 20.596, dispone que, todo deportista aficionado que como consecuencia de su actividad sea designado para intervenir en campeonatos regionales selectivos, dispuestos por los organismos competentes de su deporte en los campeonatos argentinos para integrar delegaciones que figuren regular y habitualmente en el calendario de las organizaciones internacionales, podrá disponer de una licencia especial deportiva en sus obligaciones laborales, tanto en el sector público como en el privado, para su preparación y/o participación en las mismas.\nPara gozar de la “licencia especial deportiva” el solicitante deberá tener una antigüedad en el lugar de trabajo no inferior a seis meses anteriores a la fecha de su presentación.\nEl plazo de licencia es de hasta 60 días para el deportista y hasta 30 días para dirigentes o representantes, congresistas, jueces, árbitros o jurados, directores técnicos o entrenadores. El sueldo del trabajador y los aportes previsionales correspondientes serán entregados al empleador por el órgano de aplicación y con recursos provenientes del Fondo Nacional del Deporte.\nEsta licencia, no se imputará a ninguna otra clase de licencias, ni a vacaciones, ni podrá incidir en la foja de servicios de los interesados para modificar desfavorablemente sus calificaciones, concepto y carrera dentro del escalafón.\nLa licencia especial deportiva, para su validez, debe ser homologada por el órgano de aplicación que determine la ley de la materia, el cual llevará, así mismo, un registro donde se asentarán las que así lo fueran. En el ámbito nacional, cuando se trate de campeonatos argentinos, la solicitarán las entidades que dirigen el deporte aficionado respectivo. Así mismo deberán tener afiliación directa al organismo internacional que corresponda cuando se trate de competencias de este carácter.	3	\N
18	LICENCIA INCAUSADA SIN GOCE DE SUELDO	El otorgamiento de una licencia sin causa legal alguna, solicitada por el trabajador, esta supeditado a lo que el empleador puede resolver en cada caso concreto. Si la otorga, deberá respetar lo convenido, pero si decide no darla, el empleado no puede objetar tal decisión.\nSin perjuicio de ello, algunos Convenios Colectivos de Trabajo, prevén la obligatoriedad del empleador de otorgar este tipo de licencias (Por ejemplo, el Convenio aplicable a los Encargados y Trabajadores de Edificios concede la licencia, si se verifica el cumplimiento de ciertos requisitos objetivos), por lo que en estos casos, debe autorizarsela sin mayor trámite.	4	\N
19	LICENCIA POR MATERNIDAD	LICENCIA POR MATERNIDAD	5	\N
20	LICENCIA POR ENFERMEDAD	LICENCIA POR ENFERMEDAD	6	\N
\.


ALTER TABLE public.licencias ENABLE TRIGGER ALL;

--
-- Name: licencias_id_licencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.licencias_id_licencia_seq', 20, true);


--
-- Data for Name: licencias_trabajadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.licencias_trabajadores DISABLE TRIGGER ALL;

COPY public.licencias_trabajadores (id_licencia_trabajador, cantidad_dia, fecha_desde, fecha_hasta, id_licencia, id_trabajador, observacion) FROM stdin;
2	1	2018-11-19	2018-11-19	5	6	aaa cccc
3	2	2018-11-27	2018-11-29	1	10	\N
\.


ALTER TABLE public.licencias_trabajadores ENABLE TRIGGER ALL;

--
-- Name: licencias_trabajadores_id_licencia_trabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.licencias_trabajadores_id_licencia_trabajador_seq', 3, true);


--
-- Name: localidad_id_localidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.localidad_id_localidad_seq', 1, false);


--
-- Data for Name: obras_sociales; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.obras_sociales DISABLE TRIGGER ALL;

COPY public.obras_sociales (id_obra_social, nombre) FROM stdin;
1	I.P.S.
\.


ALTER TABLE public.obras_sociales ENABLE TRIGGER ALL;

--
-- Name: pais_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pais_id_pais_seq', 16, true);


--
-- Data for Name: profesiones; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.profesiones DISABLE TRIGGER ALL;

COPY public.profesiones (id_profesion, nombre) FROM stdin;
1	Psicologo
3	Contador Público
6	Lic. Trabajo Social
2	Licenciado en Comunicacion Social
7	Abogado
10	Otro/a
4	Analista en sistemas
5	Licenciado en sistemas
\.


ALTER TABLE public.profesiones ENABLE TRIGGER ALL;

--
-- Name: provincia_id_provincia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provincia_id_provincia_seq', 26, false);


--
-- Name: resultados_examenes_id_resultado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resultados_examenes_id_resultado_seq', 4, true);


--
-- Data for Name: sanciones_disciplinarias; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.sanciones_disciplinarias DISABLE TRIGGER ALL;

COPY public.sanciones_disciplinarias (id_sancion, id_tipo_sancion, id_trabajador, observaciones, fecha) FROM stdin;
\.


ALTER TABLE public.sanciones_disciplinarias ENABLE TRIGGER ALL;

--
-- Name: sanciones_disciplinarias_id_sancion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sanciones_disciplinarias_id_sancion_seq', 1, false);


--
-- Data for Name: situaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.situaciones DISABLE TRIGGER ALL;

COPY public.situaciones (id_situacion, id_trabajador, id_departamento, id_forma_cotizacion, id_convenio, id_categoria, id_grupo_cotizacion, id_ocupacion, cantidad_hora) FROM stdin;
3	1	300	1	1	7	1	10	8
6	2	240	1	1	9	1	5	8
7	3	265	1	1	8	1	10	8
8	4	273	1	1	12	1	10	8
22	7	9	1	1	12	1	6	8
10	6	300	1	1	7	1	4	8
23	5	300	1	1	12	1	4	6
24	10	300	1	1	12	1	4	6
\.


ALTER TABLE public.situaciones ENABLE TRIGGER ALL;

--
-- Name: situaciones_id_situacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.situaciones_id_situacion_seq', 24, true);


--
-- Name: tipos_asignaciones_id_tipo_asignacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_asignaciones_id_tipo_asignacion_seq', 6, true);


--
-- Name: tipos_certificados_id_tipo_certificado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_certificados_id_tipo_certificado_seq', 9, true);


--
-- Name: tipos_de_documento_id_tipo_documento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_de_documento_id_tipo_documento_seq', 2, true);


--
-- Name: tipos_examenes_id_tipo_examen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_examenes_id_tipo_examen_seq', 3, true);


--
-- Name: tipos_licencias_id_tipo_licencia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_licencias_id_tipo_licencia_seq', 6, true);


--
-- Data for Name: tipos_parientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.tipos_parientes DISABLE TRIGGER ALL;

COPY public.tipos_parientes (id_tipo_parentesco, nombre) FROM stdin;
1	Padre
2	Madre
3	Hijo/a
5	Tio/a
7	Abuelo/a
9	Cónyuge
6	Tio/a
4	Cónyuge
10	Primo/a
0	Ninguno
\.


ALTER TABLE public.tipos_parientes ENABLE TRIGGER ALL;

--
-- Name: tipos_parientes_id_tipo_parentesco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_parientes_id_tipo_parentesco_seq', 10, true);


--
-- Name: trabajador_id_trabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trabajador_id_trabajador_seq', 10, true);


--
-- Data for Name: traslados; Type: TABLE DATA; Schema: public; Owner: postgres
--

ALTER TABLE public.traslados DISABLE TRIGGER ALL;

COPY public.traslados (id_traslado, id_trabajador, id_departamento, fecha_desde, fecha_hasta, observaciones, tipo_traslado) FROM stdin;
1	6	255	2018-11-25	2018-11-25	prueba	T
\.


ALTER TABLE public.traslados ENABLE TRIGGER ALL;

--
-- Name: traslados_id_traslado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.traslados_id_traslado_seq', 1, true);


--
-- Name: vinculos_familiares_id_vinculo_familiar_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vinculos_familiares_id_vinculo_familiar_seq', 1, false);


--
-- PostgreSQL database dump complete
--

