-- INSERT INTO role(id, role_name) VALUES (1, 'recruiter');
-- INSERT INTO role(id, role_name) VALUES (2,	'applicant');
--
--
-- INSERT INTO competence(competence_id, competence_name) VALUES (1,'ticket sales');
-- INSERT INTO competence(competence_id, competence_name) VALUES (2,'lotteries');
-- INSERT INTO competence(competence_id, competence_name) VALUES (3,'roller coaster operation');

COPY role (id, role_name) FROM stdin;
1	recruiter
2	applicant
\.

COPY competence (competence_id, competence_name) FROM stdin;
1	ticket sales
2	lotteries
3	roller coaster operation
\.


COPY person (person_id, firstname, surname, pnr, email, password, fk_id_role, username) FROM stdin;
1	Joelle	Wilkinson	\N	\N	$2a$10$c2u.r94WXryopGVVLbWplOfAJ3NccypDFLydDQweQRJdhHwI0/Euy	1	JoelleWilkinson
2	Martin	Cummings	\N	\N	$2a$10$HEuC70S4VI9s4WMD2X97r.2QWX1XkYrbRZf/u6QxgOkASKxyetHgC	1	MartinCummings
3	Dante	Mason	\N	\N	$2a$10$WGk0D9BwjzFHR6WDncXTbuYe/YWB1hetE6WhBCGjEH72kqkn40FcS	1	DanteMason
4	Risa	Mayer	\N	\N	$2a$10$NdobvlGQFapE/n3LZsWxxez4S8NQZy3mHpdAPfBcgIUjC5qxfBMIi	1	RisaMayer
5	Maxwell	Bailey	\N	\N	$2a$10$XqZ0vIySIg0A4YhnocigdusbrVXZRFJIBdfqurwHmE8hD1P.kW3Se	1	MaxwellBailey
6	Emi	Flowers	\N	\N	$2a$10$mUN9vyoN68SiErdvwShI9eyicNil/uNmyObanlEoLl91vVRLjd4Om	1	EmiFlowers
7	Hedley	Arnold	\N	\N	$2a$10$aO8ltHm5d5HUeCKzQjd/6uZOanl8f6oEV8Ey1hS.Tfzb95vmmpKHG	1	HedleyArnold
8	Armand	Todd	\N	\N	$2a$10$gho2.lqitZ7I5lkQ4jGG5.cvWDhEGYI9qzQxf9J9xQSgJ8xLfwUhq	1	ArmandTodd
9	Phillip	Ramsey	\N	\N	$2a$10$qxj3YC1xYqfSCMtVa2z9EOR5KbzLabGDz3aYYYxEDGbfdCzEfFkfW	1	PhillipRamsey
10	Austin	Mueller	\N	\N	$2a$10$OYsPsr0rUonmjmYyo/altOPAKDQzMMZ7frP4kvfCbznquY0CwI816	1	AustinMueller
11	Leroy	Crane	20070114-1252	l_crane118@finnsinte.se	\N	2	\N
12	Aristotle	Meadows	20030413-5765	a-meadows7789@finnsinte.se	\N	2	\N
13	Tucker	Travis	20090317-7750	tucker-travis2407@finnsinte.se	\N	2	\N
14	Fulton	Wilkerson	20020119-6956	fultonwilkerson@finnsinte.se	\N	2	\N
15	Zeph	Lopez	20030715-4421	z-lopez@finnsinte.se	\N	2	\N
16	Xander	Ortiz	20050715-0949	o.xander@finnsinte.se	\N	2	\N
17	Lyle	House	20020419-6224	l-house6763@finnsinte.se	\N	2	\N
18	Cassandra	Barry	20080213-5606	c.barry9102@finnsinte.se	\N	2	\N
19	Ifeoma	Kirkland	20070317-8141	kirkland_ifeoma3583@finnsinte.se	\N	2	\N
20	Charity	Washington	20090717-3177	c_washington2540@finnsinte.se	\N	2	\N
21	Edward	Hess	20000715-0456	h_edward@finnsinte.se	\N	2	\N
22	Tamara	Dean	20010412-7665	t.dean2756@finnsinte.se	\N	2	\N
23	Teagan	Dillard	20050115-3901	teagandillard3572@finnsinte.se	\N	2	\N
24	Kennedy	Cox	20060519-1626	k_cox@finnsinte.se	\N	2	\N
25	Violet	Cash	20060417-3860	vcash5503@finnsinte.se	\N	2	\N
26	Hasad	Roth	20070618-7746	r-hasad9172@finnsinte.se	\N	2	\N
27	Edward	Dean	20030414-8066	deanedward@finnsinte.se	\N	2	\N
28	Jin	Soto	20050718-7025	jin_soto7144@finnsinte.se	\N	2	\N
29	Colorado	Gentry	20020217-9638	g.colorado@finnsinte.se	\N	2	\N
30	Nolan	Horn	20060518-1513	n_horn@finnsinte.se	\N	2	\N
31	Hedy	Wall	20030513-2431	whedy9508@finnsinte.se	\N	2	\N
32	Uta	Rosales	20070519-2332	rosales-uta7680@finnsinte.se	\N	2	\N
33	Wynter	Bauer	20020817-4226	bauer_wynter3952@finnsinte.se	\N	2	\N
34	Zorita	Taylor	20070715-6572	z_taylor4907@finnsinte.se	\N	2	\N
35	Kelly	Chase	20080313-8250	ckelly@finnsinte.se	\N	2	\N
36	Gage	Bird	20030817-1875	g.bird@finnsinte.se	\N	2	\N
37	Isabelle	Puckett	20030214-5836	ipuckett3636@finnsinte.se	\N	2	\N
38	Chantale	Yates	20040116-8047	chantale_yates6675@finnsinte.se	\N	2	\N
39	Cora	Hooper	20040812-3568	cora-hooper6546@finnsinte.se	\N	2	\N
40	Belle	Workman	20040516-6176	workman_belle1993@finnsinte.se	\N	2	\N
41	Zachary	Mason	20040417-2387	mason.zachary@finnsinte.se	\N	2	\N
42	Kaitlin	Boyer	20030617-1376	boyer.kaitlin@finnsinte.se	\N	2	\N
43	Petra	Estes	20010212-8352	p.estes@finnsinte.se	\N	2	\N
44	Amaya	Peterson	20050514-8177	apeterson@finnsinte.se	\N	2	\N
45	Brady	Rutledge	20010711-8352	brutledge@finnsinte.se	\N	2	\N
46	Sylvia	Paul	20010717-2251	s_paul@finnsinte.se	\N	2	\N
47	Isaac	Espinoza	20030312-7287	isaac_espinoza6687@finnsinte.se	\N	2	\N
48	Nathaniel	Gregory	20020618-8032	g.nathaniel8532@finnsinte.se	\N	2	\N
49	Phelan	Aguirre	20010418-1311	a-phelan@finnsinte.se	\N	2	\N
50	Jayme	Mayo	20070219-3245	mayo-jayme@finnsinte.se	\N	2	\N
51	Jordan	Lancaster	20000612-5724	j-lancaster777@finnsinte.se	\N	2	\N
52	Idona	Gallegos	20040319-7248	i.gallegos4326@finnsinte.se	\N	2	\N
53	Arsenio	Wolf	20010418-6386	wolf_arsenio@finnsinte.se	\N	2	\N
54	Willow	Burt	20040218-3778	willow.burt5992@finnsinte.se	\N	2	\N
55	Kim	Anthony	20060417-8506	a.kim2350@finnsinte.se	\N	2	\N
56	Addison	Watkins	20010211-8019	watkins.addison@finnsinte.se	\N	2	\N
57	Fuller	Parker	20040616-4405	fuller_parker7139@finnsinte.se	\N	2	\N
58	Carlos	Conley	20070514-3078	carlos.conley1508@finnsinte.se	\N	2	\N
59	Phelan	Petersen	20010812-6279	p-petersen@finnsinte.se	\N	2	\N
60	Miranda	Simmons	20030413-3866	msimmons9269@finnsinte.se	\N	2	\N
61	Malcolm	Joyner	20030818-8642	joyner.malcolm5157@finnsinte.se	\N	2	\N
62	Chaney	Hines	20020518-4355	c_hines3755@finnsinte.se	\N	2	\N
63	Upton	Jordan	20050815-7417	u.jordan3996@finnsinte.se	\N	2	\N
64	Allegra	Ortiz	20040313-6569	ortizallegra7177@finnsinte.se	\N	2	\N
65	Ferdinand	Montoya	20050912-5127	f-montoya6652@finnsinte.se	\N	2	\N
66	Danielle	Brooks	20050718-4980	danielle-brooks7385@finnsinte.se	\N	2	\N
67	Shannon	Wilkerson	20000119-8931	wilkerson-shannon380@finnsinte.se	\N	2	\N
68	Ezekiel	Justice	20000215-8505	j-ezekiel5651@finnsinte.se	\N	2	\N
69	Kelsey	Mendez	20030214-6929	m-kelsey1545@finnsinte.se	\N	2	\N
70	Perry	Gutierrez	20020412-8564	g_perry@finnsinte.se	\N	2	\N
71	Desiree	Mcpherson	20020818-2825	mcpherson_desiree8389@finnsinte.se	\N	2	\N
72	Abraham	Miller	20050811-7718	miller_abraham7614@finnsinte.se	\N	2	\N
73	Julie	Underwood	20030413-5867	j_underwood6796@finnsinte.se	\N	2	\N
74	Bruce	Heath	20060211-2504	heath_bruce@finnsinte.se	\N	2	\N
75	Shelly	Chang	20050812-7226	s-chang@finnsinte.se	\N	2	\N
76	Kaseem	Gibson	20070713-8468	gibsonkaseem@finnsinte.se	\N	2	\N
77	Vance	Charles	20070518-8166	v_charles@finnsinte.se	\N	2	\N
78	Asher	Ellis	20040614-3134	a_ellis@finnsinte.se	\N	2	\N
79	Alea	Jordan	20030215-4541	alea-jordan@finnsinte.se	\N	2	\N
80	Xandra	Raymond	20050511-4351	r_xandra@finnsinte.se	\N	2	\N
81	Tashya	Savage	20080615-2714	tashyasavage@finnsinte.se	\N	2	\N
82	Stacey	Hall	20010613-5306	hall_stacey1992@finnsinte.se	\N	2	\N
83	Prescott	Barker	20040612-0193	barkerprescott8785@finnsinte.se	\N	2	\N
84	Aurora	Joyce	20010514-2843	ajoyce4726@finnsinte.se	\N	2	\N
85	Eugenia	Hardin	20020712-4283	hardineugenia1189@finnsinte.se	\N	2	\N
86	Chandler	Stout	20060314-1151	stout_chandler@finnsinte.se	\N	2	\N
87	Imelda	Hutchinson	20000812-7515	h-imelda@finnsinte.se	\N	2	\N
88	Scott	Hendrix	20050511-3717	s_hendrix@finnsinte.se	\N	2	\N
89	Cairo	Garner	20070913-4461	gcairo8535@finnsinte.se	\N	2	\N
90	Meghan	Little	20030517-4367	m.little@finnsinte.se	\N	2	\N
91	Galvin	Cummings	20030613-1885	cummings-galvin440@finnsinte.se	\N	2	\N
92	Conan	Stafford	20060718-6899	stafford_conan8208@finnsinte.se	\N	2	\N
93	Eric	Kerr	20040812-5036	kerreric@finnsinte.se	\N	2	\N
94	Michael	Galloway	20040812-5781	galloway_michael9458@finnsinte.se	\N	2	\N
95	Ignatius	Grimes	20020712-5722	i-grimes8764@finnsinte.se	\N	2	\N
96	Allen	Rhodes	20000313-6856	rhodes-allen@finnsinte.se	\N	2	\N
97	Wilma	Burris	20040412-1112	w_burris8847@finnsinte.se	\N	2	\N
98	Damian	Singleton	20060716-8836	damian-singleton1001@finnsinte.se	\N	2	\N
99	Aurelia	Bond	20070313-7417	bond.aurelia7199@finnsinte.se	\N	2	\N
100	Emery	Lynn	20000712-7696	lynn.emery9158@finnsinte.se	\N	2	\N
101	Portia	Cote	20030814-9843	p-cote8901@finnsinte.se	\N	2	\N
102	Orson	Acevedo	20040212-9461	orson_acevedo3440@finnsinte.se	\N	2	\N
103	Zia	Best	20090311-5262	best-zia@finnsinte.se	\N	2	\N
104	Wylie	Petersen	20010816-8355	p.wylie6607@finnsinte.se	\N	2	\N
105	Barrett	Nunez	20030618-2877	n-barrett@finnsinte.se	\N	2	\N
106	Dorothy	Schmidt	20050118-9195	d-schmidt@finnsinte.se	\N	2	\N
107	Arden	Love	20050311-3772	arden.love6246@finnsinte.se	\N	2	\N
108	Samantha	Howell	20000915-3776	howell-samantha@finnsinte.se	\N	2	\N
109	Inga	Rose	20050417-4218	rose.inga@finnsinte.se	\N	2	\N
110	Octavia	Dickson	20020911-8722	d_octavia3269@finnsinte.se	\N	2	\N
111	Ignatius	Tillman	20030715-4342	tillman.ignatius@finnsinte.se	\N	2	\N
112	Kristen	Barron	20090614-1644	barron_kristen@finnsinte.se	\N	2	\N
113	Clarke	Rosario	20060415-2181	c.rosario@finnsinte.se	\N	2	\N
114	Jolie	Fulton	20010211-1067	joliefulton8265@finnsinte.se	\N	2	\N
115	Akeem	Fry	20020918-3484	fry.akeem3210@finnsinte.se	\N	2	\N
116	George	Ingram	20000713-2326	g_ingram@finnsinte.se	\N	2	\N
117	Justin	Lott	20000413-6179	l.justin3097@finnsinte.se	\N	2	\N
118	Joshua	Cochran	20010114-5829	c.joshua6956@finnsinte.se	\N	2	\N
119	Dominic	Gomez	20050613-3021	g_dominic@finnsinte.se	\N	2	\N
120	Jena	Mcpherson	20010217-1740	mcpherson.jena@finnsinte.se	\N	2	\N
121	Carlos	May	20000618-6052	may-carlos3434@finnsinte.se	\N	2	\N
122	Adria	Duffy	20080612-1112	duffyadria@finnsinte.se	\N	2	\N
123	Brenda	Bridges	20040817-0766	b_brenda8229@finnsinte.se	\N	2	\N
124	Nissim	Barnes	20040816-0539	n-barnes@finnsinte.se	\N	2	\N
125	Dexter	Conway	20020814-7881	d_conway@finnsinte.se	\N	2	\N
126	Trevor	Sargent	20000712-1410	t-sargent@finnsinte.se	\N	2	\N
127	Kylan	Crane	20020716-1276	crane_kylan@finnsinte.se	\N	2	\N
128	Alvin	Graham	20050714-8552	a_graham@finnsinte.se	\N	2	\N
129	Shelby	Lynn	20050519-3482	s-lynn@finnsinte.se	\N	2	\N
130	Russell	Roberts	20050112-6847	robertsrussell@finnsinte.se	\N	2	\N
131	Iola	Morris	20070218-6736	i_morris8645@finnsinte.se	\N	2	\N
132	Isaiah	Cooke	20070112-3227	cooke.isaiah3537@finnsinte.se	\N	2	\N
133	Stacy	Hammond	20070417-3206	stacy.hammond9898@finnsinte.se	\N	2	\N
134	Kirestin	Trujillo	20060719-6214	ktrujillo3280@finnsinte.se	\N	2	\N
135	Tate	Macdonald	20000411-5845	tate.macdonald@finnsinte.se	\N	2	\N
136	Lucas	Pittman	20040412-1849	l_pittman@finnsinte.se	\N	2	\N
137	Cody	Norman	20000219-3848	norman-cody8727@finnsinte.se	\N	2	\N
138	Akeem	Perez	20040712-8365	perez-akeem@finnsinte.se	\N	2	\N
139	Valentine	Hines	20080518-6379	h.valentine@finnsinte.se	\N	2	\N
140	Zorita	Noel	20080217-4547	znoel@finnsinte.se	\N	2	\N
141	Alea	Ellison	20010915-2294	a-ellison@finnsinte.se	\N	2	\N
142	Morgan	Pace	20010217-6784	morganpace8898@finnsinte.se	\N	2	\N
143	Burke	Walsh	20040214-8281	b_walsh@finnsinte.se	\N	2	\N
144	Larissa	Allen	20080615-7636	allen_larissa2410@finnsinte.se	\N	2	\N
145	Herman	Cantu	20080917-1103	cantuherman@finnsinte.se	\N	2	\N
146	Beau	Gardner	20050816-4521	beaugardner@finnsinte.se	\N	2	\N
147	Ira	Collier	20010312-1431	collier-ira@finnsinte.se	\N	2	\N
148	Amena	Booth	20080217-7844	amena-booth5205@finnsinte.se	\N	2	\N
149	Declan	Forbes	20020211-3576	d.forbes@finnsinte.se	\N	2	\N
150	Vance	Ward	20050311-3496	ward_vance1521@finnsinte.se	\N	2	\N
151	Kerry	Lloyd	20010615-4473	k.lloyd8417@finnsinte.se	\N	2	\N
152	Faith	Harrell	20010112-3111	f-harrell4659@finnsinte.se	\N	2	\N
153	Kessie	Quinn	20060712-2216	q_kessie4967@finnsinte.se	\N	2	\N
154	Kimberly	Fowler	20080216-5347	fkimberly@finnsinte.se	\N	2	\N
155	Mufutau	Shields	20010312-6892	shieldsmufutau3319@finnsinte.se	\N	2	\N
156	Rhonda	Espinoza	20070612-8890	rhonda.espinoza1643@finnsinte.se	\N	2	\N
157	Riley	Mays	20040612-5585	maysriley8127@finnsinte.se	\N	2	\N
158	Jack	Finley	20080219-1228	finley-jack570@finnsinte.se	\N	2	\N
159	Penelope	Morales	20020813-9274	p-morales@finnsinte.se	\N	2	\N
160	Laurel	Bowman	20040912-3021	l-bowman5800@finnsinte.se	\N	2	\N
161	Shea	Olsen	20020518-1476	s_olsen@finnsinte.se	\N	2	\N
162	Joan	Serrano	20070918-1531	s_joan3075@finnsinte.se	\N	2	\N
163	Skyler	Avery	20040815-9997	skyler-avery5089@finnsinte.se	\N	2	\N
164	Adam	Daniels	20020218-9842	a-daniels1532@finnsinte.se	\N	2	\N
165	Elmo	Morin	20060617-4834	morin_elmo1872@finnsinte.se	\N	2	\N
166	Hammett	Cherry	20050319-9537	chammett@finnsinte.se	\N	2	\N
167	Zachery	Hughes	20050612-8156	hughes_zachery4705@finnsinte.se	\N	2	\N
168	Alden	Benton	20070218-1629	benton-alden@finnsinte.se	\N	2	\N
169	Kathleen	Ramos	20020518-2796	k.ramos2801@finnsinte.se	\N	2	\N
170	Scott	Horne	20040117-8415	hornescott4074@finnsinte.se	\N	2	\N
171	Macey	Walton	20040211-7764	m-walton@finnsinte.se	\N	2	\N
172	Garrison	Compton	20050813-1122	g-compton@finnsinte.se	\N	2	\N
173	TaShya	Mejia	20040416-5161	t-mejia@finnsinte.se	\N	2	\N
174	Veronica	Ross	20040215-2792	ross-veronica6052@finnsinte.se	\N	2	\N
175	Shad	Houston	20040911-3573	h.shad5320@finnsinte.se	\N	2	\N
176	Ashely	Jones	20040918-4022	a_jones@finnsinte.se	\N	2	\N
177	Valentine	Wallace	20090615-2353	v_wallace@finnsinte.se	\N	2	\N
178	Andrew	Hood	20050712-1655	a.hood@finnsinte.se	\N	2	\N
179	Jack	Butler	20060615-3810	butler.jack@finnsinte.se	\N	2	\N
180	Alan	Gaines	20040611-9648	alangaines@finnsinte.se	\N	2	\N
181	Phillip	Lloyd	20050511-4672	p_lloyd@finnsinte.se	\N	2	\N
182	Adara	Winters	20020217-4850	awinters9426@finnsinte.se	\N	2	\N
183	Orli	Browning	20020613-1799	o-browning@finnsinte.se	\N	2	\N
184	Bo	Walker	20060513-7376	walkerbo9997@finnsinte.se	\N	2	\N
185	Alice	Yang	20030414-4377	a.yang642@finnsinte.se	\N	2	\N
186	Aretha	Shepherd	20070213-2658	aretha-shepherd@finnsinte.se	\N	2	\N
187	Griffin	Young	20010818-2415	griffin.young@finnsinte.se	\N	2	\N
188	Lael	Stokes	20000215-1332	lstokes@finnsinte.se	\N	2	\N
189	Hamilton	Arnold	20070514-7217	h.arnold@finnsinte.se	\N	2	\N
190	Nero	Mendez	20070317-5336	m.nero1425@finnsinte.se	\N	2	\N
191	Malcolm	Farley	20000417-9279	farley_malcolm@finnsinte.se	\N	2	\N
192	Rogan	Ward	20020612-5433	wardrogan@finnsinte.se	\N	2	\N
193	Dylan	Vang	20080314-6784	vang_dylan9093@finnsinte.se	\N	2	\N
194	Shannon	Petty	20010612-4574	p_shannon7696@finnsinte.se	\N	2	\N
195	Marvin	Meyers	20040711-7156	m_meyers8561@finnsinte.se	\N	2	\N
196	Cedric	Banks	20090915-6771	banks_cedric@finnsinte.se	\N	2	\N
197	Ezra	Walters	20030713-8237	waltersezra@finnsinte.se	\N	2	\N
198	Lana	Gaines	20010215-0234	l.gaines@finnsinte.se	\N	2	\N
199	Omar	Pace	20090515-1734	omar.pace@finnsinte.se	\N	2	\N
200	Melvin	Wall	20050718-5414	m_wall@finnsinte.se	\N	2	\N
201	Kylee	Stein	20040312-3716	kstein9577@finnsinte.se	\N	2	\N
202	Althea	Mcbride	20030816-1273	althea-mcbride2670@finnsinte.se	\N	2	\N
203	Rose	Douglas	20040915-8475	douglas_rose6312@finnsinte.se	\N	2	\N
204	Graiden	Meadows	20080615-0253	meadows-graiden4198@finnsinte.se	\N	2	\N
205	Abraham	Bradford	20030715-4251	bradford.abraham@finnsinte.se	\N	2	\N
206	Karen	Ortiz	20050519-2536	okaren@finnsinte.se	\N	2	\N
207	Honorato	Kirk	20010316-3878	kirk_honorato3815@finnsinte.se	\N	2	\N
208	Fitzgerald	Baldwin	20010818-3789	baldwin_fitzgerald@finnsinte.se	\N	2	\N
209	Hilda	Meadows	20090312-1888	h_meadows1507@finnsinte.se	\N	2	\N
210	Hedy	Rich	20080413-9202	hedyrich@finnsinte.se	\N	2	\N
211	Ivy	Monroe	20010814-5400	monroe.ivy@finnsinte.se	\N	2	\N
212	Elmo	Perry	20060312-7444	elmo-perry4535@finnsinte.se	\N	2	\N
213	Rana	Trevino	20020517-1231	r-trevino@finnsinte.se	\N	2	\N
214	Eve	Horn	20080412-1518	ehorn7017@finnsinte.se	\N	2	\N
215	Hedley	Andrews	20070712-1185	handrews@finnsinte.se	\N	2	\N
216	Katelyn	Thomas	20080315-5833	k.thomas8888@finnsinte.se	\N	2	\N
217	Samson	Le	20070912-7056	samsonle@finnsinte.se	\N	2	\N
218	Orla	Noble	20080218-1338	orla-noble@finnsinte.se	\N	2	\N
219	Wynne	Lyons	20010916-3255	lyons_wynne8715@finnsinte.se	\N	2	\N
220	Farrah	Adams	20050712-5831	f.adams2853@finnsinte.se	\N	2	\N
221	Alika	Neal	20070815-5619	neal-alika@finnsinte.se	\N	2	\N
222	Patrick	Smith	20050212-9609	patricksmith@finnsinte.se	\N	2	\N
223	Helen	Morin	20030711-5853	morin-helen@finnsinte.se	\N	2	\N
224	Kristen	Gonzalez	20080816-8717	kgonzalez2376@finnsinte.se	\N	2	\N
225	Tanner	Huff	20030418-5439	tanner-huff5604@finnsinte.se	\N	2	\N
226	Hanae	Nixon	20010814-3706	nixon_hanae@finnsinte.se	\N	2	\N
227	Hyacinth	Phillips	20000816-8451	phillips.hyacinth@finnsinte.se	\N	2	\N
228	Gabriel	Savage	20080716-4435	s.gabriel298@finnsinte.se	\N	2	\N
229	Constance	Lewis	20090311-4728	lewis.constance@finnsinte.se	\N	2	\N
230	Zephania	Palmer	20060818-0581	zephania_palmer3160@finnsinte.se	\N	2	\N
231	Buckminster	Lewis	20010718-6865	buckminster.lewis@finnsinte.se	\N	2	\N
232	Jolie	Buckner	20080613-5666	j_buckner@finnsinte.se	\N	2	\N
233	Dean	Goff	20080814-6604	dgoff9968@finnsinte.se	\N	2	\N
234	Chancellor	Richmond	20050613-2278	c.richmond3853@finnsinte.se	\N	2	\N
235	Brenden	Burks	20090417-8880	burksbrenden@finnsinte.se	\N	2	\N
236	Azalia	Frederick	20050215-9186	a-frederick74@finnsinte.se	\N	2	\N
237	Seth	Mccall	20000818-7174	m.seth@finnsinte.se	\N	2	\N
238	Griffin	Hoffman	20020216-7550	g-hoffman491@finnsinte.se	\N	2	\N
239	Dawn	Lamb	20060815-7973	d.lamb2907@finnsinte.se	\N	2	\N
240	Maxine	Larson	20040619-7787	maxinelarson@finnsinte.se	\N	2	\N
241	Geraldine	Keith	20010418-8302	keith_geraldine8217@finnsinte.se	\N	2	\N
242	Heather	Willis	20030419-4150	willis-heather1186@finnsinte.se	\N	2	\N
243	Lavinia	Ford	20040518-7595	ford.lavinia@finnsinte.se	\N	2	\N
244	Doris	Ayala	20060512-4265	a-doris@finnsinte.se	\N	2	\N
245	Jolie	Mcdonald	20060216-7812	jmcdonald3245@finnsinte.se	\N	2	\N
246	Constance	Perez	20050311-6756	constance_perez@finnsinte.se	\N	2	\N
247	Ashely	Blair	20080415-8452	ablair@finnsinte.se	\N	2	\N
248	Gregory	Deleon	20020811-1054	gregory_deleon4253@finnsinte.se	\N	2	\N
249	Libby	Spencer	20080512-2842	spencer-libby@finnsinte.se	\N	2	\N
250	Martha	Velasquez	20000218-9575	velasquez.martha@finnsinte.se	\N	2	\N
251	Maggie	Zimmerman	20060214-4225	zimmerman_maggie@finnsinte.se	\N	2	\N
252	Fritz	Davis	20080817-6122	f-davis9917@finnsinte.se	\N	2	\N
253	Allen	Barlow	20020713-1531	barlow_allen4218@finnsinte.se	\N	2	\N
254	Cynthia	Rivas	20050514-6172	rivascynthia@finnsinte.se	\N	2	\N
255	Barbara	Rush	20070118-8156	brush5501@finnsinte.se	\N	2	\N
256	Ishmael	Davenport	20030413-8386	i_davenport@finnsinte.se	\N	2	\N
257	Chaim	Branch	20070314-8028	branchchaim7137@finnsinte.se	\N	2	\N
258	Hollee	Carroll	20030616-4664	h_carroll3051@finnsinte.se	\N	2	\N
259	Ian	Taylor	20050111-5252	tian@finnsinte.se	\N	2	\N
260	Driscoll	Cooke	20070612-9419	c.driscoll@finnsinte.se	\N	2	\N
261	Fiona	Baxter	20030411-7216	baxter.fiona@finnsinte.se	\N	2	\N
262	Curran	Barr	20060317-5908	b.curran@finnsinte.se	\N	2	\N
263	Brenden	Gardner	20000514-6155	gardnerbrenden2194@finnsinte.se	\N	2	\N
264	Mariko	Battle	20010812-6566	battle.mariko3683@finnsinte.se	\N	2	\N
265	Quamar	Carney	20080314-3444	q-carney@finnsinte.se	\N	2	\N
266	Mannix	Long	20080712-3512	m_long4657@finnsinte.se	\N	2	\N
267	Kasper	Noble	20060716-5446	kasper_noble1854@finnsinte.se	\N	2	\N
268	Graiden	Callahan	20080114-2240	callahangraiden@finnsinte.se	\N	2	\N
269	Basil	Huffman	20050318-6774	basilhuffman@finnsinte.se	\N	2	\N
270	Brennan	Dickson	20030918-7195	dickson_brennan@finnsinte.se	\N	2	\N
271	Stacy	Logan	20020211-7181	lstacy7905@finnsinte.se	\N	2	\N
272	Isabelle	Mueller	20060414-9735	mueller-isabelle6976@finnsinte.se	\N	2	\N
273	Gage	Zamora	20010915-7241	z_gage1698@finnsinte.se	\N	2	\N
274	Berk	Hoffman	20070211-2642	hoffman.berk4756@finnsinte.se	\N	2	\N
275	Upton	Horton	20050313-8634	upton_horton6911@finnsinte.se	\N	2	\N
276	Silas	Ramos	20020417-3513	ramos.silas187@finnsinte.se	\N	2	\N
277	Suki	Farmer	20070618-8214	suki_farmer@finnsinte.se	\N	2	\N
278	Halee	Richards	20030513-8717	richards_halee393@finnsinte.se	\N	2	\N
279	Geraldine	Mayer	20060518-3465	g.mayer@finnsinte.se	\N	2	\N
280	Shelby	Gilbert	20080818-5426	s.gilbert@finnsinte.se	\N	2	\N
281	Debra	Kirby	20010414-2613	kirby-debra6561@finnsinte.se	\N	2	\N
282	Lisandra	Neal	20070415-1311	l.neal@finnsinte.se	\N	2	\N
283	Jenette	Snider	20080818-3277	j_snider@finnsinte.se	\N	2	\N
284	Ethan	Saunders	20020313-8025	ethan.saunders2605@finnsinte.se	\N	2	\N
285	Renee	Allen	20090518-2691	rallen@finnsinte.se	\N	2	\N
286	Darryl	Marks	20030216-5717	dmarks1873@finnsinte.se	\N	2	\N
287	Malcolm	Salas	20060318-0594	salas.malcolm4427@finnsinte.se	\N	2	\N
288	Skyler	Bowers	20070416-4495	bskyler@finnsinte.se	\N	2	\N
289	Rhona	Phillips	20040515-2635	r_phillips6404@finnsinte.se	\N	2	\N
290	Althea	Grant	20020716-6513	a_grant5081@finnsinte.se	\N	2	\N
291	Aaron	Copeland	20070215-1989	c-aaron@finnsinte.se	\N	2	\N
292	Ariana	Wilson	20050618-2724	w_ariana3169@finnsinte.se	\N	2	\N
293	Zeph	Allen	20040613-5563	allen.zeph5574@finnsinte.se	\N	2	\N
294	Ignacia	Gonzalez	20070519-8617	gignacia@finnsinte.se	\N	2	\N
295	Kim	Osborne	20020912-3403	osborne_kim@finnsinte.se	\N	2	\N
296	Naomi	Shaw	20020717-5724	shawnaomi@finnsinte.se	\N	2	\N
297	Igor	Justice	20030716-6243	i_justice6821@finnsinte.se	\N	2	\N
298	Felix	Carrillo	20020714-6289	fcarrillo@finnsinte.se	\N	2	\N
299	Hillary	Caldwell	20000519-9588	c_hillary4948@finnsinte.se	\N	2	\N
300	Aimee	Hendrix	20070315-7687	aimee.hendrix@finnsinte.se	\N	2	\N
301	Alfreda	Everett	20080419-6871	a_everett@finnsinte.se	\N	2	\N
302	Rebekah	Finch	20060514-0388	finch.rebekah@finnsinte.se	\N	2	\N
303	Cody	Nolan	20080417-4318	nolancody5051@finnsinte.se	\N	2	\N
304	Raphael	Hale	20090914-5480	hale_raphael2210@finnsinte.se	\N	2	\N
305	Bo	Reed	20070512-7544	reed-bo7421@finnsinte.se	\N	2	\N
306	Ivor	Macias	20040411-9687	maciasivor@finnsinte.se	\N	2	\N
307	Joan	Buchanan	20090316-7402	buchanan_joan@finnsinte.se	\N	2	\N
308	Oren	Holt	20080619-2217	holt.oren@finnsinte.se	\N	2	\N
309	Gabriel	Gomez	20060912-0406	gabriel.gomez607@finnsinte.se	\N	2	\N
310	Ira	Quinn	20010215-7144	quinn-ira@finnsinte.se	\N	2	\N
311	Sara	Fulton	20060711-7330	s-fulton4350@finnsinte.se	\N	2	\N
312	Oprah	Robles	20020314-3857	o-robles@finnsinte.se	\N	2	\N
313	Chantale	Newton	20060118-6173	c_newton4372@finnsinte.se	\N	2	\N
314	Phelan	Salinas	20050516-3686	p-salinas@finnsinte.se	\N	2	\N
315	Raphael	Sandoval	20040313-7991	sandoval-raphael2096@finnsinte.se	\N	2	\N
316	Donna	Porter	20050214-1980	donnaporter3031@finnsinte.se	\N	2	\N
317	Steel	Mack	20030617-6766	m-steel6345@finnsinte.se	\N	2	\N
318	Francesca	Chandler	20040815-3303	f-chandler1924@finnsinte.se	\N	2	\N
319	Fleur	Noble	20050717-4348	f.noble@finnsinte.se	\N	2	\N
320	Maryam	Mcleod	20010915-5656	m_mcleod@finnsinte.se	\N	2	\N
321	Blaze	Stevens	20060618-9233	stevensblaze3092@finnsinte.se	\N	2	\N
322	Freya	Walton	20050317-5217	f.walton@finnsinte.se	\N	2	\N
323	Tatum	Tucker	20060317-0973	tucker.tatum5927@finnsinte.se	\N	2	\N
324	Denton	Stewart	20010813-4350	stewartdenton@finnsinte.se	\N	2	\N
325	Ashton	Serrano	20060414-6744	serrano.ashton2363@finnsinte.se	\N	2	\N
326	Mariam	Gordon	20050418-9223	m_gordon1095@finnsinte.se	\N	2	\N
327	Perry	Rice	20070312-5646	perry-rice@finnsinte.se	\N	2	\N
328	Benjamin	Hammond	20050313-6531	b-hammond7270@finnsinte.se	\N	2	\N
329	September	Wilson	20070515-6967	wilson-september1071@finnsinte.se	\N	2	\N
330	Odysseus	Alford	20020314-5287	oalford@finnsinte.se	\N	2	\N
331	Astra	Moon	20050416-3827	astramoon@finnsinte.se	\N	2	\N
332	Nerea	Woodward	20040618-1200	woodward_nerea@finnsinte.se	\N	2	\N
333	Arthur	Richards	20070412-7803	richards-arthur@finnsinte.se	\N	2	\N
334	Leigh	Houston	20050216-4849	houston.leigh9073@finnsinte.se	\N	2	\N
335	Cruz	Riggs	20090216-6844	riggs_cruz5779@finnsinte.se	\N	2	\N
336	Katelyn	Watkins	20080217-3024	watkins.katelyn5895@finnsinte.se	\N	2	\N
337	Yuli	Farley	20040217-1797	f-yuli@finnsinte.se	\N	2	\N
338	Rinah	Gilbert	20070712-8588	rinah.gilbert5677@finnsinte.se	\N	2	\N
339	Philip	Mccray	20010717-7231	p_mccray5693@finnsinte.se	\N	2	\N
340	Odysseus	Preston	20080815-3874	odysseus-preston@finnsinte.se	\N	2	\N
341	Larissa	Faulkner	20060712-1947	f_larissa@finnsinte.se	\N	2	\N
342	Yvette	Roth	20010411-3173	roth-yvette@finnsinte.se	\N	2	\N
343	Keith	Horton	20030214-8585	k_horton@finnsinte.se	\N	2	\N
344	Justine	Parsons	20030314-5331	j-parsons3650@finnsinte.se	\N	2	\N
345	Trevor	Battle	20010417-7172	battle-trevor7553@finnsinte.se	\N	2	\N
346	Karina	Melton	20040213-8337	karina_melton@finnsinte.se	\N	2	\N
347	Craig	Hendricks	20040517-7610	craighendricks9891@finnsinte.se	\N	2	\N
348	Shelby	Weeks	20010116-6673	w.shelby4041@finnsinte.se	\N	2	\N
349	Charity	Vincent	20060817-4586	v-charity7473@finnsinte.se	\N	2	\N
350	Dominic	Pugh	20050213-2237	p_dominic6543@finnsinte.se	\N	2	\N
351	Camden	Jenkins	20050511-6613	camdenjenkins2315@finnsinte.se	\N	2	\N
352	Stella	Hawkins	20040716-6217	hawkins.stella5697@finnsinte.se	\N	2	\N
353	Kyle	Oneil	20030512-4152	k-oneil5599@finnsinte.se	\N	2	\N
354	Wyatt	Davis	20080317-7570	wyattdavis9701@finnsinte.se	\N	2	\N
355	Vance	Sparks	20010212-1460	svance4322@finnsinte.se	\N	2	\N
356	Nichole	Potts	20020516-1582	potts-nichole7568@finnsinte.se	\N	2	\N
357	Merrill	Howard	20080216-1063	howardmerrill6223@finnsinte.se	\N	2	\N
358	Maite	Browning	20020112-2254	m-browning6431@finnsinte.se	\N	2	\N
359	Vaughan	Carson	20040413-6289	v.carson@finnsinte.se	\N	2	\N
360	Urielle	Floyd	20020914-2333	floydurielle@finnsinte.se	\N	2	\N
361	Byron	Kelly	20030814-4972	k.byron@finnsinte.se	\N	2	\N
362	Florence	Beasley	20010118-7482	florence_beasley@finnsinte.se	\N	2	\N
363	Phillip	Shannon	20090117-3488	shannon.phillip7139@finnsinte.se	\N	2	\N
364	Jennifer	Henson	20040311-9278	hjennifer@finnsinte.se	\N	2	\N
365	Colette	Harrell	20020315-5788	harrell.colette@finnsinte.se	\N	2	\N
366	Graiden	English	20090717-7832	english-graiden@finnsinte.se	\N	2	\N
367	Vaughan	Dunlap	20020818-4452	v-dunlap3408@finnsinte.se	\N	2	\N
368	Jayme	Morin	20090915-7409	jaymemorin6244@finnsinte.se	\N	2	\N
369	Octavius	Sexton	20030318-7806	sextonoctavius9044@finnsinte.se	\N	2	\N
370	Lydia	Mckenzie	20060311-2987	lydiamckenzie@finnsinte.se	\N	2	\N
371	Quamar	Merritt	20040713-4800	q.merritt@finnsinte.se	\N	2	\N
372	Vera	Franks	20040912-3835	f.vera@finnsinte.se	\N	2	\N
373	Genevieve	Burt	20010215-2128	burt_genevieve7397@finnsinte.se	\N	2	\N
374	Colt	French	20030313-8425	cfrench2561@finnsinte.se	\N	2	\N
375	Cairo	Holloway	20020811-3674	cholloway@finnsinte.se	\N	2	\N
376	Lionel	Fischer	20070215-0669	fischer.lionel3504@finnsinte.se	\N	2	\N
377	Cade	Riddle	20070117-5140	c_riddle2841@finnsinte.se	\N	2	\N
378	Rowan	Larsen	20070514-3464	rowan_larsen@finnsinte.se	\N	2	\N
379	Jonas	Hines	20040219-5479	hines_jonas@finnsinte.se	\N	2	\N
380	Berk	Hensley	20090217-3515	berk_hensley6922@finnsinte.se	\N	2	\N
381	Oprah	Vang	20070314-2557	oprah.vang41@finnsinte.se	\N	2	\N
382	Ayanna	Massey	20060315-4720	m-ayanna@finnsinte.se	\N	2	\N
383	Kane	Ellis	20040312-3424	kane-ellis@finnsinte.se	\N	2	\N
384	Xantha	Duran	20000517-5898	duran-xantha@finnsinte.se	\N	2	\N
385	Jared	Witt	20030212-1615	w.jared8803@finnsinte.se	\N	2	\N
386	Nicole	French	20060513-5479	french_nicole@finnsinte.se	\N	2	\N
387	Riley	Collier	20000219-1781	r.collier@finnsinte.se	\N	2	\N
388	Jolene	Woods	20000713-8182	woodsjolene5279@finnsinte.se	\N	2	\N
389	Bethany	Sandoval	20070311-0238	b_sandoval@finnsinte.se	\N	2	\N
390	Rama	Beck	20030514-5186	r-beck8643@finnsinte.se	\N	2	\N
391	Seth	Robinson	20060216-2472	robinson-seth8478@finnsinte.se	\N	2	\N
392	Reagan	Patton	20040317-7466	patton-reagan@finnsinte.se	\N	2	\N
393	Oren	Huff	20080518-6854	h.oren6223@finnsinte.se	\N	2	\N
394	Eric	Avila	20020818-2666	avila.eric489@finnsinte.se	\N	2	\N
395	Murphy	Mcfadden	20080619-3653	murphy-mcfadden2924@finnsinte.se	\N	2	\N
396	Beatrice	Moody	20060213-5038	b-moody3524@finnsinte.se	\N	2	\N
397	Jamalia	Logan	20010414-3250	l_jamalia3860@finnsinte.se	\N	2	\N
398	Dorothy	Slater	20070213-1397	d-slater3149@finnsinte.se	\N	2	\N
399	Reed	Delaney	20090616-5474	reed.delaney@finnsinte.se	\N	2	\N
400	Kenneth	Hyde	20060217-2712	kenneth.hyde2117@finnsinte.se	\N	2	\N
401	Jesse	Compton	20020213-1680	c.jesse@finnsinte.se	\N	2	\N
402	Halla	Hill	20070412-6153	halla_hill6136@finnsinte.se	\N	2	\N
403	Whoopi	Le	20020118-1763	le_whoopi@finnsinte.se	\N	2	\N
404	Brianna	Terry	20010716-6748	b-terry@finnsinte.se	\N	2	\N
405	Vivian	Huff	20040415-1801	v-huff3497@finnsinte.se	\N	2	\N
406	Hoyt	Herring	20080719-5502	herring.hoyt@finnsinte.se	\N	2	\N
407	Blake	Rasmussen	20070212-4878	r-blake@finnsinte.se	\N	2	\N
408	Shelly	Durham	20010917-1871	shelly-durham6056@finnsinte.se	\N	2	\N
409	Buckminster	Cohen	20060314-7634	cohenbuckminster7084@finnsinte.se	\N	2	\N
410	Nasim	Cameron	20000516-5311	cameronnasim7277@finnsinte.se	\N	2	\N
411	Zachary	Foreman	20080616-4779	foremanzachary2434@finnsinte.se	\N	2	\N
412	Winifred	Underwood	20040915-4016	underwood_winifred@finnsinte.se	\N	2	\N
413	Melinda	Diaz	20080616-8423	diaz-melinda@finnsinte.se	\N	2	\N
414	Sasha	Best	20050415-2340	sashabest6214@finnsinte.se	\N	2	\N
415	Louis	Cochran	20050318-3427	c-louis@finnsinte.se	\N	2	\N
416	Desiree	Adams	20010811-1662	d_adams@finnsinte.se	\N	2	\N
417	Stacy	Talley	20030617-4312	talleystacy@finnsinte.se	\N	2	\N
418	Isaiah	Ayers	20040718-1611	isaiah.ayers7248@finnsinte.se	\N	2	\N
419	Christian	Lyons	20080817-1586	c.lyons7930@finnsinte.se	\N	2	\N
420	Lucas	Carey	20040314-0833	carey.lucas@finnsinte.se	\N	2	\N
421	Autumn	Wilson	20000413-4462	wautumn9240@finnsinte.se	\N	2	\N
422	Cathleen	Allen	20020511-5279	allencathleen@finnsinte.se	\N	2	\N
423	Warren	Mosley	20080817-8937	warren.mosley8508@finnsinte.se	\N	2	\N
424	Alexis	Miles	20000417-9191	miles_alexis@finnsinte.se	\N	2	\N
425	Rebecca	Stafford	20050612-6323	rstafford2674@finnsinte.se	\N	2	\N
426	Kiona	Hunter	20070318-7542	hunter-kiona152@finnsinte.se	\N	2	\N
427	Rama	Kline	20060913-2512	kline-rama7370@finnsinte.se	\N	2	\N
428	Marsden	Simpson	20010313-1318	marsden_simpson@finnsinte.se	\N	2	\N
429	Jemima	Hayes	20080218-7763	j-hayes@finnsinte.se	\N	2	\N
430	Amela	Curtis	20050711-4789	curtis-amela3667@finnsinte.se	\N	2	\N
431	Dolan	Deleon	20000513-0876	d.deleon5722@finnsinte.se	\N	2	\N
432	Wanda	Lindsey	20030218-1148	wandalindsey@finnsinte.se	\N	2	\N
433	Mia	Cote	20040715-2888	cotemia@finnsinte.se	\N	2	\N
434	Hadassah	Morin	20020315-6781	h_morin1831@finnsinte.se	\N	2	\N
435	Shay	Patton	20020815-1188	patton_shay@finnsinte.se	\N	2	\N
436	Yasir	Morse	20060817-7547	morseyasir1075@finnsinte.se	\N	2	\N
437	Bruno	Compton	20040219-0870	comptonbruno@finnsinte.se	\N	2	\N
438	Shelley	Walter	20010517-6757	shelley-walter3987@finnsinte.se	\N	2	\N
439	Kareem	Ward	20010315-7333	ward_kareem@finnsinte.se	\N	2	\N
440	Danielle	Duncan	20010812-4337	duncandanielle@finnsinte.se	\N	2	\N
441	Rigel	Blackwell	20010815-3849	r-blackwell8407@finnsinte.se	\N	2	\N
442	Jerome	Ware	20010914-2200	j-ware@finnsinte.se	\N	2	\N
443	Cody	Bates	20010817-5395	bates-cody7309@finnsinte.se	\N	2	\N
444	Garrison	Mcintosh	20040514-8456	gmcintosh8689@finnsinte.se	\N	2	\N
445	Hyacinth	Perry	20010719-6151	perry-hyacinth431@finnsinte.se	\N	2	\N
446	Melyssa	Lambert	20030818-2073	m.lambert1958@finnsinte.se	\N	2	\N
447	Flynn	Cruz	20000514-5125	cruzflynn2129@finnsinte.se	\N	2	\N
448	Jelani	Bender	20050516-5610	benderjelani@finnsinte.se	\N	2	\N
449	Daria	Baxter	20040117-6463	daria.baxter@finnsinte.se	\N	2	\N
450	Mari	Stafford	20090611-5911	mstafford@finnsinte.se	\N	2	\N
451	Thor	Kerr	20050611-5480	t.kerr@finnsinte.se	\N	2	\N
452	Amena	Johnston	20040316-6484	jamena@finnsinte.se	\N	2	\N
453	Harlan	Greene	20030819-6261	h-greene@finnsinte.se	\N	2	\N
454	Emery	Sanchez	20080216-6423	e.sanchez@finnsinte.se	\N	2	\N
455	Hilel	Schultz	20050417-7584	s.hilel2842@finnsinte.se	\N	2	\N
456	Tallulah	Kidd	20050112-1585	t_kidd7563@finnsinte.se	\N	2	\N
457	Caryn	Joyce	20030712-1045	cjoyce9556@finnsinte.se	\N	2	\N
458	Adara	Bonner	20070215-8652	a.bonner5107@finnsinte.se	\N	2	\N
459	Rebekah	Nicholson	20070313-8738	nicholsonrebekah9124@finnsinte.se	\N	2	\N
460	Nyssa	Hutchinson	20060816-7826	hutchinson.nyssa@finnsinte.se	\N	2	\N
461	Hilel	Sharpe	20060717-7577	sharpe.hilel788@finnsinte.se	\N	2	\N
462	Cara	Matthews	20080716-3346	matthewscara3914@finnsinte.se	\N	2	\N
463	Uriah	Henson	20070718-7732	henson-uriah@finnsinte.se	\N	2	\N
464	Donovan	Duran	20030315-8441	duran-donovan3711@finnsinte.se	\N	2	\N
465	Oprah	Shaffer	20080314-9658	o-shaffer@finnsinte.se	\N	2	\N
466	Nolan	Murray	20080714-9145	m.nolan163@finnsinte.se	\N	2	\N
467	Brady	Mack	20000319-1275	brady-mack9100@finnsinte.se	\N	2	\N
468	Asher	Carpenter	20050511-6222	casher4006@finnsinte.se	\N	2	\N
469	Remedios	Becker	20090215-3223	becker_remedios5044@finnsinte.se	\N	2	\N
470	Maggy	Little	20070212-8637	m_little@finnsinte.se	\N	2	\N
471	Oliver	Harrington	20020212-8816	harrington-oliver4831@finnsinte.se	\N	2	\N
472	Alexandra	Silva	20040816-5675	silvaalexandra@finnsinte.se	\N	2	\N
473	Aaron	Howe	20020217-9812	howe-aaron1059@finnsinte.se	\N	2	\N
474	Carla	Ware	20030615-1513	ware.carla3735@finnsinte.se	\N	2	\N
475	Dora	Cook	20010314-3813	d-cook@finnsinte.se	\N	2	\N
476	Colleen	Howard	20070514-8625	h.colleen3468@finnsinte.se	\N	2	\N
477	Finn	Scott	20030712-2646	fscott@finnsinte.se	\N	2	\N
478	Aidan	Sanders	20050514-2216	a.sanders@finnsinte.se	\N	2	\N
479	Joelle	Maynard	20000614-9276	maynard-joelle@finnsinte.se	\N	2	\N
480	Camilla	Sykes	20060812-1373	camilla-sykes@finnsinte.se	\N	2	\N
481	Sonya	Sawyer	20020812-3465	sonyasawyer@finnsinte.se	\N	2	\N
482	Olga	Kelley	20040318-0077	o-kelley3772@finnsinte.se	\N	2	\N
483	Aspen	Yang	20040616-0453	a_yang5523@finnsinte.se	\N	2	\N
484	Zeph	Wolf	20090619-8812	wolf_zeph@finnsinte.se	\N	2	\N
485	Chaney	Mcleod	20030418-6828	mcleod_chaney1918@finnsinte.se	\N	2	\N
486	Len	Holmes	20050713-7456	holmes_len4140@finnsinte.se	\N	2	\N
487	Clare	Bernard	20060612-1862	bernard.clare@finnsinte.se	\N	2	\N
488	Merrill	Cruz	20090618-2712	m-cruz7753@finnsinte.se	\N	2	\N
489	Shea	Bowers	20080414-2458	s-bowers@finnsinte.se	\N	2	\N
490	Rigel	Flores	20080714-1587	flores.rigel@finnsinte.se	\N	2	\N
491	Wesley	Wagner	20070318-2142	wesley.wagner@finnsinte.se	\N	2	\N
492	Sawyer	Vang	20010818-3404	v.sawyer7683@finnsinte.se	\N	2	\N
493	Simon	Durham	20070918-1485	durham_simon9784@finnsinte.se	\N	2	\N
494	Fitzgerald	Cochran	20040417-5763	fitzgerald-cochran@finnsinte.se	\N	2	\N
495	Noelani	Roberson	20020313-1166	roberson.noelani@finnsinte.se	\N	2	\N
496	Kristen	Dixon	20030511-4738	k-dixon@finnsinte.se	\N	2	\N
497	Claudia	Mccarty	20050819-9818	c_mccarty@finnsinte.se	\N	2	\N
498	Yvette	Thornton	20080716-6257	ythornton4944@finnsinte.se	\N	2	\N
499	Scott	Rojas	20060714-9847	rojas.scott@finnsinte.se	\N	2	\N
500	Hayden	Gomez	20090414-7475	h.gomez@finnsinte.se	\N	2	\N
501	Felix	Shepherd	20010111-6535	f_shepherd6161@finnsinte.se	\N	2	\N
502	Dennis	Soto	20080512-1655	sotodennis@finnsinte.se	\N	2	\N
503	Pearl	Mercer	20000312-2336	pmercer@finnsinte.se	\N	2	\N
504	Phillip	Rowland	20020817-8803	p_rowland5170@finnsinte.se	\N	2	\N
505	Bo	Sullivan	20040817-6546	sullivan_bo@finnsinte.se	\N	2	\N
506	Alma	Doyle	20040714-5746	doyle-alma6636@finnsinte.se	\N	2	\N
507	Arden	Alvarez	20050216-3327	arden-alvarez2115@finnsinte.se	\N	2	\N
508	Tatyana	Howe	20060714-8613	htatyana3755@finnsinte.se	\N	2	\N
509	Colton	Joyce	20010611-8755	cjoyce7711@finnsinte.se	\N	2	\N
510	Daria	Roberson	20020415-4553	roberson_daria5908@finnsinte.se	\N	2	\N
511	Dieter	Jacobs	20050317-5412	d.jacobs@finnsinte.se	\N	2	\N
512	Jacob	Garcia	20010818-2682	j.garcia2331@finnsinte.se	\N	2	\N
513	Candace	Nash	20000812-2256	n_candace@finnsinte.se	\N	2	\N
514	Silas	Beasley	20070417-5487	beasleysilas9418@finnsinte.se	\N	2	\N
515	Vielka	Tyler	20030511-9281	v-tyler8324@finnsinte.se	\N	2	\N
516	Yeo	Reynolds	20080511-6072	reynolds-yeo5134@finnsinte.se	\N	2	\N
517	Fuller	Forbes	20020214-8965	fforbes@finnsinte.se	\N	2	\N
518	Xantha	Norris	20040612-9220	xantha_norris4941@finnsinte.se	\N	2	\N
519	Dante	Hamilton	20070216-5865	h.dante@finnsinte.se	\N	2	\N
520	Xenos	White	20040216-9939	x_white5070@finnsinte.se	\N	2	\N
521	Charlotte	Barry	20040417-4760	bcharlotte@finnsinte.se	\N	2	\N
522	Xaviera	Barrera	20010815-2763	barrera_xaviera6942@finnsinte.se	\N	2	\N
523	Porter	Smith	20010114-1921	smith.porter@finnsinte.se	\N	2	\N
524	Griffith	Bradford	20030118-0671	g_bradford8236@finnsinte.se	\N	2	\N
525	William	Pratt	20020713-2231	william.pratt@finnsinte.se	\N	2	\N
526	Jared	Villarreal	20060617-4547	jaredvillarreal@finnsinte.se	\N	2	\N
527	Sophia	Sparks	20060513-7593	ssophia@finnsinte.se	\N	2	\N
528	Clare	Norris	20020917-3715	clare-norris1106@finnsinte.se	\N	2	\N
529	Amos	Sears	20030214-9032	a.sears2066@finnsinte.se	\N	2	\N
530	Reuben	Carter	20010115-7188	r-carter350@finnsinte.se	\N	2	\N
531	Athena	Sharpe	20070115-0779	sharpe-athena8037@finnsinte.se	\N	2	\N
532	Violet	Miles	20010111-1446	v.miles6919@finnsinte.se	\N	2	\N
533	Bianca	Stewart	20060718-1218	s-bianca733@finnsinte.se	\N	2	\N
534	Candace	Koch	20030614-9216	c-koch@finnsinte.se	\N	2	\N
535	Laurel	Hodge	20070613-8215	h_laurel6895@finnsinte.se	\N	2	\N
536	Aidan	Sargent	20080417-3456	sargentaidan2493@finnsinte.se	\N	2	\N
537	Roanna	Munoz	20050218-2228	r.munoz7602@finnsinte.se	\N	2	\N
538	Leroy	Freeman	20060718-1276	freeman_leroy@finnsinte.se	\N	2	\N
539	Fatima	Tran	20060212-3419	tran_fatima4109@finnsinte.se	\N	2	\N
540	Elizabeth	Buchanan	20070414-7119	buchanan_elizabeth5203@finnsinte.se	\N	2	\N
541	Melinda	Terrell	20020416-7362	melinda_terrell2738@finnsinte.se	\N	2	\N
542	Nehru	Floyd	20030213-5113	f_nehru@finnsinte.se	\N	2	\N
543	Quynn	Ray	20010716-5383	r_quynn@finnsinte.se	\N	2	\N
544	Gwendolyn	Sears	20080916-2943	sears_gwendolyn@finnsinte.se	\N	2	\N
545	Lareina	Armstrong	20070312-4958	l.armstrong@finnsinte.se	\N	2	\N
546	Declan	Stuart	20040812-8167	d_stuart8023@finnsinte.se	\N	2	\N
547	Isaiah	Mcmahon	20060915-6449	m.isaiah@finnsinte.se	\N	2	\N
548	Michelle	Benjamin	20000515-2278	bmichelle@finnsinte.se	\N	2	\N
549	Iliana	Acosta	20020117-8325	acosta-iliana@finnsinte.se	\N	2	\N
550	Quynn	Adkins	20060412-1656	adkinsquynn5169@finnsinte.se	\N	2	\N
551	Patrick	Chen	20040618-5673	chenpatrick@finnsinte.se	\N	2	\N
552	Henry	Evans	20060513-8367	henryevans606@finnsinte.se	\N	2	\N
553	Uta	Harvey	20020615-7319	u-harvey@finnsinte.se	\N	2	\N
554	Daquan	Montoya	20090314-9325	daquan_montoya4839@finnsinte.se	\N	2	\N
555	Guy	Baldwin	20050614-8346	baldwin.guy1808@finnsinte.se	\N	2	\N
556	Charissa	Poole	20050715-3419	c_poole@finnsinte.se	\N	2	\N
557	Susan	Wood	20010417-8323	s_wood3831@finnsinte.se	\N	2	\N
558	Hamilton	Alvarado	20020217-7367	hamiltonalvarado9524@finnsinte.se	\N	2	\N
559	Hammett	Summers	20030719-8887	hsummers5159@finnsinte.se	\N	2	\N
560	Lawrence	Waters	20060614-6680	waters_lawrence221@finnsinte.se	\N	2	\N
561	Timothy	Roberts	20040616-2152	troberts@finnsinte.se	\N	2	\N
562	Byron	Reed	20030814-3373	b_reed5957@finnsinte.se	\N	2	\N
563	Blythe	Villarreal	20020616-9181	b.villarreal@finnsinte.se	\N	2	\N
564	Kamal	Floyd	20080314-8455	k_floyd4182@finnsinte.se	\N	2	\N
565	Cain	Sawyer	20050516-7286	c.sawyer4232@finnsinte.se	\N	2	\N
566	Cathleen	Perry	20040113-3360	perry.cathleen@finnsinte.se	\N	2	\N
567	Jason	Figueroa	20020114-3394	figueroajason@finnsinte.se	\N	2	\N
568	Delilah	Olson	20020817-2895	d.olson3621@finnsinte.se	\N	2	\N
569	Lael	Moody	20060315-1273	moody.lael@finnsinte.se	\N	2	\N
570	Abbot	Hampton	20010314-8051	hampton.abbot6828@finnsinte.se	\N	2	\N
571	Rooney	Cantrell	20080415-0687	cantrellrooney@finnsinte.se	\N	2	\N
572	Amos	Burke	20000818-9066	burke.amos8356@finnsinte.se	\N	2	\N
573	Salvador	Kinney	20020211-4301	k.salvador@finnsinte.se	\N	2	\N
574	Pearl	Fernandez	20060612-1392	fernandezpearl@finnsinte.se	\N	2	\N
575	Judith	Keith	20080719-6533	kjudith5100@finnsinte.se	\N	2	\N
576	Glenna	Monroe	20060616-1418	g.monroe@finnsinte.se	\N	2	\N
577	Talon	Dejesus	20060918-5112	tdejesus@finnsinte.se	\N	2	\N
578	Haley	Arnold	20030318-9243	ahaley1518@finnsinte.se	\N	2	\N
579	Darryl	Boyle	20020515-5434	d.boyle5796@finnsinte.se	\N	2	\N
580	Piper	Morse	20030217-1726	p.morse@finnsinte.se	\N	2	\N
581	Caldwell	Bright	20060613-8153	c_bright@finnsinte.se	\N	2	\N
582	Eleanor	Haley	20060518-2541	haleyeleanor6732@finnsinte.se	\N	2	\N
583	Rhonda	Pittman	20020119-1764	pittman.rhonda3181@finnsinte.se	\N	2	\N
584	Harlan	Stark	20090512-7974	h.stark8219@finnsinte.se	\N	2	\N
585	Genevieve	Roberson	20070218-0928	g_roberson4732@finnsinte.se	\N	2	\N
586	Giselle	Ratliff	20020314-3235	r-giselle1387@finnsinte.se	\N	2	\N
587	Boris	Clayton	20050216-4322	b_clayton@finnsinte.se	\N	2	\N
588	Kirk	Frank	20030818-1413	kirk_frank@finnsinte.se	\N	2	\N
589	Katelyn	Price	20010513-6512	k.price75@finnsinte.se	\N	2	\N
590	Henry	Langley	20070615-7153	h.langley@finnsinte.se	\N	2	\N
591	Dai	Gonzales	20030414-5355	dai-gonzales@finnsinte.se	\N	2	\N
592	Myra	Forbes	20080616-3723	myra_forbes688@finnsinte.se	\N	2	\N
593	Lani	Jacobs	20000215-5581	j-lani@finnsinte.se	\N	2	\N
594	August	Pate	20060312-9044	paugust4671@finnsinte.se	\N	2	\N
595	Christen	Wilder	20060816-2571	christenwilder@finnsinte.se	\N	2	\N
596	Zelenia	Hess	20080416-7002	z.hess@finnsinte.se	\N	2	\N
597	Wyatt	Elliott	20070719-3647	wyatt_elliott2385@finnsinte.se	\N	2	\N
598	Mercedes	Montgomery	20010118-2589	montgomery_mercedes@finnsinte.se	\N	2	\N
599	Caesar	Reed	20000518-6741	r_caesar@finnsinte.se	\N	2	\N
600	Georgia	Callahan	20040317-2385	georgia_callahan177@finnsinte.se	\N	2	\N
601	Rajah	Blankenship	20090611-1661	b_rajah@finnsinte.se	\N	2	\N
602	Lester	Chang	20070714-7550	chang.lester1615@finnsinte.se	\N	2	\N
603	Caldwell	Perkins	20020613-1511	cperkins@finnsinte.se	\N	2	\N
604	Nita	Washington	20090513-5453	washington.nita@finnsinte.se	\N	2	\N
605	Keelie	Miller	20090318-7751	k-miller9877@finnsinte.se	\N	2	\N
606	Trevor	Wyatt	20090812-1450	w-trevor7449@finnsinte.se	\N	2	\N
607	Chantale	Duncan	20010418-5512	chantaleduncan8446@finnsinte.se	\N	2	\N
608	Mark	Jarvis	20010218-3141	mjarvis@finnsinte.se	\N	2	\N
609	Todd	Frank	20040211-4241	frank.todd@finnsinte.se	\N	2	\N
610	Genevieve	Palmer	20020719-1253	g.palmer2402@finnsinte.se	\N	2	\N
611	Donovan	Carney	20020214-2774	cdonovan6901@finnsinte.se	\N	2	\N
612	Aaron	Sears	20050812-8631	a-sears9122@finnsinte.se	\N	2	\N
613	Naomi	Peck	20020314-4413	peck.naomi@finnsinte.se	\N	2	\N
614	Echo	Gutierrez	20010413-8247	e_gutierrez8997@finnsinte.se	\N	2	\N
615	Orlando	Roth	20070414-5443	o_roth3852@finnsinte.se	\N	2	\N
616	Lee	Lara	20030315-7497	l.lee@finnsinte.se	\N	2	\N
617	Nash	Underwood	20030218-7752	u_nash240@finnsinte.se	\N	2	\N
618	Jade	Wilder	20060613-2424	jwilder@finnsinte.se	\N	2	\N
619	Marah	Forbes	20050116-2981	forbes.marah4289@finnsinte.se	\N	2	\N
620	Tanner	Reed	20020913-1672	treed@finnsinte.se	\N	2	\N
621	Galena	Reese	20070515-4464	rgalena5609@finnsinte.se	\N	2	\N
622	Bianca	Norton	20020413-3844	biancanorton2138@finnsinte.se	\N	2	\N
623	Scarlet	Pennington	20020519-4771	s.pennington6684@finnsinte.se	\N	2	\N
624	Ina	Payne	20090817-5533	inapayne6372@finnsinte.se	\N	2	\N
625	Garrison	Ashley	20080716-4617	g-ashley@finnsinte.se	\N	2	\N
626	Tasha	Dixon	20020114-8684	t-dixon@finnsinte.se	\N	2	\N
627	Baxter	Day	20020615-4372	b-day3882@finnsinte.se	\N	2	\N
628	Joan	Stein	20030814-5627	stein-joan@finnsinte.se	\N	2	\N
629	Stone	Hammond	20030718-8021	hammond_stone8580@finnsinte.se	\N	2	\N
630	Ethan	Snow	20080712-8046	s.ethan@finnsinte.se	\N	2	\N
631	Barclay	Keller	20020516-6472	keller_barclay7552@finnsinte.se	\N	2	\N
632	Graiden	Ellis	20040412-0228	gellis@finnsinte.se	\N	2	\N
633	Raja	Meyers	20050914-9722	meyers_raja@finnsinte.se	\N	2	\N
634	Stella	Barton	20020417-4556	bartonstella@finnsinte.se	\N	2	\N
635	Margaret	Cannon	20060416-1852	cannon_margaret@finnsinte.se	\N	2	\N
636	Timothy	Mcdaniel	20030215-1185	timothy.mcdaniel6114@finnsinte.se	\N	2	\N
637	Regina	Pierce	20000414-5617	r.pierce@finnsinte.se	\N	2	\N
638	Abel	Morrison	20030414-6484	abel.morrison1173@finnsinte.se	\N	2	\N
639	Ina	Farley	20050417-5000	f_ina@finnsinte.se	\N	2	\N
640	Wing	Riggs	20050414-9811	riggs-wing4273@finnsinte.se	\N	2	\N
641	Zephr	Mueller	20020912-4532	m.zephr@finnsinte.se	\N	2	\N
642	Anne	Merrill	20020813-9056	merrill-anne637@finnsinte.se	\N	2	\N
643	Troy	Montgomery	20000814-0449	m.troy2662@finnsinte.se	\N	2	\N
644	Remedios	Todd	20060315-4973	toddremedios6412@finnsinte.se	\N	2	\N
645	Calvin	Rosales	20020314-7936	c-rosales@finnsinte.se	\N	2	\N
646	Heidi	Riggs	20080718-3720	riggs.heidi6942@finnsinte.se	\N	2	\N
647	Brendan	Acosta	20040214-2684	acosta-brendan3530@finnsinte.se	\N	2	\N
648	Garth	Terry	20070711-2277	t.garth@finnsinte.se	\N	2	\N
649	Sasha	Joseph	20040716-6778	sashajoseph1320@finnsinte.se	\N	2	\N
650	Virginia	Sellers	20060113-1498	v-sellers9090@finnsinte.se	\N	2	\N
651	Aquila	Robles	20090711-5883	arobles8392@finnsinte.se	\N	2	\N
652	Demetrius	Buck	20070112-2112	buckdemetrius@finnsinte.se	\N	2	\N
653	Ciara	Branch	20060118-1771	b_ciara7154@finnsinte.se	\N	2	\N
654	Mollie	Kim	20050216-6554	mollie.kim@finnsinte.se	\N	2	\N
655	Yuri	Petty	20050514-8472	ypetty@finnsinte.se	\N	2	\N
656	May	Barr	20080511-1615	mbarr@finnsinte.se	\N	2	\N
657	Alden	Kinney	20070516-5314	a_kinney5188@finnsinte.se	\N	2	\N
658	Porter	Hayes	20070316-1657	phayes@finnsinte.se	\N	2	\N
659	Aladdin	Carpenter	20010416-3303	a_carpenter8508@finnsinte.se	\N	2	\N
660	Martena	Madden	20070713-8430	m_madden4628@finnsinte.se	\N	2	\N
661	Abra	David	20030713-6456	david-abra@finnsinte.se	\N	2	\N
662	Sharon	Love	20060612-3517	l.sharon@finnsinte.se	\N	2	\N
663	Grace	Gallegos	20070417-8816	gallegos.grace@finnsinte.se	\N	2	\N
664	Colorado	Duke	20040415-7707	dcolorado1752@finnsinte.se	\N	2	\N
665	Derek	Mullins	20080312-2268	d_mullins@finnsinte.se	\N	2	\N
666	Bianca	Dodson	20020114-1157	b.dodson8637@finnsinte.se	\N	2	\N
667	Kasimir	Davidson	20060314-3485	k_davidson@finnsinte.se	\N	2	\N
668	Orla	Le	20020513-2190	orla_le374@finnsinte.se	\N	2	\N
669	Jada	Warner	20010616-1854	w.jada@finnsinte.se	\N	2	\N
670	Jasper	Nolan	20040717-6025	j.nolan@finnsinte.se	\N	2	\N
671	Chaney	Washington	20050611-7615	c-washington3391@finnsinte.se	\N	2	\N
672	Colton	Sawyer	20030513-0572	sawyer-colton4922@finnsinte.se	\N	2	\N
673	Ira	Kerr	20010716-2271	kerr-ira5318@finnsinte.se	\N	2	\N
674	Yoshi	Byrd	20020818-6134	y_byrd2408@finnsinte.se	\N	2	\N
675	Troy	Mcmillan	20010815-0158	mcmillan.troy5804@finnsinte.se	\N	2	\N
676	Sybil	Cline	20080414-6134	cline-sybil@finnsinte.se	\N	2	\N
677	Amy	Johnston	20070417-2873	johnston-amy@finnsinte.se	\N	2	\N
678	Ahmed	Holloway	20040313-1532	ahmed_holloway@finnsinte.se	\N	2	\N
679	Venus	Smith	20020517-2910	smith.venus@finnsinte.se	\N	2	\N
680	Dorian	Guerra	20080811-2995	d_guerra528@finnsinte.se	\N	2	\N
681	Danielle	Rivas	20070913-4821	rivas.danielle@finnsinte.se	\N	2	\N
682	Carly	Merrill	20060817-7636	carlymerrill1089@finnsinte.se	\N	2	\N
683	Tanisha	Velazquez	20010917-5860	velazquez-tanisha9345@finnsinte.se	\N	2	\N
684	Stephen	Hodges	20080819-6503	hodges.stephen@finnsinte.se	\N	2	\N
685	Carla	Quinn	20050712-5814	c-quinn@finnsinte.se	\N	2	\N
686	Jameson	Blair	20000711-9656	blair-jameson@finnsinte.se	\N	2	\N
687	Hashim	Barton	20020312-7545	bartonhashim6967@finnsinte.se	\N	2	\N
688	Harrison	Eaton	20050618-5124	heaton8922@finnsinte.se	\N	2	\N
689	Levi	Pierce	20000613-3571	levi.pierce7441@finnsinte.se	\N	2	\N
690	Carol	Barr	20050217-5235	c-barr2650@finnsinte.se	\N	2	\N
691	Kennedy	Cobb	20020715-3086	k.cobb@finnsinte.se	\N	2	\N
692	Amelia	Tyson	20040618-2429	amelia_tyson@finnsinte.se	\N	2	\N
693	Wing	Saunders	20050112-7442	saunders.wing@finnsinte.se	\N	2	\N
694	Wayne	Bridges	20040317-7849	w_bridges798@finnsinte.se	\N	2	\N
695	Clayton	Mason	20010617-3384	c.mason@finnsinte.se	\N	2	\N
696	Hilda	Monroe	20070318-9713	hilda.monroe4692@finnsinte.se	\N	2	\N
697	Willa	Mcknight	20000715-7640	willa.mcknight5992@finnsinte.se	\N	2	\N
698	Merrill	Whitley	20010712-5688	whitley-merrill@finnsinte.se	\N	2	\N
699	Tatiana	Perez	20020614-0346	tperez7620@finnsinte.se	\N	2	\N
700	Aretha	Bradshaw	20010514-1303	abradshaw1970@finnsinte.se	\N	2	\N
701	Cleo	Moon	20070216-1361	m_cleo@finnsinte.se	\N	2	\N
702	Asher	Clay	20010312-4861	c-asher@finnsinte.se	\N	2	\N
703	Judah	Morse	20070315-2843	j.morse5653@finnsinte.se	\N	2	\N
704	Stewart	Strickland	20060717-6732	s-strickland@finnsinte.se	\N	2	\N
705	Stephanie	Strong	20090712-7342	s.strong1264@finnsinte.se	\N	2	\N
706	Kaitlin	Nichols	20050717-6515	k.nichols229@finnsinte.se	\N	2	\N
707	Samantha	Martinez	20080715-9284	martinez.samantha@finnsinte.se	\N	2	\N
708	Tanya	Farmer	20070318-2439	t-farmer4881@finnsinte.se	\N	2	\N
709	Deirdre	Clemons	20080519-2641	clemons_deirdre5867@finnsinte.se	\N	2	\N
710	Ignacia	Snow	20050214-8872	isnow@finnsinte.se	\N	2	\N
711	Boris	Baxter	20020317-5142	bbaxter425@finnsinte.se	\N	2	\N
712	Cailin	Willis	20000115-0826	willis.cailin1233@finnsinte.se	\N	2	\N
713	Joan	Ratliff	20090716-1115	ratliffjoan3112@finnsinte.se	\N	2	\N
714	Alan	Cooper	20010212-5721	cooper_alan3626@finnsinte.se	\N	2	\N
715	Elvis	Glass	20070417-2338	elvisglass9265@finnsinte.se	\N	2	\N
716	Iola	Barlow	20040316-4605	i.barlow3103@finnsinte.se	\N	2	\N
717	Noble	Snider	20040419-3562	n.snider8431@finnsinte.se	\N	2	\N
718	Macy	Humphrey	20010311-0223	m.humphrey@finnsinte.se	\N	2	\N
719	Wayne	Santos	20090318-1467	swayne@finnsinte.se	\N	2	\N
720	Charlotte	Jacobs	20030213-2640	jacobs-charlotte@finnsinte.se	\N	2	\N
721	Benedict	Lang	20070318-9617	blang7617@finnsinte.se	\N	2	\N
722	Keaton	Arnold	20050416-3870	a.keaton603@finnsinte.se	\N	2	\N
723	Ursa	Butler	20040612-8223	butler-ursa@finnsinte.se	\N	2	\N
724	Dillon	Walker	20040612-6118	walker-dillon@finnsinte.se	\N	2	\N
725	Autumn	Moody	20060416-2743	moody-autumn@finnsinte.se	\N	2	\N
726	Justine	Garrison	20020819-7518	j.garrison1158@finnsinte.se	\N	2	\N
727	Katell	Ortega	20010918-6842	kortega5536@finnsinte.se	\N	2	\N
728	Whitney	Fletcher	20090818-9522	fwhitney@finnsinte.se	\N	2	\N
729	Ursula	Long	20030118-8767	longursula@finnsinte.se	\N	2	\N
730	Bertha	Berg	20050618-5854	bergbertha911@finnsinte.se	\N	2	\N
731	Chava	Moses	20010214-2703	mchava@finnsinte.se	\N	2	\N
732	Jenna	Morgan	20020217-2111	j-morgan5874@finnsinte.se	\N	2	\N
733	Jorden	Bruce	20050818-5149	jorden_bruce2187@finnsinte.se	\N	2	\N
734	Hayfa	Munoz	20030111-7750	munozhayfa9807@finnsinte.se	\N	2	\N
735	Jade	Ross	20080118-9434	jade-ross@finnsinte.se	\N	2	\N
736	Tamekah	Roberts	20080114-2121	rtamekah@finnsinte.se	\N	2	\N
737	Tate	Cline	20070418-0353	tcline1421@finnsinte.se	\N	2	\N
738	Kevyn	Potts	20070418-2332	pottskevyn5113@finnsinte.se	\N	2	\N
739	Lionel	Hebert	20050413-5858	l_hebert@finnsinte.se	\N	2	\N
740	Yasir	Welch	20040414-9942	welchyasir@finnsinte.se	\N	2	\N
741	Hadassah	Chambers	20020615-9486	chambershadassah@finnsinte.se	\N	2	\N
742	Jaime	Bates	20030517-8674	j.bates361@finnsinte.se	\N	2	\N
743	Shelley	Mclaughlin	20050612-2952	mclaughlinshelley@finnsinte.se	\N	2	\N
744	Cheyenne	Hughes	20050211-2546	c-hughes5751@finnsinte.se	\N	2	\N
745	Geoffrey	Richardson	20080514-4768	geoffrey_richardson2490@finnsinte.se	\N	2	\N
746	Magee	Warner	20060819-4116	mwarner@finnsinte.se	\N	2	\N
747	Glenna	Stephens	20090414-3381	sglenna6589@finnsinte.se	\N	2	\N
748	Carter	Holcomb	20030518-7327	h.carter@finnsinte.se	\N	2	\N
749	Baker	Padilla	20030413-2302	bakerpadilla8704@finnsinte.se	\N	2	\N
750	Bradley	Gill	20040516-1979	gillbradley103@finnsinte.se	\N	2	\N
751	Clarke	Fox	20020712-2715	clarke_fox4868@finnsinte.se	\N	2	\N
752	Jordan	Mercado	20050211-6151	mercadojordan@finnsinte.se	\N	2	\N
753	Cooper	Lawson	20070212-5626	c-lawson8890@finnsinte.se	\N	2	\N
754	Adele	Snyder	20070311-5021	s-adele9060@finnsinte.se	\N	2	\N
755	Dylan	Goodman	20040817-7461	d_goodman2035@finnsinte.se	\N	2	\N
756	Olivia	Sampson	20030113-5180	s_olivia@finnsinte.se	\N	2	\N
757	Gretchen	Green	20060516-3881	ggreen@finnsinte.se	\N	2	\N
758	Zane	O'connor	20020211-6555	z-oconnor6278@finnsinte.se	\N	2	\N
759	Ciaran	Edwards	20030515-2217	ciaranedwards@finnsinte.se	\N	2	\N
760	Anika	Russell	20030517-3236	russell_anika7139@finnsinte.se	\N	2	\N
761	Ima	Bauer	20060319-2345	ibauer706@finnsinte.se	\N	2	\N
762	Malachi	Bean	20030417-5580	bean.malachi@finnsinte.se	\N	2	\N
763	Lacey	Romero	20080215-8508	lacey_romero@finnsinte.se	\N	2	\N
764	Oliver	Alvarez	20080412-6636	alvarez-oliver@finnsinte.se	\N	2	\N
765	Lewis	Bradley	20060515-9174	l-bradley@finnsinte.se	\N	2	\N
766	Tyler	Carter	20050413-8629	tyler_carter@finnsinte.se	\N	2	\N
767	Tamara	Evans	20000711-3877	evanstamara@finnsinte.se	\N	2	\N
768	Ray	Craig	20060614-2441	craigray1166@finnsinte.se	\N	2	\N
769	Fritz	Cole	20000713-9913	colefritz@finnsinte.se	\N	2	\N
770	Jillian	Rogers	20060317-8573	r_jillian@finnsinte.se	\N	2	\N
771	Tashya	Reilly	20060715-1701	rtashya@finnsinte.se	\N	2	\N
772	Kaitlin	Curtis	20030516-0250	kcurtis@finnsinte.se	\N	2	\N
773	Renee	Reilly	20020714-3777	renee.reilly@finnsinte.se	\N	2	\N
774	Sage	Randolph	20010314-8217	sage-randolph@finnsinte.se	\N	2	\N
775	Stacy	Burris	20080712-1245	b-stacy3357@finnsinte.se	\N	2	\N
776	Coby	Moody	20020718-5973	coby-moody@finnsinte.se	\N	2	\N
777	Audra	Berg	20090913-1298	a-berg2584@finnsinte.se	\N	2	\N
778	Cora	Sweeney	20060316-7874	s-cora2228@finnsinte.se	\N	2	\N
779	Portia	Holt	20080412-9438	holt.portia8182@finnsinte.se	\N	2	\N
780	Marvin	Mitchell	20010415-4313	mitchell-marvin@finnsinte.se	\N	2	\N
781	Karleigh	Pate	20060718-9344	pate_karleigh@finnsinte.se	\N	2	\N
782	Ulric	Rodriquez	20040512-3568	rodriquez_ulric6142@finnsinte.se	\N	2	\N
783	Amy	Galloway	20060615-4375	a_galloway@finnsinte.se	\N	2	\N
784	Palmer	Manning	20050218-2998	palmer_manning4974@finnsinte.se	\N	2	\N
785	Rhea	Dotson	20070513-1148	rhea_dotson@finnsinte.se	\N	2	\N
786	Hilda	Mooney	20040414-3673	h_mooney@finnsinte.se	\N	2	\N
787	Laura	Mcmillan	20090811-7554	mcmillan_laura543@finnsinte.se	\N	2	\N
788	Hilary	Diaz	20010716-1183	h-diaz@finnsinte.se	\N	2	\N
789	MacKensie	Hewitt	20010711-5246	m_hewitt633@finnsinte.se	\N	2	\N
790	Winter	Christensen	20010514-6431	christensen_winter1095@finnsinte.se	\N	2	\N
791	Basia	Hoffman	20070913-8379	hoffman_basia@finnsinte.se	\N	2	\N
792	Rafael	Roach	20040612-5259	rafaelroach@finnsinte.se	\N	2	\N
793	Calvin	Soto	20030217-1533	calvin_soto@finnsinte.se	\N	2	\N
794	Brandon	Carlson	20080811-0540	b.carlson@finnsinte.se	\N	2	\N
795	Clark	Bentley	20050118-0695	bentley-clark@finnsinte.se	\N	2	\N
796	Fulton	Jimenez	20030313-8258	f_jimenez2317@finnsinte.se	\N	2	\N
797	Buckminster	Webster	20070613-0874	w.buckminster9103@finnsinte.se	\N	2	\N
798	Elizabeth	Simon	20020116-7953	e-simon@finnsinte.se	\N	2	\N
799	Yoko	Ross	20030312-8484	r_yoko@finnsinte.se	\N	2	\N
800	Hammett	Simpson	20030312-5828	simpson.hammett6128@finnsinte.se	\N	2	\N
801	Halee	Stuart	20050719-4638	stuart.halee1185@finnsinte.se	\N	2	\N
802	Kylan	Vega	20030213-9671	v-kylan@finnsinte.se	\N	2	\N
803	Honorato	Porter	20020716-6891	porterhonorato@finnsinte.se	\N	2	\N
804	Kay	Petersen	20020315-2754	petersenkay1385@finnsinte.se	\N	2	\N
805	Kylan	Adkins	20000315-7948	kylan_adkins5298@finnsinte.se	\N	2	\N
806	Gil	Herrera	20060216-7950	g_herrera9457@finnsinte.se	\N	2	\N
807	Indira	Velez	20060613-4915	v-indira5733@finnsinte.se	\N	2	\N
808	Jemima	Wilder	20080312-5633	wilder.jemima6440@finnsinte.se	\N	2	\N
809	Xantha	Reyes	20090519-5814	r.xantha@finnsinte.se	\N	2	\N
810	Hashim	Beck	20030313-8436	hbeck16@finnsinte.se	\N	2	\N
811	Rylee	Sheppard	20050417-1974	s_rylee8877@finnsinte.se	\N	2	\N
812	Laurel	Greene	20060316-8311	l-greene@finnsinte.se	\N	2	\N
813	Xyla	Carver	20010912-4113	x_carver@finnsinte.se	\N	2	\N
814	Cynthia	Herrera	20070816-8668	hcynthia@finnsinte.se	\N	2	\N
815	Kyla	Camacho	20070914-0183	camacho_kyla9321@finnsinte.se	\N	2	\N
816	Marny	Watkins	20070513-3742	marnywatkins@finnsinte.se	\N	2	\N
817	Herman	Gross	20080916-1726	herman-gross@finnsinte.se	\N	2	\N
818	Hop	Wilkinson	20050413-8284	wilkinson-hop@finnsinte.se	\N	2	\N
819	Ingrid	Case	20050917-8518	c.ingrid1935@finnsinte.se	\N	2	\N
820	Carter	Wilkerson	20050413-9281	wilkerson_carter9441@finnsinte.se	\N	2	\N
821	Olivia	Young	20020318-2329	oyoung@finnsinte.se	\N	2	\N
822	Colt	Eaton	20030113-2387	eaton.colt@finnsinte.se	\N	2	\N
823	Lael	Bradley	20030314-5048	bradley_lael1720@finnsinte.se	\N	2	\N
824	Devin	Durham	20040714-1301	durham-devin4535@finnsinte.se	\N	2	\N
825	Laith	Fleming	20010415-6650	laith_fleming@finnsinte.se	\N	2	\N
826	Asher	Snyder	20000311-7867	snyder-asher5789@finnsinte.se	\N	2	\N
827	Adrian	Mckay	20090916-1244	a-mckay3798@finnsinte.se	\N	2	\N
828	Amery	Meyers	20040511-6798	amerymeyers6802@finnsinte.se	\N	2	\N
829	Giacomo	Keith	20020318-4982	keithgiacomo@finnsinte.se	\N	2	\N
830	Bertha	Cochran	20010315-9726	cochran.bertha@finnsinte.se	\N	2	\N
831	Virginia	Buchanan	20040816-2381	buchanan.virginia@finnsinte.se	\N	2	\N
832	Hollee	Bradley	20090215-1627	b.hollee@finnsinte.se	\N	2	\N
833	Graiden	Kelley	20000712-4865	kelley-graiden6409@finnsinte.se	\N	2	\N
834	Xantha	Briggs	20050319-7225	xantha-briggs7342@finnsinte.se	\N	2	\N
835	Selma	Mcdaniel	20030718-6144	s-mcdaniel5180@finnsinte.se	\N	2	\N
836	Aline	Pollard	20010618-5035	pollard.aline@finnsinte.se	\N	2	\N
837	Shay	Slater	20040512-6794	shayslater8783@finnsinte.se	\N	2	\N
838	Craig	Walters	20070218-8242	craig.walters@finnsinte.se	\N	2	\N
839	Gemma	Fischer	20090118-1348	f-gemma@finnsinte.se	\N	2	\N
840	Tara	Pickett	20000315-2681	pickett.tara@finnsinte.se	\N	2	\N
841	Rahim	Suarez	20080718-7812	r-suarez@finnsinte.se	\N	2	\N
842	Rafael	Sweeney	20060212-9589	rsweeney2910@finnsinte.se	\N	2	\N
843	Deborah	Curtis	20040617-4836	d_curtis2568@finnsinte.se	\N	2	\N
844	Shellie	Garza	20040717-4327	g-shellie@finnsinte.se	\N	2	\N
845	Joan	Simon	20010116-4526	joan.simon@finnsinte.se	\N	2	\N
846	Abel	Fulton	20070418-9341	f_abel@finnsinte.se	\N	2	\N
847	Ayanna	Jackson	20040612-5213	ayanna.jackson@finnsinte.se	\N	2	\N
848	Travis	Scott	20020215-8495	t-scott@finnsinte.se	\N	2	\N
849	Lacota	Kidd	20000518-2478	lacota.kidd964@finnsinte.se	\N	2	\N
850	Teagan	Lindsay	20030318-3381	t_lindsay@finnsinte.se	\N	2	\N
851	Samuel	Wilkins	20090813-3561	s_wilkins@finnsinte.se	\N	2	\N
852	Ginger	Hensley	20000514-3251	hensleyginger@finnsinte.se	\N	2	\N
853	Amaya	Aguilar	20030919-8077	amaya_aguilar@finnsinte.se	\N	2	\N
854	Lavinia	Patterson	20030518-4382	lavinia-patterson4641@finnsinte.se	\N	2	\N
855	Inga	Mcneil	20060715-5916	mcneil_inga2176@finnsinte.se	\N	2	\N
856	Giselle	Ferguson	20080816-1933	ferguson.giselle758@finnsinte.se	\N	2	\N
857	Callum	Mckay	20020918-8230	m_callum2462@finnsinte.se	\N	2	\N
858	Talon	Mcgowan	20040714-9618	talonmcgowan@finnsinte.se	\N	2	\N
859	Cora	Stewart	20080814-8867	stewartcora@finnsinte.se	\N	2	\N
860	Chancellor	Kinney	20000512-3132	kinney.chancellor@finnsinte.se	\N	2	\N
861	Bree	Mosley	20050617-2517	bree_mosley7146@finnsinte.se	\N	2	\N
862	Laurel	Mckay	20050615-3832	mckay.laurel8485@finnsinte.se	\N	2	\N
863	Colby	Keller	20070815-8849	keller-colby@finnsinte.se	\N	2	\N
864	Tucker	Bradshaw	20020211-8125	bradshaw-tucker1205@finnsinte.se	\N	2	\N
865	Randall	Blackburn	20000615-7914	blackburn.randall7871@finnsinte.se	\N	2	\N
866	Lynn	Moon	20050615-3272	m.lynn9820@finnsinte.se	\N	2	\N
867	Kimberly	Fisher	20080114-5907	fisher_kimberly@finnsinte.se	\N	2	\N
868	Kiona	Daugherty	20030217-3693	kdaugherty9995@finnsinte.se	\N	2	\N
869	Evelyn	Medina	20070517-6294	medina.evelyn1544@finnsinte.se	\N	2	\N
870	Shad	French	20050512-7746	s-french6314@finnsinte.se	\N	2	\N
871	Celeste	Wheeler	20000515-6964	c_wheeler2803@finnsinte.se	\N	2	\N
872	Henry	Reilly	20030416-6814	rhenry5444@finnsinte.se	\N	2	\N
873	Madison	Melton	20060716-3312	m_madison4961@finnsinte.se	\N	2	\N
874	Xenos	Sampson	20030115-6180	sampson_xenos@finnsinte.se	\N	2	\N
875	Herrod	Cantrell	20060812-4533	h-cantrell7606@finnsinte.se	\N	2	\N
876	Channing	Lucas	20070514-3271	lucaschanning3726@finnsinte.se	\N	2	\N
877	Gabriel	Cox	20050813-9749	gabriel_cox7897@finnsinte.se	\N	2	\N
878	Veda	Huber	20070814-9587	vedahuber3105@finnsinte.se	\N	2	\N
879	Keely	Church	20010511-0498	keely.church@finnsinte.se	\N	2	\N
880	Timon	Ball	20020117-3275	timon-ball1269@finnsinte.se	\N	2	\N
881	Lesley	Roberts	20050212-5179	lesley_roberts6238@finnsinte.se	\N	2	\N
882	Adam	Williams	20070811-1205	a_williams@finnsinte.se	\N	2	\N
883	Phelan	Carney	20050216-5545	carney_phelan6642@finnsinte.se	\N	2	\N
884	Regan	Solis	20070917-4473	solis-regan@finnsinte.se	\N	2	\N
885	Cruz	Gillespie	20070917-2175	c_gillespie6830@finnsinte.se	\N	2	\N
886	Myles	Nolan	20090718-4385	nolanmyles7196@finnsinte.se	\N	2	\N
887	Acton	Santiago	20040514-3563	acton.santiago540@finnsinte.se	\N	2	\N
888	Jaime	Jennings	20070117-3631	jaime-jennings@finnsinte.se	\N	2	\N
889	Timon	Douglas	20070715-6209	douglas_timon2153@finnsinte.se	\N	2	\N
890	Kevyn	Hahn	20010214-8797	hahnkevyn@finnsinte.se	\N	2	\N
891	Conan	Cortez	20040213-1348	cortez_conan7591@finnsinte.se	\N	2	\N
892	Alexa	Middleton	20050711-4342	alexa-middleton@finnsinte.se	\N	2	\N
893	Macey	Benson	20050613-5548	benson.macey@finnsinte.se	\N	2	\N
894	Raven	Luna	20060615-8388	r-luna1840@finnsinte.se	\N	2	\N
895	Neve	Newton	20000117-4854	nevenewton@finnsinte.se	\N	2	\N
896	Walter	Hodges	20060212-1937	walter-hodges@finnsinte.se	\N	2	\N
897	Nero	Faulkner	20060318-6395	nero-faulkner1855@finnsinte.se	\N	2	\N
898	Robert	Gutierrez	20040318-5722	r_gutierrez@finnsinte.se	\N	2	\N
899	Odysseus	Decker	20030715-5825	o.decker@finnsinte.se	\N	2	\N
900	Simon   Gallagher	20040911-1699	sgallagher8213@finnsinte.se	\N	2	\N
901	Han Solo	\N	\N	$2a$10$s7E2urkk7FeqigFj5GqjPO0ZKEgEYAn9QJaiYYfbv54EuIFwnKYym	1	HanSolo

\.

COPY competence_profile (competence_profile_id, fk_id_person, fk_id_competence, years_of_experience) FROM stdin;
4971	11	1	0.20
4972	11	2	3.40
4973	11	3	1.50
4974	12	1	1.10
4975	12	2	1.50
4976	13	3	1.90
4977	13	1	0.30
4978	15	1	1.40
4979	15	2	0.60
4980	15	3	3.60
4981	16	1	1.50
4982	16	2	0.60
4983	17	1	2.30
4984	18	1	1.90
4985	18	2	3.80
4986	21	1	3.20
4987	21	2	0.60
4988	21	3	0.30
4989	22	2	1.40
4990	22	3	1.60
4991	22	1	0.10
4992	23	1	0.10
4993	25	3	1.60
4994	26	1	2.20
4995	26	2	2.20
4996	26	3	1.40
4997	27	3	2.20
4998	28	1	0.60
4999	28	2	1.40
5000	29	1	1.30
5001	32	3	2.20
5002	32	1	1.70
5003	33	3	3.50
5004	33	1	0.30
5005	33	2	3.50
5006	34	1	2.20
5007	35	2	2.20
5008	36	3	1.80
5009	37	1	1.50
5010	37	2	2.70
5011	37	3	3.70
5012	40	2	1.30
5013	40	3	0.80
5014	40	1	1.10
5015	41	2	1.60
5016	42	2	2.40
5017	42	3	3.70
5018	42	1	1.90
5019	43	1	2.40
5020	44	3	3.50
5021	45	1	1.10
5022	46	3	1.30
5023	46	1	1.60
5024	46	2	0.10
5025	47	3	3.70
5026	47	1	0.30
5027	48	3	0.20
5028	48	1	0.90
5029	48	2	0.30
5030	49	3	1.40
5031	49	1	1.50
5032	51	2	3.50
5033	51	3	0.70
5034	51	1	0.80
5035	53	2	2.50
5036	54	2	3.90
5037	55	2	1.30
5038	56	3	2.40
5039	56	1	1.90
5040	56	2	3.30
5041	57	2	0.20
5042	57	3	1.60
5043	57	1	1.80
5044	58	1	2.10
5045	58	2	2.60
5046	59	1	3.10
5047	61	3	2.10
5048	61	1	1.70
5049	61	2	2.10
5050	63	1	1.80
5051	63	2	0.50
5052	63	3	1.20
5053	64	1	3.80
5054	64	2	2.60
5055	66	2	3.30
5056	66	3	0.70
5057	67	1	1.50
5058	68	3	2.10
5059	70	1	2.30
5060	71	3	2.60
5061	72	2	1.90
5062	72	3	0.60
5063	74	2	1.90
5064	74	3	2.40
5065	76	3	0.70
5066	76	1	3.40
5067	76	2	1.30
5068	77	1	2.60
5069	78	1	3.10
5070	78	2	0.60
5071	79	1	1.30
5072	79	2	1.50
5073	79	3	2.90
5074	80	3	1.70
5075	80	1	3.10
5076	80	2	2.70
5077	81	1	2.70
5078	81	2	0.80
5079	81	3	1.60
5080	82	2	3.10
5081	82	3	1.20
5082	84	3	2.20
5083	84	1	0.30
5084	85	2	3.20
5085	85	3	2.50
5086	85	1	0.20
5087	86	3	0.50
5088	86	1	1.50
5089	86	2	3.20
5090	87	2	2.70
5091	87	3	1.40
5092	89	2	2.40
5093	89	3	2.70
5094	89	1	0.20
5095	90	1	3.50
5096	90	2	1.80
5097	90	3	3.30
5098	91	1	3.40
5099	91	2	3.20
5100	91	3	1.80
5101	92	3	3.30
5102	92	1	3.30
5103	93	3	2.60
5104	93	1	1.50
5105	94	3	0.70
5106	94	1	2.30
5107	96	2	3.60
5108	96	3	1.40
5109	97	2	0.10
5110	97	3	0.10
5111	97	1	0.10
5112	98	2	3.50
5113	98	3	1.40
5114	100	3	3.40
5115	100	1	0.50
5116	101	1	1.50
5117	102	3	2.90
5118	102	1	0.90
5119	102	2	2.90
5120	105	1	2.40
5121	105	2	0.40
5122	106	3	0.80
5123	106	1	0.70
5124	107	1	3.10
5125	110	2	2.30
5126	111	2	2.30
5127	111	3	2.40
5128	112	2	3.20
5129	112	3	3.90
5130	112	1	2.20
5131	113	2	2.10
5132	114	2	0.90
5133	114	3	0.30
5134	114	1	2.30
5135	116	2	2.50
5136	118	2	0.50
5137	118	3	2.60
5138	119	3	3.70
5139	119	1	3.60
5140	120	2	0.30
5141	121	3	2.20
5142	121	1	0.70
5143	122	3	1.50
5144	124	2	3.20
5145	124	3	3.90
5146	125	1	0.90
5147	125	2	1.40
5148	125	3	1.40
5149	127	3	0.10
5150	127	1	1.40
5151	127	2	1.90
5152	128	2	0.50
5153	130	1	0.80
5154	130	2	2.50
5155	130	3	0.20
5156	131	3	2.80
5157	131	1	0.20
5158	133	1	0.10
5159	133	2	3.50
5160	134	1	1.80
5161	135	2	3.40
5162	136	1	0.80
5163	136	2	0.20
5164	136	3	3.40
5165	138	2	0.70
5166	138	3	0.10
5167	139	2	0.50
5168	139	3	0.60
5169	140	3	0.20
5170	140	1	3.30
5171	140	2	0.50
5172	141	1	2.80
5173	142	2	1.60
5174	143	1	0.90
5175	144	2	2.30
5176	144	3	3.50
5177	144	1	1.90
5178	145	3	2.70
5179	145	1	1.40
5180	145	2	2.60
5181	146	1	3.50
5182	148	3	2.30
5183	148	1	2.30
5184	149	2	0.90
5185	149	3	3.90
5186	149	1	0.30
5187	150	3	2.80
5188	150	1	3.60
5189	150	2	3.10
5190	152	1	1.50
5191	152	2	2.70
5192	154	2	2.20
5193	154	3	2.10
5194	155	1	2.40
5195	155	2	2.10
5196	156	3	3.20
5197	156	1	0.80
5198	158	1	3.80
5199	159	3	3.10
5200	159	1	2.70
5201	159	2	2.20
5202	160	2	3.90
5203	161	2	0.70
5204	162	2	1.70
5205	162	3	0.90
5206	163	3	3.30
5207	164	1	2.30
5208	164	2	1.60
5209	164	3	1.40
5210	165	1	0.20
5211	166	2	2.60
5212	167	1	2.80
5213	168	1	1.40
5214	168	2	2.20
5215	168	3	1.40
5216	169	3	3.20
5217	171	2	0.30
5218	171	3	3.60
5219	171	1	1.70
5220	172	1	3.30
5221	172	2	2.30
5222	173	1	0.10
5223	174	1	2.10
5224	175	3	1.80
5225	175	1	0.40
5226	175	2	3.80
5227	176	2	2.80
5228	176	3	0.90
5229	176	1	3.40
5230	177	3	1.30
5231	177	1	2.50
5232	178	1	2.60
5233	179	3	3.60
5234	180	1	0.30
5235	180	2	3.80
5236	181	1	0.50
5237	181	2	3.90
5238	183	1	1.60
5239	185	2	1.20
5240	185	3	2.80
5241	185	1	1.20
5242	186	1	2.60
5243	187	2	0.90
5244	187	3	2.50
5245	190	1	2.70
5246	191	2	2.30
5247	191	3	0.80
5248	193	1	3.30
5249	193	2	0.80
5250	193	3	3.80
5251	195	2	0.80
5252	195	3	2.40
5253	196	3	0.60
5254	196	1	0.20
5255	196	2	3.20
5256	197	3	1.50
5257	197	1	3.20
5258	199	2	1.50
5259	199	3	2.70
5260	199	1	1.80
5261	201	2	0.70
5262	201	3	0.90
5263	201	1	2.60
5264	202	3	1.80
5265	203	2	0.40
5266	203	3	0.10
5267	203	1	2.30
5268	204	3	1.10
5269	204	1	2.90
5270	204	2	0.80
5271	206	3	1.20
5272	206	1	3.50
5273	207	3	0.80
5274	207	1	1.50
5275	208	2	1.90
5276	209	3	3.40
5277	210	1	3.40
5278	211	3	0.10
5279	211	1	1.10
5280	211	2	1.60
5281	212	2	2.50
5282	212	3	3.20
5283	212	1	1.90
5284	213	3	3.30
5285	213	1	2.10
5286	214	2	2.20
5287	215	2	1.70
5288	215	3	1.70
5289	216	3	0.90
5290	216	1	0.30
5291	216	2	0.90
5292	219	3	2.50
5293	223	3	0.10
5294	224	1	3.90
5295	224	2	3.10
5296	224	3	3.30
5297	225	3	0.20
5298	225	1	0.60
5299	226	1	2.30
5300	226	2	1.70
5301	227	3	2.90
5302	228	1	0.70
5303	229	1	1.10
5304	229	2	0.50
5305	230	2	3.30
5306	230	3	1.90
5307	231	2	1.90
5308	232	3	3.50
5309	232	1	1.10
5310	233	3	2.80
5311	233	1	2.80
5312	234	2	1.90
5313	234	3	3.50
5314	234	1	3.90
5315	235	3	3.40
5316	235	1	1.80
5317	235	2	3.80
5318	236	3	1.50
5319	237	1	1.40
5320	238	1	1.60
5321	238	2	1.90
5322	239	3	0.60
5323	239	1	1.10
5324	239	2	0.30
5325	240	3	0.70
5326	241	3	2.90
5327	242	2	2.30
5328	242	3	3.40
5329	243	3	2.60
5330	244	2	2.30
5331	244	3	1.40
5332	245	2	2.20
5333	246	2	3.90
5334	246	3	3.60
5335	247	1	3.80
5336	247	2	0.60
5337	249	1	1.20
5338	249	2	1.10
5339	249	3	0.50
5340	250	1	1.80
5341	250	2	2.40
5342	250	3	0.10
5343	251	1	1.80
5344	252	2	0.30
5345	253	1	0.50
5346	255	2	0.70
5347	256	3	1.80
5348	256	1	3.60
5349	257	1	3.40
5350	257	2	2.70
5351	258	3	2.30
5352	258	1	3.90
5353	258	2	1.20
5354	259	2	1.10
5355	259	3	0.20
5356	260	1	1.60
5357	260	2	1.70
5358	262	3	1.60
5359	266	2	1.90
5360	267	1	1.70
5361	267	2	0.20
5362	267	3	2.60
5363	269	1	0.80
5364	269	2	1.80
5365	272	1	3.30
5366	272	2	2.40
5367	273	1	1.60
5368	273	2	2.90
5369	273	3	3.70
5370	274	3	2.50
5371	274	1	2.50
5372	274	2	2.80
5373	275	3	2.60
5374	275	1	2.60
5375	275	2	0.60
5376	278	1	1.40
5377	279	2	2.40
5378	279	3	0.70
5379	279	1	2.50
5380	280	1	2.40
5381	281	1	2.10
5382	281	2	2.40
5383	282	1	2.50
5384	282	2	3.30
5385	283	3	3.90
5386	283	1	1.10
5387	283	2	2.80
5388	284	1	0.70
5389	285	2	3.40
5390	285	3	1.20
5391	285	1	2.40
5392	286	3	0.60
5393	286	1	0.50
5394	286	2	0.50
5395	287	2	3.20
5396	287	3	3.50
5397	288	1	2.50
5398	288	2	1.30
5399	289	3	1.60
5400	289	1	1.60
5401	289	2	1.90
5402	291	3	1.90
5403	291	1	0.30
5404	292	2	0.20
5405	292	3	0.50
5406	294	2	2.90
5407	295	2	2.80
5408	296	2	0.60
5409	296	3	3.30
5410	297	1	2.50
5411	297	2	1.40
5412	298	2	1.90
5413	299	1	1.70
5414	300	1	0.70
5415	302	2	2.30
5416	302	3	3.90
5417	304	2	2.10
5418	304	3	0.30
5419	304	1	3.20
5420	305	2	0.40
5421	306	3	1.80
5422	306	1	3.20
5423	307	1	3.70
5424	307	2	1.20
5425	309	2	2.50
5426	309	3	2.70
5427	309	1	2.40
5428	312	3	2.80
5429	312	1	2.20
5430	313	2	2.70
5431	313	3	3.20
5432	314	1	3.60
5433	314	2	1.40
5434	315	2	1.40
5435	315	3	0.60
5436	315	1	1.60
5437	316	3	3.30
5438	316	1	3.40
5439	316	2	1.40
5440	317	3	0.90
5441	317	1	0.50
5442	317	2	0.50
5443	318	3	2.20
5444	318	1	3.10
5445	319	1	1.70
5446	319	2	2.60
5447	319	3	2.30
5448	321	3	3.80
5449	322	1	2.80
5450	322	2	3.10
5451	322	3	2.80
5452	323	2	3.30
5453	324	3	2.90
5454	325	2	0.90
5455	326	1	2.90
5456	326	2	1.60
5457	326	3	1.90
5458	327	1	1.20
5459	327	2	3.30
5460	327	3	0.50
5461	330	1	0.20
5462	330	2	3.20
5463	331	1	1.10
5464	331	2	3.80
5465	331	3	0.90
5466	332	1	0.60
5467	332	2	0.90
5468	334	2	2.80
5469	334	3	2.10
5470	334	1	3.10
5471	335	1	2.80
5472	335	2	0.30
5473	335	3	3.60
5474	336	2	3.80
5475	337	2	2.20
5476	338	3	2.30
5477	339	3	2.60
5478	340	3	3.50
5479	340	1	0.10
5480	340	2	1.80
5481	341	2	2.30
5482	341	3	1.10
5483	341	1	3.30
5484	342	1	0.80
5485	342	2	3.30
5486	343	2	2.40
5487	343	3	1.20
5488	343	1	1.60
5489	345	2	2.40
5490	345	3	1.50
5491	345	1	1.10
5492	346	2	3.20
5493	346	3	3.10
5494	347	1	2.20
5495	347	2	3.70
5496	348	3	3.30
5497	349	1	3.20
5498	349	2	1.90
5499	350	1	3.30
5500	351	3	0.10
5501	351	1	3.60
5502	351	2	1.80
5503	352	2	3.30
5504	352	3	2.60
5505	352	1	2.30
5506	353	1	0.90
5507	353	2	1.60
5508	353	3	1.10
5509	354	3	1.50
5510	354	1	0.60
5511	355	1	0.20
5512	355	2	0.20
5513	355	3	3.40
5514	356	2	0.30
5515	358	1	3.70
5516	358	2	0.20
5517	359	1	1.30
5518	359	2	2.30
5519	359	3	1.70
5520	360	3	3.70
5521	360	1	3.70
5522	361	1	2.70
5523	361	2	3.40
5524	362	1	2.70
5525	363	3	0.30
5526	365	1	1.90
5527	366	1	3.20
5528	366	2	0.30
5529	370	2	3.70
5530	371	2	2.40
5531	371	3	0.30
5532	372	2	1.40
5533	372	3	0.60
5534	372	1	3.90
5535	373	1	1.80
5536	374	3	1.10
5537	374	1	0.80
5538	374	2	3.50
5539	375	1	1.10
5540	375	2	3.30
5541	376	1	1.80
5542	376	2	2.80
5543	377	1	2.50
5544	377	2	3.10
5545	377	3	2.90
5546	379	1	3.50
5547	379	2	1.60
5548	382	2	3.30
5549	386	3	2.60
5550	386	1	2.10
5551	387	2	2.20
5552	388	2	0.70
5553	388	3	3.20
5554	389	1	0.30
5555	389	2	3.80
5556	390	3	3.40
5557	390	1	1.60
5558	390	2	1.70
5559	391	2	3.40
5560	391	3	3.30
5561	393	3	3.60
5562	393	1	3.10
5563	394	2	0.30
5564	394	3	3.70
5565	394	1	2.50
5566	395	2	2.70
5567	395	3	2.20
5568	396	2	2.90
5569	396	3	0.10
5570	398	3	2.60
5571	399	2	0.90
5572	399	3	3.90
5573	400	2	0.60
5574	402	2	2.90
5575	403	2	3.70
5576	404	1	0.50
5577	404	2	1.50
5578	405	1	1.70
5579	406	3	0.90
5580	406	1	1.70
5581	406	2	1.50
5582	407	3	3.80
5583	408	1	0.40
5584	408	2	1.30
5585	408	3	3.70
5586	409	2	0.30
5587	410	2	1.70
5588	410	3	0.40
5589	410	1	0.90
5590	411	1	1.20
5591	412	1	0.50
5592	412	2	2.40
5593	412	3	3.90
5594	414	1	0.50
5595	414	2	1.10
5596	414	3	2.10
5597	415	3	1.90
5598	415	1	1.90
5599	417	3	3.90
5600	420	1	0.50
5601	420	2	3.30
5602	420	3	1.50
5603	421	1	0.70
5604	421	2	3.70
5605	422	3	0.60
5606	425	3	1.30
5607	425	1	3.10
5608	426	3	0.10
5609	426	1	3.50
5610	427	2	1.50
5611	427	3	0.40
5612	427	1	1.60
5613	428	2	1.10
5614	428	3	3.60
5615	429	2	3.20
5616	429	3	2.10
5617	429	1	1.90
5618	430	3	1.60
5619	431	3	2.60
5620	431	1	2.70
5621	431	2	2.60
5622	432	1	2.90
5623	433	1	2.40
5624	436	3	0.50
5625	436	1	1.50
5626	437	3	2.30
5627	437	1	1.40
5628	438	3	1.10
5629	438	1	2.70
5630	438	2	1.30
5631	441	1	2.30
5632	442	2	2.20
5633	443	2	2.90
5634	443	3	2.50
5635	444	2	3.60
5636	444	3	2.80
5637	445	1	2.80
5638	446	2	3.60
5639	447	2	2.30
5640	447	3	1.60
5641	448	3	3.50
5642	448	1	1.90
5643	448	2	0.60
5644	449	2	3.60
5645	450	1	0.40
5646	450	2	1.40
5647	450	3	0.80
5648	451	1	1.20
5649	452	1	2.50
5650	453	3	1.40
5651	454	1	0.60
5652	454	2	1.70
5653	454	3	3.70
5654	456	2	2.70
5655	456	3	1.80
5656	458	1	3.10
5657	459	2	0.20
5658	459	3	2.40
5659	460	2	2.20
5660	460	3	1.20
5661	461	1	3.70
5662	461	2	1.90
5663	464	2	0.10
5664	464	3	2.20
5665	464	1	3.20
5666	465	1	0.30
5667	465	2	1.80
5668	466	1	2.60
5669	466	2	2.80
5670	467	1	1.20
5671	468	1	0.10
5672	468	2	1.80
5673	468	3	3.50
5674	469	3	3.40
5675	469	1	0.50
5676	469	2	1.80
5677	470	2	2.90
5678	470	3	3.10
5679	471	3	2.60
5680	471	1	3.20
5681	472	2	1.50
5682	472	3	0.80
5683	472	1	1.30
5684	473	1	2.60
5685	473	2	2.90
5686	473	3	2.40
5687	475	2	2.20
5688	475	3	3.50
5689	476	2	3.50
5690	476	3	3.30
5691	477	1	2.10
5692	478	1	2.80
5693	478	2	2.50
5694	478	3	3.20
5695	479	1	1.70
5696	479	2	0.20
5697	480	3	3.80
5698	481	1	1.70
5699	481	2	2.50
5700	482	2	1.90
5701	482	3	0.20
5702	482	1	0.80
5703	483	3	3.60
5704	483	1	2.80
5705	484	3	3.60
5706	485	3	1.20
5707	485	1	1.70
5708	486	3	2.50
5709	486	1	2.60
5710	487	1	2.90
5711	487	2	1.70
5712	487	3	3.30
5713	488	2	2.50
5714	488	3	2.30
5715	488	1	1.10
5716	489	2	3.70
5717	489	3	3.30
5718	490	3	3.80
5719	490	1	0.40
5720	491	1	0.70
5721	492	3	1.60
5722	492	1	1.70
5723	493	1	0.20
5724	493	2	0.20
5725	494	1	2.60
5726	495	3	1.20
5727	495	1	3.40
5728	495	2	3.20
5729	500	3	2.30
5730	502	2	3.70
5731	506	3	2.80
5732	508	2	0.70
5733	509	2	2.10
5734	510	1	2.60
5735	510	2	0.20
5736	510	3	2.90
5737	511	2	2.40
5738	511	3	2.60
5739	512	3	0.30
5740	514	2	2.10
5741	514	3	1.80
5742	515	3	0.50
5743	515	1	0.80
5744	516	2	0.20
5745	517	3	2.70
5746	518	1	0.40
5747	518	2	2.10
5748	518	3	2.50
5749	519	2	1.20
5750	519	3	2.60
5751	520	2	0.60
5752	520	3	0.60
5753	520	1	0.70
5754	521	3	0.50
5755	521	1	0.50
5756	522	1	2.90
5757	523	1	0.40
5758	523	2	0.40
5759	524	2	2.40
5760	524	3	1.60
5761	524	1	3.80
5762	526	2	1.40
5763	526	3	0.80
5764	526	1	1.90
5765	527	1	0.80
5766	527	2	3.40
5767	527	3	0.20
5768	530	1	3.60
5769	531	1	1.70
5770	532	1	1.10
5771	532	2	2.10
5772	533	3	2.10
5773	533	1	3.20
5774	534	3	2.80
5775	535	1	0.80
5776	536	3	1.40
5777	540	1	1.10
5778	540	2	0.40
5779	541	3	0.30
5780	541	1	0.50
5781	541	2	0.30
5782	543	3	1.50
5783	543	1	3.30
5784	544	3	1.10
5785	545	1	0.30
5786	545	2	1.10
5787	545	3	3.10
5788	547	3	0.80
5789	547	1	3.70
5790	547	2	3.70
5791	549	3	3.10
5792	549	1	3.80
5793	549	2	3.40
5794	550	1	1.80
5795	550	2	0.70
5796	550	3	3.90
5797	552	3	3.90
5798	552	1	3.10
5799	555	2	2.40
5800	555	3	0.80
5801	555	1	1.70
5802	556	1	0.30
5803	556	2	0.90
5804	557	3	0.20
5805	557	1	3.80
5806	558	3	0.20
5807	559	2	2.50
5808	562	1	0.90
5809	564	1	2.30
5810	564	2	0.60
5811	565	2	1.30
5812	565	3	0.60
5813	566	1	1.90
5814	566	2	1.80
5815	567	2	2.30
5816	567	3	2.30
5817	568	1	3.30
5818	568	2	2.30
5819	569	2	1.20
5820	570	1	1.70
5821	570	2	1.70
5822	570	3	3.10
5823	571	1	0.50
5824	572	1	1.10
5825	573	2	3.50
5826	573	3	3.30
5827	574	1	2.50
5828	574	2	1.70
5829	574	3	2.70
5830	575	1	1.70
5831	575	2	0.80
5832	576	2	2.70
5833	576	3	0.50
5834	577	1	0.10
5835	579	3	3.40
5836	579	1	1.90
5837	580	2	3.20
5838	582	1	2.30
5839	584	1	1.20
5840	585	3	3.80
5841	585	1	0.30
5842	585	2	0.60
5843	587	1	3.10
5844	587	2	2.60
5845	588	3	0.70
5846	588	1	1.70
5847	588	2	3.30
5848	589	1	2.10
5849	591	2	0.90
5850	591	3	0.10
5851	592	2	1.60
5852	593	1	1.30
5853	593	2	2.40
5854	593	3	1.70
5855	594	3	0.30
5856	595	1	1.10
5857	595	2	1.30
5858	595	3	0.60
5859	596	2	2.10
5860	597	3	0.70
5861	597	1	3.90
5862	598	1	1.80
5863	599	3	3.60
5864	599	1	0.30
5865	599	2	2.90
5866	600	1	1.20
5867	601	3	1.20
5868	602	1	0.50
5869	603	2	2.70
5870	608	2	0.10
5871	609	1	0.10
5872	609	2	1.20
5873	609	3	1.50
5874	611	3	0.80
5875	611	1	2.80
5876	611	2	1.80
5877	612	2	2.60
5878	613	1	2.20
5879	613	2	2.70
5880	613	3	3.80
5881	614	2	0.90
5882	614	3	3.40
5883	615	1	2.80
5884	615	2	1.90
5885	615	3	1.10
5886	616	3	3.10
5887	616	1	0.50
5888	617	2	3.20
5889	617	3	0.60
5890	619	3	1.80
5891	620	3	3.10
5892	620	1	3.60
5893	621	2	0.90
5894	623	1	2.80
5895	623	2	0.80
5896	624	3	1.80
5897	628	1	1.60
5898	628	2	3.30
5899	629	1	1.90
5900	629	2	3.70
5901	629	3	2.60
5902	630	1	0.50
5903	630	2	1.20
5904	630	3	0.60
5905	631	3	0.50
5906	631	1	2.90
5907	632	3	0.10
5908	632	1	1.10
5909	633	3	1.30
5910	633	1	0.10
5911	634	3	3.30
5912	634	1	2.10
5913	634	2	3.50
5914	635	2	3.50
5915	636	2	2.80
5916	637	3	0.20
5917	637	1	3.90
5918	637	2	2.60
5919	638	2	2.90
5920	639	1	3.90
5921	639	2	0.20
5922	639	3	3.10
5923	640	1	0.30
5924	640	2	3.90
5925	640	3	3.80
5926	641	1	2.10
5927	641	2	1.80
5928	641	3	1.30
5929	642	2	1.80
5930	643	1	3.30
5931	643	2	0.10
5932	643	3	2.20
5933	644	2	1.50
5934	644	3	2.60
5935	644	1	0.90
5936	645	2	2.70
5937	646	1	3.40
5938	646	2	3.70
5939	646	3	2.70
5940	647	1	0.30
5941	647	2	2.10
5942	647	3	3.60
5943	649	2	3.70
5944	650	3	3.20
5945	650	1	3.20
5946	652	3	0.70
5947	653	3	3.10
5948	653	1	0.90
5949	655	2	0.90
5950	656	1	1.40
5951	656	2	1.90
5952	657	1	3.60
5953	657	2	1.80
5954	657	3	1.10
5955	659	3	1.60
5956	659	1	1.60
5957	660	2	3.50
5958	660	3	0.20
5959	661	3	3.80
5960	661	1	3.10
5961	661	2	0.70
5962	662	1	2.80
5963	664	2	3.10
5964	664	3	3.20
5965	664	1	1.30
5966	665	3	1.10
5967	665	1	1.50
5968	665	2	0.70
5969	666	1	1.60
5970	667	2	3.20
5971	667	3	2.90
5972	667	1	3.20
5973	669	2	0.20
5974	669	3	0.10
5975	669	1	2.60
5976	671	2	2.70
5977	671	3	3.90
5978	671	1	1.90
5979	672	2	1.80
5980	672	3	1.50
5981	672	1	1.20
5982	673	2	1.30
5983	673	3	3.80
5984	673	1	0.50
5985	674	1	3.60
5986	674	2	0.90
5987	676	1	3.80
5988	676	2	2.10
5989	676	3	2.10
5990	678	3	1.60
5991	678	1	1.50
5992	678	2	0.30
5993	679	3	2.40
5994	680	3	2.90
5995	681	1	1.10
5996	681	2	3.20
5997	682	1	2.80
5998	683	1	3.50
5999	684	3	1.90
6000	685	3	0.20
6001	686	2	2.40
6002	687	3	2.90
6003	687	1	2.50
6004	687	2	2.80
6005	688	2	2.30
6006	688	3	1.20
6007	688	1	2.80
6008	690	3	2.70
6009	690	1	2.30
6010	691	2	2.20
6011	691	3	1.10
6012	691	1	0.20
6013	692	1	2.40
6014	693	1	3.10
6015	693	2	2.10
6016	695	1	1.10
6017	695	2	3.40
6018	695	3	0.70
6019	696	2	2.40
6020	696	3	1.70
6021	697	1	1.20
6022	697	2	2.70
6023	697	3	3.80
6024	699	3	1.80
6025	700	2	1.20
6026	700	3	2.60
6027	701	3	1.30
6028	701	1	1.10
6029	701	2	1.70
6030	702	3	0.80
6031	702	1	3.70
6032	702	2	3.70
6033	704	2	0.60
6034	704	3	2.90
6035	704	1	0.90
6036	706	1	1.90
6037	707	3	2.50
6038	707	1	2.40
6039	708	3	1.40
6040	709	2	1.20
6041	710	3	0.40
6042	710	1	3.90
6043	710	2	1.80
6044	711	1	3.60
6045	711	2	0.30
6046	711	3	2.80
6047	714	1	2.10
6048	714	2	2.20
6049	714	3	3.90
6050	715	2	0.50
6051	715	3	2.60
6052	715	1	1.10
6053	716	3	3.30
6054	716	1	1.80
6055	717	3	2.10
6056	717	1	1.10
6057	718	1	1.40
6058	718	2	0.40
6059	718	3	0.50
6060	719	1	1.50
6061	719	2	1.80
6062	720	2	3.60
6063	721	3	2.40
6064	721	1	0.70
6065	721	2	0.90
6066	723	1	3.20
6067	723	2	2.40
6068	724	2	0.10
6069	725	1	3.40
6070	726	1	0.90
6071	726	2	3.80
6072	727	1	1.60
6073	728	1	1.40
6074	729	2	0.40
6075	729	3	3.70
6076	729	1	1.60
6077	730	3	2.90
6078	731	1	2.80
6079	732	2	0.10
6080	733	3	2.20
6081	735	1	2.80
6082	735	2	2.40
6083	736	2	2.30
6084	739	3	3.50
6085	739	1	3.90
6086	740	3	0.20
6087	740	1	3.40
6088	740	2	2.30
6089	741	3	2.90
6090	741	1	1.90
6091	741	2	0.10
6092	742	3	1.40
6093	742	1	1.50
6094	742	2	1.20
6095	743	1	0.50
6096	744	2	2.70
6097	744	3	0.70
6098	744	1	3.30
6099	745	2	0.60
6100	746	2	3.30
6101	748	2	3.40
6102	748	3	0.30
6103	748	1	1.70
6104	749	3	0.30
6105	749	1	0.40
6106	751	3	1.10
6107	751	1	3.50
6108	753	1	3.40
6109	755	3	3.50
6110	755	1	0.80
6111	755	2	3.30
6112	756	2	0.40
6113	756	3	2.80
6114	757	3	0.50
6115	758	2	1.50
6116	758	3	3.90
6117	759	2	2.60
6118	760	2	3.50
6119	761	2	2.30
6120	762	1	3.60
6121	762	2	3.40
6122	763	3	0.60
6123	763	1	2.90
6124	764	2	3.40
6125	765	2	0.40
6126	765	3	3.70
6127	765	1	2.70
6128	766	1	0.50
6129	766	2	3.60
6130	766	3	3.20
6131	768	3	1.70
6132	768	1	3.20
6133	768	2	0.10
6134	769	1	3.40
6135	769	2	1.50
6136	769	3	1.70
6137	770	2	1.90
6138	773	1	3.40
6139	773	2	1.90
6140	774	1	0.90
6141	775	1	1.40
6142	775	2	0.90
6143	776	1	1.90
6144	776	2	3.30
6145	777	1	3.50
6146	777	2	3.40
6147	779	1	0.60
6148	780	3	2.50
6149	781	3	0.80
6150	781	1	2.40
6151	781	2	2.70
6152	784	2	3.80
6153	784	3	1.60
6154	784	1	1.40
6155	786	1	1.20
6156	786	2	0.60
6157	788	2	2.10
6158	788	3	2.90
6159	788	1	3.80
6160	789	1	0.70
6161	790	1	2.20
6162	791	1	3.10
6163	791	2	1.40
6164	792	3	3.10
6165	792	1	0.30
6166	793	1	3.30
6167	793	2	3.20
6168	793	3	0.40
6169	794	1	3.80
6170	794	2	2.80
6171	794	3	0.70
6172	795	2	3.30
6173	795	3	3.70
6174	796	2	1.10
6175	796	3	3.70
6176	797	3	3.90
6177	798	3	1.70
6178	798	1	3.40
6179	798	2	1.90
6180	799	1	1.70
6181	799	2	2.70
6182	799	3	2.50
6183	800	2	1.60
6184	801	3	2.30
6185	801	1	1.30
6186	802	2	0.60
6187	803	3	0.50
6188	804	1	0.10
6189	804	2	1.20
6190	805	2	3.80
6191	806	1	2.40
6192	806	2	0.60
6193	807	3	3.10
6194	807	1	1.80
6195	808	2	1.70
6196	808	3	1.20
6197	809	1	1.60
6198	810	1	3.90
6199	810	2	3.30
6200	810	3	3.60
6201	811	1	3.40
6202	811	2	3.10
6203	811	3	2.80
6204	812	1	3.60
6205	812	2	3.90
6206	813	1	1.70
6207	813	2	3.10
6208	814	2	3.40
6209	816	2	1.10
6210	816	3	3.20
6211	818	1	2.60
6212	820	2	0.50
6213	820	3	1.20
6214	820	1	0.70
6215	821	2	1.40
6216	821	3	3.30
6217	821	1	3.40
6218	823	2	1.50
6219	823	3	1.40
6220	824	3	0.60
6221	824	1	0.70
6222	825	1	1.60
6223	826	1	3.20
6224	826	2	3.50
6225	826	3	2.20
6226	827	3	3.90
6227	828	2	1.10
6228	830	3	3.30
6229	831	2	1.10
6230	831	3	3.40
6231	832	3	0.70
6232	832	1	0.60
6233	832	2	0.70
6234	834	3	2.20
6235	835	3	1.30
6236	835	1	1.60
6237	835	2	1.80
6238	836	3	1.30
6239	836	1	3.20
6240	836	2	0.40
6241	837	1	0.30
6242	837	2	1.10
6243	837	3	2.60
6244	838	3	0.30
6245	839	1	2.80
6246	840	2	2.60
6247	841	1	1.10
6248	841	2	0.80
6249	842	1	0.30
6250	842	2	0.70
6251	843	2	0.20
6252	845	1	3.30
6253	845	2	1.20
6254	847	2	3.50
6255	847	3	0.20
6256	847	1	2.60
6257	850	3	1.10
6258	850	1	0.90
6259	850	2	0.60
6260	851	3	0.60
6261	851	1	3.80
6262	853	3	2.90
6263	855	3	2.40
6264	855	1	0.30
6265	858	1	1.20
6266	859	1	3.90
6267	859	2	3.80
6268	859	3	3.20
6269	861	3	2.90
6270	861	1	1.10
6271	861	2	3.70
6272	862	1	0.10
6273	862	2	2.60
6274	863	1	2.10
6275	863	2	0.50
6276	863	3	1.30
6277	864	3	1.90
6278	866	2	2.90
6279	866	3	3.30
6280	866	1	1.60
6281	867	1	3.30
6282	868	1	2.30
6283	868	2	0.80
6284	870	1	0.50
6285	871	1	3.20
6286	872	1	3.40
6287	872	2	1.20
6288	872	3	2.90
6289	873	3	2.70
6290	873	1	0.60
6291	873	2	3.60
6292	874	2	1.50
6293	876	1	0.30
6294	879	3	3.60
6295	879	1	2.10
6296	880	1	0.20
6297	880	2	2.90
6298	883	1	0.20
6299	883	2	0.70
6300	883	3	1.10
6301	884	3	2.40
6302	885	2	0.80
6303	885	3	0.30
6304	886	2	3.90
6305	887	2	3.30
6306	888	1	0.60
6307	888	2	1.40
6308	888	3	2.30
6309	889	2	1.80
6310	889	3	3.30
6311	889	1	1.30
6312	890	1	0.50
6313	890	2	0.20
6314	892	3	3.90
6315	892	1	2.30
6316	893	3	1.50
6317	893	1	2.40
6318	893	2	0.30
6319	894	3	2.30
6320	894	1	3.90
6321	894	2	1.40
6322	895	3	0.80
6323	896	3	2.20
6324	898	2	2.30
6325	898	3	1.20
6326	900	3	2.50
6327	900	1	1.20
\.

COPY availability (availability_id, fk_id_person, from_date, to_date) FROM stdin;
18260	547	2019-09-07	2019-10-07
18261	781	2018-05-18	2018-06-18
18262	686	2019-09-06	2019-10-06
18263	93	2021-07-15	2021-08-15
18264	325	2018-09-10	2018-10-10
18265	797	2021-05-02	2021-06-02
18266	335	2019-09-08	2019-10-08
18267	201	2018-09-26	2018-10-26
18268	807	2021-05-19	2021-06-19
18269	423	2021-05-05	2021-06-05
18270	789	2018-08-18	2018-09-18
18271	117	2020-05-02	2020-06-02
18272	19	2020-06-06	2020-07-06
18273	808	2020-07-29	2020-08-29
18274	267	2020-05-31	2020-06-30
18275	372	2019-07-04	2019-08-04
18276	47	2021-07-29	2021-08-29
18277	361	2020-06-15	2020-07-15
18278	394	2020-05-12	2020-06-12
18279	456	2019-06-26	2019-07-26
18280	615	2019-05-24	2019-06-24
18281	398	2018-07-28	2018-08-28
18282	536	2020-05-08	2020-06-08
18283	309	2021-05-12	2021-06-12
18284	584	2020-06-26	2020-07-26
18285	761	2018-05-25	2018-06-25
18287	526	2019-05-21	2019-06-21
18288	670	2021-06-06	2021-07-06
18289	154	2019-07-18	2019-08-18
18290	574	2020-08-07	2020-09-07
18292	861	2020-08-15	2020-09-15
18293	388	2021-06-07	2021-07-07
18294	352	2019-09-11	2019-10-11
18295	571	2019-05-22	2019-06-22
18297	499	2020-06-23	2020-07-23
18298	493	2018-07-10	2018-08-10
18299	567	2018-09-24	2018-10-24
18300	45	2020-09-08	2020-10-08
18301	772	2020-09-22	2020-10-22
18302	862	2019-05-27	2019-06-27
18303	95	2018-09-23	2018-10-23
18304	516	2019-07-18	2019-08-18
18305	354	2021-08-25	2021-09-25
18306	349	2019-06-23	2019-07-23
18309	192	2021-06-19	2021-07-19
18310	71	2018-07-31	2018-08-31
18312	643	2021-06-05	2021-07-05
18313	588	2020-05-05	2020-06-05
18315	720	2021-05-27	2021-06-27
18316	316	2021-09-15	2021-10-15
18317	671	2021-09-17	2021-10-17
18318	756	2020-08-09	2020-09-09
18319	221	2018-06-25	2018-07-25
18320	247	2018-05-17	2018-06-17
18321	479	2020-07-05	2020-08-05
18322	102	2018-09-26	2018-10-26
18323	202	2019-07-14	2019-08-14
18324	558	2020-08-15	2020-09-15
18325	457	2018-06-19	2018-07-19
18326	809	2020-06-13	2020-07-13
18327	572	2019-07-31	2019-08-31
18328	62	2021-05-23	2021-06-23
18329	499	2020-08-23	2020-09-23
18330	145	2019-08-28	2019-09-28
18331	744	2020-07-01	2020-08-01
18332	862	2019-07-27	2019-08-27
18333	665	2019-08-18	2019-09-18
18334	827	2019-05-12	2019-06-12
18335	742	2021-05-09	2021-06-09
18336	817	2018-06-29	2018-07-29
18337	463	2018-05-07	2018-06-07
18339	801	2018-05-10	2018-06-10
18340	865	2020-05-16	2020-06-16
18341	339	2021-05-09	2021-06-09
18342	721	2021-05-18	2021-06-18
18343	280	2018-05-11	2018-06-11
18344	498	2021-07-22	2021-08-22
18345	761	2018-07-25	2018-08-25
18346	549	2020-09-25	2020-10-25
18347	237	2020-09-10	2020-10-10
18348	769	2020-05-06	2020-06-06
18349	776	2021-08-22	2021-09-22
18350	737	2020-05-28	2020-06-28
18351	428	2021-07-25	2021-08-25
18352	815	2020-08-28	2020-09-28
18353	444	2018-08-25	2018-09-25
18355	525	2018-08-04	2018-09-04
18356	596	2021-09-20	2021-10-20
18357	527	2021-07-03	2021-08-03
18358	307	2021-08-04	2021-09-04
18359	94	2019-07-27	2019-08-27
18360	411	2021-07-24	2021-08-24
18361	760	2020-05-17	2020-06-17
18362	234	2020-07-28	2020-08-28
18363	258	2019-08-06	2019-09-06
18364	265	2019-05-12	2019-06-12
18365	610	2018-09-26	2018-10-26
18367	236	2018-07-17	2018-08-17
18368	527	2021-09-03	2021-10-03
18369	661	2021-08-06	2021-09-06
18370	282	2020-06-22	2020-07-22
18371	324	2018-05-12	2018-06-12
18372	764	2019-08-18	2019-09-18
18373	783	2020-08-06	2020-09-06
18374	141	2021-05-26	2021-06-26
18375	390	2020-09-08	2020-10-08
18377	523	2020-07-12	2020-08-12
18378	462	2018-06-12	2018-07-12
18379	365	2021-09-26	2021-10-26
18380	148	2020-07-01	2020-08-01
18381	442	2018-06-26	2018-07-26
18382	748	2021-09-12	2021-10-12
18383	49	2019-06-17	2019-07-17
18384	241	2020-08-02	2020-09-02
18385	158	2018-09-27	2018-10-27
18386	66	2019-05-06	2019-06-06
18387	376	2020-07-31	2020-08-31
18389	595	2018-05-17	2018-06-17
18391	559	2021-09-09	2021-10-09
18392	412	2020-08-12	2020-09-12
18393	820	2018-05-31	2018-06-30
18394	534	2018-08-31	2018-09-30
18395	117	2020-07-02	2020-08-02
18397	873	2019-09-10	2019-10-10
18398	63	2019-07-07	2019-08-07
18399	879	2019-06-06	2019-07-06
18400	226	2018-06-05	2018-07-05
18401	465	2021-06-27	2021-07-27
18402	425	2019-09-17	2019-10-17
18403	81	2019-05-06	2019-06-06
18404	274	2021-05-21	2021-06-21
18405	878	2021-05-17	2021-06-17
18406	169	2019-08-24	2019-09-24
18408	402	2018-08-19	2018-09-19
18409	262	2021-07-03	2021-08-03
18410	375	2019-08-18	2019-09-18
18411	197	2020-05-29	2020-06-29
18412	795	2021-05-04	2021-06-04
18413	749	2019-08-24	2019-09-24
18414	679	2020-09-18	2020-10-18
18416	301	2018-05-12	2018-06-12
18417	328	2021-05-19	2021-06-19
18418	312	2019-05-09	2019-06-09
18419	769	2020-07-06	2020-08-06
18420	598	2020-08-06	2020-09-06
18421	621	2021-06-12	2021-07-12
18422	543	2018-06-22	2018-07-22
18423	498	2021-09-22	2021-10-22
18424	567	2019-05-24	2019-06-24
18426	310	2018-08-18	2018-09-18
18427	697	2021-06-08	2021-07-08
18429	793	2019-05-24	2019-06-24
18430	437	2020-09-28	2020-10-28
18431	717	2019-09-22	2019-10-22
18432	865	2020-07-16	2020-08-16
18433	389	2019-07-12	2019-08-12
18434	338	2020-05-13	2020-06-13
18435	117	2020-09-02	2020-10-02
18436	214	2021-07-17	2021-08-17
18437	585	2019-06-23	2019-07-23
18438	620	2021-08-20	2021-09-20
18440	33	2020-05-26	2020-06-26
18441	897	2020-05-16	2020-06-16
18442	108	2021-07-23	2021-08-23
18443	803	2018-09-04	2018-10-04
18444	847	2019-05-24	2019-06-24
18445	749	2020-05-24	2020-06-24
18446	882	2019-08-15	2019-09-15
18447	183	2021-07-27	2021-08-27
18448	658	2021-07-28	2021-08-28
18450	897	2020-07-16	2020-08-16
18451	702	2019-05-07	2019-06-07
18452	360	2018-05-15	2018-06-15
18453	194	2019-05-02	2019-06-02
18454	267	2020-07-30	2020-08-30
18455	762	2019-05-09	2019-06-09
18456	606	2020-06-14	2020-07-14
18457	290	2020-05-05	2020-06-05
18458	181	2019-05-23	2019-06-23
18459	855	2021-08-28	2021-09-28
18461	817	2018-08-29	2018-09-29
18462	164	2020-05-22	2020-06-22
18463	510	2019-05-11	2019-06-11
18465	500	2020-05-13	2020-06-13
18468	575	2018-08-11	2018-09-11
18469	45	2021-05-08	2021-06-08
18470	658	2021-09-28	2021-10-28
18471	718	2021-09-17	2021-10-17
18472	180	2021-07-29	2021-08-29
18473	884	2019-08-10	2019-09-10
18474	345	2018-07-06	2018-08-06
18475	603	2020-06-04	2020-07-04
18476	710	2021-09-03	2021-10-03
18477	64	2020-06-22	2020-07-22
18478	475	2018-06-09	2018-07-09
18479	193	2018-09-27	2018-10-27
18482	594	2021-05-08	2021-06-08
18483	663	2020-05-26	2020-06-26
18484	637	2020-05-11	2020-06-11
18485	314	2018-05-18	2018-06-18
18487	170	2019-05-14	2019-06-14
18489	851	2020-09-22	2020-10-22
18490	517	2021-06-20	2021-07-20
18491	476	2018-09-13	2018-10-13
18492	531	2021-08-24	2021-09-24
18493	594	2021-07-08	2021-08-08
18494	721	2021-07-18	2021-08-18
18495	556	2021-09-03	2021-10-03
18496	133	2019-09-15	2019-10-15
18497	405	2021-05-23	2021-06-23
18498	826	2021-08-12	2021-09-12
18499	867	2019-08-31	2019-09-30
18500	19	2020-08-06	2020-09-06
18501	444	2019-05-25	2019-06-25
18502	513	2019-06-07	2019-07-07
18503	34	2019-06-03	2019-07-03
18504	47	2021-09-29	2021-10-29
18506	466	2019-09-27	2019-10-27
18507	331	2020-09-26	2020-10-26
18508	257	2020-05-15	2020-06-15
18509	167	2018-08-19	2018-09-19
18510	592	2020-07-08	2020-08-08
18511	518	2019-09-09	2019-10-09
18512	362	2021-07-06	2021-08-06
18513	97	2019-07-31	2019-08-31
18515	396	2019-05-15	2019-06-15
18516	705	2019-08-09	2019-09-09
18517	192	2021-08-19	2021-09-19
18518	187	2020-07-20	2020-08-20
18519	241	2021-05-02	2021-06-02
18520	622	2020-09-09	2020-10-09
18521	64	2020-08-22	2020-09-22
18522	92	2021-08-04	2021-09-04
18523	713	2021-05-16	2021-06-16
18525	106	2019-09-05	2019-10-05
18526	280	2018-07-11	2018-08-11
18527	551	2021-07-11	2021-08-11
18528	249	2020-05-15	2020-06-15
18529	91	2021-05-26	2021-06-26
18530	24	2020-07-17	2020-08-17
18531	719	2019-09-19	2019-10-19
18532	148	2020-09-01	2020-10-01
18534	510	2019-07-11	2019-08-11
18535	472	2019-07-23	2019-08-23
18537	41	2021-09-07	2021-10-07
18538	425	2020-05-17	2020-06-17
18539	161	2021-06-23	2021-07-23
18540	774	2018-07-05	2018-08-05
18541	12	2020-05-27	2020-06-27
18542	708	2020-06-18	2020-07-18
18543	813	2021-06-21	2021-07-21
18544	377	2018-05-13	2018-06-13
18545	435	2021-06-29	2021-07-29
18546	476	2019-05-13	2019-06-13
18547	158	2019-05-27	2019-06-27
18548	287	2020-07-23	2020-08-23
18549	325	2019-05-10	2019-06-10
18550	900	2021-08-27	2021-09-27
18551	511	2018-08-07	2018-09-07
18553	528	2019-05-14	2019-06-14
18554	799	2018-08-02	2018-09-02
18555	89	2021-07-16	2021-08-16
18556	766	2020-09-14	2020-10-14
18558	89	2021-09-16	2021-10-16
18559	845	2019-07-11	2019-08-11
18561	487	2021-09-17	2021-10-17
18562	567	2019-07-24	2019-08-24
18563	122	2020-09-13	2020-10-13
18564	473	2019-05-01	2019-06-01
18565	554	2020-07-21	2020-08-21
18567	21	2018-08-31	2018-09-30
18568	189	2020-05-15	2020-06-15
18570	19	2021-05-06	2021-06-06
18571	543	2018-08-22	2018-09-22
18572	890	2021-06-29	2021-07-29
18573	173	2021-06-30	2021-07-31
18574	53	2018-08-17	2018-09-17
18575	720	2021-07-27	2021-08-27
18576	120	2020-05-02	2020-06-02
18577	393	2018-04-30	2018-05-31
18578	845	2019-09-11	2019-10-11
18579	215	2021-09-10	2021-10-10
18580	885	2019-05-22	2019-06-22
18581	439	2020-09-01	2020-10-01
18582	514	2021-05-04	2021-06-04
18583	28	2019-06-24	2019-07-24
18585	543	2019-05-22	2019-06-22
18586	148	2021-05-01	2021-06-01
18587	250	2019-05-02	2019-06-02
18588	270	2018-05-28	2018-06-28
18589	122	2021-05-13	2021-06-13
18590	778	2020-06-02	2020-07-02
18591	501	2020-06-07	2020-07-07
18592	480	2018-06-03	2018-07-03
18593	115	2020-07-08	2020-08-08
18594	44	2018-08-16	2018-09-16
18595	225	2019-05-18	2019-06-18
18596	13	2019-05-25	2019-06-25
18597	497	2021-05-20	2021-06-20
18598	475	2018-08-09	2018-09-09
18599	579	2021-05-18	2021-06-18
18600	763	2019-08-16	2019-09-16
18601	771	2018-05-25	2018-06-25
18602	156	2018-06-28	2018-07-28
18603	809	2020-08-13	2020-09-13
18605	169	2020-05-24	2020-06-24
18606	419	2019-04-30	2019-05-31
18608	679	2021-05-18	2021-06-18
18609	561	2018-08-10	2018-09-10
18610	271	2019-08-17	2019-09-17
18611	672	2020-08-09	2020-09-09
18612	679	2021-07-18	2021-08-18
18613	820	2018-07-30	2018-08-30
18614	58	2019-04-30	2019-05-31
18615	253	2021-06-25	2021-07-25
18616	245	2019-05-13	2019-06-13
18617	409	2018-05-23	2018-06-23
18618	263	2020-06-12	2020-07-12
18619	616	2020-07-31	2020-08-31
18620	540	2020-07-25	2020-08-25
18621	319	2018-08-24	2018-09-24
18622	471	2018-07-16	2018-08-16
18623	132	2019-09-19	2019-10-19
18625	432	2020-05-03	2020-06-03
18626	636	2019-05-06	2019-06-06
18627	580	2019-07-31	2019-08-31
18628	409	2018-07-23	2018-08-23
18631	872	2020-06-19	2020-07-19
18632	466	2020-05-27	2020-06-27
18633	848	2019-08-10	2019-09-10
18634	262	2021-09-03	2021-10-03
18636	15	2018-09-18	2018-10-18
18637	607	2019-09-21	2019-10-21
18639	337	2018-07-17	2018-08-17
18640	268	2021-05-03	2021-06-03
18641	845	2020-05-11	2020-06-11
18642	271	2020-05-17	2020-06-17
18643	864	2021-07-01	2021-08-01
18644	249	2020-07-15	2020-08-15
18645	735	2019-05-04	2019-06-04
18646	733	2020-07-15	2020-08-15
18647	577	2018-07-15	2018-08-15
18648	837	2018-09-18	2018-10-18
18649	821	2018-08-20	2018-09-20
18650	867	2020-05-30	2020-06-30
18651	478	2018-08-04	2018-09-04
18652	163	2021-08-13	2021-09-13
18653	645	2021-05-26	2021-06-26
18654	403	2018-07-31	2018-08-31
18655	48	2018-05-08	2018-06-08
18656	406	2021-07-14	2021-08-14
18657	218	2021-05-09	2021-06-09
18658	767	2020-07-29	2020-08-29
18659	702	2019-07-07	2019-08-07
18660	249	2020-09-15	2020-10-15
18661	486	2018-09-10	2018-10-10
18663	74	2019-06-16	2019-07-16
18665	211	2020-06-21	2020-07-21
18666	625	2020-07-08	2020-08-08
18667	805	2020-09-06	2020-10-06
18668	198	2018-05-29	2018-06-29
18669	112	2020-07-01	2020-08-01
18671	371	2020-09-09	2020-10-09
18672	544	2018-08-25	2018-09-25
18673	595	2018-07-17	2018-08-17
18674	115	2020-09-08	2020-10-08
18675	87	2021-09-08	2021-10-08
18676	562	2019-08-15	2019-09-15
18677	17	2018-05-09	2018-06-09
18678	68	2019-05-25	2019-06-25
18679	428	2021-09-25	2021-10-25
18680	543	2019-07-22	2019-08-22
18681	564	2019-09-03	2019-10-03
18682	607	2020-05-21	2020-06-21
18683	520	2019-08-19	2019-09-19
18684	156	2018-08-28	2018-09-28
18685	379	2020-05-07	2020-06-07
18686	143	2020-05-15	2020-06-15
18687	164	2020-07-22	2020-08-22
18688	16	2018-06-07	2018-07-07
18689	599	2020-07-26	2020-08-26
18690	283	2019-05-21	2019-06-21
18691	898	2021-09-26	2021-10-26
18692	263	2020-08-12	2020-09-12
18694	399	2021-08-28	2021-09-28
18695	843	2021-06-02	2021-07-02
18696	442	2018-08-26	2018-09-26
18698	768	2019-08-08	2019-09-08
18699	379	2020-07-07	2020-08-07
18700	22	2019-07-09	2019-08-09
18701	216	2018-07-27	2018-08-27
18702	230	2018-08-14	2018-09-14
18703	256	2021-07-11	2021-08-11
18704	879	2019-08-06	2019-09-06
18705	732	2020-05-14	2020-06-14
18706	821	2019-05-20	2019-06-20
18707	504	2020-08-17	2020-09-17
18708	650	2020-07-20	2020-08-20
18709	508	2018-08-15	2018-09-15
18710	359	2018-07-14	2018-08-14
18711	590	2020-06-23	2020-07-23
18712	464	2018-05-21	2018-06-21
18713	267	2020-09-30	2020-10-30
18714	792	2021-08-12	2021-09-12
18717	292	2018-06-23	2018-07-23
18718	37	2018-09-27	2018-10-27
18719	391	2020-09-23	2020-10-23
18720	95	2019-05-23	2019-06-23
18721	678	2021-05-16	2021-06-16
18723	737	2020-07-28	2020-08-28
18724	807	2021-07-19	2021-08-19
18725	68	2019-07-25	2019-08-25
18726	61	2021-05-07	2021-06-07
18727	289	2020-06-26	2020-07-26
18728	677	2019-06-27	2019-07-27
18729	684	2019-08-01	2019-09-01
18730	818	2020-07-05	2020-08-05
18731	153	2020-08-11	2020-09-11
18732	322	2019-05-22	2019-06-22
18733	124	2020-05-04	2020-06-04
18734	287	2020-09-23	2020-10-23
18735	892	2020-06-24	2020-07-24
18736	74	2019-08-16	2019-09-16
18737	201	2019-05-26	2019-06-26
18738	158	2019-07-27	2019-08-27
18739	705	2020-05-09	2020-06-09
18741	327	2019-05-20	2019-06-20
18742	704	2021-07-17	2021-08-17
18743	647	2021-09-22	2021-10-22
18744	173	2021-08-31	2021-10-01
18745	552	2019-05-23	2019-06-23
18747	346	2021-07-19	2021-08-19
18748	851	2021-05-22	2021-06-22
18749	702	2019-09-07	2019-10-07
18750	20	2018-08-15	2018-09-15
18751	353	2021-07-04	2021-08-04
18753	86	2020-07-26	2020-08-26
18754	298	2019-05-11	2019-06-11
18755	447	2019-07-10	2019-08-10
18756	165	2019-05-20	2019-06-20
18757	369	2021-07-04	2021-08-04
18758	362	2021-09-06	2021-10-06
18760	858	2018-05-12	2018-06-12
18761	486	2019-05-10	2019-06-10
18762	451	2020-05-05	2020-06-05
18764	528	2019-07-14	2019-08-14
18765	506	2021-06-14	2021-07-14
18768	329	2020-05-11	2020-06-11
18769	871	2018-07-08	2018-08-08
18770	846	2018-07-07	2018-08-07
18772	475	2019-05-09	2019-06-09
18773	196	2019-05-01	2019-06-01
18774	20	2019-05-15	2019-06-15
18775	842	2021-05-01	2021-06-01
18776	572	2019-10-01	2019-11-01
18777	421	2021-07-11	2021-08-11
18778	480	2018-08-03	2018-09-03
18779	807	2021-09-19	2021-10-19
18781	232	2021-06-29	2021-07-29
18782	771	2018-07-25	2018-08-25
18783	475	2019-07-09	2019-08-09
18784	33	2020-07-26	2020-08-26
18785	529	2021-05-12	2021-06-12
18787	386	2020-07-12	2020-08-12
18789	576	2019-09-26	2019-10-26
18790	53	2019-05-17	2019-06-17
18791	717	2020-05-22	2020-06-22
18792	104	2019-08-16	2019-09-16
18793	11	2020-05-06	2020-06-06
18794	871	2018-09-08	2018-10-08
18795	465	2021-08-27	2021-09-27
18796	287	2021-05-23	2021-06-23
18797	42	2020-09-27	2020-10-27
18798	33	2020-09-26	2020-10-26
18799	708	2020-08-18	2020-09-18
18801	388	2021-08-07	2021-09-07
18802	219	2018-06-29	2018-07-29
18803	504	2021-05-17	2021-06-17
18805	379	2020-09-07	2020-10-07
18807	117	2021-05-02	2021-06-02
18808	621	2021-08-12	2021-09-12
18809	153	2021-05-11	2021-06-11
18810	242	2019-08-20	2019-09-20
18811	454	2019-07-20	2019-08-20
18813	359	2018-09-14	2018-10-14
18814	767	2020-09-29	2020-10-29
18815	653	2018-07-10	2018-08-10
18816	880	2020-05-07	2020-06-07
18818	392	2018-06-04	2018-07-04
18819	326	2019-05-16	2019-06-16
18820	845	2020-07-11	2020-08-11
18821	73	2020-09-17	2020-10-17
18822	16	2018-08-07	2018-09-07
18823	239	2020-07-27	2020-08-27
18824	422	2018-08-01	2018-09-01
18825	514	2021-07-04	2021-08-04
18826	458	2020-09-13	2020-10-13
18827	387	2021-05-01	2021-06-01
18828	376	2020-10-01	2020-11-01
18829	863	2021-06-22	2021-07-22
18830	383	2019-05-18	2019-06-18
18831	834	2019-05-28	2019-06-28
18832	353	2021-09-04	2021-10-04
18833	195	2018-09-29	2018-10-29
18834	295	2018-08-14	2018-09-14
18835	414	2021-05-18	2021-06-18
18836	599	2020-09-26	2020-10-26
18837	72	2020-05-18	2020-06-18
18838	477	2020-07-24	2020-08-24
18839	76	2021-08-16	2021-09-16
18840	29	2020-06-02	2020-07-02
18841	893	2020-08-13	2020-09-13
18842	638	2020-07-02	2020-08-02
18843	380	2021-05-16	2021-06-16
18844	60	2020-05-03	2020-06-03
18845	553	2018-06-01	2018-07-01
18846	673	2021-05-09	2021-06-09
18847	476	2019-07-13	2019-08-13
18848	359	2019-05-14	2019-06-14
18850	235	2019-06-09	2019-07-09
18851	519	2019-07-06	2019-08-06
18852	707	2020-08-07	2020-09-07
18853	455	2019-09-04	2019-10-04
18856	268	2021-07-03	2021-08-03
18857	363	2021-07-12	2021-08-12
18858	501	2020-08-07	2020-09-07
18859	865	2020-09-16	2020-10-16
18860	692	2021-05-12	2021-06-12
18861	501	2021-05-07	2021-06-07
18862	635	2019-06-19	2019-07-19
18863	18	2021-05-09	2021-06-09
18864	817	2019-05-29	2019-06-29
18865	606	2020-08-14	2020-09-14
18866	617	2020-06-15	2020-07-15
18867	241	2021-07-02	2021-08-02
18868	731	2021-05-21	2021-06-21
18869	398	2018-09-28	2018-10-28
18870	128	2021-08-17	2021-09-17
18871	312	2019-07-09	2019-08-09
18872	853	2020-07-17	2020-08-17
18873	670	2021-08-06	2021-09-06
18874	463	2018-07-07	2018-08-07
18875	402	2019-05-19	2019-06-19
18876	150	2021-09-08	2021-10-08
18877	639	2021-07-23	2021-08-23
18878	857	2018-07-08	2018-08-08
18879	466	2020-07-27	2020-08-27
18880	831	2020-06-05	2020-07-05
18881	71	2018-10-01	2018-11-01
18882	453	2021-06-15	2021-07-15
18883	306	2020-06-27	2020-07-27
18884	412	2021-05-12	2021-06-12
18885	696	2019-06-17	2019-07-17
18886	663	2020-07-26	2020-08-26
18887	813	2021-08-21	2021-09-21
18888	664	2019-05-29	2019-06-29
18889	350	2021-06-16	2021-07-16
18891	646	2021-06-02	2021-07-02
18892	24	2020-09-17	2020-10-17
18893	332	2019-05-11	2019-06-11
18894	95	2019-07-23	2019-08-23
18895	126	2018-08-05	2018-09-05
18896	599	2021-05-25	2021-06-25
18898	685	2021-08-26	2021-09-26
18899	565	2021-07-09	2021-08-09
18900	791	2021-05-13	2021-06-13
18901	11	2020-07-06	2020-08-06
18902	868	2021-08-06	2021-09-06
18903	130	2020-07-07	2020-08-07
18904	134	2021-09-25	2021-10-25
18905	350	2021-08-16	2021-09-16
18906	515	2021-09-14	2021-10-14
18907	179	2020-07-28	2020-08-28
18908	309	2021-07-12	2021-08-12
18909	455	2020-05-04	2020-06-04
18910	373	2018-08-04	2018-09-04
18911	190	2019-07-17	2019-08-17
18912	521	2018-06-09	2018-07-09
18913	49	2019-08-17	2019-09-17
18914	384	2021-06-09	2021-07-09
18915	535	2019-06-17	2019-07-17
18916	728	2020-06-25	2020-07-25
18917	613	2020-06-24	2020-07-24
18919	650	2020-09-20	2020-10-20
18920	785	2018-07-17	2018-08-17
18921	849	2018-09-26	2018-10-26
18922	513	2019-08-07	2019-09-07
18923	562	2020-05-15	2020-06-15
18924	697	2021-08-08	2021-09-08
18925	12	2020-07-27	2020-08-27
18926	198	2018-07-29	2018-08-29
18927	750	2018-04-30	2018-05-31
18929	51	2018-08-07	2018-09-07
18930	36	2018-07-17	2018-08-17
18931	460	2018-08-31	2018-09-30
18933	469	2021-06-17	2021-07-17
18934	168	2019-07-16	2019-08-16
18935	713	2021-07-16	2021-08-16
18936	413	2020-05-10	2020-06-10
18937	301	2018-07-12	2018-08-12
18938	504	2021-07-17	2021-08-17
18939	707	2021-05-07	2021-06-07
18940	442	2019-05-26	2019-06-26
18941	501	2021-07-07	2021-08-07
18942	250	2019-07-02	2019-08-02
18943	584	2020-08-26	2020-09-26
18944	590	2020-08-23	2020-09-23
18945	341	2021-08-15	2021-09-15
18947	608	2020-08-19	2020-09-19
18948	95	2019-09-23	2019-10-23
18949	624	2021-06-27	2021-07-27
18951	110	2021-09-01	2021-10-01
18952	557	2020-07-31	2020-08-31
18953	159	2021-06-13	2021-07-13
18954	667	2019-06-19	2019-07-19
18955	378	2019-09-22	2019-10-22
18956	827	2019-07-12	2019-08-12
18957	318	2018-08-26	2018-09-26
18958	458	2021-05-13	2021-06-13
18961	796	2021-07-23	2021-08-23
18962	36	2018-09-17	2018-10-17
18963	478	2019-05-04	2019-06-04
18964	95	2020-05-23	2020-06-23
18965	494	2019-07-04	2019-08-04
18966	860	2018-06-25	2018-07-25
18967	427	2020-07-16	2020-08-16
18969	783	2021-05-06	2021-06-06
18970	758	2020-09-05	2020-10-05
18971	576	2020-05-26	2020-06-26
18972	406	2021-09-14	2021-10-14
18973	117	2021-07-02	2021-08-02
18974	507	2018-09-27	2018-10-27
18975	739	2018-06-25	2018-07-25
18976	297	2019-05-29	2019-06-29
18977	654	2021-07-08	2021-08-08
18978	809	2021-05-13	2021-06-13
18979	801	2018-07-10	2018-08-10
18980	38	2020-08-01	2020-09-01
18981	607	2020-07-21	2020-08-21
18983	704	2021-09-17	2021-10-17
18984	231	2021-07-19	2021-08-19
18985	420	2018-05-01	2018-06-01
18988	381	2020-05-02	2020-06-02
18989	834	2019-07-28	2019-08-28
18990	870	2020-05-03	2020-06-03
18991	361	2020-08-15	2020-09-15
18992	564	2020-05-03	2020-06-03
18993	575	2019-05-11	2019-06-11
18994	534	2019-05-30	2019-06-30
18995	302	2020-08-13	2020-09-13
18996	333	2020-07-13	2020-08-13
18997	116	2019-05-16	2019-06-16
18998	203	2018-09-17	2018-10-17
18999	165	2019-07-20	2019-08-20
19000	773	2018-06-15	2018-07-15
19001	74	2020-05-16	2020-06-16
19002	459	2020-07-25	2020-08-25
19003	715	2021-06-24	2021-07-24
19005	345	2018-09-06	2018-10-06
19006	172	2020-06-27	2020-07-27
19007	35	2018-08-01	2018-09-01
19008	446	2020-07-22	2020-08-22
19009	105	2021-08-04	2021-09-04
19010	683	2021-06-29	2021-07-29
19011	461	2019-05-26	2019-06-26
19012	49	2020-05-17	2020-06-17
19013	18	2021-07-09	2021-08-09
19014	54	2021-06-10	2021-07-10
19015	61	2021-07-07	2021-08-07
19016	385	2019-05-12	2019-06-12
19017	551	2021-09-11	2021-10-11
19018	650	2021-05-20	2021-06-20
19019	466	2020-09-27	2020-10-27
19020	479	2020-09-05	2020-10-05
19021	73	2021-05-17	2021-06-17
19022	618	2020-08-31	2020-09-30
19023	284	2020-05-14	2020-06-14
19025	602	2021-06-19	2021-07-19
19026	32	2020-05-01	2020-06-01
19027	602	2021-08-19	2021-09-19
19028	513	2020-05-07	2020-06-07
19029	586	2020-08-08	2020-09-08
19030	691	2019-06-28	2019-07-28
19031	518	2020-05-09	2020-06-09
19032	319	2019-05-24	2019-06-24
19033	648	2020-05-25	2020-06-25
19034	876	2019-06-30	2019-07-31
19035	232	2021-08-29	2021-09-29
19036	333	2020-09-13	2020-10-13
19037	810	2019-05-26	2019-06-26
19038	674	2018-05-24	2018-06-24
19039	788	2020-06-28	2020-07-28
19040	148	2021-07-01	2021-08-01
19041	501	2021-09-07	2021-10-07
19042	762	2019-07-09	2019-08-09
19043	466	2021-05-26	2021-06-26
19044	876	2019-08-31	2019-10-01
19045	279	2019-05-03	2019-06-03
19046	278	2019-09-23	2019-10-23
19048	424	2019-09-11	2019-10-11
19051	887	2019-08-25	2019-09-25
19052	434	2020-05-25	2020-06-25
19053	300	2019-05-06	2019-06-06
19054	197	2020-07-29	2020-08-29
19055	275	2019-09-25	2019-10-25
19056	517	2021-08-20	2021-09-20
19057	610	2019-05-26	2019-06-26
19058	94	2019-09-27	2019-10-27
19060	879	2020-05-06	2020-06-06
19061	887	2020-05-25	2020-06-25
19062	607	2020-09-21	2020-10-21
19063	178	2021-06-01	2021-07-01
19064	520	2020-05-19	2020-06-19
19065	857	2018-09-08	2018-10-08
19067	303	2019-05-27	2019-06-27
19068	156	2019-05-28	2019-06-28
19069	333	2021-05-13	2021-06-13
19070	36	2019-05-17	2019-06-17
19071	391	2021-05-23	2021-06-23
19072	61	2021-09-07	2021-10-07
19073	420	2018-07-01	2018-08-01
19074	539	2021-06-16	2021-07-16
19075	312	2019-09-09	2019-10-09
19076	294	2020-08-15	2020-09-15
19077	669	2019-09-26	2019-10-26
19078	549	2021-05-25	2021-06-25
19079	439	2021-05-01	2021-06-01
19080	722	2019-07-09	2019-08-09
19082	366	2019-05-23	2019-06-23
19083	118	2020-05-03	2020-06-03
19084	317	2019-05-04	2019-06-04
19086	769	2020-09-06	2020-10-06
19087	614	2019-08-22	2019-09-22
19088	258	2020-05-06	2020-06-06
19089	194	2019-07-02	2019-08-02
19090	224	2018-08-28	2018-09-28
19091	874	2018-05-08	2018-06-08
19092	785	2018-09-17	2018-10-17
19093	629	2018-06-26	2018-07-26
19094	750	2018-07-01	2018-08-01
19095	838	2019-09-23	2019-10-23
19096	584	2021-05-26	2021-06-26
19097	374	2021-06-21	2021-07-21
19098	407	2019-06-04	2019-07-04
19099	779	2018-05-27	2018-06-27
19100	37	2019-05-27	2019-06-27
19101	766	2021-05-14	2021-06-14
19102	186	2018-05-29	2018-06-29
19103	95	2020-07-23	2020-08-23
19104	707	2021-07-07	2021-08-07
19105	260	2018-09-02	2018-10-02
19106	888	2020-06-20	2020-07-20
19108	114	2021-07-17	2021-08-17
19109	101	2020-05-20	2020-06-20
19110	750	2018-09-01	2018-10-01
19111	217	2019-09-21	2019-10-21
19112	82	2021-07-04	2021-08-04
19113	195	2019-05-28	2019-06-28
19114	143	2020-07-15	2020-08-15
19116	523	2020-09-12	2020-10-12
19117	780	2018-05-22	2018-06-22
19119	450	2019-09-16	2019-10-16
19120	606	2021-05-14	2021-06-14
19121	351	2021-06-19	2021-07-19
19122	550	2018-08-29	2018-09-29
19123	746	2018-09-03	2018-10-03
19124	626	2021-08-13	2021-09-13
19125	174	2018-09-04	2018-10-04
19126	239	2020-09-27	2020-10-27
19127	637	2020-07-11	2020-08-11
19128	300	2019-07-06	2019-08-06
19129	466	2021-07-26	2021-08-26
19130	23	2021-05-14	2021-06-14
19131	509	2021-05-29	2021-06-29
19132	593	2018-07-16	2018-08-16
19133	48	2018-07-08	2018-08-08
19134	296	2020-07-16	2020-08-16
19135	590	2021-05-23	2021-06-23
19136	176	2019-05-02	2019-06-02
19137	300	2019-09-06	2019-10-06
19138	175	2018-05-17	2018-06-17
19139	737	2020-09-28	2020-10-28
19140	78	2021-05-24	2021-06-24
19141	290	2020-07-05	2020-08-05
19142	580	2019-10-01	2019-11-01
19143	394	2020-07-12	2020-08-12
19144	585	2019-08-23	2019-09-23
19145	672	2021-05-09	2021-06-09
19146	50	2019-05-22	2019-06-22
19147	131	2021-06-11	2021-07-11
19149	829	2021-09-14	2021-10-14
19150	372	2019-09-04	2019-10-04
19152	534	2019-07-30	2019-08-30
19153	524	2019-09-02	2019-10-02
19154	320	2021-09-23	2021-10-23
19155	663	2020-09-26	2020-10-26
19156	852	2018-06-23	2018-07-23
19157	305	2019-06-27	2019-07-27
19158	492	2018-09-26	2018-10-26
19159	284	2020-07-14	2020-08-14
19160	364	2021-08-23	2021-09-23
19161	207	2018-09-28	2018-10-28
19162	760	2020-07-17	2020-08-17
19163	403	2018-10-01	2018-11-01
19164	694	2020-05-26	2020-06-26
19165	881	2018-08-15	2018-09-15
19166	631	2018-08-10	2018-09-10
19167	622	2021-05-09	2021-06-09
19169	477	2020-09-24	2020-10-24
19170	55	2019-05-25	2019-06-25
19171	511	2019-05-07	2019-06-07
19172	476	2019-09-13	2019-10-13
19173	329	2020-07-11	2020-08-11
19175	863	2021-08-22	2021-09-22
19176	481	2018-07-25	2018-08-25
19177	311	2021-09-01	2021-10-01
19178	159	2021-08-13	2021-09-13
19179	478	2019-07-04	2019-08-04
19180	770	2019-05-27	2019-06-27
19181	217	2020-05-21	2020-06-21
19182	579	2021-07-18	2021-08-18
19183	191	2019-07-03	2019-08-03
19184	500	2020-07-13	2020-08-13
19185	716	2019-05-17	2019-06-17
19186	606	2021-07-14	2021-08-14
19187	349	2019-08-23	2019-09-23
19188	862	2019-09-27	2019-10-27
19189	676	2021-05-03	2021-06-03
19190	355	2021-06-10	2021-07-10
19191	151	2020-09-25	2020-10-25
19192	489	2020-07-10	2020-08-10
19193	177	2020-04-30	2020-05-31
19195	557	2020-10-01	2020-11-01
19196	554	2020-09-21	2020-10-21
19197	278	2020-05-23	2020-06-23
19199	277	2020-06-28	2020-07-28
19200	107	2021-07-23	2021-08-23
19201	503	2019-08-04	2019-09-04
19202	130	2020-09-07	2020-10-07
19204	228	2020-08-25	2020-09-25
19205	229	2020-06-29	2020-07-29
19206	601	2021-08-20	2021-09-20
19207	607	2021-05-21	2021-06-21
19208	545	2020-05-26	2020-06-26
19209	625	2020-09-08	2020-10-08
19210	276	2021-09-07	2021-10-07
19211	52	2021-09-08	2021-10-08
19212	883	2019-05-27	2019-06-27
19213	184	2019-06-16	2019-07-16
19214	451	2020-07-05	2020-08-05
19215	405	2021-07-23	2021-08-23
19216	638	2020-09-02	2020-10-02
19218	437	2021-05-27	2021-06-27
19219	831	2020-08-05	2020-09-05
19220	745	2019-05-05	2019-06-05
19221	816	2020-06-01	2020-07-01
19223	833	2019-05-24	2019-06-24
19224	144	2020-06-18	2020-07-18
19225	452	2019-06-16	2019-07-16
19226	834	2019-09-28	2019-10-28
19227	45	2021-07-08	2021-08-08
19228	895	2019-09-01	2019-10-01
19229	503	2020-05-04	2020-06-04
19231	470	2021-07-08	2021-08-08
19232	624	2021-08-27	2021-09-27
19233	653	2018-09-10	2018-10-10
19234	526	2019-07-21	2019-08-21
19235	238	2020-09-17	2020-10-17
19236	526	2019-09-21	2019-10-21
19237	646	2021-08-02	2021-09-02
19238	223	2018-05-08	2018-06-08
19239	457	2018-08-19	2018-09-19
19240	477	2021-05-24	2021-06-24
19241	869	2020-09-28	2020-10-28
19242	363	2021-09-12	2021-10-12
19243	860	2018-08-25	2018-09-25
19244	613	2020-08-24	2020-09-24
19245	53	2019-07-17	2019-08-17
19246	519	2019-09-06	2019-10-06
19247	667	2019-08-19	2019-09-19
19248	141	2021-07-26	2021-08-26
19249	451	2020-09-05	2020-10-05
19250	694	2020-07-26	2020-08-26
19251	599	2021-07-25	2021-08-25
19252	577	2018-09-15	2018-10-15
19253	665	2020-05-18	2020-06-18
19254	415	2018-07-26	2018-08-26
19255	234	2020-09-28	2020-10-28
19256	124	2020-07-04	2020-08-04
19257	201	2019-07-26	2019-08-26
19258	391	2021-07-23	2021-08-23
19260	819	2020-06-09	2020-07-09
19261	618	2021-05-30	2021-06-30
19262	613	2021-05-24	2021-06-24
19263	849	2019-05-26	2019-06-26
19264	179	2020-09-28	2020-10-28
19265	643	2021-08-05	2021-09-05
19266	310	2019-05-18	2019-06-18
19267	342	2020-06-09	2020-07-09
19269	17	2018-07-09	2018-08-09
19270	619	2018-07-28	2018-08-28
19271	67	2020-06-06	2020-07-06
19272	731	2021-07-21	2021-08-21
19273	877	2019-05-14	2019-06-14
19274	147	2021-05-22	2021-06-22
19275	709	2020-08-07	2020-09-07
19276	575	2019-07-11	2019-08-11
19277	250	2019-09-02	2019-10-02
19278	480	2019-05-03	2019-06-03
19280	252	2018-09-07	2018-10-07
19281	357	2020-06-06	2020-07-06
19282	832	2019-05-21	2019-06-21
19283	604	2018-06-10	2018-07-10
19284	753	2018-07-12	2018-08-12
19285	67	2020-08-06	2020-09-06
19286	337	2018-09-17	2018-10-17
19287	96	2019-09-24	2019-10-24
19288	709	2021-05-07	2021-06-07
19292	356	2020-05-28	2020-06-28
19293	155	2018-08-17	2018-09-17
19294	160	2020-07-07	2020-08-07
19295	155	2019-05-17	2019-06-17
19296	445	2018-07-13	2018-08-13
19297	200	2018-09-21	2018-10-21
19298	892	2020-08-24	2020-09-24
19299	349	2020-05-23	2020-06-23
19300	729	2021-09-22	2021-10-22
19301	335	2020-05-08	2020-06-08
19303	766	2021-07-14	2021-08-14
19304	811	2021-05-31	2021-06-30
19305	156	2019-07-28	2019-08-28
19306	405	2021-09-23	2021-10-23
19307	83	2020-08-10	2020-09-10
19309	115	2021-05-08	2021-06-08
19310	836	2018-06-01	2018-07-01
19311	358	2018-06-14	2018-07-14
19312	790	2020-08-03	2020-09-03
19313	267	2021-05-29	2021-06-29
19314	454	2019-09-20	2019-10-20
19315	876	2020-05-01	2020-06-01
19316	745	2019-07-05	2019-08-05
19317	564	2020-07-03	2020-08-03
19318	289	2020-08-26	2020-09-26
19319	242	2020-05-20	2020-06-20
19321	650	2021-07-20	2021-08-20
19323	689	2018-09-23	2018-10-23
19324	870	2020-07-03	2020-08-03
19325	692	2021-07-12	2021-08-12
19326	108	2021-09-23	2021-10-23
19327	587	2020-08-07	2020-09-07
19330	659	2021-05-08	2021-06-08
19331	164	2020-09-22	2020-10-22
19334	476	2020-05-13	2020-06-13
19335	19	2021-07-06	2021-08-06
19337	894	2018-09-29	2018-10-29
19339	330	2021-05-07	2021-06-07
19342	687	2019-08-13	2019-09-13
19343	101	2020-07-20	2020-08-20
19344	378	2020-05-22	2020-06-22
19345	691	2019-08-28	2019-09-28
19346	873	2020-05-10	2020-06-10
19347	547	2020-05-07	2020-06-07
19348	606	2021-09-14	2021-10-14
19349	599	2021-09-25	2021-10-25
19350	407	2019-08-04	2019-09-04
19351	209	2021-06-18	2021-07-18
19352	799	2019-05-02	2019-06-02
19353	224	2019-05-28	2019-06-28
19356	694	2020-09-26	2020-10-26
19357	480	2019-07-03	2019-08-03
19359	732	2020-07-14	2020-08-14
19360	749	2020-07-24	2020-08-24
19361	227	2021-07-21	2021-08-21
19363	529	2021-07-12	2021-08-12
19364	733	2020-09-15	2020-10-15
19365	113	2019-08-20	2019-09-20
19366	576	2020-07-26	2020-08-26
19367	541	2018-06-01	2018-07-01
19369	788	2020-08-28	2020-09-28
19370	124	2020-09-04	2020-10-04
19371	310	2019-07-18	2019-08-18
19372	760	2020-09-17	2020-10-17
19373	310	2019-09-18	2019-10-18
19374	544	2019-05-25	2019-06-25
19375	583	2021-09-25	2021-10-25
19376	762	2019-09-09	2019-10-09
19379	239	2021-05-26	2021-06-26
19380	53	2019-09-17	2019-10-17
19381	628	2019-05-01	2019-06-01
19382	304	2021-05-29	2021-06-29
19383	109	2020-08-23	2020-09-23
19384	88	2019-05-24	2019-06-24
19387	216	2018-09-27	2018-10-27
19388	822	2019-06-28	2019-07-28
19389	885	2019-07-22	2019-08-22
19391	37	2019-07-27	2019-08-27
19392	116	2019-07-16	2019-08-16
19393	529	2021-09-12	2021-10-12
19394	222	2019-05-13	2019-06-13
19396	209	2021-08-18	2021-09-18
19398	843	2021-08-02	2021-09-02
19399	219	2018-08-29	2018-09-29
19400	368	2019-08-17	2019-09-17
19401	577	2019-05-15	2019-06-15
19402	899	2018-06-29	2018-07-29
19403	431	2020-05-24	2020-06-24
19404	789	2019-05-18	2019-06-18
19405	266	2019-05-08	2019-06-08
19406	728	2020-08-25	2020-09-25
19407	286	2020-06-08	2020-07-08
19408	79	2019-06-02	2019-07-02
19410	573	2021-09-08	2021-10-08
19411	33	2021-05-25	2021-06-25
19412	690	2018-07-04	2018-08-04
19413	382	2020-06-04	2020-07-04
19414	837	2019-05-18	2019-06-18
19415	506	2021-08-14	2021-09-14
19416	59	2018-07-06	2018-08-06
19417	43	2018-06-23	2018-07-23
19418	370	2019-05-12	2019-06-12
19419	746	2019-05-03	2019-06-03
19420	528	2019-09-14	2019-10-14
19421	662	2020-09-12	2020-10-12
19422	138	2020-08-26	2020-09-26
19423	252	2019-05-07	2019-06-07
19424	355	2021-08-10	2021-09-10
19425	875	2021-06-04	2021-07-04
19426	779	2018-07-27	2018-08-27
19428	234	2021-05-27	2021-06-27
19429	510	2019-09-11	2019-10-11
19430	588	2020-07-05	2020-08-05
19431	145	2020-05-28	2020-06-28
19432	94	2020-05-27	2020-06-27
19434	590	2021-07-23	2021-08-23
19435	160	2020-09-07	2020-10-07
19436	336	2018-09-01	2018-10-01
19437	740	2018-05-22	2018-06-22
19438	558	2021-05-15	2021-06-15
19439	844	2020-05-17	2020-06-17
19440	389	2019-09-12	2019-10-12
19441	677	2019-08-27	2019-09-27
19442	172	2020-08-27	2020-09-27
19443	103	2021-06-07	2021-07-07
19444	764	2020-05-18	2020-06-18
19445	449	2021-05-31	2021-06-30
19446	811	2021-07-30	2021-08-30
19447	53	2020-05-17	2020-06-17
19448	842	2021-07-01	2021-08-01
19449	630	2019-06-19	2019-07-19
19451	482	2019-05-29	2019-06-29
19452	509	2021-07-29	2021-08-29
19453	379	2021-05-07	2021-06-07
19454	73	2021-07-17	2021-08-17
19455	782	2018-09-16	2018-10-16
19456	666	2019-05-09	2019-06-09
19457	492	2019-05-26	2019-06-26
19458	351	2021-08-19	2021-09-19
19459	391	2021-09-23	2021-10-23
19460	427	2020-09-16	2020-10-16
19461	834	2020-05-27	2020-06-27
19462	663	2021-05-25	2021-06-25
19463	543	2019-09-22	2019-10-22
19464	891	2019-05-15	2019-06-15
19465	639	2021-09-23	2021-10-23
19466	542	2021-06-01	2021-07-01
19467	393	2018-07-01	2018-08-01
19468	188	2021-07-04	2021-08-04
19469	339	2021-07-09	2021-08-09
19470	290	2020-09-05	2020-10-05
19471	170	2019-07-14	2019-08-14
19472	40	2020-07-12	2020-08-12
19475	86	2020-09-26	2020-10-26
19476	896	2018-07-06	2018-08-06
19477	673	2021-07-09	2021-08-09
19478	554	2021-05-21	2021-06-21
19479	715	2021-08-24	2021-09-24
19480	545	2020-07-26	2020-08-26
19481	86	2021-05-25	2021-06-25
19482	810	2019-07-26	2019-08-26
19484	481	2018-09-25	2018-10-25
19485	581	2019-07-02	2019-08-02
19486	585	2020-05-23	2020-06-23
19487	309	2021-09-12	2021-10-12
19489	615	2019-07-24	2019-08-24
19490	272	2020-08-08	2020-09-08
19491	630	2019-08-19	2019-09-19
19492	622	2021-07-09	2021-08-09
19493	477	2021-07-24	2021-08-24
19494	851	2021-07-22	2021-08-22
19496	177	2020-07-01	2020-08-01
19497	265	2019-07-12	2019-08-12
19498	789	2019-07-18	2019-08-18
19500	165	2019-09-20	2019-10-20
19501	28	2019-08-24	2019-09-24
19502	113	2020-05-20	2020-06-20
19503	136	2018-09-20	2018-10-20
19505	214	2021-09-17	2021-10-17
19506	869	2021-05-27	2021-06-27
19507	335	2020-07-08	2020-08-08
19508	207	2019-05-28	2019-06-28
19509	892	2021-05-24	2021-06-24
19510	445	2018-09-13	2018-10-13
19511	27	2018-07-07	2018-08-07
19512	521	2018-08-09	2018-09-09
19513	324	2018-07-12	2018-08-12
19514	441	2021-09-25	2021-10-25
19517	632	2020-08-08	2020-09-08
19518	541	2018-08-01	2018-09-01
19520	809	2021-07-13	2021-08-13
19521	419	2019-07-01	2019-08-01
19522	763	2020-05-16	2020-06-16
19523	299	2021-08-16	2021-09-16
19524	586	2021-05-08	2021-06-08
19525	24	2021-05-17	2021-06-17
19526	402	2019-07-19	2019-08-19
19528	449	2021-07-30	2021-08-30
19529	259	2021-09-17	2021-10-17
19530	326	2019-07-16	2019-08-16
19531	767	2021-05-28	2021-06-28
19532	798	2021-07-21	2021-08-21
19534	400	2020-08-03	2020-09-03
19535	70	2018-06-07	2018-07-07
19537	288	2019-08-16	2019-09-16
19538	404	2020-05-03	2020-06-03
19539	169	2020-07-24	2020-08-24
19540	760	2021-05-17	2021-06-17
19541	188	2021-09-04	2021-10-04
19542	688	2021-06-16	2021-07-16
19544	291	2019-05-13	2019-06-13
19545	547	2020-07-07	2020-08-07
19546	654	2021-09-08	2021-10-08
19547	84	2020-08-15	2020-09-15
19548	695	2019-08-11	2019-09-11
19549	743	2020-08-19	2020-09-19
19550	706	2021-07-24	2021-08-24
19552	230	2019-05-14	2019-06-14
19553	811	2021-09-30	2021-10-30
19554	474	2018-09-23	2018-10-23
19556	90	2019-09-20	2019-10-20
19557	164	2021-05-22	2021-06-22
19558	135	2019-05-20	2019-06-20
19559	899	2018-08-29	2018-09-29
19560	275	2020-05-25	2020-06-25
19561	820	2018-09-30	2018-10-30
19562	576	2020-09-26	2020-10-26
19563	832	2019-07-21	2019-08-21
19564	802	2019-09-01	2019-10-01
19565	521	2019-05-09	2019-06-09
19566	348	2021-06-05	2021-07-05
19567	301	2018-09-12	2018-10-12
19568	392	2018-08-04	2018-09-04
19569	732	2020-09-14	2020-10-14
19570	23	2021-07-14	2021-08-14
19571	222	2019-07-13	2019-08-13
19573	403	2019-04-30	2019-05-31
19575	688	2021-08-16	2021-09-16
19576	577	2019-07-15	2019-08-15
19579	555	2021-08-19	2021-09-19
19580	204	2021-07-07	2021-08-07
19582	240	2019-07-01	2019-08-01
19583	24	2021-07-17	2021-08-17
19584	252	2019-07-07	2019-08-07
19585	564	2020-09-03	2020-10-03
19586	218	2021-07-09	2021-08-09
19587	301	2019-05-12	2019-06-12
19588	227	2021-09-21	2021-10-21
19589	221	2018-08-25	2018-09-25
19590	418	2018-09-10	2018-10-10
19591	681	2021-09-26	2021-10-26
19592	659	2021-07-08	2021-08-08
19593	486	2019-07-10	2019-08-10
19594	233	2019-09-02	2019-10-02
19595	68	2019-09-25	2019-10-25
19596	894	2019-05-28	2019-06-28
19597	734	2019-08-04	2019-09-04
19598	172	2021-05-27	2021-06-27
19599	358	2018-08-14	2018-09-14
19600	589	2020-09-27	2020-10-27
19601	407	2020-05-04	2020-06-04
19602	615	2019-09-24	2019-10-24
19603	348	2021-08-05	2021-09-05
19605	614	2020-05-22	2020-06-22
19606	112	2020-09-01	2020-10-01
19607	272	2021-05-08	2021-06-08
19608	771	2018-09-25	2018-10-25
19609	492	2019-07-26	2019-08-26
19610	839	2019-09-11	2019-10-11
19611	571	2019-07-22	2019-08-22
19612	435	2021-08-29	2021-09-29
19613	60	2020-07-03	2020-08-03
19614	115	2021-07-08	2021-08-08
19615	401	2018-06-27	2018-07-27
19617	629	2018-08-26	2018-09-26
19618	279	2019-07-03	2019-08-03
19619	492	2019-09-26	2019-10-26
19620	662	2021-05-12	2021-06-12
19621	141	2021-09-26	2021-10-26
19622	746	2019-07-03	2019-08-03
19623	314	2018-07-18	2018-08-18
19624	535	2019-08-17	2019-09-17
19625	638	2021-05-02	2021-06-02
19626	241	2021-09-02	2021-10-02
19627	509	2021-09-29	2021-10-29
19628	295	2019-05-14	2019-06-14
19629	419	2019-09-01	2019-10-01
19630	493	2018-09-10	2018-10-10
19631	632	2021-05-08	2021-06-08
19632	373	2019-05-04	2019-06-04
19633	770	2019-07-27	2019-08-27
19634	450	2020-05-16	2020-06-16
19635	56	2018-09-02	2018-10-02
19636	884	2020-05-10	2020-06-10
19637	595	2018-09-17	2018-10-17
19638	850	2020-09-16	2020-10-16
19639	549	2021-07-25	2021-08-25
19640	587	2021-05-07	2021-06-07
19642	107	2021-09-23	2021-10-23
19643	334	2020-08-08	2020-09-08
19644	788	2021-05-28	2021-06-28
19645	356	2020-07-28	2020-08-28
19646	708	2021-05-18	2021-06-18
19647	196	2019-07-01	2019-08-01
19648	50	2019-07-22	2019-08-22
19649	743	2021-05-19	2021-06-19
19650	725	2019-08-27	2019-09-27
19651	378	2020-07-22	2020-08-22
19652	31	2019-09-19	2019-10-19
19653	705	2020-07-09	2020-08-09
19654	464	2018-07-21	2018-08-21
19655	325	2019-07-10	2019-08-10
19656	866	2021-07-22	2021-08-22
19657	152	2021-06-20	2021-07-20
19658	503	2020-07-04	2020-08-04
19659	613	2021-07-24	2021-08-24
19660	873	2020-07-10	2020-08-10
19661	781	2018-07-18	2018-08-18
19662	876	2020-07-01	2020-08-01
19663	728	2021-05-25	2021-06-25
19664	194	2019-09-02	2019-10-02
19665	283	2019-07-21	2019-08-21
19666	667	2020-05-19	2020-06-19
19668	645	2021-07-26	2021-08-26
19669	510	2020-05-11	2020-06-11
19670	116	2019-09-16	2019-10-16
19671	787	2021-05-21	2021-06-21
19672	164	2021-07-22	2021-08-22
19674	189	2020-07-15	2020-08-15
19675	381	2020-07-02	2020-08-02
19676	861	2021-05-15	2021-06-15
19677	95	2020-09-23	2020-10-23
19678	617	2020-08-15	2020-09-15
19679	780	2018-07-22	2018-08-22
19680	669	2020-05-26	2020-06-26
19681	272	2021-07-08	2021-08-08
19682	489	2020-09-10	2020-10-10
19684	68	2020-05-25	2020-06-25
19686	825	2020-07-04	2020-08-04
19687	887	2020-07-25	2020-08-25
19688	271	2020-07-17	2020-08-17
19689	290	2021-05-05	2021-06-05
19690	645	2021-09-26	2021-10-26
19691	864	2021-09-01	2021-10-01
19692	33	2021-07-25	2021-08-25
19693	221	2019-05-25	2019-06-25
19694	164	2021-09-22	2021-10-22
19695	94	2020-07-27	2020-08-27
19696	327	2019-07-20	2019-08-20
19697	366	2019-07-23	2019-08-23
19698	629	2019-05-26	2019-06-26
19699	51	2019-05-07	2019-06-07
19700	795	2021-07-04	2021-08-04
19701	177	2020-09-01	2020-10-01
19702	51	2019-07-07	2019-08-07
19704	699	2020-06-26	2020-07-26
19705	266	2019-07-08	2019-08-08
19706	683	2021-08-29	2021-09-29
19707	374	2021-08-21	2021-09-21
19708	367	2021-05-22	2021-06-22
19709	112	2021-05-01	2021-06-01
19711	272	2021-09-08	2021-10-08
19712	282	2020-08-22	2020-09-22
19713	152	2021-08-20	2021-09-20
19715	287	2021-07-23	2021-08-23
19716	795	2021-09-04	2021-10-04
19718	486	2019-09-10	2019-10-10
19719	595	2019-05-17	2019-06-17
19720	565	2021-09-09	2021-10-09
19723	759	2021-09-22	2021-10-22
19724	489	2021-05-10	2021-06-10
19725	550	2019-05-29	2019-06-29
19726	386	2020-09-12	2020-10-12
19727	842	2021-09-01	2021-10-01
19728	409	2018-09-23	2018-10-23
19729	197	2020-09-29	2020-10-29
19730	409	2019-05-23	2019-06-23
19732	736	2021-06-30	2021-07-31
19733	503	2020-09-04	2020-10-04
19734	717	2020-07-22	2020-08-22
19735	292	2018-08-23	2018-09-23
19736	194	2020-05-02	2020-06-02
19737	218	2021-09-09	2021-10-09
19738	584	2021-07-26	2021-08-26
19739	619	2018-09-28	2018-10-28
19740	116	2020-05-16	2020-06-16
19741	224	2019-07-28	2019-08-28
19742	554	2021-07-21	2021-08-21
19743	360	2018-07-15	2018-08-15
19744	674	2018-07-24	2018-08-24
19745	755	2021-07-28	2021-08-28
19746	716	2019-07-17	2019-08-17
19747	780	2018-09-22	2018-10-22
19748	859	2018-06-15	2018-07-15
19749	894	2019-07-28	2019-08-28
19750	889	2018-05-26	2018-06-26
19751	523	2021-05-12	2021-06-12
19752	875	2021-08-04	2021-09-04
19753	533	2019-06-27	2019-07-27
19754	171	2019-05-04	2019-06-04
19755	55	2019-07-25	2019-08-25
19756	151	2021-05-25	2021-06-25
19757	319	2019-07-24	2019-08-24
19759	574	2021-05-07	2021-06-07
19760	802	2020-05-01	2020-06-01
19761	625	2021-05-08	2021-06-08
19762	825	2020-09-04	2020-10-04
19763	168	2019-09-16	2019-10-16
19764	728	2021-07-25	2021-08-25
19765	651	2018-05-04	2018-06-04
19766	878	2021-07-17	2021-08-17
19767	561	2019-05-10	2019-06-10
19768	609	2020-05-27	2020-06-27
19770	440	2019-07-18	2019-08-18
19771	672	2021-07-09	2021-08-09
19772	790	2021-05-03	2021-06-03
19773	22	2019-09-09	2019-10-09
19774	663	2021-07-25	2021-08-25
19775	651	2018-07-04	2018-08-04
19776	424	2020-05-11	2020-06-11
19777	472	2019-09-23	2019-10-23
19778	333	2021-07-13	2021-08-13
19779	644	2018-05-23	2018-06-23
19780	480	2019-09-03	2019-10-03
19781	257	2020-07-15	2020-08-15
19782	203	2019-05-17	2019-06-17
19783	609	2020-07-27	2020-08-27
19784	798	2021-09-21	2021-10-21
19785	635	2019-08-19	2019-09-19
19786	205	2021-05-03	2021-06-03
19787	118	2020-07-03	2020-08-03
19788	878	2021-09-17	2021-10-17
19789	818	2020-09-05	2020-10-05
19790	838	2020-05-23	2020-06-23
19791	12	2020-09-27	2020-10-27
19792	56	2019-05-02	2019-06-02
19793	74	2020-07-16	2020-08-16
19794	642	2018-05-27	2018-06-27
19795	286	2020-08-08	2020-09-08
19796	27	2018-09-07	2018-10-07
19797	544	2019-07-25	2019-08-25
19798	612	2019-05-11	2019-06-11
19799	294	2021-05-15	2021-06-15
19800	54	2021-08-10	2021-09-10
19801	814	2019-08-23	2019-09-23
19802	230	2019-07-14	2019-08-14
19804	33	2021-09-25	2021-10-25
19805	466	2021-09-26	2021-10-26
19806	219	2019-05-29	2019-06-29
19807	361	2021-05-15	2021-06-15
19808	751	2021-08-11	2021-09-11
19809	297	2019-07-29	2019-08-29
19810	636	2019-07-06	2019-08-06
19811	827	2019-09-12	2019-10-12
19812	286	2021-05-08	2021-06-08
19813	127	2020-08-13	2020-09-13
19814	80	2019-07-23	2019-08-23
19815	482	2019-07-29	2019-08-29
19816	698	2018-08-22	2018-09-22
19817	610	2019-07-26	2019-08-26
19819	789	2019-09-18	2019-10-18
19820	246	2018-05-26	2018-06-26
19821	193	2019-05-27	2019-06-27
19822	321	2021-05-10	2021-06-10
19823	332	2019-07-11	2019-08-11
19824	530	2018-06-21	2018-07-21
19825	409	2019-07-23	2019-08-23
19826	457	2019-05-19	2019-06-19
19827	387	2021-07-01	2021-08-01
19829	51	2019-09-07	2019-10-07
19830	429	2021-09-19	2021-10-19
19831	165	2020-05-20	2020-06-20
19832	50	2019-09-22	2019-10-22
19833	636	2019-09-06	2019-10-06
19834	770	2019-09-27	2019-10-27
19835	607	2021-07-21	2021-08-21
19836	44	2019-05-16	2019-06-16
19837	785	2019-05-17	2019-06-17
19838	199	2019-08-27	2019-09-27
19839	217	2020-07-21	2020-08-21
19840	848	2020-05-10	2020-06-10
19841	195	2019-07-28	2019-08-28
19842	286	2021-07-08	2021-08-08
19843	416	2021-09-11	2021-10-11
19844	644	2018-07-23	2018-08-23
19845	812	2021-07-13	2021-08-13
19846	883	2019-07-27	2019-08-27
19847	591	2020-07-22	2020-08-22
19848	48	2018-09-08	2018-10-08
19850	806	2020-09-02	2020-10-02
19851	185	2021-05-10	2021-06-10
19852	414	2021-07-18	2021-08-18
19853	286	2021-09-08	2021-10-08
19855	243	2020-05-15	2020-06-15
19856	97	2019-10-01	2019-11-01
19857	497	2021-07-20	2021-08-20
19859	148	2021-09-01	2021-10-01
19860	616	2020-10-01	2020-11-01
19861	760	2021-07-17	2021-08-17
19862	747	2018-06-08	2018-07-08
19864	237	2021-05-10	2021-06-10
19865	788	2021-07-28	2021-08-28
19866	112	2021-07-01	2021-08-01
19867	96	2020-05-24	2020-06-24
19868	882	2020-05-15	2020-06-15
19869	64	2021-05-22	2021-06-22
19870	407	2020-07-04	2020-08-04
19871	269	2019-05-19	2019-06-19
19872	275	2020-07-25	2020-08-25
19873	652	2019-09-04	2019-10-04
19874	88	2019-07-24	2019-08-24
19875	91	2021-07-26	2021-08-26
19876	82	2021-09-04	2021-10-04
19877	415	2018-09-26	2018-10-26
19878	701	2019-06-15	2019-07-15
19879	407	2020-09-04	2020-10-04
19880	720	2021-09-27	2021-10-27
19881	656	2021-05-03	2021-06-03
19883	568	2018-05-02	2018-06-02
19884	91	2021-09-26	2021-10-26
19885	60	2020-09-03	2020-10-03
19886	696	2019-08-17	2019-09-17
19887	168	2020-05-16	2020-06-16
19888	609	2020-09-27	2020-10-27
19889	178	2021-08-01	2021-09-01
19890	557	2021-04-30	2021-05-31
19891	275	2020-09-25	2020-10-25
19892	511	2019-07-07	2019-08-07
19894	560	2021-05-05	2021-06-05
19895	885	2019-09-22	2019-10-22
19896	747	2018-08-08	2018-09-08
19898	516	2019-09-18	2019-10-18
19899	317	2019-07-04	2019-08-04
19900	291	2019-07-13	2019-08-13
19901	375	2020-05-18	2020-06-18
19902	858	2018-07-12	2018-08-12
19903	499	2021-05-23	2021-06-23
19904	642	2018-07-27	2018-08-27
19905	43	2018-08-23	2018-09-23
19906	806	2021-05-02	2021-06-02
19907	771	2019-05-25	2019-06-25
19908	503	2021-05-04	2021-06-04
19909	832	2019-09-21	2019-10-21
19910	844	2020-07-17	2020-08-17
19911	69	2018-07-28	2018-08-28
19912	848	2020-07-10	2020-08-10
19913	436	2018-09-08	2018-10-08
19914	714	2019-08-11	2019-09-11
19915	377	2018-07-13	2018-08-13
19916	267	2021-07-29	2021-08-29
19917	339	2021-09-09	2021-10-09
19918	154	2019-09-18	2019-10-18
19920	785	2019-07-17	2019-08-17
19921	202	2019-09-14	2019-10-14
19922	184	2019-08-16	2019-09-16
19923	254	2021-07-10	2021-08-10
19924	734	2020-05-04	2020-06-04
19925	622	2021-09-09	2021-10-09
19926	784	2018-05-02	2018-06-02
19927	550	2019-07-29	2019-08-29
19928	808	2020-09-29	2020-10-29
19929	672	2021-09-09	2021-10-09
19930	433	2018-06-24	2018-07-24
19931	563	2019-08-31	2019-09-30
19932	483	2020-07-10	2020-08-10
19933	786	2020-09-10	2020-10-10
19934	415	2019-05-26	2019-06-26
19935	133	2020-05-15	2020-06-15
19936	579	2021-09-18	2021-10-18
19937	321	2021-07-10	2021-08-10
19938	329	2020-09-11	2020-10-11
19939	377	2018-09-13	2018-10-13
19940	51	2020-05-07	2020-06-07
19941	705	2020-09-09	2020-10-09
19945	882	2020-07-15	2020-08-15
19946	268	2021-09-03	2021-10-03
19948	777	2020-09-27	2020-10-27
19949	172	2021-07-27	2021-08-27
19950	123	2020-05-04	2020-06-04
19952	439	2021-07-01	2021-08-01
19953	185	2021-07-10	2021-08-10
19954	874	2018-07-08	2018-08-08
19955	739	2018-08-25	2018-09-25
19956	193	2019-07-27	2019-08-27
19958	497	2021-09-20	2021-10-20
19959	238	2021-05-17	2021-06-17
19960	499	2021-07-23	2021-08-23
19961	90	2020-05-20	2020-06-20
19962	324	2018-09-12	2018-10-12
19963	415	2019-07-26	2019-08-26
19964	126	2019-05-05	2019-06-05
19965	70	2018-08-07	2018-09-07
19966	328	2021-07-19	2021-08-19
19967	240	2019-09-01	2019-10-01
19968	149	2021-06-03	2021-07-03
19969	482	2019-09-29	2019-10-29
19970	248	2020-09-20	2020-10-20
19972	632	2021-07-08	2021-08-08
19974	224	2019-09-28	2019-10-28
19975	300	2020-05-06	2020-06-06
19976	545	2020-09-26	2020-10-26
19977	508	2019-05-15	2019-06-15
19978	147	2021-07-22	2021-08-22
19980	66	2019-07-06	2019-08-06
19982	455	2020-07-04	2020-08-04
19984	310	2020-05-18	2020-06-18
19985	402	2019-09-19	2019-10-19
19986	633	2021-05-17	2021-06-17
19987	85	2021-05-24	2021-06-24
19988	397	2020-05-02	2020-06-02
19990	797	2021-07-02	2021-08-02
19991	325	2019-09-10	2019-10-10
19992	315	2020-07-07	2020-08-07
19993	420	2018-09-01	2018-10-01
19994	73	2021-09-17	2021-10-17
19995	248	2021-05-20	2021-06-20
19996	781	2018-09-18	2018-10-18
19997	217	2020-09-21	2020-10-21
19999	94	2020-09-27	2020-10-27
20000	696	2020-05-17	2020-06-17
20001	312	2020-05-09	2020-06-09
20002	324	2019-05-12	2019-06-12
20003	830	2020-09-23	2020-10-23
20004	693	2019-05-24	2019-06-24
20005	870	2020-09-03	2020-10-03
20006	739	2019-05-25	2019-06-25
20008	321	2021-09-10	2021-10-10
20009	783	2021-07-06	2021-08-06
20010	22	2020-05-09	2020-06-09
20011	638	2021-07-02	2021-08-02
20012	13	2019-07-25	2019-08-25
20013	582	2018-09-18	2018-10-18
20016	563	2020-05-30	2020-06-30
20017	779	2018-09-27	2018-10-27
20018	684	2020-05-01	2020-06-01
20019	383	2019-07-18	2019-08-18
20020	653	2019-05-10	2019-06-10
20021	724	2020-08-14	2020-09-14
20022	734	2020-07-04	2020-08-04
20023	207	2019-07-28	2019-08-28
20024	13	2019-09-25	2019-10-25
20025	677	2020-05-27	2020-06-27
20026	154	2020-05-18	2020-06-18
20027	508	2019-07-15	2019-08-15
20028	588	2020-09-05	2020-10-05
20030	735	2019-07-04	2019-08-04
20031	492	2020-05-26	2020-06-26
20032	454	2020-05-20	2020-06-20
20033	446	2020-09-22	2020-10-22
20034	32	2020-07-01	2020-08-01
20035	424	2020-07-11	2020-08-11
20036	425	2020-07-17	2020-08-17
20037	778	2020-08-02	2020-09-02
20038	185	2021-09-10	2021-10-10
20039	644	2018-09-23	2018-10-23
20040	103	2021-08-07	2021-09-07
20041	479	2021-05-05	2021-06-05
20042	533	2019-08-27	2019-09-27
20043	612	2019-07-11	2019-08-11
20045	83	2021-05-10	2021-06-10
20046	161	2021-08-23	2021-09-23
20047	785	2019-09-17	2019-10-17
20048	677	2020-07-27	2020-08-27
20049	358	2019-05-14	2019-06-14
20050	840	2019-06-17	2019-07-17
20051	257	2020-09-15	2020-10-15
20052	78	2021-07-24	2021-08-24
20053	342	2020-08-09	2020-09-09
20054	613	2021-09-24	2021-10-24
20055	781	2019-05-18	2019-06-18
20056	563	2020-07-30	2020-08-30
20057	211	2020-08-21	2020-09-21
20058	693	2019-07-24	2019-08-24
20059	176	2019-07-02	2019-08-02
20060	216	2019-05-27	2019-06-27
20061	304	2021-07-29	2021-08-29
20062	370	2019-07-12	2019-08-12
20063	834	2020-07-27	2020-08-27
20064	260	2019-05-02	2019-06-02
20065	771	2019-07-25	2019-08-25
20066	549	2021-09-25	2021-10-25
20067	476	2020-07-13	2020-08-13
20068	247	2018-07-17	2018-08-17
20069	207	2019-09-28	2019-10-28
20070	775	2018-09-06	2018-10-06
20071	705	2021-05-09	2021-06-09
20073	396	2019-07-15	2019-08-15
20074	124	2021-05-04	2021-06-04
20075	422	2019-05-01	2019-06-01
20076	275	2021-05-25	2021-06-25
20077	876	2020-09-01	2020-10-01
20080	815	2021-05-28	2021-06-28
20081	69	2018-09-28	2018-10-28
20083	763	2020-07-16	2020-08-16
20084	640	2018-05-21	2018-06-21
20085	468	2019-06-23	2019-07-23
20086	28	2020-05-24	2020-06-24
20087	68	2020-07-25	2020-08-25
20088	537	2019-05-29	2019-06-29
20089	442	2019-07-26	2019-08-26
20090	872	2020-08-19	2020-09-19
20091	423	2021-07-05	2021-08-05
20092	859	2018-08-15	2018-09-15
20093	35	2019-05-01	2019-06-01
20094	454	2020-07-20	2020-08-20
20095	649	2018-08-17	2018-09-17
20096	75	2019-07-12	2019-08-12
20097	476	2020-09-13	2020-10-13
20098	26	2019-07-18	2019-08-18
20099	66	2019-09-06	2019-10-06
20100	700	2019-06-03	2019-07-03
20101	378	2020-09-22	2020-10-22
20102	281	2018-06-13	2018-07-13
20103	452	2019-08-16	2019-09-16
20104	86	2021-07-25	2021-08-25
20106	331	2021-05-25	2021-06-25
20107	699	2020-08-26	2020-09-26
20108	786	2021-05-10	2021-06-10
20109	446	2021-05-22	2021-06-22
20110	612	2019-09-11	2019-10-11
20111	753	2018-09-12	2018-10-12
20112	383	2019-09-18	2019-10-18
20113	832	2020-05-21	2020-06-21
20114	833	2019-07-24	2019-08-24
20115	474	2019-05-23	2019-06-23
20116	714	2020-05-11	2020-06-11
20117	367	2021-07-22	2021-08-22
20119	329	2021-05-11	2021-06-11
20120	249	2021-05-15	2021-06-15
20121	359	2019-07-14	2019-08-14
20122	818	2021-05-05	2021-06-05
20123	778	2021-05-02	2021-06-02
20124	840	2019-08-17	2019-09-17
20126	167	2019-05-19	2019-06-19
20127	631	2019-05-10	2019-06-10
20128	332	2019-09-11	2019-10-11
20129	34	2019-08-03	2019-09-03
20130	205	2021-07-03	2021-08-03
20131	656	2021-07-03	2021-08-03
20132	743	2021-07-19	2021-08-19
20133	254	2021-09-10	2021-10-10
20134	139	2019-05-29	2019-06-29
20135	657	2021-06-08	2021-07-08
20136	325	2020-05-10	2020-06-10
20137	614	2020-07-22	2020-08-22
20138	769	2021-05-06	2021-06-06
20139	160	2021-05-07	2021-06-07
20140	891	2019-07-15	2019-08-15
20142	395	2020-05-07	2020-06-07
20143	102	2019-05-26	2019-06-26
20144	338	2020-07-13	2020-08-13
20145	130	2021-05-07	2021-06-07
20146	448	2021-05-14	2021-06-14
20147	831	2021-05-05	2021-06-05
20148	526	2020-05-21	2020-06-21
20150	693	2019-09-24	2019-10-24
20151	216	2019-07-27	2019-08-27
20152	513	2020-07-07	2020-08-07
20154	475	2019-09-09	2019-10-09
20155	66	2020-05-06	2020-06-06
20156	46	2019-07-07	2019-08-07
20157	18	2021-09-09	2021-10-09
20158	756	2021-05-09	2021-06-09
20159	575	2019-09-11	2019-10-11
20160	755	2021-09-28	2021-10-28
20161	43	2019-05-23	2019-06-23
20162	246	2018-07-26	2018-08-26
20163	888	2020-08-20	2020-09-20
20164	814	2020-05-23	2020-06-23
20166	434	2020-07-25	2020-08-25
20167	90	2020-07-20	2020-08-20
20168	31	2020-05-19	2020-06-19
20169	796	2021-09-23	2021-10-23
20170	378	2021-05-22	2021-06-22
20171	457	2019-07-19	2019-08-19
20172	756	2021-07-09	2021-08-09
20173	130	2021-07-07	2021-08-07
20174	611	2020-09-28	2020-10-28
20175	500	2020-09-13	2020-10-13
20176	858	2018-09-12	2018-10-12
20177	838	2020-07-23	2020-08-23
20178	892	2021-07-24	2021-08-24
20179	848	2020-09-10	2020-10-10
20180	335	2020-09-08	2020-10-08
20181	313	2021-08-07	2021-09-07
20182	279	2019-09-03	2019-10-03
20183	745	2019-09-05	2019-10-05
20185	387	2021-09-01	2021-10-01
20186	698	2019-05-22	2019-06-22
20188	278	2020-07-23	2020-08-23
20189	589	2021-05-26	2021-06-26
20190	749	2020-09-24	2020-10-24
20191	682	2019-05-21	2019-06-21
20192	804	2019-06-19	2019-07-19
20193	590	2021-09-23	2021-10-23
20194	301	2019-07-12	2019-08-12
20195	398	2019-05-28	2019-06-28
20196	507	2019-05-27	2019-06-27
20197	600	2020-06-17	2020-07-17
20198	122	2021-07-13	2021-08-13
20199	640	2018-07-21	2018-08-21
20200	422	2019-07-01	2019-08-01
20201	408	2018-08-15	2018-09-15
20202	457	2019-09-19	2019-10-19
20203	288	2020-05-16	2020-06-16
20205	789	2020-05-18	2020-06-18
20206	142	2020-07-14	2020-08-14
20207	479	2021-07-05	2021-08-05
20208	237	2021-07-10	2021-08-10
20209	183	2021-09-27	2021-10-27
20210	208	2020-09-10	2020-10-10
20211	56	2019-07-02	2019-08-02
20212	327	2019-09-20	2019-10-20
20213	857	2019-05-08	2019-06-08
20214	691	2020-05-28	2020-06-28
20215	714	2020-07-11	2020-08-11
20216	827	2020-05-12	2020-06-12
20217	830	2021-05-23	2021-06-23
20218	305	2019-08-27	2019-09-27
20219	77	2020-06-10	2020-07-10
20220	462	2018-08-12	2018-09-12
20221	211	2021-05-21	2021-06-21
20222	500	2021-05-13	2021-06-13
20223	396	2019-09-15	2019-10-15
20225	897	2020-09-16	2020-10-16
20226	876	2021-05-01	2021-06-01
20227	534	2019-09-30	2019-10-30
20228	256	2021-09-11	2021-10-11
20229	231	2021-09-19	2021-10-19
20230	630	2020-05-19	2020-06-19
20231	479	2021-09-05	2021-10-05
20232	46	2019-09-07	2019-10-07
20233	676	2021-07-03	2021-08-03
20234	825	2021-05-04	2021-06-04
20235	712	2021-05-14	2021-06-14
20236	463	2018-09-07	2018-10-07
20237	180	2021-09-29	2021-10-29
20238	595	2019-07-17	2019-08-17
20239	26	2019-09-18	2019-10-18
20240	737	2021-05-27	2021-06-27
20241	631	2019-07-10	2019-08-10
20242	609	2021-05-26	2021-06-26
20243	552	2019-07-23	2019-08-23
20244	723	2021-07-20	2021-08-20
20245	725	2020-05-27	2020-06-27
20246	867	2020-07-30	2020-08-30
20247	392	2019-05-04	2019-06-04
20248	201	2019-09-26	2019-10-26
20249	633	2021-07-17	2021-08-17
20250	657	2021-08-08	2021-09-08
20251	574	2021-07-07	2021-08-07
20252	847	2019-07-24	2019-08-24
20253	567	2019-09-24	2019-10-24
20254	237	2021-09-10	2021-10-10
20255	837	2019-07-18	2019-08-18
20256	449	2021-09-30	2021-10-30
20257	760	2021-09-17	2021-10-17
20258	147	2021-09-22	2021-10-22
20259	894	2019-09-28	2019-10-28
20260	304	2021-09-29	2021-10-29
20261	59	2018-09-06	2018-10-06
20262	80	2019-09-23	2019-10-23
20263	619	2019-05-28	2019-06-28
20264	69	2019-05-28	2019-06-28
20265	70	2019-05-07	2019-06-07
20266	837	2019-09-18	2019-10-18
20267	576	2021-05-25	2021-06-25
20268	775	2019-05-06	2019-06-06
20269	738	2018-09-11	2018-10-11
20270	629	2019-07-26	2019-08-26
20271	260	2019-07-02	2019-08-02
20272	852	2018-08-23	2018-09-23
20273	306	2020-08-27	2020-09-27
20274	385	2019-07-12	2019-08-12
20275	255	2021-07-23	2021-08-23
20276	739	2019-07-25	2019-08-25
20277	693	2020-05-24	2020-06-24
20278	526	2020-07-21	2020-08-21
20279	57	2018-05-13	2018-06-13
20280	791	2021-07-13	2021-08-13
20281	250	2020-05-02	2020-06-02
20282	190	2019-09-17	2019-10-17
20283	361	2021-07-15	2021-08-15
20284	576	2021-07-25	2021-08-25
20285	207	2020-05-27	2020-06-27
20286	78	2021-09-24	2021-10-24
20287	738	2019-05-11	2019-06-11
20288	677	2020-09-27	2020-10-27
20289	337	2019-05-17	2019-06-17
20290	845	2020-09-11	2020-10-11
20291	819	2020-08-09	2020-09-09
20292	426	2020-06-04	2020-07-04
20293	859	2019-05-15	2019-06-15
20294	409	2019-09-23	2019-10-23
20295	165	2020-07-20	2020-08-20
20296	440	2019-09-18	2019-10-18
20297	359	2019-09-14	2019-10-14
20298	738	2019-07-11	2019-08-11
20299	72	2020-07-18	2020-08-18
20300	741	2018-06-05	2018-07-05
20301	413	2020-07-10	2020-08-10
20302	32	2020-09-01	2020-10-01
20304	833	2019-09-24	2019-10-24
20305	741	2018-08-05	2018-09-05
20306	229	2020-08-29	2020-09-29
20307	780	2019-05-22	2019-06-22
20308	526	2020-09-21	2020-10-21
20309	840	2020-05-17	2020-06-17
20311	737	2021-07-27	2021-08-27
20312	139	2019-07-29	2019-08-29
20313	882	2020-09-15	2020-10-15
20314	154	2020-07-18	2020-08-18
20315	370	2019-09-12	2019-10-12
20316	876	2021-07-01	2021-08-01
20317	130	2021-09-07	2021-10-07
20318	623	2020-05-07	2020-06-07
20320	782	2019-05-16	2019-06-16
20321	247	2018-09-17	2018-10-17
20322	335	2021-05-08	2021-06-08
20323	808	2021-05-28	2021-06-28
20324	430	2021-07-16	2021-08-16
20325	211	2021-07-21	2021-08-21
20326	500	2021-07-13	2021-08-13
20327	55	2019-09-25	2019-10-25
20328	690	2018-09-04	2018-10-04
20329	635	2020-05-19	2020-06-19
20330	562	2020-07-15	2020-08-15
20331	67	2021-05-06	2021-06-06
20332	733	2021-05-15	2021-06-15
20333	317	2019-09-04	2019-10-04
20334	783	2021-09-06	2021-10-06
20336	410	2020-08-17	2020-09-17
20337	434	2020-09-25	2020-10-25
20338	420	2019-05-01	2019-06-01
20339	667	2020-07-19	2020-08-19
20340	125	2020-07-07	2020-08-07
20341	800	2021-08-17	2021-09-17
20342	651	2018-09-04	2018-10-04
20343	51	2020-07-07	2020-08-07
20344	427	2021-05-16	2021-06-16
20345	625	2021-07-08	2021-08-08
20346	100	2020-06-07	2020-07-07
20347	96	2020-07-24	2020-08-24
20348	848	2021-05-10	2021-06-10
20349	202	2020-05-14	2020-06-14
20350	696	2020-07-17	2020-08-17
20351	488	2020-08-18	2020-09-18
20352	117	2021-09-02	2021-10-02
20355	665	2020-07-18	2020-08-18
20356	443	2019-09-28	2019-10-28
20357	595	2019-09-17	2019-10-17
20358	631	2019-09-10	2019-10-10
20360	830	2021-07-23	2021-08-23
20361	325	2020-07-10	2020-08-10
20362	698	2019-07-22	2019-08-22
20363	81	2019-07-06	2019-08-06
20364	357	2020-08-06	2020-09-06
20365	216	2019-09-27	2019-10-27
20366	553	2018-08-01	2018-09-01
20367	104	2020-05-16	2020-06-16
20369	749	2021-05-24	2021-06-24
20370	739	2019-09-25	2019-10-25
20372	129	2019-08-07	2019-09-07
20373	285	2018-07-15	2018-08-15
20374	230	2019-09-14	2019-10-14
20375	679	2021-09-18	2021-10-18
20376	413	2020-09-10	2020-10-10
20377	589	2021-07-26	2021-08-26
20378	440	2020-05-18	2020-06-18
20379	516	2020-05-18	2020-06-18
20380	744	2020-09-01	2020-10-01
20381	12	2021-05-26	2021-06-26
20382	119	2018-09-27	2018-10-27
20383	859	2019-07-15	2019-08-15
20384	394	2020-09-12	2020-10-12
20385	633	2021-09-17	2021-10-17
20386	132	2020-05-19	2020-06-19
20387	747	2019-05-08	2019-06-08
20388	79	2019-08-02	2019-09-02
20389	169	2020-09-24	2020-10-24
20390	518	2020-07-09	2020-08-09
20391	833	2020-05-24	2020-06-24
20392	440	2020-07-18	2020-08-18
20393	120	2020-07-02	2020-08-02
20394	693	2020-07-24	2020-08-24
20395	597	2020-06-25	2020-07-25
20396	123	2020-07-04	2020-08-04
20397	664	2019-07-29	2019-08-29
20398	520	2020-07-19	2020-08-19
20399	820	2019-05-29	2019-06-29
20400	467	2020-05-27	2020-06-27
20401	547	2020-09-07	2020-10-07
20402	850	2021-05-16	2021-06-16
20403	325	2020-09-10	2020-10-10
20404	752	2020-05-16	2020-06-16
20406	358	2019-07-14	2019-08-14
20407	397	2020-07-02	2020-08-02
20408	13	2020-05-25	2020-06-25
20409	22	2020-07-09	2020-08-09
20410	335	2021-07-08	2021-08-08
20412	114	2021-09-17	2021-10-17
20413	408	2019-05-15	2019-06-15
20414	115	2021-09-08	2021-10-08
20415	323	2020-05-11	2020-06-11
20416	734	2020-09-04	2020-10-04
20417	177	2021-05-01	2021-06-01
20419	700	2019-08-03	2019-09-03
20420	142	2020-09-14	2020-10-14
20421	88	2019-09-24	2019-10-24
20422	278	2020-09-23	2020-10-23
20424	885	2020-05-22	2020-06-22
20425	561	2019-07-10	2019-08-10
20426	550	2019-09-29	2019-10-29
20427	749	2021-07-24	2021-08-24
20428	557	2021-07-01	2021-08-01
20429	520	2020-09-19	2020-10-19
20430	282	2021-05-22	2021-06-22
20431	236	2018-09-17	2018-10-17
20432	739	2020-05-25	2020-06-25
20433	71	2019-04-30	2019-05-31
20434	252	2019-09-07	2019-10-07
20435	767	2021-07-28	2021-08-28
20437	677	2021-05-26	2021-06-26
20438	281	2018-08-13	2018-09-13
20439	528	2020-05-14	2020-06-14
20440	431	2020-07-24	2020-08-24
20441	592	2020-09-08	2020-10-08
20442	35	2019-07-01	2019-08-01
20443	210	2019-05-04	2019-06-04
20444	392	2019-07-04	2019-08-04
20446	359	2020-05-14	2020-06-14
20447	609	2021-07-26	2021-08-26
20448	851	2021-09-22	2021-10-22
20449	889	2018-07-26	2018-08-26
20450	379	2021-07-07	2021-08-07
20451	519	2020-05-06	2020-06-06
20452	614	2020-09-22	2020-10-22
20453	470	2021-09-08	2021-10-08
20454	275	2021-07-25	2021-08-25
20456	537	2019-07-29	2019-08-29
20458	135	2019-07-20	2019-08-20
20459	577	2019-09-15	2019-10-15
20460	419	2020-05-01	2020-06-01
20461	332	2020-05-11	2020-06-11
20462	26	2020-05-18	2020-06-18
20463	60	2021-05-03	2021-06-03
20464	230	2020-05-14	2020-06-14
20465	486	2020-05-10	2020-06-10
20466	432	2020-07-03	2020-08-03
20467	184	2020-05-16	2020-06-16
20468	767	2021-09-28	2021-10-28
20469	207	2020-07-27	2020-08-27
20470	778	2021-07-02	2021-08-02
20471	64	2021-07-22	2021-08-22
20472	442	2019-09-26	2019-10-26
20473	327	2020-05-20	2020-06-20
20475	690	2019-05-04	2019-06-04
20476	749	2021-09-24	2021-10-24
20477	734	2021-05-04	2021-06-04
20478	845	2021-05-11	2021-06-11
20479	160	2021-07-07	2021-08-07
20480	356	2020-09-28	2020-10-28
20482	376	2021-04-30	2021-05-31
20483	849	2019-07-26	2019-08-26
20484	533	2020-05-27	2020-06-27
20485	59	2019-05-06	2019-06-06
20486	337	2019-07-17	2019-08-17
20487	451	2021-05-05	2021-06-05
20488	153	2021-07-11	2021-08-11
20489	651	2019-05-04	2019-06-04
20490	554	2021-09-21	2021-10-21
20491	653	2019-07-10	2019-08-10
20492	396	2020-05-15	2020-06-15
20493	440	2020-09-18	2020-10-18
20494	235	2019-08-09	2019-09-09
20495	419	2020-07-01	2020-08-01
20497	53	2020-07-17	2020-08-17
20498	283	2019-09-21	2019-10-21
20499	881	2019-05-15	2019-06-15
20500	849	2019-09-26	2019-10-26
20501	845	2021-07-11	2021-08-11
20502	294	2021-07-15	2021-08-15
20503	123	2020-09-04	2020-10-04
20504	701	2019-08-15	2019-09-15
20505	191	2019-09-03	2019-10-03
20506	212	2021-07-16	2021-08-16
20507	278	2021-05-23	2021-06-23
20508	560	2021-07-05	2021-08-05
20509	853	2020-09-17	2020-10-17
20510	630	2020-07-19	2020-08-19
20511	594	2021-09-08	2021-10-08
20512	576	2021-09-25	2021-10-25
20513	447	2019-09-10	2019-10-10
20514	244	2021-06-30	2021-07-31
20515	477	2021-09-24	2021-10-24
20517	21	2019-05-30	2019-06-30
20518	548	2019-09-08	2019-10-08
20520	44	2019-07-16	2019-08-16
20521	623	2020-07-07	2020-08-07
20522	805	2021-05-06	2021-06-06
20523	791	2021-09-13	2021-10-13
20524	421	2021-09-11	2021-10-11
20525	86	2021-09-25	2021-10-25
20526	637	2020-09-11	2020-10-11
20527	809	2021-09-13	2021-10-13
20528	572	2020-04-30	2020-05-31
20530	439	2021-09-01	2021-10-01
20531	562	2020-09-15	2020-10-15
20532	44	2019-09-16	2019-10-16
20533	448	2021-07-14	2021-08-14
20534	667	2020-09-19	2020-10-19
20535	473	2019-07-01	2019-08-01
20537	603	2020-08-04	2020-09-04
20538	425	2020-09-17	2020-10-17
20539	877	2019-07-14	2019-08-14
20540	175	2018-07-17	2018-08-17
20541	248	2021-07-20	2021-08-20
20542	93	2021-09-15	2021-10-15
20543	674	2018-09-24	2018-10-24
20544	696	2020-09-17	2020-10-17
20545	451	2021-07-05	2021-08-05
20546	24	2021-09-17	2021-10-17
20547	725	2020-07-27	2020-08-27
20548	650	2021-09-20	2021-10-20
20549	536	2020-07-08	2020-08-08
20550	199	2020-05-27	2020-06-27
20553	17	2018-09-09	2018-10-09
20554	70	2019-07-07	2019-08-07
20555	664	2019-09-29	2019-10-29
20556	222	2019-09-13	2019-10-13
20557	766	2021-09-14	2021-10-14
20558	295	2019-07-14	2019-08-14
20559	319	2019-09-24	2019-10-24
20560	83	2021-07-10	2021-08-10
20561	302	2021-05-13	2021-06-13
20562	310	2020-07-18	2020-08-18
20563	461	2019-07-26	2019-08-26
20564	330	2021-07-07	2021-08-07
20566	373	2019-07-04	2019-08-04
20567	604	2018-08-10	2018-09-10
20568	558	2021-07-15	2021-08-15
20570	166	2020-09-01	2020-10-01
20571	721	2021-09-18	2021-10-18
20572	689	2019-05-23	2019-06-23
20573	314	2018-09-18	2018-10-18
20574	815	2021-07-28	2021-08-28
20575	592	2021-05-08	2021-06-08
20576	474	2019-07-23	2019-08-23
20577	505	2020-07-09	2020-08-09
20578	398	2019-07-28	2019-08-28
20579	149	2021-08-03	2021-09-03
20580	662	2021-07-12	2021-08-12
20581	734	2021-07-04	2021-08-04
20582	248	2021-09-20	2021-10-20
20583	49	2020-07-17	2020-08-17
20584	95	2021-05-23	2021-06-23
20585	165	2020-09-20	2020-10-20
20586	794	2018-09-15	2018-10-15
20587	889	2018-09-26	2018-10-26
20588	81	2019-09-06	2019-10-06
20590	889	2019-05-26	2019-06-26
20591	882	2021-05-15	2021-06-15
20592	357	2021-05-06	2021-06-06
20593	264	2019-08-04	2019-09-04
20594	187	2020-09-20	2020-10-20
20595	659	2021-09-08	2021-10-08
20597	138	2021-05-26	2021-06-26
20598	853	2021-05-17	2021-06-17
20599	490	2018-06-04	2018-07-04
20600	567	2020-05-24	2020-06-24
20601	500	2021-09-13	2021-10-13
20602	66	2020-07-06	2020-08-06
20603	660	2020-09-06	2020-10-06
20604	340	2020-08-07	2020-09-07
20605	810	2019-09-26	2019-10-26
20606	402	2020-05-19	2020-06-19
20607	230	2020-07-14	2020-08-14
20609	739	2020-07-25	2020-08-25
20610	882	2021-07-15	2021-08-15
20611	60	2021-07-03	2021-08-03
20612	94	2021-05-26	2021-06-26
20613	803	2019-05-04	2019-06-04
20615	226	2018-08-05	2018-09-05
20616	200	2019-05-21	2019-06-21
20617	96	2020-09-24	2020-10-24
20618	892	2021-09-24	2021-10-24
20619	208	2021-05-10	2021-06-10
20620	834	2020-09-27	2020-10-27
20621	275	2021-09-25	2021-10-25
20622	431	2020-09-24	2020-10-24
20623	662	2021-09-12	2021-10-12
20624	837	2020-05-18	2020-06-18
20625	203	2019-07-17	2019-08-17
20626	614	2021-05-22	2021-06-22
20627	564	2021-05-03	2021-06-03
20628	667	2021-05-19	2021-06-19
20629	267	2021-09-29	2021-10-29
20631	595	2020-05-17	2020-06-17
20632	737	2021-09-27	2021-10-27
20633	315	2020-09-07	2020-10-07
20634	653	2019-09-10	2019-10-10
20635	866	2021-09-22	2021-10-22
20636	234	2021-07-27	2021-08-27
20637	847	2019-09-24	2019-10-24
20638	564	2021-07-03	2021-08-03
20639	55	2020-05-25	2020-06-25
20640	617	2021-05-15	2021-06-15
20642	482	2020-05-28	2020-06-28
20643	713	2021-09-16	2021-10-16
20644	423	2021-09-05	2021-10-05
20645	122	2021-09-13	2021-10-13
20646	234	2021-09-27	2021-10-27
20647	824	2021-05-21	2021-06-21
20648	48	2019-05-08	2019-06-08
20650	295	2019-09-14	2019-10-14
20652	821	2019-07-20	2019-08-20
20653	504	2021-09-17	2021-10-17
20654	595	2020-07-17	2020-08-17
20656	65	2020-06-17	2020-07-17
20657	507	2019-07-27	2019-08-27
20658	77	2020-08-10	2020-09-10
20659	627	2018-09-19	2018-10-19
20660	854	2021-07-12	2021-08-12
20661	472	2020-05-23	2020-06-23
20662	780	2019-07-22	2019-08-22
20663	187	2021-05-20	2021-06-20
20664	48	2019-07-08	2019-08-08
20665	459	2020-09-25	2020-10-25
20666	490	2018-08-04	2018-09-04
20667	595	2020-09-17	2020-10-17
20668	660	2021-05-06	2021-06-06
20669	55	2020-07-25	2020-08-25
20670	561	2019-09-10	2019-10-10
20671	324	2019-07-12	2019-08-12
20672	746	2019-09-03	2019-10-03
20673	136	2019-05-20	2019-06-20
20674	434	2021-05-25	2021-06-25
20675	331	2021-07-25	2021-08-25
20676	821	2019-09-20	2019-10-20
20678	781	2019-07-18	2019-08-18
20680	769	2021-07-06	2021-08-06
20681	752	2020-07-16	2020-08-16
20682	287	2021-09-23	2021-10-23
20683	595	2021-05-17	2021-06-17
20684	221	2019-07-25	2019-08-25
20686	356	2021-05-27	2021-06-27
20687	489	2021-07-10	2021-08-10
20688	814	2020-07-23	2020-08-23
20689	20	2019-07-15	2019-08-15
20690	325	2021-05-10	2021-06-10
20691	176	2019-09-02	2019-10-02
20693	773	2018-08-15	2018-09-15
20694	424	2020-09-11	2020-10-11
20695	563	2020-09-30	2020-10-30
20696	312	2020-07-09	2020-08-09
20697	673	2021-09-09	2021-10-09
20698	230	2020-09-14	2020-10-14
20699	438	2021-05-08	2021-06-08
20701	325	2021-07-10	2021-08-10
20702	48	2019-09-08	2019-10-08
20703	558	2021-09-15	2021-10-15
20704	774	2018-09-05	2018-10-05
20705	741	2019-05-05	2019-06-05
20706	415	2019-09-26	2019-10-26
20707	171	2019-07-04	2019-08-04
20708	12	2021-07-26	2021-08-26
20709	217	2021-05-21	2021-06-21
20710	557	2021-09-01	2021-10-01
20712	862	2020-05-27	2020-06-27
20713	211	2021-09-21	2021-10-21
20714	228	2021-05-25	2021-06-25
20715	77	2021-05-10	2021-06-10
20716	189	2020-09-15	2020-10-15
20717	190	2020-05-17	2020-06-17
20718	15	2019-05-18	2019-06-18
20719	682	2019-07-21	2019-08-21
20720	881	2019-07-15	2019-08-15
20721	781	2019-09-18	2019-10-18
20722	726	2018-05-25	2018-06-25
20724	765	2020-05-28	2020-06-28
20725	562	2021-05-15	2021-06-15
20726	483	2020-09-10	2020-10-10
20727	243	2020-07-15	2020-08-15
20728	740	2018-07-22	2018-08-22
20729	101	2020-09-20	2020-10-20
20730	221	2019-09-25	2019-10-25
20731	414	2021-09-18	2021-10-18
20732	175	2018-09-17	2018-10-17
20733	828	2020-05-23	2020-06-23
20734	425	2021-05-17	2021-06-17
20735	448	2021-09-14	2021-10-14
20736	37	2019-09-27	2019-10-27
20737	693	2020-09-24	2020-10-24
20738	857	2019-07-08	2019-08-08
20739	566	2018-09-25	2018-10-25
20740	838	2020-09-23	2020-10-23
20741	46	2020-05-07	2020-06-07
20742	280	2018-09-11	2018-10-11
20743	372	2020-05-04	2020-06-04
20744	66	2020-09-06	2020-10-06
20745	463	2019-05-07	2019-06-07
20746	745	2020-05-05	2020-06-05
20747	789	2020-07-18	2020-08-18
20748	547	2021-05-07	2021-06-07
20749	300	2020-07-06	2020-08-06
20750	888	2021-05-20	2021-06-20
20752	819	2021-05-09	2021-06-09
20753	285	2018-09-15	2018-10-15
20754	338	2020-09-13	2020-10-13
20755	891	2019-09-15	2019-10-15
20756	243	2020-09-15	2020-10-15
20757	90	2020-09-20	2020-10-20
20759	648	2020-07-25	2020-08-25
20760	491	2018-05-28	2018-06-28
20761	13	2020-07-25	2020-08-25
20762	816	2020-08-01	2020-09-01
20763	544	2019-09-25	2019-10-25
20764	377	2019-05-13	2019-06-13
20766	805	2021-07-06	2021-08-06
20767	31	2020-07-19	2020-08-19
20768	222	2020-05-13	2020-06-13
20769	213	2019-05-23	2019-06-23
20770	550	2020-05-28	2020-06-28
20771	567	2020-07-24	2020-08-24
20772	168	2020-07-16	2020-08-16
20773	123	2021-05-04	2021-06-04
20774	221	2020-05-25	2020-06-25
20775	724	2021-05-14	2021-06-14
20777	204	2021-09-07	2021-10-07
20778	896	2018-09-06	2018-10-06
20779	79	2020-05-02	2020-06-02
20780	869	2021-07-27	2021-08-27
20781	222	2020-07-13	2020-08-13
20782	418	2019-05-10	2019-06-10
20783	132	2020-07-19	2020-08-19
20784	845	2021-09-11	2021-10-11
20785	40	2020-09-12	2020-10-12
20786	166	2021-05-01	2021-06-01
20787	739	2020-09-25	2020-10-25
20789	156	2019-09-28	2019-10-28
20790	75	2019-09-12	2019-10-12
20791	266	2019-09-08	2019-10-08
20792	873	2020-09-10	2020-10-10
20793	334	2021-05-08	2021-06-08
20794	160	2021-09-07	2021-10-07
20795	48	2020-05-08	2020-06-08
20796	379	2021-09-07	2021-10-07
20797	810	2020-05-26	2020-06-26
20799	547	2021-07-07	2021-08-07
20800	156	2020-05-27	2020-06-27
20801	221	2020-07-25	2020-08-25
20802	733	2021-07-15	2021-08-15
20803	346	2021-09-19	2021-10-19
20804	648	2020-09-25	2020-10-25
20805	261	2020-08-10	2020-09-10
20806	548	2020-05-08	2020-06-08
20808	104	2020-07-16	2020-08-16
20809	20	2019-09-15	2019-10-15
20810	186	2018-07-29	2018-08-29
20811	85	2021-07-24	2021-08-24
20812	109	2021-05-23	2021-06-23
20813	48	2020-07-08	2020-08-08
20816	145	2020-07-28	2020-08-28
20817	360	2018-09-15	2018-10-15
20819	831	2021-07-05	2021-08-05
20820	459	2021-05-25	2021-06-25
20821	445	2019-05-13	2019-06-13
20822	129	2020-05-07	2020-06-07
20823	841	2021-05-13	2021-06-13
20824	865	2021-05-16	2021-06-16
20825	664	2020-05-28	2020-06-28
20826	709	2021-07-07	2021-08-07
20828	475	2020-05-09	2020-06-09
20829	29	2020-08-02	2020-09-02
20830	213	2019-07-23	2019-08-23
20831	225	2019-07-18	2019-08-18
20832	317	2020-05-04	2020-06-04
20833	58	2019-07-01	2019-08-01
20834	894	2020-05-27	2020-06-27
20835	459	2021-07-25	2021-08-25
20836	443	2020-05-27	2020-06-27
20837	77	2021-07-10	2021-08-10
20838	627	2019-05-19	2019-06-19
20839	389	2020-05-12	2020-06-12
20840	502	2021-07-22	2021-08-22
20842	245	2019-07-13	2019-08-13
20843	821	2020-05-20	2020-06-20
20844	219	2019-07-29	2019-08-29
20845	723	2021-09-20	2021-10-20
20846	293	2021-05-02	2021-06-02
20847	652	2020-05-04	2020-06-04
20848	856	2019-05-16	2019-06-16
20849	894	2020-07-27	2020-08-27
20850	891	2020-05-15	2020-06-15
20851	63	2019-09-07	2019-10-07
20852	736	2021-08-31	2021-10-01
20853	616	2021-04-30	2021-05-31
20854	104	2020-09-16	2020-10-16
20855	442	2020-05-26	2020-06-26
20856	824	2021-07-21	2021-08-21
20857	247	2019-05-17	2019-06-17
20858	774	2019-05-05	2019-06-05
20859	701	2020-05-15	2020-06-15
20860	252	2020-05-07	2020-06-07
20861	338	2021-05-13	2021-06-13
20862	849	2020-05-26	2020-06-26
\.
--How to make updates to existing database
UPDATE person SET status ='Unhandled' WHERE fk_id_role = 2;
UPDATE person SET username = email WHERE fk_id_role = 2;
UPDATE person SET email = concat(firstname,'.',surname,'@companyDomain.com') WHERE fk_id_role = 1;
