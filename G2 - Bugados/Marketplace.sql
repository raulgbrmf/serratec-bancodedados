--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-07-27 16:24:57

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

SET default_table_access_method = heap;

--
-- TOC entry 205 (class 1259 OID 16820)
-- Name: classe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classe (
    id integer NOT NULL,
    categoria character varying(15) NOT NULL
);


ALTER TABLE public.classe OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16818)
-- Name: classe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.classe_id_seq OWNER TO postgres;

--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 204
-- Name: classe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classe_id_seq OWNED BY public.classe.id;


--
-- TOC entry 215 (class 1259 OID 16890)
-- Name: endereco_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco_usuario (
    id integer NOT NULL,
    cep character varying(9) NOT NULL,
    rua character varying(50) NOT NULL,
    numero integer NOT NULL,
    bairro character varying(30) NOT NULL,
    cidade character varying(50) NOT NULL,
    estado character varying(2) NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.endereco_usuario OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16888)
-- Name: endereco_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.endereco_usuario_id_seq OWNER TO postgres;

--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 214
-- Name: endereco_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_usuario_id_seq OWNED BY public.endereco_usuario.id;


--
-- TOC entry 211 (class 1259 OID 16859)
-- Name: item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item (
    id integer NOT NULL,
    qtd_item integer NOT NULL,
    produto_id integer NOT NULL,
    pedido_compra_id integer NOT NULL
);


ALTER TABLE public.item OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16857)
-- Name: item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_id_seq OWNER TO postgres;

--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 210
-- Name: item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;


--
-- TOC entry 209 (class 1259 OID 16846)
-- Name: pedido_compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido_compra (
    id integer NOT NULL,
    data date NOT NULL,
    valor real NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.pedido_compra OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16844)
-- Name: pedido_compra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedido_compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pedido_compra_id_seq OWNER TO postgres;

--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 208
-- Name: pedido_compra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedido_compra_id_seq OWNED BY public.pedido_compra.id;


--
-- TOC entry 207 (class 1259 OID 16828)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    valor_unit real NOT NULL,
    data_fabric date NOT NULL,
    desc_prod character varying(50) NOT NULL,
    qtd_prod integer NOT NULL,
    usuario_id integer NOT NULL,
    nome_vendedor character varying(100) NOT NULL,
    classe_id integer NOT NULL
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16826)
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_id_seq OWNER TO postgres;

--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 206
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;


--
-- TOC entry 213 (class 1259 OID 16877)
-- Name: telefone_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.telefone_usuario (
    id integer NOT NULL,
    telefone character varying(14) NOT NULL,
    tipo character varying(10) NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE public.telefone_usuario OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16875)
-- Name: telefone_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.telefone_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telefone_usuario_id_seq OWNER TO postgres;

--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 212
-- Name: telefone_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.telefone_usuario_id_seq OWNED BY public.telefone_usuario.id;


--
-- TOC entry 203 (class 1259 OID 16799)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome_cliente character varying(100) NOT NULL,
    nick_name character varying(10) NOT NULL,
    cpf character varying(14) NOT NULL,
    email character varying(50) NOT NULL,
    data_nasc date NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16797)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 202
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 2724 (class 2604 OID 16823)
-- Name: classe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classe ALTER COLUMN id SET DEFAULT nextval('public.classe_id_seq'::regclass);


--
-- TOC entry 2729 (class 2604 OID 16893)
-- Name: endereco_usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_usuario ALTER COLUMN id SET DEFAULT nextval('public.endereco_usuario_id_seq'::regclass);


--
-- TOC entry 2727 (class 2604 OID 16862)
-- Name: item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);


--
-- TOC entry 2726 (class 2604 OID 16849)
-- Name: pedido_compra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido_compra ALTER COLUMN id SET DEFAULT nextval('public.pedido_compra_id_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 16831)
-- Name: produto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);


--
-- TOC entry 2728 (class 2604 OID 16880)
-- Name: telefone_usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefone_usuario ALTER COLUMN id SET DEFAULT nextval('public.telefone_usuario_id_seq'::regclass);


--
-- TOC entry 2723 (class 2604 OID 16802)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 2880 (class 0 OID 16820)
-- Dependencies: 205
-- Data for Name: classe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.classe (id, categoria) FROM stdin;
1	alimentos
2	bebidas
3	eletrônicos
4	descartáveis
5	papelaria
\.


--
-- TOC entry 2890 (class 0 OID 16890)
-- Dependencies: 215
-- Data for Name: endereco_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.endereco_usuario (id, cep, rua, numero, bairro, cidade, estado, usuario_id) FROM stdin;
1	25675-160	Rua Bataillard	1179	Mosela	Petrópolis	RJ	1
2	25678-132	Rua das Flores	123	Centro	Petrópolis	RJ	2
3	25645-705	Rua Pedras Brancas	179	Mosela	Petrópolis	RJ	3
4	23478-465	Rua Jazueiro	175	Quitandinha	Petrópolis	RJ	4
5	25987-123	Rua Central	263	Bingen	Petrópolis	RJ	5
\.


--
-- TOC entry 2886 (class 0 OID 16859)
-- Dependencies: 211
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item (id, qtd_item, produto_id, pedido_compra_id) FROM stdin;
11	1	2	1
12	1	2	2
13	1	3	3
14	1	4	4
15	1	5	5
\.


--
-- TOC entry 2884 (class 0 OID 16846)
-- Dependencies: 209
-- Data for Name: pedido_compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedido_compra (id, data, valor, usuario_id) FROM stdin;
1	2020-07-23	4.95	1
2	2020-07-22	6.99	2
3	2020-07-21	4.99	3
4	2020-07-20	999.99	4
5	2020-07-23	10	5
6	2020-07-23	4.95	1
7	2020-07-22	6.99	2
8	2020-07-21	4.99	3
9	2020-07-20	999.99	4
10	2020-07-23	10	5
\.


--
-- TOC entry 2882 (class 0 OID 16828)
-- Dependencies: 207
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (id, valor_unit, data_fabric, desc_prod, qtd_prod, usuario_id, nome_vendedor, classe_id) FROM stdin;
2	4.95	2020-05-25	Leite Integral	100	1	Wecsisley Jesus	1
3	6.99	2020-06-25	Coca Cola 2 litros	100	2	Fabiene Avilla	2
4	4.99	2019-05-21	Papel Toalha	100	3	Thayná Oliveira	4
5	999.99	2020-05-25	Celular Motorola	100	4	Douglas Tinoco	3
6	10	2020-05-25	Caderno 10 matérias	100	5	Mariana Cohen	5
\.


--
-- TOC entry 2888 (class 0 OID 16877)
-- Dependencies: 213
-- Data for Name: telefone_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.telefone_usuario (id, telefone, tipo, usuario_id) FROM stdin;
1	(24)2246-9875	fixo	1
2	(24)2221-3258	fixo	2
3	(21)99921-5678	celular	3
4	(22)2246-2578	fixo	4
5	(24)98863-7821	celular	5
\.


--
-- TOC entry 2878 (class 0 OID 16799)
-- Dependencies: 203
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id, nome_cliente, nick_name, cpf, email, data_nasc) FROM stdin;
2	Wecsisley Jesus	wecsisley	111.111.111-11	teste001@gmail.com	1995-09-01
3	Thayná de Oliveira	thayná	222.222.222-22	teste002@gmail.com	1986-02-12
4	Mariana Cohen	mariana	333.333.333-33	teste003@gmail.com	1985-05-13
5	Douglas Tinoco	douglas	444.444.444-44	teste004@gmail.com	1991-04-23
1	Fabiene Avilla	avilla	023.367.569-72	fabiene.avilla@gmail.com	1980-01-10
\.


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 204
-- Name: classe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classe_id_seq', 5, true);


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 214
-- Name: endereco_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_usuario_id_seq', 5, true);


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 210
-- Name: item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_id_seq', 15, true);


--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 208
-- Name: pedido_compra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedido_compra_id_seq', 10, true);


--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 206
-- Name: produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_seq', 6, true);


--
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 212
-- Name: telefone_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.telefone_usuario_id_seq', 5, true);


--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 202
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 5, true);


--
-- TOC entry 2733 (class 2606 OID 16825)
-- Name: classe classe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classe
    ADD CONSTRAINT classe_pkey PRIMARY KEY (id);


--
-- TOC entry 2743 (class 2606 OID 16895)
-- Name: endereco_usuario endereco_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_usuario
    ADD CONSTRAINT endereco_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2739 (class 2606 OID 16864)
-- Name: item item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);


--
-- TOC entry 2737 (class 2606 OID 16851)
-- Name: pedido_compra pedido_compra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido_compra
    ADD CONSTRAINT pedido_compra_pkey PRIMARY KEY (id);


--
-- TOC entry 2735 (class 2606 OID 16833)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id);


--
-- TOC entry 2741 (class 2606 OID 16882)
-- Name: telefone_usuario telefone_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefone_usuario
    ADD CONSTRAINT telefone_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2731 (class 2606 OID 16804)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2750 (class 2606 OID 16896)
-- Name: endereco_usuario endereco_usuario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco_usuario
    ADD CONSTRAINT endereco_usuario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- TOC entry 2748 (class 2606 OID 16870)
-- Name: item item_pedido_compra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pedido_compra_id_fkey FOREIGN KEY (pedido_compra_id) REFERENCES public.pedido_compra(id);


--
-- TOC entry 2747 (class 2606 OID 16865)
-- Name: item item_produto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(id);


--
-- TOC entry 2746 (class 2606 OID 16852)
-- Name: pedido_compra pedido_compra_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido_compra
    ADD CONSTRAINT pedido_compra_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- TOC entry 2745 (class 2606 OID 16839)
-- Name: produto produto_classe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_classe_id_fkey FOREIGN KEY (classe_id) REFERENCES public.classe(id);


--
-- TOC entry 2744 (class 2606 OID 16834)
-- Name: produto produto_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- TOC entry 2749 (class 2606 OID 16883)
-- Name: telefone_usuario telefone_usuario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefone_usuario
    ADD CONSTRAINT telefone_usuario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


-- Completed on 2020-07-27 16:24:57

--
-- PostgreSQL database dump complete
--

