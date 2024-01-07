--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)

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
-- Name: categoria; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nombre_categoria character varying(50)
);


ALTER TABLE public.categoria OWNER TO lansan69;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_id_categoria_seq OWNER TO lansan69;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;


--
-- Name: celular; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.celular (
    id_celular integer NOT NULL,
    id_cliente integer,
    numero character varying(20) NOT NULL
);


ALTER TABLE public.celular OWNER TO lansan69;

--
-- Name: celular_id_celular_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.celular_id_celular_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.celular_id_celular_seq OWNER TO lansan69;

--
-- Name: celular_id_celular_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.celular_id_celular_seq OWNED BY public.celular.id_celular;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying(50) NOT NULL,
    p_apellido character varying(50),
    s_apellido character varying(50),
    rfc character varying(15),
    calle character varying(50),
    colonia character varying(50),
    ciudad character varying(50),
    codigo_postal integer,
    correo character varying(50) NOT NULL,
    password character varying(30) NOT NULL
);


ALTER TABLE public.cliente OWNER TO lansan69;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO lansan69;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- Name: datos_tarjeta; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.datos_tarjeta (
    id_cliente integer,
    numero_tarjeta character varying(16),
    vencimiento character varying(5)
);


ALTER TABLE public.datos_tarjeta OWNER TO lansan69;

--
-- Name: dia; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.dia (
    id_dia integer NOT NULL,
    dia character varying(20)
);


ALTER TABLE public.dia OWNER TO lansan69;

--
-- Name: dia_id_dia_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.dia_id_dia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dia_id_dia_seq OWNER TO lansan69;

--
-- Name: dia_id_dia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.dia_id_dia_seq OWNED BY public.dia.id_dia;


--
-- Name: empleado; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre character varying(100) NOT NULL,
    p_apellido character varying(50) DEFAULT 'Sin primer apellido'::character varying,
    s_apellido character varying(50) DEFAULT 'Sin segundo apellido'::character varying,
    rfc character varying(13) NOT NULL,
    id_puesto integer,
    id_sucursal integer NOT NULL,
    password character varying(30),
    id_estado integer DEFAULT 1
);


ALTER TABLE public.empleado OWNER TO lansan69;

--
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleado_id_empleado_seq OWNER TO lansan69;

--
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;


--
-- Name: estado_empleado; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.estado_empleado (
    id_estado integer NOT NULL,
    estado character varying(15)
);


ALTER TABLE public.estado_empleado OWNER TO lansan69;

--
-- Name: estado_empleado_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.estado_empleado_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estado_empleado_id_estado_seq OWNER TO lansan69;

--
-- Name: estado_empleado_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.estado_empleado_id_estado_seq OWNED BY public.estado_empleado.id_estado;


--
-- Name: estado_sucursal; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.estado_sucursal (
    id_estado integer NOT NULL,
    estado character varying(15)
);


ALTER TABLE public.estado_sucursal OWNER TO lansan69;

--
-- Name: estado_sucursal_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.estado_sucursal_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estado_sucursal_id_estado_seq OWNER TO lansan69;

--
-- Name: estado_sucursal_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.estado_sucursal_id_estado_seq OWNED BY public.estado_sucursal.id_estado;


--
-- Name: horario_empleado; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.horario_empleado (
    id_empleado integer,
    id_turno integer,
    id_dia integer
);


ALTER TABLE public.horario_empleado OWNER TO lansan69;

--
-- Name: horario_sucursal; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.horario_sucursal (
    id_horario_sucursal integer NOT NULL,
    id_sucursal integer,
    id_dia integer,
    hora_apertura time without time zone,
    hora_clausura time without time zone
);


ALTER TABLE public.horario_sucursal OWNER TO lansan69;

--
-- Name: horario_sucursal_id_horario_sucursal_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.horario_sucursal_id_horario_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.horario_sucursal_id_horario_sucursal_seq OWNER TO lansan69;

--
-- Name: horario_sucursal_id_horario_sucursal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.horario_sucursal_id_horario_sucursal_seq OWNED BY public.horario_sucursal.id_horario_sucursal;


--
-- Name: marca; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.marca (
    id_marca integer NOT NULL,
    nombre_marca character varying(50)
);


ALTER TABLE public.marca OWNER TO lansan69;

--
-- Name: marca_id_marca_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.marca_id_marca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.marca_id_marca_seq OWNER TO lansan69;

--
-- Name: marca_id_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.marca_id_marca_seq OWNED BY public.marca.id_marca;


--
-- Name: modelo; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.modelo (
    id_modelo integer NOT NULL,
    nombre_modelo character varying(50),
    id_marca integer
);


ALTER TABLE public.modelo OWNER TO lansan69;

--
-- Name: modelo_id_modelo_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.modelo_id_modelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modelo_id_modelo_seq OWNER TO lansan69;

--
-- Name: modelo_id_modelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.modelo_id_modelo_seq OWNED BY public.modelo.id_modelo;


--
-- Name: pago; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.pago (
    id_pago integer NOT NULL,
    tipo_pago character varying(30)
);


ALTER TABLE public.pago OWNER TO lansan69;

--
-- Name: pago_efectivo; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.pago_efectivo (
    id_venta integer,
    recibido numeric(10,2)
);


ALTER TABLE public.pago_efectivo OWNER TO lansan69;

--
-- Name: pago_id_pago_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.pago_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pago_id_pago_seq OWNER TO lansan69;

--
-- Name: pago_id_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.pago_id_pago_seq OWNED BY public.pago.id_pago;


--
-- Name: pago_tarjeta; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.pago_tarjeta (
    id_venta integer,
    numero_seguimiento bigint
);


ALTER TABLE public.pago_tarjeta OWNER TO lansan69;

--
-- Name: permiso; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.permiso (
    id_puesto integer NOT NULL,
    id_tareas integer NOT NULL
);


ALTER TABLE public.permiso OWNER TO lansan69;

--
-- Name: producto; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    nombre character varying(250) NOT NULL,
    tipo_producto character varying(50) NOT NULL,
    marca character varying(50) DEFAULT 'Ernie Ball'::character varying,
    precio_venta numeric(10,2),
    descripcion character varying(500),
    modelo character varying(50),
    existencia integer DEFAULT 0,
    apartado integer DEFAULT 0,
    id_proveedor integer,
    categoria character varying(50),
    image_url character varying(50),
    estado_venta character varying(20) DEFAULT 'en venta'::character varying,
    id_sucursal integer
);


ALTER TABLE public.producto OWNER TO lansan69;

--
-- Name: producto_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.producto_id_producto_seq OWNER TO lansan69;

--
-- Name: producto_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.producto_id_producto_seq OWNED BY public.producto.id_producto;


--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.proveedor (
    id_proveedor integer NOT NULL,
    nombre character varying(100) NOT NULL,
    rfc character varying(13) NOT NULL,
    razon_social character varying(100),
    codigo_postal integer,
    nombre_contacto character varying(50) NOT NULL,
    primer_apellido character varying(50),
    segundo_apellido character varying(50),
    correo character varying(50) NOT NULL,
    colonia character varying(50),
    ciudad character varying(50),
    estado_proveedor character varying(20),
    id_sucursal integer
);


ALTER TABLE public.proveedor OWNER TO lansan69;

--
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.proveedor_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedor_id_proveedor_seq OWNER TO lansan69;

--
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.proveedor_id_proveedor_seq OWNED BY public.proveedor.id_proveedor;


--
-- Name: puesto; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.puesto (
    id_puesto integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE public.puesto OWNER TO lansan69;

--
-- Name: puesto_id_puesto_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.puesto_id_puesto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.puesto_id_puesto_seq OWNER TO lansan69;

--
-- Name: puesto_id_puesto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.puesto_id_puesto_seq OWNED BY public.puesto.id_puesto;


--
-- Name: sucursal; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.sucursal (
    id_sucursal integer NOT NULL,
    nombre character varying(30),
    colonia character varying(50),
    ciudad character varying(50),
    codigo_postal character varying(50),
    id_estado integer DEFAULT 1
);


ALTER TABLE public.sucursal OWNER TO lansan69;

--
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.sucursal_id_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sucursal_id_sucursal_seq OWNER TO lansan69;

--
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.sucursal_id_sucursal_seq OWNED BY public.sucursal.id_sucursal;


--
-- Name: tarea; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.tarea (
    id_tareas integer NOT NULL,
    tarea character varying(20)
);


ALTER TABLE public.tarea OWNER TO lansan69;

--
-- Name: tareas_id_tareas_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.tareas_id_tareas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tareas_id_tareas_seq OWNER TO lansan69;

--
-- Name: tareas_id_tareas_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.tareas_id_tareas_seq OWNED BY public.tarea.id_tareas;


--
-- Name: telefono; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.telefono (
    id_telefono integer NOT NULL,
    id_cliente integer,
    numero character varying(20) NOT NULL
);


ALTER TABLE public.telefono OWNER TO lansan69;

--
-- Name: telefono_id_telefono_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.telefono_id_telefono_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telefono_id_telefono_seq OWNER TO lansan69;

--
-- Name: telefono_id_telefono_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.telefono_id_telefono_seq OWNED BY public.telefono.id_telefono;


--
-- Name: turno; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.turno (
    id_turno integer NOT NULL,
    turno character varying(20),
    hora_inicio time without time zone,
    hora_fin time without time zone
);


ALTER TABLE public.turno OWNER TO lansan69;

--
-- Name: turno_id_turno_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.turno_id_turno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.turno_id_turno_seq OWNER TO lansan69;

--
-- Name: turno_id_turno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.turno_id_turno_seq OWNED BY public.turno.id_turno;


--
-- Name: venta; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.venta (
    id_venta integer NOT NULL,
    id_cliente integer,
    fecha timestamp without time zone DEFAULT now(),
    tipo_pago integer,
    monto_total numeric(10,2),
    id_sucursal integer,
    id_empleado integer
);


ALTER TABLE public.venta OWNER TO lansan69;

--
-- Name: venta_id_venta_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.venta_id_venta_seq OWNER TO lansan69;

--
-- Name: venta_id_venta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.venta_id_venta_seq OWNED BY public.venta.id_venta;


--
-- Name: venta_producto; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.venta_producto (
    id_venta integer NOT NULL,
    id_producto integer,
    cantidad integer
);


ALTER TABLE public.venta_producto OWNER TO lansan69;

--
-- Name: venta_producto_id_venta_seq; Type: SEQUENCE; Schema: public; Owner: lansan69
--

CREATE SEQUENCE public.venta_producto_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.venta_producto_id_venta_seq OWNER TO lansan69;

--
-- Name: venta_producto_id_venta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lansan69
--

ALTER SEQUENCE public.venta_producto_id_venta_seq OWNED BY public.venta_producto.id_venta;


--
-- Name: categoria id_categoria; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);


--
-- Name: celular id_celular; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.celular ALTER COLUMN id_celular SET DEFAULT nextval('public.celular_id_celular_seq'::regclass);


--
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- Name: dia id_dia; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.dia ALTER COLUMN id_dia SET DEFAULT nextval('public.dia_id_dia_seq'::regclass);


--
-- Name: empleado id_empleado; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);


--
-- Name: estado_empleado id_estado; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.estado_empleado ALTER COLUMN id_estado SET DEFAULT nextval('public.estado_empleado_id_estado_seq'::regclass);


--
-- Name: estado_sucursal id_estado; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.estado_sucursal ALTER COLUMN id_estado SET DEFAULT nextval('public.estado_sucursal_id_estado_seq'::regclass);


--
-- Name: horario_sucursal id_horario_sucursal; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.horario_sucursal ALTER COLUMN id_horario_sucursal SET DEFAULT nextval('public.horario_sucursal_id_horario_sucursal_seq'::regclass);


--
-- Name: marca id_marca; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.marca ALTER COLUMN id_marca SET DEFAULT nextval('public.marca_id_marca_seq'::regclass);


--
-- Name: modelo id_modelo; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.modelo ALTER COLUMN id_modelo SET DEFAULT nextval('public.modelo_id_modelo_seq'::regclass);


--
-- Name: pago id_pago; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.pago ALTER COLUMN id_pago SET DEFAULT nextval('public.pago_id_pago_seq'::regclass);


--
-- Name: producto id_producto; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.producto ALTER COLUMN id_producto SET DEFAULT nextval('public.producto_id_producto_seq'::regclass);


--
-- Name: proveedor id_proveedor; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.proveedor ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedor_id_proveedor_seq'::regclass);


--
-- Name: puesto id_puesto; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.puesto ALTER COLUMN id_puesto SET DEFAULT nextval('public.puesto_id_puesto_seq'::regclass);


--
-- Name: sucursal id_sucursal; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.sucursal ALTER COLUMN id_sucursal SET DEFAULT nextval('public.sucursal_id_sucursal_seq'::regclass);


--
-- Name: tarea id_tareas; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.tarea ALTER COLUMN id_tareas SET DEFAULT nextval('public.tareas_id_tareas_seq'::regclass);


--
-- Name: telefono id_telefono; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.telefono ALTER COLUMN id_telefono SET DEFAULT nextval('public.telefono_id_telefono_seq'::regclass);


--
-- Name: turno id_turno; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.turno ALTER COLUMN id_turno SET DEFAULT nextval('public.turno_id_turno_seq'::regclass);


--
-- Name: venta id_venta; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.venta ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_id_venta_seq'::regclass);


--
-- Name: venta_producto id_venta; Type: DEFAULT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.venta_producto ALTER COLUMN id_venta SET DEFAULT nextval('public.venta_producto_id_venta_seq'::regclass);


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.categoria (id_categoria, nombre_categoria) FROM stdin;
1	Accesorios
2	Instrumentos Musicales
3	Productos de cuerda
4	Sintetizadores
5	Baterías Electrónicas
6	Estudio de Grabación
7	Efectos de Sonido
8	Controladores MIDI
9	Instrumentos de Cuerda
10	Equipos de Audio
11	Guitarras
12	Micrófonos
13	Mezcladoras de Sonido
14	Accesorios Musicales
15	Teclados
16	Micrófonos de Estudio
17	Instrumentos de Viento
18	Amplificadores
19	Baterías
\.


--
-- Data for Name: celular; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.celular (id_celular, id_cliente, numero) FROM stdin;
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.cliente (id_cliente, nombre, p_apellido, s_apellido, rfc, calle, colonia, ciudad, codigo_postal, correo, password) FROM stdin;
1	mostrador	\N	\N	\N	\N	\N	\N	\N	correo@mostrador	123
2	Brandon	Aguilar	Pérez	soybrandon777	Boulevard retorno 1	Chalco	\N	\N	correo@brandon.com	default
3	Bryan	Rámirez	Pérez	BRSANHG6723	Boulevard retorno 1	Chalco	\N	\N	correo@byan.com	12345
\.


--
-- Data for Name: datos_tarjeta; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.datos_tarjeta (id_cliente, numero_tarjeta, vencimiento) FROM stdin;
\.


--
-- Data for Name: dia; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.dia (id_dia, dia) FROM stdin;
1	lunes
2	martes
3	miércoles
4	jueves
5	viernes
6	sábado
\.


--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.empleado (id_empleado, nombre, p_apellido, s_apellido, rfc, id_puesto, id_sucursal, password, id_estado) FROM stdin;
52	Alan Ivan	Cortéz	GFas	123456asd	3	2	\N	2
53	Bryan	Cortéz	GFas	sdffhaldj	3	2	\N	2
54	Bryan	Cortéz		1qswes	3	1	\N	1
51	test	test	test	test	1	2	12345	1
49	Humberto	Córtez	Espinosa	COES1002	2	2	12345	1
50	Papu	777	Gómez	fkygiygiygiu	2	2	12345	1
48	Alan Ivan	Sánchez	Gómez	SAGA0204I74	3	1	12345	1
55	ventas	Sin primer apellido	Sin segundo apellido	ventas1	3	1	12345	1
\.


--
-- Data for Name: estado_empleado; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.estado_empleado (id_estado, estado) FROM stdin;
1	Activo
2	Inactivo
\.


--
-- Data for Name: estado_sucursal; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.estado_sucursal (id_estado, estado) FROM stdin;
1	Activa
2	Cerrada
\.


--
-- Data for Name: horario_empleado; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.horario_empleado (id_empleado, id_turno, id_dia) FROM stdin;
48	1	1
48	1	2
48	1	3
48	1	4
48	1	5
48	3	6
49	1	1
49	1	2
49	1	3
49	1	4
49	1	5
49	3	6
54	3	1
54	3	2
54	3	3
54	3	4
54	3	5
54	3	6
50	3	1
50	3	2
50	3	3
50	3	4
50	3	5
50	3	6
\.


--
-- Data for Name: horario_sucursal; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.horario_sucursal (id_horario_sucursal, id_sucursal, id_dia, hora_apertura, hora_clausura) FROM stdin;
\.


--
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.marca (id_marca, nombre_marca) FROM stdin;
1	Arieta
2	Monster
3	PRS
4	Spector
5	Marshall
6	Ernie Ball
7	Epiphone
8	Mogami
9	Takamine
10	Córdoba
11	Fender
12	Line 9
13	BOSS
14	Mewmewcat
15	Planet Waves
16	Flamma
17	Korg
18	JBL
19	Gibson
20	Akai
21	Pearl
22	DigiTech
23	Behringer
24	Sennheiser
25	Yamaha
26	Roland
27	Casio
28	Shure
29	D'Addario
30	Sony
31	Meinl
32	Stradivarius
33	Steinway
34	Audio-Technica
35	Ludwig
36	Ampeg
37	Selmer
38	Gon Bops
39	Gretsch
40	Pioneer
41	Remo
42	Hosa
43	Bach
44	KRK
45	Novation
46	Taylor
47	Mackie
48	Moog
49	Neumann
\.


--
-- Data for Name: modelo; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.modelo (id_modelo, nombre_modelo, id_marca) FROM stdin;
1	CTST3455	1
2	Monster-Cable	2
3	SE Custom 24	3
4	NS-5XL	4
5	M-MG30GFX-U	5
6	PO6070	6
7	ES335	7
8	Mogami-XLR	8
9	TEB 23	6
10	EF381SC	9
12	0149322317	11
13	L9345	12
14	DLY243	13
15	B07YDG7RLC	14
18	PW-LMN	15
19	PW-FBC	15
20	PW-PL-01	15
21	0373252580	11
22	FC-20	16
23	Korg-TM50	17
24	Boss-DR880	13
25	JBL-Eon612	18
26	Gibson-LesPaul	19
28	Akai-MPKMini	20
29	Pearl-DrumSet	21
30	DigiTech-RP55	22
31	Behringer-Xenyx802	23
32	Sennheiser-XSW2-835	24
33	G-1000	25
34	E-Drum Pro	26
35	Casio-KB200	27
36	Shure-MC100	28
38	XL-Strings	29
39	Sony-WH1000XM4	30
40	Pearl-FL200	21
41	Meinl-Bongo	31
42	Strad-VM300	32
43	Yamaha-ST400	25
45	Steinway-Grand	33
46	Meinl-CP100	31
47	Audio-Technica-AT-WM300	34
48	Ludwig-Drum	35
49	Gibson-LP2000	19
50	Ampeg-BassAmp	36
52	Selmer-STM	37
53	Gon-Bops-CJ	38
55	Marshall-AMP	5
56	Gretsch-CM1	39
57	Sennheiser-EW100	24
58	Akai-MPK	20
61	Pioneer-HDJ2000	40
62	Remo-PT10	41
63	Hosa-RCA6	42
64	Shure-Condenser	28
65	Ludwig-Drums	35
66	Bach-Trumpet	43
68	Boss-FX	13
69	Korg-Tuner	17
70	KRK-StudioSpeakers	44
71	Novation-MIDI	45
72	Taylor-Acoustic	46
73	Roland-E-Drums	26
74	Mackie-Mixer	47
75	Stradivarius-Cello	32
76	Moog-Modular	48
77	Neumann-StudioMic	49
\.


--
-- Data for Name: pago; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.pago (id_pago, tipo_pago) FROM stdin;
1	Efectico
2	Tarjeta
\.


--
-- Data for Name: pago_efectivo; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.pago_efectivo (id_venta, recibido) FROM stdin;
\.


--
-- Data for Name: pago_tarjeta; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.pago_tarjeta (id_venta, numero_seguimiento) FROM stdin;
55	298888
\.


--
-- Data for Name: permiso; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.permiso (id_puesto, id_tareas) FROM stdin;
1	1
1	2
1	3
1	4
1	5
1	6
2	1
2	2
2	3
2	4
2	5
2	6
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.producto (id_producto, nombre, tipo_producto, marca, precio_venta, descripcion, modelo, existencia, apartado, id_proveedor, categoria, image_url, estado_venta, id_sucursal) FROM stdin;
105	Batería Electrónica	Instrumento Musical	Roland	699.99	Batería electrónica para práctica silenciosa.	Roland-E-Drums	7	3	3	Baterías Electrónicas	images/bateria_elec_roland.jpg	en venta	2
106	Mezcladora de Sonido	Equipo de Audio	Mackie	349.99	Mezcladora de sonido para estudio.	Mackie-Mixer	8	4	4	Mezcladoras de Sonido	images/mezcladora_sonido_mackie.jpg	en venta	2
3	Bajo Spector USA Custom	Instrumento	Spector	50400.00	Bajo de 5 tipo alta escala, con pastillas activas y tres potenciómetros, cuerpo de maple color naranja y acabados negros.	NS-5XL	14	0	3	Productos de cuerda	images/spector_us_custom.png	en venta	1
16	Capotraste	Accesorio	Arieta	460.00	Capotraste compatible con ukulele, guitarra eléctrica y acústica, banjo y mandolina, cuenta con una almohadilla de silicona para proteger el mástil del instrumento sobre el cual es colocado.	CTST3455	11	0	1	Productos de cuerda	images/capo_arieta.png	en venta	1
43	Cable de Guitarra	Accesorio Musical	Monster	19.99	Cable de alta calidad para guitarras eléctricas.	Monster-Cable	50	5	3	Accesorios Musicales	images/cable_ernie.png	en venta	1
12	Cuerdas de níquel calibre 9	Accesorio	Ernie Ball	410.00	Juego de 6 cuerdas de níquel para guitarra eléctrica	SRN34	25	0	2	Productos de cuerda	images/cuerdas_ernie.png	en venta	1
1	Guitarra PRS SE Custom 24	Instrumento	Ernie Ball	20500.00	Guitarra de alta calidad	ErnieBall-Slinky	24	0	1	Accesorios	images/prs_c24_pink.png	en venta	2
13	Púas prodigy	Accesorio	Ernie Ball	38.00	Juego de 6 púas de plástico para guitarra eléctrica. Cada púa tiene 1.5 mm de grosor y están biseladas por los bordes.	PDGY673	32	0	2	Productos de cuerda	images/puas_boss.jpg	en venta	1
11	Receptor y transmisor mewmewcat para guitarra electrica y bajo electrico	Accesorio	Ernie Ball	39.00	Juego de dos piezas color rojo, el transmisor de señal para la guitarra y el receptor para el amplificador. Ambos cuentan con 4 canales de transmisión e indicadores con luces LED	ErnieBall-Slinky	13	0	1	Accesorios	images/rec_trans_mewmewcat.png	en venta	1
18	Limpiador para diapasón de guitarra y bajo	Accesorio	Planet Waves	30.00	Líquido limpiador para mástil de guitarra y bajo	PW-FBC	15	0	1	Productos de cuerda	images/limpiador_pw.png	en venta	1
19	Crema limpiadora para diapasón de guitarra y bajo	Accesorio	Planet Waves	18.00	Crema limpiadora para mástil de guitarra y bajo	PW-PL-01	20	0	1	Productos de cuerda	images/crema_pw.jpg	en venta	1
20	Guitarra Fender Stratocaster	Instrumento	Fender	4700.00	Guitarra de 6 cuerdas tipo stratocaster con cuerpo de álamo color blanco, con tres juegos de pastillas single coil, tres potenciómetros y selector de pastillas.	373252580	27	0	1	Productos de cuerda	images/fender_strato.png	en venta	1
21	Pedal de distorsión para guitarra eléctrica	Accesorio	Flamma	52.00	Pedal de efecto 9v de distorsión con tres selectores, diseñado para guitarra eléctrica.	FC-20	31	0	1	Productos de cuerda	images/pedal_flamma_dist.png	en venta	1
24	Afinador Cromático	Accesorio Musical	Korg	29.99	Afinador cromático para todo tipo de instrumentos.	Korg-TM50	25	5	1	Accesorios Musicales	images/afinador_cromatico_korg.jpg	en venta	1
25	Caja de Ritmos	Instrumento Musical	Boss	149.99	Caja de ritmos con múltiples efectos.	Boss-DR880	7	0	2	Instrumentos Musicales	images/caja_ritmos_boss.jpg	en venta	1
26	Altavoces Activos	Equipo de Audio	JBL	199.99	Altavoces activos para eventos en vivo.	JBL-Eon612	10	5	3	Equipos de Audio	images/altavoces_jbl.jpg	en venta	1
27	Guitarra Eléctrica	Instrumento Musical	Gibson	899.99	Guitarra eléctrica de gama alta.	Gibson-LesPaul	5	0	4	Instrumentos Musicales	images/gibson_lp_2000.jpg	en venta	1
28	Bajo Eléctrico	Instrumento Musical	Fender	599.99	Bajo eléctrico de 4 cuerdas.	Fender-PrecisionBass	8	0	2	Instrumentos Musicales	images/bajo_fender_precision_bass.jpg	en venta	1
32	Teclado MIDI	Instrumento Musical	Akai	79.99	Teclado MIDI con pads y perillas.	Akai-MPKMini	20	0	3	Instrumentos Musicales	images/teclado_midi_novation.jpg	en venta	1
29	Set de Percusión	Instrumento Musical	Pearl	199.99	Set de percusión con tambores y platillos.	Pearl-DrumSet	3	0	3	Instrumentos Musicales	images/set_percusion_pearl.jpg	en venta	1
31	Pedal de Efectos	Accesorio Musical	DigiTech	59.99	Pedal de efectos para guitarras eléctricas.	DigiTech-RP55	15	5	4	Accesorios Musicales	images/pedal_efectos_digitech.jpg	en venta	1
30	Mezcladora de Audio	Equipo de Audio	Behringer	99.99	Mezcladora de audio de 8 canales.	Behringer-Xenyx802	12	0	1	Equipos de Audio	images/mezcladora_behringer.jpg	en venta	1
33	Micrófono Inalámbrico	Equipo de Audio	Sennheiser	199.99	Micrófono inalámbrico de alta calidad.	Sennheiser-XSW2-835	10	2	2	Equipos de Audio	images/microfono_sennheiser.jpg	en venta	1
34	Guitarra Acústica	Instrumento Musical	Yamaha	299.99	Una guitarra acústica de alta calidad.	G-1000	20	5	1	Instrumentos Musicales	images/guitarra_acustica_yamaha_g1000.jpg	en venta	1
104	Guitarra Acústica	Instrumento Musical	Taylor	899.99	Guitarra acústica de alta calidad.	Taylor-Acoustic	10	2	2	Guitarras	images/guit_acustica_taylor.jpg	en venta	2
35	Batería Electrónica	Instrumento Musical	Roland	499.99	Una batería electrónica versátil para músicos.	E-Drum Pro	15	2	2	Instrumentos Musicales	images/bateria_elec_roland.jpg	en venta	1
36	Teclado Digital	Instrumento Musical	Casio	199.99	Un teclado digital con muchas funciones.	Casio-KB200	10	3	3	Instrumentos Musicales	images/teclado_digital_casio.jpg	en venta	1
37	Micrófono Condensador	Equipo de Audio	Shure	129.99	Micrófono de condensador para grabaciones profesionales.	Shure-MC100	30	0	1	Equipos de Audio	images/microfono_condensador_shure.jpg	en venta	1
38	Amplificador de Guitarra	Equipo de Audio	Fender	249.99	Amplificador para guitarras eléctricas.	Fender-AMP200	12	0	4	Equipos de Audio	images/amplificador_fender.jpg	en venta	1
39	Cuerdas de Guitarra	Accesorio Musical	D'Addario	9.99	Paquete de cuerdas para guitarras acústicas.	XL-Strings	100	20	3	Accesorios Musicales	images/cuerdas_daddario.jpg	en venta	1
40	Auriculares Inalámbricos	Equipo de Audio	Sony	79.99	Auriculares inalámbricos de alta calidad.	Sony-WH1000XM4	40	10	2	Equipos de Audio	images/auriculares_sony.jpg	en venta	1
41	Flauta Travesera	Instrumento Musical	Pearl	199.99	Flauta travesera de nivel intermedio.	Pearl-FL200	8	0	1	Instrumentos Musicales	images/flauta_travesera_pearl.jpg	en venta	1
42	Caja de Bongos	Instrumento Musical	Meinl	79.99	Caja de bongos de 7" y 8".	Meinl-Bongo	18	0	4	Instrumentos Musicales	images/bongos_meinl.jpg	en venta	1
47	Violín	Instrumento Musical	Stradivarius	399.99	Un violín de alta calidad para músicos avanzados.	Strad-VM300	10	2	2	Instrumentos Musicales	images/violin_stradivarius_vm300.jpg	en venta	1
48	Saxofón Tenor	Instrumento Musical	Yamaha	499.99	Saxofón tenor profesional para jazz y música clásica.	Yamaha-ST400	5	0	1	Instrumentos Musicales	images/sax_alto_yamaha.jpg	en venta	1
49	Bajo Eléctrico	Instrumento Musical	Fender	349.99	Un bajo eléctrico versátil para músicos.	Fender-BE200	15	3	3	Instrumentos Musicales	images/bajo_fender_precision_bass.jpg	en venta	1
51	Piano de Cola	Instrumento Musical	Steinway	4999.99	Un piano de cola de concierto de alta gama.	Steinway-Grand	2	0	1	Instrumentos Musicales	images/piano_cola_yamaha.png	en venta	1
50	Cajón Peruano	Instrumento Musical	Meinl	99.99	Cajón peruano con excelentes tonos de percusión.	Meinl-CP100	20	0	4	Instrumentos Musicales	images/cajon_peruano_meinl.jpg	en venta	1
52	Micrófono Inalámbrico	Equipo de Audio	Audio-Technica	199.99	Micrófono inalámbrico con excelente calidad de sonido.	AT-WM300	10	1	2	Equipos de Audio	images/microfono_audio-technica.jpg	en venta	1
53	Batería Acústica	Instrumento Musical	Ludwig	699.99	Una batería acústica de gran calidad para músicos exigentes.	Ludwig-Drum	8	0	3	Instrumentos Musicales	images/bateria_ludwing.jpg	en venta	1
54	Guitarra Eléctrica	Instrumento Musical	Gibson	799.99	Guitarra eléctrica premium para rock y metal.	Gibson-LP2000	6	0	4	Instrumentos Musicales	images/gibson_lp_2000.jpg	en venta	1
55	Amplificador de Bajo	Equipo de Audio	Ampeg	399.99	Amplificador de bajo para músicos de bajo eléctrico.	Ampeg-BassAmp	12	0	1	Equipos de Audio	images/ampli_bajo_ampeg.jpg	en venta	1
56	Cuerdas de Bajo	Accesorio Musical	Ernie Ball	14.99	Cuerdas de bajo para bajo eléctrico de 4 cuerdas.	EB-BassStrings	50	10	2	Accesorios Musicales	images/cuerdas_ernie.png	en venta	1
64	Saxofón Tenor	Instrumento Musical	Selmer	1999.99	Saxofón tenor profesional.	Selmer-STM	5	0	3	Instrumentos Musicales	images/sax_tenor_yamaha.jpg	en venta	1
65	Cajón Flamenco	Instrumento Musical	Gon Bops	99.99	Cajón flamenco de alta calidad.	Gon-Bops-CJ	20	2	2	Instrumentos Musicales	images/cajon_flamenco_gon_bops.jpg	en venta	1
72	Pandereta	Instrumento Musical	Remo	9.99	Pandereta de 10" con sonido brillante.	Remo-PT10	60	5	2	Instrumentos Musicales	images/pandereta_remo.jpg	en venta	1
73	Cable de Audio RCA	Accesorio Musical	Hosa	6.99	Cable de audio RCA de 6 pies para conexiones estéreo.	Hosa-RCA6	75	15	1	Accesorios Musicales	images/cable_xlr.jpg	en venta	1
89	Micrófono de Condensador	Equipo de Audio	Shure	149.99	Micrófono de condensador de calidad profesional.	Shure-Condenser	8	3	3	Micrófonos	images/microfono_condensador_shure.jpg	en venta	1
90	Batería Acústica	Instrumento Musical	Ludwig	999.99	Set de batería acústica de 5 piezas.	Ludwig-Drums	5	4	4	Baterías	images/bateria_ludwing_5pzas.jpg	en venta	1
92	Trompeta	Instrumento Musical	Bach	399.99	Trompeta profesional para músicos exigentes.	Bach-Trumpet	10	2	2	Instrumentos de Viento	images/trompeta_bach.jpg	en venta	1
93	Saxofón Alto	Instrumento Musical	Yamaha	699.99	Saxofón alto versátil y de gran calidad.	Yamaha-SaxAlto	15	3	3	Instrumentos de Viento	images/sax_alto_yamaha.jpg	en venta	1
94	Pedal de Efectos	Equipo de Audio	Boss	79.99	Pedal de efectos para guitarristas.	Boss-FX	25	4	4	Efectos de Sonido	images/pedal_efectos_digitech.jpg	en venta	1
95	Afinador Electrónico	Accesorio	Korg	19.99	Afinador electrónico para instrumentos.	Korg-Tuner	50	1	1	Accesorios	images/afinador_elec_korg.jpg	en venta	1
96	Altavoces de Estudio	Equipo de Audio	KRK	249.99	Altavoces de estudio para producir música.	KRK-StudioSpeakers	6	2	2	Estudio de Grabación	images/altavoces_krk.jpg	en venta	1
103	Teclado MIDI	Instrumento Musical	Ernie Ball	199.99	Controlador MIDI compacto.	ErnieBall-Slinky	15	1	1	Accesorios	images/teclado_midi_novation.jpg	en venta	2
14	Amplificador Marshall de 30W	Accesorio	Marshall	6658.00	Amplificador de 30W para guitarra, cuenta con 5 selectores de tono y 3 de efectos.	M-MG30GFX-U	20	0	1	Productos de cuerda	images/ampli_marshall30w.png	en venta	1
15	Cable para instrumentos	Accesorio	Ernie Ball	430.00	Cable de chaqueta trenzada color dorado con dos puntas jack de 1/4 pulgadas.	PO6070	16	0	2	Productos de cuerda	images/cable_ernie.png	en venta	1
4	Guitarra Epiphone ES Semihueca	Instrumento	Epiphone	19000.00	Guitarra Naranja de 6 cuerdas con detalles negros de cuerpo semihueco de arce, puente fijo, 4 potenciómetros y selector de pastillas.	ES335	19	0	1	Productos de cuerda	images/epiphone_slash_lp.png	en venta	1
91	Cable XLR	Accesorio	Mogami	29.99	Cable XLR de alta calidad para conexiones de audio.	Mogami-XLR	30	1	1	Accesorios	images/cable_xlr.jpg	en venta	1
5	Tali de rosas Ernie ball	Accesorio	Ernie Ball	300.00	Correa de polipropileno para guitarra con diseño de rosas sobre fondo negro.	TEB 23	11	0	2	Productos de cuerda	images/tahli_ernie_rosas.png	en venta	1
6	Docerola Takamine Legacy	Instrumento	Takamine	40000.00	Guitarra tipo docerola acústica con cuerpo hueco color negro hecho de maple.	EF381SC	14	0	4	Productos de cuerda	images/docerola_takaminie.png	en venta	1
7	Ukulele Soprano Córdoba	Instrumento	Córdoba	36.00	Ukelele soprano de 15 trastes.	EF381SC	12	0	4	Productos de cuerda	images/ukelele_soprano.png	en venta	1
8	Bajo Fender Jazzbass	Instrumento	Fender	30000.00	Bajo de 4 cuerdas con cuerpo de escala larga, hecho de arce y pintado de gris metálico. 2 juegos de pastillas pasivas y 3 potenciómetros. Mástil de 20 trastes.	149322317	15	0	1	Productos de cuerda	images/fender_jazzbass.png	en venta	1
9	Pedalera multiefectos Line 9	Accesorio	Line 9	15000.00	Pedalera digital multiefectos para guitarra eléctrica, cuerpo color negro con 4 presets, pantalla táctil y 10 efectos pregrabados.	L9345	30	0	1	Productos de cuerda	images/pedalera_line9.png	en venta	1
10	Pedal BOSS Delay	Accesorio	BOSS	4300.00	Pedal de delay para guitarra eléctrica, cuenta con 11 tipos de efectos y 3 tipos de delay, además de seleccionador para las figuras rítmicas.	DLY243	28	0	1	Productos de cuerda	images/pedal_boss_delay.png	en venta	1
17	Aceite de limón	Accesorio	Planet Waves	130.00	Aceite de hidratación para mástil de guitarra y bajo	PW-LMN	19	0	1	Productos de cuerda	images/aceite_limon_pw.png	en venta	1
87	Teclado Electrónico	Instrumento Musical	Yamaha	299.99	Teclado portátil con múltiples sonidos.	Yamaha-Keyboard	20	1	1	Teclados	images/teclado_digital_yamaha.jpg	en venta	1
88	Amplificador de Guitarra	Equipo de Audio	Marshall	199.99	Amplificador de guitarra de alta potencia.	Marshall-AMP	12	2	2	Amplificadores	images/ampli_marshall30w.png	en venta	1
66	Batería de Jazz	Instrumento Musical	Gretsch	649.99	Batería de jazz de 4 piezas.	Gretsch-CM1	10	0	1	Instrumentos Musicales	images/bateria_gretsch.jpg	en venta	1
67	Micrófono Lavalier	Equipo de Audio	Sennheiser	59.99	Micrófono lavalier con clip para presentaciones.	Sennheiser-EW100	30	5	4	Equipos de Audio	images/microfono_lavalier_sennheiser.jpg	en venta	1
68	Teclado MIDI	Instrumento Musical	Akai	149.99	Teclado MIDI con pads y controladores.	Akai-MPK	15	1	2	Instrumentos Musicales	images/teclado_midi_novation.jpg	en venta	1
69	Cuerdas de Bajo	Accesorio Musical	Ernie Ball	14.99	Paquete de cuerdas para bajo eléctrico de 4 cuerdas.	ErnieBall-Slinky	50	10	3	Accesorios Musicales	images/cuerdas_bajo_ernie_ball.jpg	en venta	1
70	Flauta Dulce	Instrumento Musical	Yamaha	19.99	Flauta dulce para principiantes.	Yamaha-YRS23	40	0	4	Instrumentos Musicales	images/flauta_dulce_yamaha.jpg	en venta	1
71	Auriculares DJ	Equipo de Audio	Pioneer	99.99	Auriculares DJ profesionales con cancelación de ruido.	Pioneer-HDJ2000	25	0	1	Equipos de Audio	images/auriculares_dj_pioneer.jpg	en venta	1
107	Violonchelo	Instrumento Musical	Stradivarius	1599.99	Violonchelo clásico de alta gama.	Stradivarius-Cello	5	1	1	Instrumentos de Cuerda	images/violonchelo_stradivarius.jpg	en venta	2
108	Sintetizador Modular	Instrumento Musical	Moog	999.99	Sintetizador modular para experimentación sonora.	Moog-Modular	3	2	2	Sintetizadores	images/sintenizador_modular.jpg	en venta	2
109	Micrófono de Estudio	Equipo de Audio	Neumann	899.99	Micrófono de condensador de estudio.	Neumann-StudioMic	6	3	3	Micrófonos de Estudio	images/microfono_estudio.jpg	en venta	2
110	Trombón de Vara	Instrumento Musical	Bach	599.99	Trombón de vara profesional.	Bach-Trombone	9	4	4	Instrumentos de Viento	images/trombon_vara.jpg	en venta	2
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.proveedor (id_proveedor, nombre, rfc, razon_social, codigo_postal, nombre_contacto, primer_apellido, segundo_apellido, correo, colonia, ciudad, estado_proveedor, id_sucursal) FROM stdin;
8	Alan Ivan	54321asd	test	21341	Anahí	Velez	Gómez	nalalaf@gmail.com	Gustavo A Madero	CDMX	Activo	2
9	Alan Ivan	54321asd	test	21341	Anahí	Sánchez	Gómez	alanisg02sa9@gmail.com	dsfhsdh	CDMX	Activo	2
1	Guitar Gear	RFC-12345-ABC	Razón Social ABC	54321	José	Pérez	López	juan.perez@example.com	Chinanpas	Chalco	Inactivo	1
4	Taka Guitar	RFC-provedT	\N	\N	Juan	\N	\N	juan@gmail.com	Los Álamos	Chalco	\N	\N
5	test	12345rd	qsdqgsdar	56640	papu	Sánchez	Gómez	nlalaf@gmail.com	Neza	CDMX	Activo	1
3	Equipboard	RFC-23456-DEF	Razón Social ABC	56640	Luis	Peña		luis.pena@example.com	Industrial Vallejo	Gustavo A Madero	Activo	1
2	Ernie Ball	RFC-54321-XYZ	Razón Social genérica	98765	María	González		maria.gonzalez@example.com	Roma	Benito Juárez	Activo	1
\.


--
-- Data for Name: puesto; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.puesto (id_puesto, nombre) FROM stdin;
1	Dueño
2	Gerente
3	Ventas
4	Mostrador
5	Supervisor
6	Atención
\.


--
-- Data for Name: sucursal; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.sucursal (id_sucursal, nombre, colonia, ciudad, codigo_postal, id_estado) FROM stdin;
2	La nota mala Chalco	Chalco	EDOMEX	56640	1
7	test	Gustavo A Madero	CDMX	213411	2
8	escom	La escalera	CDMX	56640	2
1	La nota mala Roma	La Roma	CDMX	67653	1
\.


--
-- Data for Name: tarea; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.tarea (id_tareas, tarea) FROM stdin;
1	venta
2	caja
3	consultar productos
4	modificar productos
5	Contrataciones
6	Despidos
\.


--
-- Data for Name: telefono; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.telefono (id_telefono, id_cliente, numero) FROM stdin;
1	2	5564779982
2	2	5517364860
3	2	5567456372
\.


--
-- Data for Name: turno; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.turno (id_turno, turno, hora_inicio, hora_fin) FROM stdin;
1	Matutino	08:00:00	14:00:00
2	Vespertino	14:00:00	20:00:00
3	No laborable	\N	\N
\.


--
-- Data for Name: venta; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.venta (id_venta, id_cliente, fecha, tipo_pago, monto_total, id_sucursal, id_empleado) FROM stdin;
55	1	2024-01-07 04:25:20.18806	2	1057.98	1	55
\.


--
-- Data for Name: venta_producto; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.venta_producto (id_venta, id_producto, cantidad) FROM stdin;
55	12	2
55	13	1
55	65	2
\.


--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 1, false);


--
-- Name: celular_id_celular_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.celular_id_celular_seq', 1, false);


--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 1, false);


--
-- Name: dia_id_dia_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.dia_id_dia_seq', 6, true);


--
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 55, true);


--
-- Name: estado_empleado_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.estado_empleado_id_estado_seq', 1, false);


--
-- Name: estado_sucursal_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.estado_sucursal_id_estado_seq', 1, false);


--
-- Name: horario_sucursal_id_horario_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.horario_sucursal_id_horario_sucursal_seq', 1, false);


--
-- Name: marca_id_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.marca_id_marca_seq', 49, true);


--
-- Name: modelo_id_modelo_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.modelo_id_modelo_seq', 87, true);


--
-- Name: pago_id_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.pago_id_pago_seq', 1, false);


--
-- Name: producto_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.producto_id_producto_seq', 1, false);


--
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.proveedor_id_proveedor_seq', 9, true);


--
-- Name: puesto_id_puesto_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.puesto_id_puesto_seq', 1, false);


--
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.sucursal_id_sucursal_seq', 8, true);


--
-- Name: tareas_id_tareas_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.tareas_id_tareas_seq', 1, false);


--
-- Name: telefono_id_telefono_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.telefono_id_telefono_seq', 4, true);


--
-- Name: turno_id_turno_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.turno_id_turno_seq', 1, false);


--
-- Name: venta_id_venta_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.venta_id_venta_seq', 55, true);


--
-- Name: venta_producto_id_venta_seq; Type: SEQUENCE SET; Schema: public; Owner: lansan69
--

SELECT pg_catalog.setval('public.venta_producto_id_venta_seq', 1, false);


--
-- Name: categoria categoria_nombre_categoria_key; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_nombre_categoria_key UNIQUE (nombre_categoria);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- Name: celular celular_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.celular
    ADD CONSTRAINT celular_pkey PRIMARY KEY (id_celular);


--
-- Name: cliente cliente_correo_key; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_correo_key UNIQUE (correo);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: cliente cliente_rfc_key; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_rfc_key UNIQUE (rfc);


--
-- Name: dia dia_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.dia
    ADD CONSTRAINT dia_pkey PRIMARY KEY (id_dia);


--
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- Name: empleado empleado_rfc_key; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_rfc_key UNIQUE (rfc);


--
-- Name: estado_empleado estado_empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.estado_empleado
    ADD CONSTRAINT estado_empleado_pkey PRIMARY KEY (id_estado);


--
-- Name: estado_sucursal estado_sucursal_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.estado_sucursal
    ADD CONSTRAINT estado_sucursal_pkey PRIMARY KEY (id_estado);


--
-- Name: horario_sucursal horario_sucursal_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.horario_sucursal
    ADD CONSTRAINT horario_sucursal_pkey PRIMARY KEY (id_horario_sucursal);


--
-- Name: marca marca_nombre_marca_key; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_nombre_marca_key UNIQUE (nombre_marca);


--
-- Name: marca marca_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id_marca);


--
-- Name: modelo modelo_nombre_modelo_key; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT modelo_nombre_modelo_key UNIQUE (nombre_modelo);


--
-- Name: modelo modelo_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT modelo_pkey PRIMARY KEY (id_modelo);


--
-- Name: pago pago_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pago);


--
-- Name: permiso permiso_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.permiso
    ADD CONSTRAINT permiso_pkey PRIMARY KEY (id_puesto, id_tareas);


--
-- Name: producto pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT pkey PRIMARY KEY (id_producto);


--
-- Name: proveedor proveedor_correo_key; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_correo_key UNIQUE (correo);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id_proveedor);


--
-- Name: puesto puesto_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.puesto
    ADD CONSTRAINT puesto_pkey PRIMARY KEY (id_puesto);


--
-- Name: sucursal sucursal_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id_sucursal);


--
-- Name: tarea tareas_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT tareas_pkey PRIMARY KEY (id_tareas);


--
-- Name: telefono telefono_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.telefono
    ADD CONSTRAINT telefono_pkey PRIMARY KEY (id_telefono);


--
-- Name: turno turno_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.turno
    ADD CONSTRAINT turno_pkey PRIMARY KEY (id_turno);


--
-- Name: horario_empleado unique_horario; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.horario_empleado
    ADD CONSTRAINT unique_horario UNIQUE (id_empleado, id_dia);


--
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id_venta);


--
-- Name: celular celular_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.celular
    ADD CONSTRAINT celular_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: datos_tarjeta cliente_tarjeta; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.datos_tarjeta
    ADD CONSTRAINT cliente_tarjeta FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: horario_empleado dia_laboral; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.horario_empleado
    ADD CONSTRAINT dia_laboral FOREIGN KEY (id_dia) REFERENCES public.dia(id_dia);


--
-- Name: horario_empleado empleado; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.horario_empleado
    ADD CONSTRAINT empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);


--
-- Name: empleado estado_empleado; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT estado_empleado FOREIGN KEY (id_estado) REFERENCES public.estado_empleado(id_estado);


--
-- Name: sucursal estado_sucursal; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT estado_sucursal FOREIGN KEY (id_estado) REFERENCES public.estado_sucursal(id_estado);


--
-- Name: horario_sucursal fk_dia; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.horario_sucursal
    ADD CONSTRAINT fk_dia FOREIGN KEY (id_dia) REFERENCES public.dia(id_dia);


--
-- Name: permiso fk_puesto; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.permiso
    ADD CONSTRAINT fk_puesto FOREIGN KEY (id_puesto) REFERENCES public.puesto(id_puesto);


--
-- Name: permiso fk_tareas; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.permiso
    ADD CONSTRAINT fk_tareas FOREIGN KEY (id_tareas) REFERENCES public.tarea(id_tareas);


--
-- Name: modelo marca_modelo; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.modelo
    ADD CONSTRAINT marca_modelo FOREIGN KEY (id_marca) REFERENCES public.marca(id_marca);


--
-- Name: venta pago; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT pago FOREIGN KEY (tipo_pago) REFERENCES public.pago(id_pago);


--
-- Name: venta_producto producto; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.venta_producto
    ADD CONSTRAINT producto FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);


--
-- Name: producto proveedor; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT proveedor FOREIGN KEY (id_proveedor) REFERENCES public.proveedor(id_proveedor);


--
-- Name: proveedor proveedor_sucursal; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_sucursal FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal);


--
-- Name: empleado puesto_referencia; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT puesto_referencia FOREIGN KEY (id_puesto) REFERENCES public.puesto(id_puesto);


--
-- Name: producto sucursal; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT sucursal FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal);


--
-- Name: empleado sucursal_referencia; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT sucursal_referencia FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal);


--
-- Name: telefono telefono_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.telefono
    ADD CONSTRAINT telefono_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: horario_empleado turno_empleado; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.horario_empleado
    ADD CONSTRAINT turno_empleado FOREIGN KEY (id_turno) REFERENCES public.turno(id_turno);


--
-- Name: venta venta_cliente; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: pago_efectivo venta_efectivo; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.pago_efectivo
    ADD CONSTRAINT venta_efectivo FOREIGN KEY (id_venta) REFERENCES public.venta(id_venta);


--
-- Name: venta venta_empleado; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);


--
-- Name: venta venta_sucursal; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_sucursal FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal);


--
-- Name: pago_tarjeta venta_tarjeta; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.pago_tarjeta
    ADD CONSTRAINT venta_tarjeta FOREIGN KEY (id_venta) REFERENCES public.venta(id_venta);


--
-- PostgreSQL database dump complete
--

