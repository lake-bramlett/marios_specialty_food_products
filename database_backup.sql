--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: lakebramlett
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO lakebramlett;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: lakebramlett
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO lakebramlett;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lakebramlett
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: lakebramlett
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO lakebramlett;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: lakebramlett
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO lakebramlett;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lakebramlett
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: lakebramlett
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO lakebramlett;

--
-- Name: products; Type: TABLE; Schema: public; Owner: lakebramlett
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost numeric(8,2),
    country_of_origin character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO lakebramlett;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: lakebramlett
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO lakebramlett;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lakebramlett
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: lakebramlett
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body text,
    rating integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_id integer
);


ALTER TABLE public.reviews OWNER TO lakebramlett;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: lakebramlett
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO lakebramlett;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lakebramlett
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: lakebramlett
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO lakebramlett;

--
-- Name: users; Type: TABLE; Schema: public; Owner: lakebramlett
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    admin boolean DEFAULT false,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO lakebramlett;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: lakebramlett
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO lakebramlett;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lakebramlett
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: lakebramlett
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: lakebramlett
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: lakebramlett
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-09 15:47:54.005421	2019-08-09 15:47:54.005421
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: lakebramlett
--

COPY public.products (id, name, cost, country_of_origin, created_at, updated_at) FROM stdin;
520	Linguine With Clams	86.19	Uganda	2019-08-16 22:33:10.610849	2019-08-16 22:33:10.610849
521	Chicken Milanese	95.72	Bhutan	2019-08-16 22:33:10.637505	2019-08-16 22:33:10.637505
522	Mushroom Risotto	17.92	Turks and Caicos Islands	2019-08-16 22:33:10.650821	2019-08-16 22:33:10.650821
523	Chicken Parm	17.02	Uganda	2019-08-16 22:33:10.672953	2019-08-16 22:33:10.672953
524	Hummus	55.23	Croatia	2019-08-16 22:33:10.682446	2019-08-16 22:33:10.682446
525	Poutine	71.81	Argentina	2019-08-16 22:33:10.70519	2019-08-16 22:33:10.70519
526	Pasta With Tomato And Basil	84.88	Chad	2019-08-16 22:33:10.729513	2019-08-16 22:33:10.729513
527	Peking Duck	58.92	Micronesia	2019-08-16 22:33:10.741804	2019-08-16 22:33:10.741804
528	Ricotta Stuffed Ravioli	75.15	Bulgaria	2019-08-16 22:33:10.767304	2019-08-16 22:33:10.767304
529	Ebiten Maki	38.63	Eritrea	2019-08-16 22:33:10.782267	2019-08-16 22:33:10.782267
530	Tacos	58.23	Brunei Darussalam	2019-08-16 22:33:10.798178	2019-08-16 22:33:10.798178
531	Pappardelle Alla Bolognese	15.67	Hong Kong	2019-08-16 22:33:10.810584	2019-08-16 22:33:10.810584
532	Teriyaki Chicken Donburi	49.96	Guernsey	2019-08-16 22:33:10.837128	2019-08-16 22:33:10.837128
533	Caprese Salad	74.69	Liberia	2019-08-16 22:33:10.847943	2019-08-16 22:33:10.847943
534	Chicken Fajitas	18.54	Russian Federation	2019-08-16 22:33:10.864726	2019-08-16 22:33:10.864726
535	Ebiten Maki	41.99	Isle of Man	2019-08-16 22:33:10.886226	2019-08-16 22:33:10.886226
536	Tacos	30.07	Mauritania	2019-08-16 22:33:10.908156	2019-08-16 22:33:10.908156
537	Bruschette With Tomato	54.56	Somalia	2019-08-16 22:33:10.927811	2019-08-16 22:33:10.927811
538	Poutine	32.23	Martinique	2019-08-16 22:33:10.945297	2019-08-16 22:33:10.945297
539	Cauliflower Penne	18.82	Djibouti	2019-08-16 22:33:10.965465	2019-08-16 22:33:10.965465
540	Arepas	32.15	Antigua and Barbuda	2019-08-16 22:33:10.994375	2019-08-16 22:33:10.994375
541	Teriyaki Chicken Donburi	66.89	Bosnia and Herzegovina	2019-08-16 22:33:11.007049	2019-08-16 22:33:11.007049
542	Cheeseburger	54.03	Latvia	2019-08-16 22:33:11.017915	2019-08-16 22:33:11.017915
543	Katsu Curry	90.02	Latvia	2019-08-16 22:33:11.044252	2019-08-16 22:33:11.044252
544	Tuna Sashimi	25.94	Nepal	2019-08-16 22:33:11.070658	2019-08-16 22:33:11.070658
545	Pho	97.55	Niger	2019-08-16 22:33:11.087375	2019-08-16 22:33:11.087375
546	Pork Belly Buns	95.04	Bahrain	2019-08-16 22:33:11.117224	2019-08-16 22:33:11.117224
547	Bruschette With Tomato	34.51	Micronesia	2019-08-16 22:33:11.143635	2019-08-16 22:33:11.143635
548	Salmon Nigiri	81.88	New Caledonia	2019-08-16 22:33:11.163663	2019-08-16 22:33:11.163663
549	Massaman Curry	64.89	Qatar	2019-08-16 22:33:11.175534	2019-08-16 22:33:11.175534
550	Vegetable Soup	75.32	Cameroon	2019-08-16 22:33:11.193421	2019-08-16 22:33:11.193421
551	Mushroom Risotto	55.79	Montenegro	2019-08-16 22:33:11.218432	2019-08-16 22:33:11.218432
552	Chicken Wings	33.15	Turks and Caicos Islands	2019-08-16 22:33:11.238186	2019-08-16 22:33:11.238186
553	Meatballs With Sauce	19.47	Pakistan	2019-08-16 22:33:11.269938	2019-08-16 22:33:11.269938
554	Sushi	38.04	Cocos (Keeling) Islands	2019-08-16 22:33:11.297202	2019-08-16 22:33:11.297202
555	Som Tam	38.06	United Kingdom	2019-08-16 22:33:11.309822	2019-08-16 22:33:11.309822
556	Chicken Fajitas	18.93	Guyana	2019-08-16 22:33:11.328014	2019-08-16 22:33:11.328014
557	Stinky Tofu	58.79	Slovakia (Slovak Republic)	2019-08-16 22:33:11.353952	2019-08-16 22:33:11.353952
558	Chicken Fajitas	92.05	Georgia	2019-08-16 22:33:11.39176	2019-08-16 22:33:11.39176
559	Katsu Curry	21.42	Congo	2019-08-16 22:33:11.433169	2019-08-16 22:33:11.433169
560	Cheeseburger	12.79	Belarus	2019-08-16 22:33:11.470018	2019-08-16 22:33:11.470018
561	Poke	57.51	Wallis and Futuna	2019-08-16 22:33:11.499848	2019-08-16 22:33:11.499848
562	Katsu Curry	76.11	Albania	2019-08-16 22:33:11.526411	2019-08-16 22:33:11.526411
563	Risotto With Seafood	93.64	Lithuania	2019-08-16 22:33:11.549723	2019-08-16 22:33:11.549723
564	Stinky Tofu	99.94	Angola	2019-08-16 22:33:11.597608	2019-08-16 22:33:11.597608
565	Caprese Salad	11.76	Czech Republic	2019-08-16 22:33:11.634161	2019-08-16 22:33:11.634161
566	Scotch Eggs	33.64	Cyprus	2019-08-16 22:33:11.649443	2019-08-16 22:33:11.649443
567	Lasagne	88.36	Anguilla	2019-08-16 22:33:11.660368	2019-08-16 22:33:11.660368
568	French Toast	10.68	Cocos (Keeling) Islands	2019-08-16 22:33:11.679338	2019-08-16 22:33:11.679338
569	Mushroom Risotto	69.86	Nepal	2019-08-16 22:33:11.696414	2019-08-16 22:33:11.696414
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: lakebramlett
--

COPY public.reviews (id, author, content_body, rating, created_at, updated_at, product_id) FROM stdin;
854	Jacqueline Bouvier	To alcohol! The cause of, and solution to, all of life's problems.	3	2019-08-16 22:33:10.642561	2019-08-16 22:33:10.642561	521
855	Superintendent Gary Chalmers	Kill my boss? Do I dare live out the American dream?	2	2019-08-16 22:33:10.647428	2019-08-16 22:33:10.647428	521
856	Gloria	If you pray to the wrong god, you might just make the right one madder and madder.	3	2019-08-16 22:33:10.655502	2019-08-16 22:33:10.655502	522
857	Wiseguy	If you pray to the wrong god, you might just make the right one madder and madder.	2	2019-08-16 22:33:10.660479	2019-08-16 22:33:10.660479	522
858	Cletus Spuckler	Oh, loneliness and cheeseburgers are a dangerous mix.	5	2019-08-16 22:33:10.664841	2019-08-16 22:33:10.664841	522
859	Dr. Velimirovic	It takes two to lie: one to lie and one to listen.	5	2019-08-16 22:33:10.669492	2019-08-16 22:33:10.669492	522
860	Radioactive Man	What’s the point of going out? We’re just gonna wind up back home anyway.	1	2019-08-16 22:33:10.687132	2019-08-16 22:33:10.687132	524
861	Joey	Life is just one crushing defeat after another until you just wish Flanders was dead.	3	2019-08-16 22:33:10.709622	2019-08-16 22:33:10.709622	525
862	Herman Hermann	If you pray to the wrong god, you might just make the right one madder and madder.	5	2019-08-16 22:33:10.714561	2019-08-16 22:33:10.714561	525
863	Jacques	To alcohol! The cause of, and solution to, all of life's problems.	4	2019-08-16 22:33:10.734015	2019-08-16 22:33:10.734015	526
864	Poor Violet	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!	4	2019-08-16 22:33:10.738387	2019-08-16 22:33:10.738387	526
865	Apu Nahasapeemapetilon	You tried your best and you failed miserably. The lesson is: Never try.	1	2019-08-16 22:33:10.746124	2019-08-16 22:33:10.746124	527
866	Charles Montgomery Burns	Kill my boss? Do I dare live out the American dream?	3	2019-08-16 22:33:10.750795	2019-08-16 22:33:10.750795	527
867	Nelson Muntz	You tried your best and you failed miserably. The lesson is: Never try.	3	2019-08-16 22:33:10.755819	2019-08-16 22:33:10.755819	527
868	Richard	Trust me, Bart, it's better to walk in on both your parents than on just one of them.	5	2019-08-16 22:33:10.760475	2019-08-16 22:33:10.760475	527
869	Waylon Smithers	Kill my boss? Do I dare live out the American dream?	2	2019-08-16 22:33:10.786753	2019-08-16 22:33:10.786753	529
870	Johnny Tightlips	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers.	4	2019-08-16 22:33:10.802764	2019-08-16 22:33:10.802764	530
871	Cookie Kwan	What’s the point of going out? We’re just gonna wind up back home anyway.	4	2019-08-16 22:33:10.807264	2019-08-16 22:33:10.807264	530
872	Lunchlady Doris	I'm not normally a praying man, but if you're up there, please save me, Superman!	2	2019-08-16 22:33:10.814826	2019-08-16 22:33:10.814826	531
873	Sideshow Mel	If you pray to the wrong god, you might just make the right one madder and madder.	5	2019-08-16 22:33:10.819203	2019-08-16 22:33:10.819203	531
874	Legs	Trust me, Bart, it's better to walk in on both your parents than on just one of them.	4	2019-08-16 22:33:10.824204	2019-08-16 22:33:10.824204	531
875	Gunter	Oh, loneliness and cheeseburgers are a dangerous mix.	1	2019-08-16 22:33:10.852467	2019-08-16 22:33:10.852467	533
876	Dr. Nick Riviera	Marriage is like a coffin and each kid is another nail.	2	2019-08-16 22:33:10.856754	2019-08-16 22:33:10.856754	533
877	Yes Guy	What’s the point of going out? We’re just gonna wind up back home anyway.	1	2019-08-16 22:33:10.860994	2019-08-16 22:33:10.860994	533
878	Ms. Albright	If you pray to the wrong god, you might just make the right one madder and madder.	4	2019-08-16 22:33:10.869118	2019-08-16 22:33:10.869118	534
879	Nelson Muntz	Oh, loneliness and cheeseburgers are a dangerous mix.	1	2019-08-16 22:33:10.874078	2019-08-16 22:33:10.874078	534
880	Ling Bouvier	Trust me, Bart, it's better to walk in on both your parents than on just one of them.	1	2019-08-16 22:33:10.878445	2019-08-16 22:33:10.878445	534
881	Herman Hermann	Kill my boss? Do I dare live out the American dream?	1	2019-08-16 22:33:10.883002	2019-08-16 22:33:10.883002	534
882	Herman Hermann	I'm not normally a praying man, but if you're up there, please save me, Superman!	4	2019-08-16 22:33:10.890544	2019-08-16 22:33:10.890544	535
883	Nelson Muntz	Life is just one crushing defeat after another until you just wish Flanders was dead.	1	2019-08-16 22:33:10.896099	2019-08-16 22:33:10.896099	535
884	Duffman	Oh, loneliness and cheeseburgers are a dangerous mix.	1	2019-08-16 22:33:10.900461	2019-08-16 22:33:10.900461	535
885	Herbert Powell	Kill my boss? Do I dare live out the American dream?	1	2019-08-16 22:33:10.904735	2019-08-16 22:33:10.904735	535
886	Legs	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers.	4	2019-08-16 22:33:10.912429	2019-08-16 22:33:10.912429	536
887	Eddie	It takes two to lie: one to lie and one to listen.	1	2019-08-16 22:33:10.916789	2019-08-16 22:33:10.916789	536
888	Ralph Wiggum	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers.	3	2019-08-16 22:33:10.921127	2019-08-16 22:33:10.921127	536
889	Herbert Powell	Oh, loneliness and cheeseburgers are a dangerous mix.	1	2019-08-16 22:33:10.932318	2019-08-16 22:33:10.932318	537
890	Cookie Kwan	Trust me, Bart, it's better to walk in on both your parents than on just one of them.	4	2019-08-16 22:33:10.949915	2019-08-16 22:33:10.949915	538
891	The Rich Texan	That's it! You people have stood in my way long enough. I'm going to clown college!	2	2019-08-16 22:33:10.954505	2019-08-16 22:33:10.954505	538
892	Radioactive Man	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!	4	2019-08-16 22:33:10.998923	2019-08-16 22:33:10.998923	540
893	Declan Desmond	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers.	2	2019-08-16 22:33:11.003633	2019-08-16 22:33:11.003633	540
894	Snake Jailbird	It takes two to lie: one to lie and one to listen.	1	2019-08-16 22:33:11.011542	2019-08-16 22:33:11.011542	541
895	Jimbo Jones	Oh, loneliness and cheeseburgers are a dangerous mix.	3	2019-08-16 22:33:11.048701	2019-08-16 22:33:11.048701	543
896	Richard	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers.	4	2019-08-16 22:33:11.053136	2019-08-16 22:33:11.053136	543
897	Joey	Oh, loneliness and cheeseburgers are a dangerous mix.	5	2019-08-16 22:33:11.058091	2019-08-16 22:33:11.058091	543
898	Ms. Albright	Oh, loneliness and cheeseburgers are a dangerous mix.	2	2019-08-16 22:33:11.062461	2019-08-16 22:33:11.062461	543
899	Sarah Wiggum	What’s the point of going out? We’re just gonna wind up back home anyway.	3	2019-08-16 22:33:11.067069	2019-08-16 22:33:11.067069	543
900	Richard	Kill my boss? Do I dare live out the American dream?	3	2019-08-16 22:33:11.074971	2019-08-16 22:33:11.074971	544
901	Carl Carlson	Kill my boss? Do I dare live out the American dream?	4	2019-08-16 22:33:11.079564	2019-08-16 22:33:11.079564	544
902	Radioactive Man	It takes two to lie: one to lie and one to listen.	4	2019-08-16 22:33:11.08384	2019-08-16 22:33:11.08384	544
903	Professor John Frink	Son, if you really want something in this life, you have to work for it. Now quiet! They're about to announce the lottery numbers.	4	2019-08-16 22:33:11.092884	2019-08-16 22:33:11.092884	545
904	Database	It takes two to lie: one to lie and one to listen.	3	2019-08-16 22:33:11.09755	2019-08-16 22:33:11.09755	545
905	Lou	I'm not normally a praying man, but if you're up there, please save me, Superman!	5	2019-08-16 22:33:11.102026	2019-08-16 22:33:11.102026	545
906	Helen Lovejoy	Life is just one crushing defeat after another until you just wish Flanders was dead.	5	2019-08-16 22:33:11.124631	2019-08-16 22:33:11.124631	546
907	Richard	Kill my boss? Do I dare live out the American dream?	3	2019-08-16 22:33:11.132068	2019-08-16 22:33:11.132068	546
908	Doug	It takes two to lie: one to lie and one to listen.	4	2019-08-16 22:33:11.139198	2019-08-16 22:33:11.139198	546
910	Reverend Timothy Lovejoy	I'm not normally a praying man, but if you're up there, please save me, Superman!	4	2019-08-16 22:33:11.168799	2019-08-16 22:33:11.168799	548
911	Aristotle Amadopolis	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!	3	2019-08-16 22:33:11.180052	2019-08-16 22:33:11.180052	549
912	Ginger Flanders	Life is just one crushing defeat after another until you just wish Flanders was dead.	1	2019-08-16 22:33:11.184713	2019-08-16 22:33:11.184713	549
913	Luigi	You tried your best and you failed miserably. The lesson is: Never try.	1	2019-08-16 22:33:11.190001	2019-08-16 22:33:11.190001	549
914	Comic Book Guy	To alcohol! The cause of, and solution to, all of life's problems.	1	2019-08-16 22:33:11.22303	2019-08-16 22:33:11.22303	551
915	Atkins, State Comptroller	Trust me, Bart, it's better to walk in on both your parents than on just one of them.	3	2019-08-16 22:33:11.227592	2019-08-16 22:33:11.227592	551
916	Captain Horatio McCallister	It takes two to lie: one to lie and one to listen.	1	2019-08-16 22:33:11.234678	2019-08-16 22:33:11.234678	551
917	Charles Montgomery Burns	If you pray to the wrong god, you might just make the right one madder and madder.	2	2019-08-16 22:33:11.242564	2019-08-16 22:33:11.242564	552
918	Disco Stu	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!	1	2019-08-16 22:33:11.247063	2019-08-16 22:33:11.247063	552
919	Charles Montgomery Burns	You tried your best and you failed miserably. The lesson is: Never try.	2	2019-08-16 22:33:11.252485	2019-08-16 22:33:11.252485	552
920	Chief Clancy Wiggum	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!	4	2019-08-16 22:33:11.274557	2019-08-16 22:33:11.274557	553
921	Edna Krabappel	Trust me, Bart, it's better to walk in on both your parents than on just one of them.	3	2019-08-16 22:33:11.278968	2019-08-16 22:33:11.278968	553
922	Principal Seymour Skinner	Trust me, Bart, it's better to walk in on both your parents than on just one of them.	1	2019-08-16 22:33:11.301672	2019-08-16 22:33:11.301672	554
923	Bernice Hibbert	What’s the point of going out? We’re just gonna wind up back home anyway.	3	2019-08-16 22:33:11.306211	2019-08-16 22:33:11.306211	554
924	Martin Prince	Marriage is like a coffin and each kid is another nail.	4	2019-08-16 22:33:11.314098	2019-08-16 22:33:11.314098	555
925	Dr. J. Loren Pryor	Life is just one crushing defeat after another until you just wish Flanders was dead.	1	2019-08-16 22:33:11.320063	2019-08-16 22:33:11.320063	555
926	Martin Prince	To alcohol! The cause of, and solution to, all of life's problems.	1	2019-08-16 22:33:11.324601	2019-08-16 22:33:11.324601	555
927	Boobarella	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!	1	2019-08-16 22:33:11.332501	2019-08-16 22:33:11.332501	556
928	Wendell Borton	Life is just one crushing defeat after another until you just wish Flanders was dead.	3	2019-08-16 22:33:11.336901	2019-08-16 22:33:11.336901	556
929	Patches Violet	It takes two to lie: one to lie and one to listen.	5	2019-08-16 22:33:11.341153	2019-08-16 22:33:11.341153	556
930	Jimbo Jones	To alcohol! The cause of, and solution to, all of life's problems.	1	2019-08-16 22:33:11.358495	2019-08-16 22:33:11.358495	557
931	Mr. Costington	It takes two to lie: one to lie and one to listen.	5	2019-08-16 22:33:11.397625	2019-08-16 22:33:11.397625	558
932	Drederick Tatum	Life is just one crushing defeat after another until you just wish Flanders was dead.	5	2019-08-16 22:33:11.406525	2019-08-16 22:33:11.406525	558
933	Dave Shutton	Marriage is like a coffin and each kid is another nail.	1	2019-08-16 22:33:11.413748	2019-08-16 22:33:11.413748	558
934	Mayor "Diamond Joe" Quimby	Oh, loneliness and cheeseburgers are a dangerous mix.	5	2019-08-16 22:33:11.421177	2019-08-16 22:33:11.421177	558
935	Drederick Tatum	I'm not normally a praying man, but if you're up there, please save me, Superman!	1	2019-08-16 22:33:11.427889	2019-08-16 22:33:11.427889	558
936	Mary Bailey	If you pray to the wrong god, you might just make the right one madder and madder.	1	2019-08-16 22:33:11.439769	2019-08-16 22:33:11.439769	559
937	Shauna Chalmers	What’s the point of going out? We’re just gonna wind up back home anyway.	3	2019-08-16 22:33:11.448068	2019-08-16 22:33:11.448068	559
938	Milhouse Van Houten	I'm not normally a praying man, but if you're up there, please save me, Superman!	2	2019-08-16 22:33:11.456985	2019-08-16 22:33:11.456985	559
939	Cookie Kwan	It takes two to lie: one to lie and one to listen.	3	2019-08-16 22:33:11.464573	2019-08-16 22:33:11.464573	559
940	Frankie the Squealer	Life is just one crushing defeat after another until you just wish Flanders was dead.	5	2019-08-16 22:33:11.476596	2019-08-16 22:33:11.476596	560
941	Capital City Goofball	Life is just one crushing defeat after another until you just wish Flanders was dead.	2	2019-08-16 22:33:11.481963	2019-08-16 22:33:11.481963	560
942	Drederick Tatum	To alcohol! The cause of, and solution to, all of life's problems.	1	2019-08-16 22:33:11.486469	2019-08-16 22:33:11.486469	560
943	Sideshow Mel	To alcohol! The cause of, and solution to, all of life's problems.	1	2019-08-16 22:33:11.491788	2019-08-16 22:33:11.491788	560
944	Ugolin	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!	5	2019-08-16 22:33:11.49659	2019-08-16 22:33:11.49659	560
945	Superintendent Gary Chalmers	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!	1	2019-08-16 22:33:11.505669	2019-08-16 22:33:11.505669	561
946	Wiseguy	You tried your best and you failed miserably. The lesson is: Never try.	5	2019-08-16 22:33:11.510309	2019-08-16 22:33:11.510309	561
947	Lois Pennycandy	You tried your best and you failed miserably. The lesson is: Never try.	3	2019-08-16 22:33:11.515562	2019-08-16 22:33:11.515562	561
948	Birchibald "Birch" T. Barlow	To alcohol! The cause of, and solution to, all of life's problems.	5	2019-08-16 22:33:11.530846	2019-08-16 22:33:11.530846	562
949	Allison Taylor	To alcohol! The cause of, and solution to, all of life's problems.	5	2019-08-16 22:33:11.53561	2019-08-16 22:33:11.53561	562
950	Lou	That's it! You people have stood in my way long enough. I'm going to clown college!	1	2019-08-16 22:33:11.554457	2019-08-16 22:33:11.554457	563
951	Ms. Albright	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!	3	2019-08-16 22:33:11.558884	2019-08-16 22:33:11.558884	563
952	Bill	You tried your best and you failed miserably. The lesson is: Never try.	1	2019-08-16 22:33:11.569734	2019-08-16 22:33:11.569734	563
953	Artie Ziff	To alcohol! The cause of, and solution to, all of life's problems.	3	2019-08-16 22:33:11.582436	2019-08-16 22:33:11.582436	563
954	Sherri	It takes two to lie: one to lie and one to listen.	1	2019-08-16 22:33:11.602392	2019-08-16 22:33:11.602392	564
955	Roger Meyers, Jr.	I'm not normally a praying man, but if you're up there, please save me, Superman!	5	2019-08-16 22:33:11.606948	2019-08-16 22:33:11.606948	564
956	Squeaky-Voiced Teen	You tried your best and you failed miserably. The lesson is: Never try.	4	2019-08-16 22:33:11.612768	2019-08-16 22:33:11.612768	564
957	Otto Mann	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!	3	2019-08-16 22:33:11.621298	2019-08-16 22:33:11.621298	564
958	Yes Guy	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!	4	2019-08-16 22:33:11.626054	2019-08-16 22:33:11.626054	564
959	Kearney Zzyzwicz	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!	3	2019-08-16 22:33:11.630613	2019-08-16 22:33:11.630613	564
960	Benjamin	You tried your best and you failed miserably. The lesson is: Never try.	4	2019-08-16 22:33:11.65383	2019-08-16 22:33:11.65383	566
961	Moe Szyslak	Life is just one crushing defeat after another until you just wish Flanders was dead.	1	2019-08-16 22:33:11.683929	2019-08-16 22:33:11.683929	568
962	Louie	That's it! You people have stood in my way long enough. I'm going to clown college!	3	2019-08-16 22:33:11.701097	2019-08-16 22:33:11.701097	569
963	Shauna Chalmers	It takes two to lie: one to lie and one to listen.	4	2019-08-16 22:33:11.705711	2019-08-16 22:33:11.705711	569
964	Dr. Julius Hibbert	When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!	4	2019-08-16 22:33:11.710308	2019-08-16 22:33:11.710308	569
965	Ms. Albright	It takes two to lie: one to lie and one to listen.	4	2019-08-16 22:33:11.714659	2019-08-16 22:33:11.714659	569
966	Mona Simpson	Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!	4	2019-08-16 22:33:11.71902	2019-08-16 22:33:11.71902	569
967	Dr. Nick Riviera	Life is just one crushing defeat after another until you just wish Flanders was dead.	4	2019-08-16 22:33:11.723548	2019-08-16 22:33:11.723548	569
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: lakebramlett
--

COPY public.schema_migrations (version) FROM stdin;
20190809150927
20190809151141
20190809161612
20190809161815
20190809162706
20190816151911
20190816165821
20190816184203
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: lakebramlett
--

COPY public.users (id, email, encrypted_password, admin, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	lake.bramlett@gmail.com	$2a$11$ZecptH/vQCgnMVeMP7uWz.BlLrFFoodkLnEcc5CF301cj8LQt2y42	t	\N	\N	\N	2019-08-16 15:57:36.185633	2019-08-16 19:53:11.516093
2	lake.bramlett@yahoo.com	$2a$11$azJWmIofZ9lni07yOGJu9e57DHUpL4tRAJLT2HjpoLytLnYFfzBOi	f	\N	\N	\N	2019-08-16 19:53:31.439036	2019-08-16 19:53:31.439036
3	test@test.com	$2a$11$fuW3dsVjw9SPgk77ZKpAP.jCc2p7aBjz9OO19p.BR2jmgVXiq/SP6	f	\N	\N	\N	2019-08-16 23:57:05.362521	2019-08-16 23:57:05.362521
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lakebramlett
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 4, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lakebramlett
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 4, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lakebramlett
--

SELECT pg_catalog.setval('public.products_id_seq', 569, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lakebramlett
--

SELECT pg_catalog.setval('public.reviews_id_seq', 969, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lakebramlett
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: lakebramlett
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: lakebramlett
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: lakebramlett
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: lakebramlett
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: lakebramlett
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: lakebramlett
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

