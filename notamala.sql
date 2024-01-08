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
-- Name: direccion; Type: TABLE; Schema: public; Owner: lansan69
--

CREATE TABLE public.direccion (
    codigo_postal integer NOT NULL,
    asentamiento character varying(100) NOT NULL,
    tipo_asentamiento character varying(100) NOT NULL,
    municipio character varying(100) NOT NULL,
    estado character varying(100)
);


ALTER TABLE public.direccion OWNER TO lansan69;

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
    id_estado integer DEFAULT 1,
    calle character varying(50),
    asentamiento character varying(100),
    municipio character varying(100),
    calle_numero character varying(50),
    codigo_postal integer,
    tipo_asentamiento character varying(100)
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
-- Data for Name: direccion; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.direccion (codigo_postal, asentamiento, tipo_asentamiento, municipio, estado) FROM stdin;
1010	Los Alpes	Colonia	Álvaro Obregón	Ciudad de México
1020	Guadalupe Inn	Colonia	Álvaro Obregón	Ciudad de México
1030	Axotla	Pueblo	Álvaro Obregón	Ciudad de México
1030	Florida	Colonia	Álvaro Obregón	Ciudad de México
1040	Campestre	Colonia	Álvaro Obregón	Ciudad de México
1049	Tlacopac	Pueblo	Álvaro Obregón	Ciudad de México
1050	Ex-Hacienda de Guadalupe Chimalistac	Colonia	Álvaro Obregón	Ciudad de México
1060	Altavista	Colonia	Álvaro Obregón	Ciudad de México
1060	San Ángel Inn	Colonia	Álvaro Obregón	Ciudad de México
1070	Chimalistac	Colonia	Álvaro Obregón	Ciudad de México
1080	Progreso Tizapan	Colonia	Álvaro Obregón	Ciudad de México
1089	Ermita Tizapan	Colonia	Álvaro Obregón	Ciudad de México
1090	La Otra Banda	Barrio	Álvaro Obregón	Ciudad de México
1090	Loreto	Barrio	Álvaro Obregón	Ciudad de México
1090	Tizapan	Pueblo	Álvaro Obregón	Ciudad de México
1100	Pólvora	Colonia	Álvaro Obregón	Ciudad de México
1109	La Conchita	Colonia	Álvaro Obregón	Ciudad de México
1110	Belém de las Flores	Colonia	Álvaro Obregón	Ciudad de México
1110	El Capulín	Colonia	Álvaro Obregón	Ciudad de México
1110	Ampliación El Capulín	Colonia	Álvaro Obregón	Ciudad de México
1110	Liberales de 1857	Colonia	Álvaro Obregón	Ciudad de México
1120	Acueducto	Colonia	Álvaro Obregón	Ciudad de México
1120	Cove	Colonia	Álvaro Obregón	Ciudad de México
1120	Hidalgo	Colonia	Álvaro Obregón	Ciudad de México
1120	Las Américas	Colonia	Álvaro Obregón	Ciudad de México
1125	Ampliación Acueducto	Colonia	Álvaro Obregón	Ciudad de México
1130	Paraíso	Colonia	Álvaro Obregón	Ciudad de México
1130	Molino de Santo Domingo	Colonia	Álvaro Obregón	Ciudad de México
1130	Real del Monte	Colonia	Álvaro Obregón	Ciudad de México
1139	Reacomodo Pino Suárez	Colonia	Álvaro Obregón	Ciudad de México
1140	Bellavista	Colonia	Álvaro Obregón	Ciudad de México
1140	José Maria Pino Suárez	Colonia	Álvaro Obregón	Ciudad de México
1150	Cristo Rey	Colonia	Álvaro Obregón	Ciudad de México
1150	Tolteca	Colonia	Álvaro Obregón	Ciudad de México
1160	Bosque	Colonia	Álvaro Obregón	Ciudad de México
1160	Isidro Fabela	Colonia	Álvaro Obregón	Ciudad de México
1160	Maria G. de García Ruiz	Colonia	Álvaro Obregón	Ciudad de México
1160	1a Victoria	Colonia	Álvaro Obregón	Ciudad de México
1170	Abraham M. González	Colonia	Álvaro Obregón	Ciudad de México
1180	Carola	Colonia	Álvaro Obregón	Ciudad de México
1180	8 de Agosto	Colonia	Álvaro Obregón	Ciudad de México
1180	San Pedro de los Pinos	Colonia	Álvaro Obregón	Ciudad de México
1200	Arturo Martínez	Colonia	Álvaro Obregón	Ciudad de México
1210	Santa Fe	Pueblo	Álvaro Obregón	Ciudad de México
1219	Lomas de Santa Fe	Colonia	Álvaro Obregón	Ciudad de México
1220	La Estrella	Colonia	Álvaro Obregón	Ciudad de México
1220	Bonanza	Colonia	Álvaro Obregón	Ciudad de México
1220	Cuevitas	Colonia	Álvaro Obregón	Ciudad de México
1220	El Cuernito	Colonia	Álvaro Obregón	Ciudad de México
1220	Mártires de Tacubaya	Colonia	Álvaro Obregón	Ciudad de México
1220	Zenón Delgado	Colonia	Álvaro Obregón	Ciudad de México
1230	Campo de Tiro los Gamitos	Colonia	Álvaro Obregón	Ciudad de México
1230	Los Gamitos	Colonia	Álvaro Obregón	Ciudad de México
1230	Tlapechico	Colonia	Álvaro Obregón	Ciudad de México
1230	El Piru Santa Fe	Colonia	Álvaro Obregón	Ciudad de México
1230	El Piru 2a Ampliación	Colonia	Álvaro Obregón	Ciudad de México
1239	La Huerta	Colonia	Álvaro Obregón	Ciudad de México
1240	Pueblo Nuevo	Colonia	Álvaro Obregón	Ciudad de México
1250	El Árbol	Colonia	Álvaro Obregón	Ciudad de México
1250	Ladera	Colonia	Álvaro Obregón	Ciudad de México
1250	Lomas de Nuevo México	Colonia	Álvaro Obregón	Ciudad de México
1250	Margarita Maza de Juárez	Colonia	Álvaro Obregón	Ciudad de México
1250	Tecolalco	Colonia	Álvaro Obregón	Ciudad de México
1259	Ampliación La Cebada	Colonia	Álvaro Obregón	Ciudad de México
1259	La Mexicana 2a Ampliación	Colonia	Álvaro Obregón	Ciudad de México
1260	Calzada Jalalpa	Colonia	Álvaro Obregón	Ciudad de México
1260	La Mexicana	Colonia	Álvaro Obregón	Ciudad de México
1260	Ampliación La Mexicana	Colonia	Álvaro Obregón	Ciudad de México
1260	La Palmita	Colonia	Álvaro Obregón	Ciudad de México
1260	Liberación Proletaria	Colonia	Álvaro Obregón	Ciudad de México
1269	1a Sección Cañada	Colonia	Álvaro Obregón	Ciudad de México
1269	2a Sección Cañada	Colonia	Álvaro Obregón	Ciudad de México
1270	El Tejocote	Colonia	Álvaro Obregón	Ciudad de México
1270	La Presa	Colonia	Álvaro Obregón	Ciudad de México
1270	Golondrinas	Colonia	Álvaro Obregón	Ciudad de México
1270	Golondrinas 1a Sección	Colonia	Álvaro Obregón	Ciudad de México
1270	Golondrinas 2a Sección	Colonia	Álvaro Obregón	Ciudad de México
1270	Lomas de Capula	Colonia	Álvaro Obregón	Ciudad de México
1275	Villa Solidaridad	Colonia	Álvaro Obregón	Ciudad de México
1276	El Pirul	Colonia	Álvaro Obregón	Ciudad de México
1278	Desarrollo Urbano	Colonia	Álvaro Obregón	Ciudad de México
1279	Lomas de Becerra	Colonia	Álvaro Obregón	Ciudad de México
1280	Arvide	Colonia	Álvaro Obregón	Ciudad de México
1280	El Pocito	Colonia	Álvaro Obregón	Ciudad de México
1280	Francisco Villa	Colonia	Álvaro Obregón	Ciudad de México
1280	La Joya	Colonia	Álvaro Obregón	Ciudad de México
1285	El Rodeo	Colonia	Álvaro Obregón	Ciudad de México
50010	Celanese	Colonia	Toluca	México
1289	Reacomodo El Cuernito	Colonia	Álvaro Obregón	Ciudad de México
1290	Piloto Adolfo López Mateos	Colonia	Álvaro Obregón	Ciudad de México
1290	Presidentes	Colonia	Álvaro Obregón	Ciudad de México
1296	Jalalpa Tepito 2a Ampliación	Colonia	Álvaro Obregón	Ciudad de México
1296	Ampliación Jalalpa	Colonia	Álvaro Obregón	Ciudad de México
1296	Jalalpa Tepito	Colonia	Álvaro Obregón	Ciudad de México
1298	Ampliación Piloto Adolfo López Mateos	Colonia	Álvaro Obregón	Ciudad de México
1299	1a Ampliación Presidentes	Colonia	Álvaro Obregón	Ciudad de México
1299	2a Ampliación Presidentes	Colonia	Álvaro Obregón	Ciudad de México
1310	San Gabriel	Colonia	Álvaro Obregón	Ciudad de México
1320	Carlos A. Madrazo	Colonia	Álvaro Obregón	Ciudad de México
1330	Paseo de las Lomas	Colonia	Álvaro Obregón	Ciudad de México
1340	Bejero del Pueblo Santa Fe	Colonia	Álvaro Obregón	Ciudad de México
1376	Santa Fe	Colonia	Álvaro Obregón	Ciudad de México
1376	Santa Fe Peña Blanca	Colonia	Álvaro Obregón	Ciudad de México
1376	Santa Fe La Loma	Colonia	Álvaro Obregón	Ciudad de México
1376	Santa Fe Centro Ciudad	Colonia	Álvaro Obregón	Ciudad de México
1377	Jalalpa El Grande	Colonia	Álvaro Obregón	Ciudad de México
1389	Santa Fe Tlayapaca	Colonia	Álvaro Obregón	Ciudad de México
1400	Olivar del Conde 1a Sección	Colonia	Álvaro Obregón	Ciudad de México
1400	Preconcreto	Colonia	Álvaro Obregón	Ciudad de México
1407	Galeana	Colonia	Álvaro Obregón	Ciudad de México
1408	Olivar del Conde 2a Sección	Colonia	Álvaro Obregón	Ciudad de México
1410	Barrio Norte	Colonia	Álvaro Obregón	Ciudad de México
1410	Palmas	Colonia	Álvaro Obregón	Ciudad de México
1419	Minas Cristo Rey	Colonia	Álvaro Obregón	Ciudad de México
1420	Sacramento	Colonia	Álvaro Obregón	Ciudad de México
1420	Santa María Nonoalco	Barrio	Álvaro Obregón	Ciudad de México
1430	Colina del Sur	Colonia	Álvaro Obregón	Ciudad de México
1450	Hogar y Redención	Colonia	Álvaro Obregón	Ciudad de México
1460	Alfonso XIII	Colonia	Álvaro Obregón	Ciudad de México
1470	Alfalfar	Barrio	Álvaro Obregón	Ciudad de México
1470	Molino de Rosas	Colonia	Álvaro Obregón	Ciudad de México
1480	Lomas de Plateros	Colonia	Álvaro Obregón	Ciudad de México
1490	La Cascada	Colonia	Álvaro Obregón	Ciudad de México
1500	Santa Lucía	Pueblo	Álvaro Obregón	Ciudad de México
1500	Miguel Gaona Armenta	Colonia	Álvaro Obregón	Ciudad de México
1509	Santa Lucía Chantepec	Pueblo	Álvaro Obregón	Ciudad de México
1510	Garcimarrero	Colonia	Álvaro Obregón	Ciudad de México
1510	La Araña	Colonia	Álvaro Obregón	Ciudad de México
1510	Los Cedros	Colonia	Álvaro Obregón	Ciudad de México
1520	Ampliación Los Pirules	Colonia	Álvaro Obregón	Ciudad de México
1520	Estado de Hidalgo	Colonia	Álvaro Obregón	Ciudad de México
1520	Ampliación Estado de Hidalgo	Colonia	Álvaro Obregón	Ciudad de México
1520	Piru Santa Lucía	Colonia	Álvaro Obregón	Ciudad de México
1520	El Politoco	Colonia	Álvaro Obregón	Ciudad de México
1530	Corpus Christy	Colonia	Álvaro Obregón	Ciudad de México
1538	Tepopotla	Colonia	Álvaro Obregón	Ciudad de México
1539	Acuilotla	Colonia	Álvaro Obregón	Ciudad de México
1539	Cooperativa Unión Olivos	Colonia	Álvaro Obregón	Ciudad de México
1540	Balcones de Cehuayo	Colonia	Álvaro Obregón	Ciudad de México
1540	Cehuaya	Colonia	Álvaro Obregón	Ciudad de México
1540	Llano Redondo	Colonia	Álvaro Obregón	Ciudad de México
1540	Punta de Cehuaya	Colonia	Álvaro Obregón	Ciudad de México
1548	Villa Progresista	Colonia	Álvaro Obregón	Ciudad de México
1549	Dos Ríos del Pueblo Santa Lucía	Colonia	Álvaro Obregón	Ciudad de México
1550	Tepeaca	Colonia	Álvaro Obregón	Ciudad de México
1550	Ampliación Tepeaca	Colonia	Álvaro Obregón	Ciudad de México
1550	Rinconada Las Cuevitas	Colonia	Álvaro Obregón	Ciudad de México
1560	Ave Real	Colonia	Álvaro Obregón	Ciudad de México
1560	Canutillo	Colonia	Álvaro Obregón	Ciudad de México
1560	Canutillo 3a Sección	Colonia	Álvaro Obregón	Ciudad de México
1560	Canutillo 2a Sección	Colonia	Álvaro Obregón	Ciudad de México
1566	Hueytlale	Colonia	Álvaro Obregón	Ciudad de México
1569	Reacomodo Valentín Gómez Farías	Colonia	Álvaro Obregón	Ciudad de México
1588	Tarango	Colonia	Álvaro Obregón	Ciudad de México
1590	El Rincón	Colonia	Álvaro Obregón	Ciudad de México
1600	Merced Gómez	Colonia	Álvaro Obregón	Ciudad de México
1610	Colinas de Tarango	Colonia	Álvaro Obregón	Ciudad de México
1610	Profesor J. Arturo López Martínez	Colonia	Álvaro Obregón	Ciudad de México
1618	Arcos Centenario	Colonia	Álvaro Obregón	Ciudad de México
1618	Ex-Hacienda de Tarango	Colonia	Álvaro Obregón	Ciudad de México
1619	La Martinica	Colonia	Álvaro Obregón	Ciudad de México
1619	Rinconada de Tarango	Colonia	Álvaro Obregón	Ciudad de México
1620	Lomas de Tarango	Colonia	Álvaro Obregón	Ciudad de México
1630	Lomas de Puerta Grande	Colonia	Álvaro Obregón	Ciudad de México
1630	Puerta Grande	Colonia	Álvaro Obregón	Ciudad de México
1630	Los Juristas	Colonia	Álvaro Obregón	Ciudad de México
1640	Herón Proal	Colonia	Álvaro Obregón	Ciudad de México
1645	Ponciano Arriaga	Colonia	Álvaro Obregón	Ciudad de México
1650	La Milagrosa	Colonia	Álvaro Obregón	Ciudad de México
1650	Palmas Axotitla	Colonia	Álvaro Obregón	Ciudad de México
1650	Tlacuitlapa	Colonia	Álvaro Obregón	Ciudad de México
1650	Ampliación Tlacuitlapa	Colonia	Álvaro Obregón	Ciudad de México
1650	2o Reacomodo Tlacuitlapa	Colonia	Álvaro Obregón	Ciudad de México
1650	El Ruedo	Colonia	Álvaro Obregón	Ciudad de México
1650	Santa Lucía Chantepec	Colonia	Álvaro Obregón	Ciudad de México
1700	La Joyita del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1700	Ocotillos del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1700	San Agustín del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1700	2a Del Moral del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1700	Tecalcapa del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1700	Tetelpan	Pueblo	Álvaro Obregón	Ciudad de México
1708	El Encino del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1708	El Mirador del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1710	Las Águilas	Colonia	Álvaro Obregón	Ciudad de México
1710	Ampliación Alpes	Colonia	Álvaro Obregón	Ciudad de México
1720	Lomas de Guadalupe	Colonia	Álvaro Obregón	Ciudad de México
1729	Alcantarilla	Colonia	Álvaro Obregón	Ciudad de México
1730	Lomas de las Águilas	Colonia	Álvaro Obregón	Ciudad de México
1730	Puente Colorado	Colonia	Álvaro Obregón	Ciudad de México
1740	La Peñita del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1740	San Clemente Norte	Colonia	Álvaro Obregón	Ciudad de México
1740	San Clemente Sur	Colonia	Álvaro Obregón	Ciudad de México
1750	Las Águilas 1a Sección	Colonia	Álvaro Obregón	Ciudad de México
1750	Las Águilas 2o Parque	Colonia	Álvaro Obregón	Ciudad de México
1750	Las Águilas 3er Parque	Colonia	Álvaro Obregón	Ciudad de México
1759	Ampliación Las Águilas	Colonia	Álvaro Obregón	Ciudad de México
1760	Atlamaya	Colonia	Álvaro Obregón	Ciudad de México
1760	Flor de María	Colonia	Álvaro Obregón	Ciudad de México
1760	La Herradura del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1770	La Angostura	Colonia	Álvaro Obregón	Ciudad de México
1770	San José del Olivar	Colonia	Álvaro Obregón	Ciudad de México
1780	Olivar de los Padres	Colonia	Álvaro Obregón	Ciudad de México
1780	Tizampampano del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1789	Miguel Hidalgo	Colonia	Álvaro Obregón	Ciudad de México
1790	Lomas de los Ángeles del Pueblo Tetelpan	Colonia	Álvaro Obregón	Ciudad de México
1790	Lomas de San Ángel Inn	Colonia	Álvaro Obregón	Ciudad de México
1800	San Bartolo Ameyalco	Pueblo	Álvaro Obregón	Ciudad de México
1807	Rancho San Francisco Pueblo San Bartolo Ameyalco	Colonia	Álvaro Obregón	Ciudad de México
1810	Villa Verdún	Colonia	Álvaro Obregón	Ciudad de México
1820	Lomas Axomiatla	Colonia	Álvaro Obregón	Ciudad de México
1820	Ejido San Mateo	Colonia	Álvaro Obregón	Ciudad de México
1830	Santa Rosa Xochiac	Pueblo	Álvaro Obregón	Ciudad de México
1840	Torres de Potrero	Colonia	Álvaro Obregón	Ciudad de México
1849	Rincón de la Bolsa	Colonia	Álvaro Obregón	Ciudad de México
1849	Rancho del Carmen del Pueblo San Bartolo Ameyalco	Colonia	Álvaro Obregón	Ciudad de México
1857	Lomas de Chamontoya	Colonia	Álvaro Obregón	Ciudad de México
1859	Tlacoyaque	Colonia	Álvaro Obregón	Ciudad de México
1860	Lomas de La Era	Colonia	Álvaro Obregón	Ciudad de México
1863	Lomas del Capulín	Colonia	Álvaro Obregón	Ciudad de México
1870	Lomas de los Cedros	Colonia	Álvaro Obregón	Ciudad de México
1900	Jardines del Pedregal	Colonia	Álvaro Obregón	Ciudad de México
1904	San Jerónimo Aculco	Colonia	Álvaro Obregón	Ciudad de México
2000	Centro de Azcapotzalco	Colonia	Azcapotzalco	Ciudad de México
2010	Los Reyes	Barrio	Azcapotzalco	Ciudad de México
2010	San Rafael	Colonia	Azcapotzalco	Ciudad de México
2010	Nuevo Barrio San Rafael	Barrio	Azcapotzalco	Ciudad de México
2020	San Marcos	Barrio	Azcapotzalco	Ciudad de México
2020	Santo Tomás	Colonia	Azcapotzalco	Ciudad de México
2040	Del Maestro	Colonia	Azcapotzalco	Ciudad de México
2040	San Sebastián	Colonia	Azcapotzalco	Ciudad de México
2050	Libertad	Colonia	Azcapotzalco	Ciudad de México
2050	Santa María Malinalco	Pueblo	Azcapotzalco	Ciudad de México
2060	Sindicato Mexicano de Electricistas	Colonia	Azcapotzalco	Ciudad de México
2060	Un Hogar Para Cada Trabajador	Colonia	Azcapotzalco	Ciudad de México
2070	Del Recreo	Colonia	Azcapotzalco	Ciudad de México
2070	Nextengo	Barrio	Azcapotzalco	Ciudad de México
2080	Clavería	Colonia	Azcapotzalco	Ciudad de México
2080	Sector Naval	Colonia	Azcapotzalco	Ciudad de México
2090	San Álvaro	Colonia	Azcapotzalco	Ciudad de México
2099	Ángel Zimbrón	Colonia	Azcapotzalco	Ciudad de México
2100	El Rosario	Colonia	Azcapotzalco	Ciudad de México
2120	San Martín Xochinahuac	Pueblo	Azcapotzalco	Ciudad de México
2128	Nueva El Rosario	Colonia	Azcapotzalco	Ciudad de México
2129	Nueva España	Colonia	Azcapotzalco	Ciudad de México
2130	Tierra Nueva	Colonia	Azcapotzalco	Ciudad de México
2140	Santa Inés	Colonia	Azcapotzalco	Ciudad de México
2150	Pasteros	Colonia	Azcapotzalco	Ciudad de México
2160	Santo Domingo	Pueblo	Azcapotzalco	Ciudad de México
2200	Reynosa Tamaulipas	Colonia	Azcapotzalco	Ciudad de México
2230	Santa Bárbara	Pueblo	Azcapotzalco	Ciudad de México
2240	San Andrés	Barrio	Azcapotzalco	Ciudad de México
2240	San Andrés	Pueblo	Azcapotzalco	Ciudad de México
2250	Santa Catarina	Pueblo	Azcapotzalco	Ciudad de México
2300	Industrial Vallejo	Colonia	Azcapotzalco	Ciudad de México
2310	Ferrería	Colonia	Azcapotzalco	Ciudad de México
2320	San Andrés de las Salinas	Pueblo	Azcapotzalco	Ciudad de México
2330	Huautla de las Salinas	Barrio	Azcapotzalco	Ciudad de México
2340	Santa Cruz de las Salinas	Colonia	Azcapotzalco	Ciudad de México
2360	Las Salinas	Colonia	Azcapotzalco	Ciudad de México
2400	San Juan Tlihuaca	Pueblo	Azcapotzalco	Ciudad de México
2410	Prados del Rosario	Colonia	Azcapotzalco	Ciudad de México
2420	Ex-Hacienda El Rosario	Colonia	Azcapotzalco	Ciudad de México
2440	Providencia	Colonia	Azcapotzalco	Ciudad de México
2459	Tezozomoc	Colonia	Azcapotzalco	Ciudad de México
2460	La Preciosa	Colonia	Azcapotzalco	Ciudad de México
2470	Ampliación Petrolera	Colonia	Azcapotzalco	Ciudad de México
2480	Petrolera	Colonia	Azcapotzalco	Ciudad de México
2490	San Mateo	Barrio	Azcapotzalco	Ciudad de México
2500	Unidad Cuitláhuac	Colonia	Azcapotzalco	Ciudad de México
2519	El Jagüey	Colonia	Azcapotzalco	Ciudad de México
2520	Estación Pantaco	Equipamiento	Azcapotzalco	Ciudad de México
2530	Jardín Azpeitia	Colonia	Azcapotzalco	Ciudad de México
2600	Pro-Hogar	Colonia	Azcapotzalco	Ciudad de México
2630	Coltongo	Barrio	Azcapotzalco	Ciudad de México
2630	Coltongo	Colonia	Azcapotzalco	Ciudad de México
2640	Monte Alto	Colonia	Azcapotzalco	Ciudad de México
2650	Trabajadores de Hierro	Colonia	Azcapotzalco	Ciudad de México
2660	Euzkadi	Colonia	Azcapotzalco	Ciudad de México
2670	Cosmopolita	Colonia	Azcapotzalco	Ciudad de México
2680	Potrero del Llano	Colonia	Azcapotzalco	Ciudad de México
2700	San Miguel Amantla	Pueblo	Azcapotzalco	Ciudad de México
2710	San Pedro Xalpa	Pueblo	Azcapotzalco	Ciudad de México
2719	Ampliación San Pedro Xalpa	Colonia	Azcapotzalco	Ciudad de México
2720	San Antonio	Colonia	Azcapotzalco	Ciudad de México
2720	San Bartolo Cahualtongo	Pueblo	Azcapotzalco	Ciudad de México
2730	San Francisco Tetecala	Pueblo	Azcapotzalco	Ciudad de México
2750	Santiago Ahuizotla	Pueblo	Azcapotzalco	Ciudad de México
2760	Industrial San Antonio	Colonia	Azcapotzalco	Ciudad de México
2760	Santa Lucía	Barrio	Azcapotzalco	Ciudad de México
2770	Santa Cruz Acayucan	Pueblo	Azcapotzalco	Ciudad de México
2780	Plenitud	Colonia	Azcapotzalco	Ciudad de México
2790	Santa Apolonia	Barrio	Azcapotzalco	Ciudad de México
2800	Nueva Santa María	Colonia	Azcapotzalco	Ciudad de México
2810	Ignacio Allende	Colonia	Azcapotzalco	Ciudad de México
2810	Victoria de las Democracias	Colonia	Azcapotzalco	Ciudad de México
2830	San Bernabé	Barrio	Azcapotzalco	Ciudad de México
2840	Obrero Popular	Colonia	Azcapotzalco	Ciudad de México
2860	Tlatilco	Colonia	Azcapotzalco	Ciudad de México
2870	San Salvador Xochimanca	Colonia	Azcapotzalco	Ciudad de México
2900	Aguilera	Colonia	Azcapotzalco	Ciudad de México
2910	Aldana	Colonia	Azcapotzalco	Ciudad de México
2920	Ampliación Cosmopolita	Colonia	Azcapotzalco	Ciudad de México
2930	Liberación	Colonia	Azcapotzalco	Ciudad de México
2940	Porvenir	Colonia	Azcapotzalco	Ciudad de México
2950	Del Gas	Colonia	Azcapotzalco	Ciudad de México
2960	San Francisco Xocotitla	Pueblo	Azcapotzalco	Ciudad de México
2970	Ampliación Del Gas	Colonia	Azcapotzalco	Ciudad de México
2980	Arenal	Colonia	Azcapotzalco	Ciudad de México
2980	Patrimonio Familiar	Colonia	Azcapotzalco	Ciudad de México
2990	La Raza	Colonia	Azcapotzalco	Ciudad de México
3000	Piedad Narvarte	Colonia	Benito Juárez	Ciudad de México
3010	Atenor Salas	Colonia	Benito Juárez	Ciudad de México
3020	Narvarte Poniente	Colonia	Benito Juárez	Ciudad de México
3023	Narvarte Oriente	Colonia	Benito Juárez	Ciudad de México
3100	Del Valle Centro	Colonia	Benito Juárez	Ciudad de México
3100	Insurgentes San Borja	Colonia	Benito Juárez	Ciudad de México
3103	Del Valle Norte	Colonia	Benito Juárez	Ciudad de México
3104	Del Valle Sur	Colonia	Benito Juárez	Ciudad de México
3200	Tlacoquemécatl	Colonia	Benito Juárez	Ciudad de México
3230	Actipan	Colonia	Benito Juárez	Ciudad de México
3240	Acacias	Colonia	Benito Juárez	Ciudad de México
3300	Portales Sur	Colonia	Benito Juárez	Ciudad de México
3303	Portales Norte	Colonia	Benito Juárez	Ciudad de México
3310	Santa Cruz Atoyac	Colonia	Benito Juárez	Ciudad de México
3320	Residencial Emperadores	Colonia	Benito Juárez	Ciudad de México
3330	Xoco	Colonia	Benito Juárez	Ciudad de México
3340	General Pedro María Anaya	Colonia	Benito Juárez	Ciudad de México
3400	Álamos	Colonia	Benito Juárez	Ciudad de México
3410	Postal	Colonia	Benito Juárez	Ciudad de México
3420	Miguel Alemán	Colonia	Benito Juárez	Ciudad de México
3430	Josefa Ortiz de Domínguez	Colonia	Benito Juárez	Ciudad de México
3440	Niños Héroes	Colonia	Benito Juárez	Ciudad de México
3500	Nativitas	Colonia	Benito Juárez	Ciudad de México
3510	Moderna	Colonia	Benito Juárez	Ciudad de México
3520	Iztaccihuatl	Colonia	Benito Juárez	Ciudad de México
3530	Villa de Cortes	Colonia	Benito Juárez	Ciudad de México
3540	Del Carmen	Colonia	Benito Juárez	Ciudad de México
3550	Zacahuitzco	Colonia	Benito Juárez	Ciudad de México
3560	Albert	Colonia	Benito Juárez	Ciudad de México
3570	Portales Oriente	Colonia	Benito Juárez	Ciudad de México
3580	Miravalle	Colonia	Benito Juárez	Ciudad de México
3590	Ermita	Colonia	Benito Juárez	Ciudad de México
3600	Vértiz Narvarte	Colonia	Benito Juárez	Ciudad de México
3610	Américas Unidas	Colonia	Benito Juárez	Ciudad de México
3620	Periodista	Colonia	Benito Juárez	Ciudad de México
3630	Independencia	Colonia	Benito Juárez	Ciudad de México
3640	Del Lago	Colonia	Benito Juárez	Ciudad de México
3650	Letrán Valle	Colonia	Benito Juárez	Ciudad de México
3660	San Simón Ticumac	Colonia	Benito Juárez	Ciudad de México
3700	Santa María Nonoalco	Colonia	Benito Juárez	Ciudad de México
3710	Ciudad de los Deportes	Colonia	Benito Juárez	Ciudad de México
3720	Nochebuena	Colonia	Benito Juárez	Ciudad de México
3730	San Juan	Colonia	Benito Juárez	Ciudad de México
3740	Extremadura Insurgentes	Colonia	Benito Juárez	Ciudad de México
3800	San Pedro de los Pinos	Colonia	Benito Juárez	Ciudad de México
3810	Nápoles	Colonia	Benito Juárez	Ciudad de México
3820	8 de Agosto	Colonia	Benito Juárez	Ciudad de México
3840	Ampliación Nápoles	Colonia	Benito Juárez	Ciudad de México
3900	San José Insurgentes	Colonia	Benito Juárez	Ciudad de México
3910	Mixcoac	Colonia	Benito Juárez	Ciudad de México
3920	Insurgentes Mixcoac	Colonia	Benito Juárez	Ciudad de México
3930	Merced Gómez	Colonia	Benito Juárez	Ciudad de México
3940	Crédito Constructor	Colonia	Benito Juárez	Ciudad de México
4000	Villa Coyoacán	Colonia	Coyoacán	Ciudad de México
4010	Santa Catarina	Barrio	Coyoacán	Ciudad de México
4020	La Concepción	Barrio	Coyoacán	Ciudad de México
4030	San Lucas	Barrio	Coyoacán	Ciudad de México
4040	Parque San Andrés	Colonia	Coyoacán	Ciudad de México
4100	Del Carmen	Colonia	Coyoacán	Ciudad de México
4120	San Diego Churubusco	Colonia	Coyoacán	Ciudad de México
4120	San Mateo	Colonia	Coyoacán	Ciudad de México
4200	Campestre Churubusco	Colonia	Coyoacán	Ciudad de México
4210	Churubusco Country Club	Colonia	Coyoacán	Ciudad de México
4230	Prado Churubusco	Colonia	Coyoacán	Ciudad de México
4240	Hermosillo	Colonia	Coyoacán	Ciudad de México
4250	Paseos de Taxqueña	Colonia	Coyoacán	Ciudad de México
4260	San Francisco Culhuacán Barrio de San Francisco	Barrio	Coyoacán	Ciudad de México
4260	San Francisco Culhuacán Barrio de La Magdalena	Barrio	Coyoacán	Ciudad de México
4260	San Francisco Culhuacán Barrio de Santa Ana	Barrio	Coyoacán	Ciudad de México
4260	San Francisco Culhuacán Barrio de San Juan	Barrio	Coyoacán	Ciudad de México
4300	Ajusco	Colonia	Coyoacán	Ciudad de México
4310	Romero de Terreros	Colonia	Coyoacán	Ciudad de México
4318	Oxtopulco Universidad	Barrio	Coyoacán	Ciudad de México
4320	Cuadrante de San Francisco	Colonia	Coyoacán	Ciudad de México
4320	Pedregal de San Francisco	Colonia	Coyoacán	Ciudad de México
4330	El Rosedal	Colonia	Coyoacán	Ciudad de México
4330	Los Reyes	Pueblo	Coyoacán	Ciudad de México
4330	Del Niño Jesús	Barrio	Coyoacán	Ciudad de México
4340	Copilco El Bajo	Colonia	Coyoacán	Ciudad de México
4360	Copilco El Alto	Colonia	Coyoacán	Ciudad de México
4360	Copilco Universidad	Colonia	Coyoacán	Ciudad de México
4369	Pedregal de Santo Domingo	Colonia	Coyoacán	Ciudad de México
4370	Atlántida	Colonia	Coyoacán	Ciudad de México
4370	Ciudad Jardín	Colonia	Coyoacán	Ciudad de México
4380	El Rosario	Colonia	Coyoacán	Ciudad de México
4380	La Candelaria	Pueblo	Coyoacán	Ciudad de México
4390	Huayamilpas	Colonia	Coyoacán	Ciudad de México
4390	Nueva Díaz Ordaz	Colonia	Coyoacán	Ciudad de México
4400	Educación	Colonia	Coyoacán	Ciudad de México
4410	Petrolera Taxqueña	Colonia	Coyoacán	Ciudad de México
4420	Ex-Ejido de San Francisco Culhuacán	Colonia	Coyoacán	Ciudad de México
4440	Culhuacán CTM Sección V	Colonia	Coyoacán	Ciudad de México
4440	Culhuacán CTM Sección II	Colonia	Coyoacán	Ciudad de México
4440	Culhuacán CTM Sección I	Colonia	Coyoacán	Ciudad de México
4450	El Centinela	Colonia	Coyoacán	Ciudad de México
4460	Avante	Colonia	Coyoacán	Ciudad de México
4470	Presidentes Ejidales 1a Sección	Colonia	Coyoacán	Ciudad de México
4470	Presidentes Ejidales 2a Sección	Colonia	Coyoacán	Ciudad de México
4480	Culhuacán CTM Sección VI	Colonia	Coyoacán	Ciudad de México
4480	Culhuacán CTM Sección III	Colonia	Coyoacán	Ciudad de México
4480	Culhuacán CTM CROC	Colonia	Coyoacán	Ciudad de México
4480	Culhuacán CTM Sección X-A	Colonia	Coyoacán	Ciudad de México
4489	Culhuacán CTM Sección VII	Colonia	Coyoacán	Ciudad de México
4490	Culhuacán CTM Sección Piloto	Colonia	Coyoacán	Ciudad de México
4490	Culhuacán CTM Canal Nacional	Colonia	Coyoacán	Ciudad de México
4500	Jardines del Pedregal de San Ángel	Colonia	Coyoacán	Ciudad de México
4510	Universidad Nacional Autónoma de México	Equipamiento	Coyoacán	Ciudad de México
4519	La Otra Banda	Colonia	Coyoacán	Ciudad de México
4530	Insurgentes Cuicuilco	Colonia	Coyoacán	Ciudad de México
4600	Pedregal de Santa Úrsula	Colonia	Coyoacán	Ciudad de México
4610	Xotepingo	Colonia	Coyoacán	Ciudad de México
4620	San Pablo Tepetlapa	Pueblo	Coyoacán	Ciudad de México
4630	Adolfo Ruiz Cortínes	Colonia	Coyoacán	Ciudad de México
4640	El Reloj	Colonia	Coyoacán	Ciudad de México
4650	Santa Úrsula Coapa	Pueblo	Coyoacán	Ciudad de México
4660	Joyas del Pedregal	Colonia	Coyoacán	Ciudad de México
4700	Pedregal de Carrasco	Colonia	Coyoacán	Ciudad de México
4710	Olímpica	Colonia	Coyoacán	Ciudad de México
4730	Cantil del Pedregal	Colonia	Coyoacán	Ciudad de México
4730	Bosques de Tetlameya	Colonia	Coyoacán	Ciudad de México
4739	El Caracol	Colonia	Coyoacán	Ciudad de México
4800	Alianza Popular Revolucionaria	Colonia	Coyoacán	Ciudad de México
4800	Los Cedros	Colonia	Coyoacán	Ciudad de México
4810	Prados de Coyoacán	Colonia	Coyoacán	Ciudad de México
50010	Club Jardín	Colonia	Toluca	México
4815	Emiliano Zapata	Colonia	Coyoacán	Ciudad de México
4830	Los Cipreses	Colonia	Coyoacán	Ciudad de México
4840	Ex-Ejido de San Pablo Tepetlapa	Colonia	Coyoacán	Ciudad de México
4870	Espartaco	Colonia	Coyoacán	Ciudad de México
4890	Jardines de Coyoacán	Colonia	Coyoacán	Ciudad de México
4890	Los Olivos	Colonia	Coyoacán	Ciudad de México
4899	El Parque de Coyoacán	Colonia	Coyoacán	Ciudad de México
4909	Culhuacán CTM Sección VIII	Colonia	Coyoacán	Ciudad de México
4909	Culhuacán CTM Sección IX-A	Colonia	Coyoacán	Ciudad de México
4909	Culhuacán CTM Sección IX-B	Colonia	Coyoacán	Ciudad de México
4910	Carmen Serdán	Colonia	Coyoacán	Ciudad de México
4918	Cafetales	Colonia	Coyoacán	Ciudad de México
4919	Emiliano Zapata Fraccionamiento Popular	Colonia	Coyoacán	Ciudad de México
4920	Los Girasoles	Colonia	Coyoacán	Ciudad de México
4929	Las Campanas	Colonia	Coyoacán	Ciudad de México
4930	Santa Cecilia	Colonia	Coyoacán	Ciudad de México
4938	Campestre Coyoacán	Colonia	Coyoacán	Ciudad de México
4939	Culhuacán CTM Sección X	Colonia	Coyoacán	Ciudad de México
4940	Los Sauces	Colonia	Coyoacán	Ciudad de México
4950	El Mirador	Colonia	Coyoacán	Ciudad de México
4960	Villa Quietud	Colonia	Coyoacán	Ciudad de México
4970	Haciendas de Coyoacán	Colonia	Coyoacán	Ciudad de México
4980	Ex-Ejido de Santa Úrsula Coapa	Colonia	Coyoacán	Ciudad de México
4980	Ex-Hacienda Coapa	Colonia	Coyoacán	Ciudad de México
4980	Viejo Ejido de Santa Úrsula Coapa	Colonia	Coyoacán	Ciudad de México
5000	Cuajimalpa	Colonia	Cuajimalpa de Morelos	Ciudad de México
5010	Zentlapatl	Colonia	Cuajimalpa de Morelos	Ciudad de México
5020	Loma del Padre	Colonia	Cuajimalpa de Morelos	Ciudad de México
5030	San Pedro	Colonia	Cuajimalpa de Morelos	Ciudad de México
5030	La Manzanita	Colonia	Cuajimalpa de Morelos	Ciudad de México
5050	San Pablo Chimalpa	Pueblo	Cuajimalpa de Morelos	Ciudad de México
5100	Lomas de Vista Hermosa	Colonia	Cuajimalpa de Morelos	Ciudad de México
5110	Cooperativa Palo Alto	Colonia	Cuajimalpa de Morelos	Ciudad de México
5118	Granjas Palo Alto	Colonia	Cuajimalpa de Morelos	Ciudad de México
5119	Campestre Palo Alto	Colonia	Cuajimalpa de Morelos	Ciudad de México
5120	Bosques de las Lomas	Colonia	Cuajimalpa de Morelos	Ciudad de México
5129	Lomas del Chamizal	Colonia	Cuajimalpa de Morelos	Ciudad de México
5200	San José de los Cedros	Colonia	Cuajimalpa de Morelos	Ciudad de México
5219	Granjas Navidad	Colonia	Cuajimalpa de Morelos	Ciudad de México
5220	Tepetongo	Colonia	Cuajimalpa de Morelos	Ciudad de México
5230	El Ébano	Colonia	Cuajimalpa de Morelos	Ciudad de México
5240	El Molino	Colonia	Cuajimalpa de Morelos	Ciudad de México
5260	Jesús del Monte	Colonia	Cuajimalpa de Morelos	Ciudad de México
5269	Amado Nervo	Colonia	Cuajimalpa de Morelos	Ciudad de México
5270	Manzanastitla	Colonia	Cuajimalpa de Morelos	Ciudad de México
5280	Adolfo López Mateos	Colonia	Cuajimalpa de Morelos	Ciudad de México
5310	El Molinito	Colonia	Cuajimalpa de Morelos	Ciudad de México
5320	El Yaqui	Colonia	Cuajimalpa de Morelos	Ciudad de México
5330	Lomas de Memetla	Colonia	Cuajimalpa de Morelos	Ciudad de México
5330	Memetla	Colonia	Cuajimalpa de Morelos	Ciudad de México
5330	Ampliación Memetla	Colonia	Cuajimalpa de Morelos	Ciudad de México
5330	Ampliación el Yaqui	Colonia	Cuajimalpa de Morelos	Ciudad de México
5348	Santa Fe Cuajimalpa	Colonia	Cuajimalpa de Morelos	Ciudad de México
5360	Locaxco	Colonia	Cuajimalpa de Morelos	Ciudad de México
5370	Las Tinajas	Colonia	Cuajimalpa de Morelos	Ciudad de México
5379	Lomas de San Pedro	Colonia	Cuajimalpa de Morelos	Ciudad de México
5400	El Tianguillo	Colonia	Cuajimalpa de Morelos	Ciudad de México
5410	San Lorenzo Acopilco	Pueblo	Cuajimalpa de Morelos	Ciudad de México
5410	1° de Mayo	Colonia	Cuajimalpa de Morelos	Ciudad de México
5500	Contadero	Colonia	Cuajimalpa de Morelos	Ciudad de México
5520	La Venta	Colonia	Cuajimalpa de Morelos	Ciudad de México
5530	Abdías García Soto	Colonia	Cuajimalpa de Morelos	Ciudad de México
5600	San Mateo Tlaltenango	Pueblo	Cuajimalpa de Morelos	Ciudad de México
5610	Santa Rosa Xochiac	Pueblo	Cuajimalpa de Morelos	Ciudad de México
5700	Cruz Blanca	Colonia	Cuajimalpa de Morelos	Ciudad de México
5710	Las Maromas	Colonia	Cuajimalpa de Morelos	Ciudad de México
5730	Xalpa	Colonia	Cuajimalpa de Morelos	Ciudad de México
5750	La Pila	Colonia	Cuajimalpa de Morelos	Ciudad de México
5760	Las Lajas	Colonia	Cuajimalpa de Morelos	Ciudad de México
5780	Agua Bendita	Colonia	Cuajimalpa de Morelos	Ciudad de México
6000	Centro (Área 1)	Colonia	Cuauhtémoc	Ciudad de México
6010	Centro (Área 2)	Colonia	Cuauhtémoc	Ciudad de México
6020	Centro (Área 3)	Colonia	Cuauhtémoc	Ciudad de México
6030	Tabacalera	Colonia	Cuauhtémoc	Ciudad de México
6040	Centro (Área 4)	Colonia	Cuauhtémoc	Ciudad de México
6050	Centro (Área 5)	Colonia	Cuauhtémoc	Ciudad de México
6060	Centro (Área 6)	Colonia	Cuauhtémoc	Ciudad de México
6070	Centro (Área 7)	Colonia	Cuauhtémoc	Ciudad de México
6080	Centro (Área 8)	Colonia	Cuauhtémoc	Ciudad de México
6090	Centro (Área 9)	Colonia	Cuauhtémoc	Ciudad de México
6100	Hipódromo	Colonia	Cuauhtémoc	Ciudad de México
6140	Condesa	Colonia	Cuauhtémoc	Ciudad de México
6170	Hipódromo Condesa	Colonia	Cuauhtémoc	Ciudad de México
6200	Morelos	Colonia	Cuauhtémoc	Ciudad de México
6220	Peralvillo	Colonia	Cuauhtémoc	Ciudad de México
6240	Valle Gómez	Colonia	Cuauhtémoc	Ciudad de México
6250	Ex-Hipódromo de Peralvillo	Colonia	Cuauhtémoc	Ciudad de México
6270	Maza	Colonia	Cuauhtémoc	Ciudad de México
6280	Felipe Pescador	Colonia	Cuauhtémoc	Ciudad de México
6300	Guerrero	Colonia	Cuauhtémoc	Ciudad de México
6350	Buenavista	Colonia	Cuauhtémoc	Ciudad de México
6400	Santa María la Ribera	Colonia	Cuauhtémoc	Ciudad de México
6430	Santa María Insurgentes	Colonia	Cuauhtémoc	Ciudad de México
6450	Atlampa	Colonia	Cuauhtémoc	Ciudad de México
6470	San Rafael	Colonia	Cuauhtémoc	Ciudad de México
6500	Cuauhtémoc	Colonia	Cuauhtémoc	Ciudad de México
6600	Juárez	Colonia	Cuauhtémoc	Ciudad de México
6700	Roma Norte	Colonia	Cuauhtémoc	Ciudad de México
6720	Doctores	Colonia	Cuauhtémoc	Ciudad de México
6760	Roma Sur	Colonia	Cuauhtémoc	Ciudad de México
6780	Buenos Aires	Colonia	Cuauhtémoc	Ciudad de México
6800	Obrera	Colonia	Cuauhtémoc	Ciudad de México
6820	Tránsito	Colonia	Cuauhtémoc	Ciudad de México
6840	Esperanza	Colonia	Cuauhtémoc	Ciudad de México
6850	Asturias	Colonia	Cuauhtémoc	Ciudad de México
6860	Vista Alegre	Colonia	Cuauhtémoc	Ciudad de México
6870	Paulino Navarro	Colonia	Cuauhtémoc	Ciudad de México
6880	Algarin	Colonia	Cuauhtémoc	Ciudad de México
6890	Ampliación Asturias	Colonia	Cuauhtémoc	Ciudad de México
6900	Nonoalco Tlatelolco	Colonia	Cuauhtémoc	Ciudad de México
6920	San Simón Tolnáhuac	Colonia	Cuauhtémoc	Ciudad de México
7000	Aragón la Villa	Colonia	Gustavo A. Madero	Ciudad de México
7010	Rosas del Tepeyac	Colonia	Gustavo A. Madero	Ciudad de México
7010	Santa Isabel Tola	Colonia	Gustavo A. Madero	Ciudad de México
7010	Tepetates	Colonia	Gustavo A. Madero	Ciudad de México
7020	Tepeyac Insurgentes	Colonia	Gustavo A. Madero	Ciudad de México
7040	Santiago Atzacoalco	Pueblo	Gustavo A. Madero	Ciudad de México
7050	Villa Gustavo A. Madero	Colonia	Gustavo A. Madero	Ciudad de México
7058	15 de Agosto	Colonia	Gustavo A. Madero	Ciudad de México
7060	Estanzuela	Colonia	Gustavo A. Madero	Ciudad de México
7069	Triunfo de La República	Colonia	Gustavo A. Madero	Ciudad de México
7070	La Cruz	Colonia	Gustavo A. Madero	Ciudad de México
7070	Dinamita	Colonia	Gustavo A. Madero	Ciudad de México
7070	Martín Carrera	Colonia	Gustavo A. Madero	Ciudad de México
7080	Gabriel Hernández	Colonia	Gustavo A. Madero	Ciudad de México
7089	Ampliación Gabriel Hernández	Colonia	Gustavo A. Madero	Ciudad de México
7090	C.T.M. Atzacoalco	Colonia	Gustavo A. Madero	Ciudad de México
7090	C.T.M. El Risco	Colonia	Gustavo A. Madero	Ciudad de México
7100	Cuautepec Barrio Alto	Colonia	Gustavo A. Madero	Ciudad de México
7100	San Miguel	Colonia	Gustavo A. Madero	Ciudad de México
7109	San Antonio	Colonia	Gustavo A. Madero	Ciudad de México
7110	Lomas de Cuautepec	Colonia	Gustavo A. Madero	Ciudad de México
7119	Malacates	Colonia	Gustavo A. Madero	Ciudad de México
7119	Ampliación Malacates	Colonia	Gustavo A. Madero	Ciudad de México
7130	Compositores Mexicanos	Colonia	Gustavo A. Madero	Ciudad de México
7130	El Tepetatal	Colonia	Gustavo A. Madero	Ciudad de México
7140	Arboledas	Colonia	Gustavo A. Madero	Ciudad de México
7140	Ampliación Arboledas	Colonia	Gustavo A. Madero	Ciudad de México
7140	Forestal	Colonia	Gustavo A. Madero	Ciudad de México
7140	Forestal I	Colonia	Gustavo A. Madero	Ciudad de México
7144	Forestal II	Colonia	Gustavo A. Madero	Ciudad de México
7144	La Lengüeta	Colonia	Gustavo A. Madero	Ciudad de México
7149	Parque Metropolitano	Colonia	Gustavo A. Madero	Ciudad de México
7150	Juventino Rosas	Colonia	Gustavo A. Madero	Ciudad de México
7150	La Casilda	Colonia	Gustavo A. Madero	Ciudad de México
7160	Loma La Palma	Colonia	Gustavo A. Madero	Ciudad de México
7164	Luis Donaldo Colosio	Colonia	Gustavo A. Madero	Ciudad de México
7164	Tlacaélel	Colonia	Gustavo A. Madero	Ciudad de México
7164	Graciano Sánchez	Colonia	Gustavo A. Madero	Ciudad de México
7164	Prados de Cuautepec	Colonia	Gustavo A. Madero	Ciudad de México
7170	Palmatitla	Colonia	Gustavo A. Madero	Ciudad de México
7180	Cocoyotes	Colonia	Gustavo A. Madero	Ciudad de México
7180	General Felipe Berriozabal	Colonia	Gustavo A. Madero	Ciudad de México
7180	Ampliación Cocoyotes	Colonia	Gustavo A. Madero	Ciudad de México
7183	6 de Junio	Colonia	Gustavo A. Madero	Ciudad de México
7187	Vista Hermosa	Colonia	Gustavo A. Madero	Ciudad de México
7188	Tlalpexco	Colonia	Gustavo A. Madero	Ciudad de México
7189	Ahuehuetes	Colonia	Gustavo A. Madero	Ciudad de México
7190	Valle de Madero	Colonia	Gustavo A. Madero	Ciudad de México
7199	Del Carmen	Colonia	Gustavo A. Madero	Ciudad de México
7200	Cuautepec de Madero	Colonia	Gustavo A. Madero	Ciudad de México
7207	Del Bosque	Colonia	Gustavo A. Madero	Ciudad de México
7209	Guadalupe Victoria Cuautepec	Colonia	Gustavo A. Madero	Ciudad de México
7210	Chalma de Guadalupe	Colonia	Gustavo A. Madero	Ciudad de México
7214	Ampliación Chalma de Guadalupe	Colonia	Gustavo A. Madero	Ciudad de México
7220	Castillo Chico	Colonia	Gustavo A. Madero	Ciudad de México
7220	Castillo Grande	Colonia	Gustavo A. Madero	Ciudad de México
7224	Ampliación Castillo Grande	Colonia	Gustavo A. Madero	Ciudad de México
7230	Zona Escolar	Colonia	Gustavo A. Madero	Ciudad de México
7239	Zona Escolar Oriente	Colonia	Gustavo A. Madero	Ciudad de México
7240	El Arbolillo	Colonia	Gustavo A. Madero	Ciudad de México
7250	Benito Juárez	Colonia	Gustavo A. Madero	Ciudad de México
7259	Ampliación Benito Juárez	Colonia	Gustavo A. Madero	Ciudad de México
7268	Solidaridad Nacional	Colonia	Gustavo A. Madero	Ciudad de México
7270	Residencial Acueducto de Guadalupe	Colonia	Gustavo A. Madero	Ciudad de México
7279	Acueducto de Guadalupe	Colonia	Gustavo A. Madero	Ciudad de México
7280	Jorge Negrete	Colonia	Gustavo A. Madero	Ciudad de México
7290	La Pastora	Colonia	Gustavo A. Madero	Ciudad de México
7300	Lindavista Norte	Colonia	Gustavo A. Madero	Ciudad de México
7300	Lindavista Sur	Colonia	Gustavo A. Madero	Ciudad de México
7310	Candelaria Ticomán	Barrio	Gustavo A. Madero	Ciudad de México
7320	La Purísima Ticomán	Barrio	Gustavo A. Madero	Ciudad de México
7320	Residencial la Escalera	Colonia	Gustavo A. Madero	Ciudad de México
7330	Santa María Ticomán	Colonia	Gustavo A. Madero	Ciudad de México
7340	La Laguna Ticomán	Barrio	Gustavo A. Madero	Ciudad de México
7340	San José Ticomán	Colonia	Gustavo A. Madero	Ciudad de México
7350	Guadalupe Ticomán	Barrio	Gustavo A. Madero	Ciudad de México
7350	San Juan y Guadalupe Ticomán	Barrio	Gustavo A. Madero	Ciudad de México
7359	San Rafael Ticomán	Barrio	Gustavo A. Madero	Ciudad de México
7360	San Pedro Zacatenco	Colonia	Gustavo A. Madero	Ciudad de México
7369	Residencial Zacatenco	Colonia	Gustavo A. Madero	Ciudad de México
7370	Capultitlan	Colonia	Gustavo A. Madero	Ciudad de México
7380	Maximino Ávila Camacho	Colonia	Gustavo A. Madero	Ciudad de México
7380	Tlacamaca	Colonia	Gustavo A. Madero	Ciudad de México
7400	Salvador Díaz Mirón	Colonia	Gustavo A. Madero	Ciudad de México
7410	Juan González Romero	Colonia	Gustavo A. Madero	Ciudad de México
7410	Villa Hermosa	Colonia	Gustavo A. Madero	Ciudad de México
7420	El Coyol	Colonia	Gustavo A. Madero	Ciudad de México
7420	Nueva Atzacoalco	Colonia	Gustavo A. Madero	Ciudad de México
7430	Del Obrero	Colonia	Gustavo A. Madero	Ciudad de México
7440	Vasco de Quiroga	Colonia	Gustavo A. Madero	Ciudad de México
7450	DM Nacional	Colonia	Gustavo A. Madero	Ciudad de México
7455	Ferrocarrilera	Colonia	Gustavo A. Madero	Ciudad de México
7456	LI Legislatura	Colonia	Gustavo A. Madero	Ciudad de México
7460	Granjas Modernas	Colonia	Gustavo A. Madero	Ciudad de México
7469	Constitución de la República	Colonia	Gustavo A. Madero	Ciudad de México
7470	Ampliación San Juan de Aragón	Colonia	Gustavo A. Madero	Ciudad de México
7480	San Pedro El Chico	Colonia	Gustavo A. Madero	Ciudad de México
7500	La Pradera	Colonia	Gustavo A. Madero	Ciudad de México
7509	Pradera II Sección	Colonia	Gustavo A. Madero	Ciudad de México
7510	San Felipe de Jesús	Colonia	Gustavo A. Madero	Ciudad de México
7520	25 de Julio	Colonia	Gustavo A. Madero	Ciudad de México
7530	Campestre Aragón	Colonia	Gustavo A. Madero	Ciudad de México
7540	La Esmeralda	Colonia	Gustavo A. Madero	Ciudad de México
7550	Providencia	Colonia	Gustavo A. Madero	Ciudad de México
7560	Ampliación Providencia	Colonia	Gustavo A. Madero	Ciudad de México
7570	Villa de Aragón	Colonia	Gustavo A. Madero	Ciudad de México
7580	Ampliación Casas Alemán	Colonia	Gustavo A. Madero	Ciudad de México
7600	Progreso Nacional	Colonia	Gustavo A. Madero	Ciudad de México
7620	Santa Rosa	Colonia	Gustavo A. Madero	Ciudad de México
7630	San José de la Escalera	Colonia	Gustavo A. Madero	Ciudad de México
7640	Santiago Atepetlac	Colonia	Gustavo A. Madero	Ciudad de México
7650	Ampliación Progreso Nacional	Colonia	Gustavo A. Madero	Ciudad de México
7670	Guadalupe Proletaria	Colonia	Gustavo A. Madero	Ciudad de México
7680	Ampliación Guadalupe Proletaria	Colonia	Gustavo A. Madero	Ciudad de México
7700	Nueva Industrial Vallejo	Colonia	Gustavo A. Madero	Ciudad de México
7707	Siete Maravillas	Colonia	Gustavo A. Madero	Ciudad de México
7708	Torres Lindavista	Colonia	Gustavo A. Madero	Ciudad de México
7720	Lindavista Vallejo I Sección	Colonia	Gustavo A. Madero	Ciudad de México
7730	Churubusco Tepeyac	Colonia	Gustavo A. Madero	Ciudad de México
7730	Montevideo	Colonia	Gustavo A. Madero	Ciudad de México
7730	San Bartolo Atepehuacan	Colonia	Gustavo A. Madero	Ciudad de México
7739	Planetario Lindavista	Colonia	Gustavo A. Madero	Ciudad de México
7740	Valle del Tepeyac	Colonia	Gustavo A. Madero	Ciudad de México
7750	Nueva Vallejo	Colonia	Gustavo A. Madero	Ciudad de México
7754	Lindavista Vallejo III Sección	Colonia	Gustavo A. Madero	Ciudad de México
7755	Lindavista Vallejo II Sección	Colonia	Gustavo A. Madero	Ciudad de México
7760	Magdalena de las Salinas	Colonia	Gustavo A. Madero	Ciudad de México
7770	Panamericana	Colonia	Gustavo A. Madero	Ciudad de México
7770	Ampliación Panamericana	Colonia	Gustavo A. Madero	Ciudad de México
7780	Defensores de La República	Colonia	Gustavo A. Madero	Ciudad de México
7780	Héroe de Nacozari	Colonia	Gustavo A. Madero	Ciudad de México
7790	Guadalupe Victoria	Colonia	Gustavo A. Madero	Ciudad de México
7790	Vallejo Poniente	Colonia	Gustavo A. Madero	Ciudad de México
7800	Industrial	Colonia	Gustavo A. Madero	Ciudad de México
7810	Estrella	Colonia	Gustavo A. Madero	Ciudad de México
7820	Aragón Inguarán	Colonia	Gustavo A. Madero	Ciudad de México
7820	Tres Estrellas	Colonia	Gustavo A. Madero	Ciudad de México
7830	Gertrudis Sánchez 1a Sección	Colonia	Gustavo A. Madero	Ciudad de México
7838	Gertrudis Sánchez 3a Sección	Colonia	Gustavo A. Madero	Ciudad de México
7839	Gertrudis Sánchez 2a Sección	Colonia	Gustavo A. Madero	Ciudad de México
7840	Guadalupe Tepeyac	Colonia	Gustavo A. Madero	Ciudad de México
7840	7 de Noviembre	Colonia	Gustavo A. Madero	Ciudad de México
7850	Bondojito	Colonia	Gustavo A. Madero	Ciudad de México
7850	Faja de Oro	Colonia	Gustavo A. Madero	Ciudad de México
7858	Ampliación Emiliano Zapata	Colonia	Gustavo A. Madero	Ciudad de México
7859	Ampliación Mártires de Río Blanco	Colonia	Gustavo A. Madero	Ciudad de México
7860	La Joyita	Colonia	Gustavo A. Madero	Ciudad de México
7860	Tablas de San Agustín	Colonia	Gustavo A. Madero	Ciudad de México
7869	Belisario Domínguez	Colonia	Gustavo A. Madero	Ciudad de México
7870	Guadalupe Insurgentes	Colonia	Gustavo A. Madero	Ciudad de México
7870	Vallejo	Colonia	Gustavo A. Madero	Ciudad de México
7880	Mártires de Río Blanco	Colonia	Gustavo A. Madero	Ciudad de México
7889	Emiliano Zapata	Colonia	Gustavo A. Madero	Ciudad de México
7890	Nueva Tenochtitlán	Colonia	Gustavo A. Madero	Ciudad de México
7890	Cuchilla La Joya	Colonia	Gustavo A. Madero	Ciudad de México
7890	La Joya	Colonia	Gustavo A. Madero	Ciudad de México
7899	La Malinche	Colonia	Gustavo A. Madero	Ciudad de México
7900	Cuchilla del Tesoro	Colonia	Gustavo A. Madero	Ciudad de México
7910	San Juan de Aragón VII Sección	Colonia	Gustavo A. Madero	Ciudad de México
7918	San Juan de Aragón VI Sección	Colonia	Gustavo A. Madero	Ciudad de México
7919	Ex Ejido San Juan de Aragón Sector 32	Colonia	Gustavo A. Madero	Ciudad de México
7920	El Olivo	Colonia	Gustavo A. Madero	Ciudad de México
7920	San Juan de Aragón	Colonia	Gustavo A. Madero	Ciudad de México
7930	Indeco	Colonia	Gustavo A. Madero	Ciudad de México
7939	Héroes de Chapultepec	Colonia	Gustavo A. Madero	Ciudad de México
7940	Ex Ejido San Juan de Aragón Sector 33	Colonia	Gustavo A. Madero	Ciudad de México
7950	San Juan de Aragón	Pueblo	Gustavo A. Madero	Ciudad de México
7960	Héroes de Cerro Prieto	Colonia	Gustavo A. Madero	Ciudad de México
7960	Ex Escuela de Tiro	Colonia	Gustavo A. Madero	Ciudad de México
7960	Fernando Casas Alemán	Colonia	Gustavo A. Madero	Ciudad de México
7969	San Juan de Aragón I Sección	Colonia	Gustavo A. Madero	Ciudad de México
7969	San Juan de Aragón II Sección	Colonia	Gustavo A. Madero	Ciudad de México
7970	San Juan de Aragón III Sección	Colonia	Gustavo A. Madero	Ciudad de México
7979	San Juan de Aragón IV Sección	Colonia	Gustavo A. Madero	Ciudad de México
7979	San Juan de Aragón V Sección	Colonia	Gustavo A. Madero	Ciudad de México
7980	Narciso Bassols	Colonia	Gustavo A. Madero	Ciudad de México
7990	C.T.M. Aragón	Colonia	Gustavo A. Madero	Ciudad de México
8000	Gabriel Ramos Millán Sección Bramadero	Colonia	Iztacalco	Ciudad de México
8010	Ex-Ejido de La Magdalena Mixiuhca	Colonia	Iztacalco	Ciudad de México
8020	Ampliación Gabriel Ramos Millán	Colonia	Iztacalco	Ciudad de México
8030	Gabriel Ramos Millán Sección Cuchilla	Colonia	Iztacalco	Ciudad de México
8040	Carlos Zapata Vela	Colonia	Iztacalco	Ciudad de México
8100	Agrícola Pantitlán	Colonia	Iztacalco	Ciudad de México
8200	Viaducto Piedad	Colonia	Iztacalco	Ciudad de México
8210	Nueva Santa Anita	Colonia	Iztacalco	Ciudad de México
8220	San Pedro	Barrio	Iztacalco	Ciudad de México
8230	San Francisco Xicaltongo	Barrio	Iztacalco	Ciudad de México
8240	Santiago Norte	Barrio	Iztacalco	Ciudad de México
8300	Santa Anita	Colonia	Iztacalco	Ciudad de México
8310	La Cruz	Colonia	Iztacalco	Ciudad de México
8320	Fraccionamiento Coyuya	Colonia	Iztacalco	Ciudad de México
8400	Granjas México	Colonia	Iztacalco	Ciudad de México
8420	Cuchilla Agrícola Oriental	Colonia	Iztacalco	Ciudad de México
8500	Agrícola Oriental	Colonia	Iztacalco	Ciudad de México
8510	El Rodeo	Colonia	Iztacalco	Ciudad de México
8600	La Asunción	Barrio	Iztacalco	Ciudad de México
8610	Zapotla	Barrio	Iztacalco	Ciudad de México
8620	Los Reyes	Barrio	Iztacalco	Ciudad de México
8650	San Miguel	Barrio	Iztacalco	Ciudad de México
8700	Juventino Rosas	Colonia	Iztacalco	Ciudad de México
8710	Tlazintla	Colonia	Iztacalco	Ciudad de México
8720	Gabriel Ramos Millán Sección Tlacotal	Colonia	Iztacalco	Ciudad de México
8730	Gabriel Ramos Millán	Colonia	Iztacalco	Ciudad de México
8760	INPI Picos	Colonia	Iztacalco	Ciudad de México
8760	Los Picos de Iztacalco Sección 2A	Colonia	Iztacalco	Ciudad de México
8760	Los Picos de Iztacalco Sección 1B	Colonia	Iztacalco	Ciudad de México
8770	Los Picos de Iztacalco Sección 1A	Colonia	Iztacalco	Ciudad de México
8800	Santiago Sur	Barrio	Iztacalco	Ciudad de México
8810	Reforma Iztaccíhuatl Norte	Colonia	Iztacalco	Ciudad de México
8830	Militar Marte	Colonia	Iztacalco	Ciudad de México
8840	Reforma Iztaccíhuatl Sur	Colonia	Iztacalco	Ciudad de México
8900	INFONAVIT Iztacalco	Colonia	Iztacalco	Ciudad de México
8910	Santa Cruz	Barrio	Iztacalco	Ciudad de México
8920	Jardines Tecma	Colonia	Iztacalco	Ciudad de México
8930	Campamento 2 de Octubre	Colonia	Iztacalco	Ciudad de México
9000	La Asunción	Barrio	Iztapalapa	Ciudad de México
9000	San Ignacio	Barrio	Iztapalapa	Ciudad de México
9000	San José	Barrio	Iztapalapa	Ciudad de México
9000	San Lucas	Barrio	Iztapalapa	Ciudad de México
9000	San Pablo	Barrio	Iztapalapa	Ciudad de México
9000	San Pedro	Barrio	Iztapalapa	Ciudad de México
9000	Santa Bárbara	Barrio	Iztapalapa	Ciudad de México
9010	Real del Moral	Colonia	Iztapalapa	Ciudad de México
9020	Dr. Alfonso Ortiz Tirado	Colonia	Iztapalapa	Ciudad de México
9030	Paseos de Churubusco	Colonia	Iztapalapa	Ciudad de México
9040	Central de Abasto	Colonia	Iztapalapa	Ciudad de México
9060	Escuadrón 201	Colonia	Iztapalapa	Ciudad de México
9060	Sector Popular	Colonia	Iztapalapa	Ciudad de México
9070	Granjas de San Antonio	Colonia	Iztapalapa	Ciudad de México
9080	Cacama	Colonia	Iztapalapa	Ciudad de México
9089	Unidad Modelo	Colonia	Iztapalapa	Ciudad de México
9090	Héroes de Churubusco	Colonia	Iztapalapa	Ciudad de México
9099	Mexicaltzingo	Pueblo	Iztapalapa	Ciudad de México
9100	Juan Escutia	Colonia	Iztapalapa	Ciudad de México
9130	San Lorenzo Xicotencatl	Pueblo	Iztapalapa	Ciudad de México
9140	Santa Martha Acatitla Norte	Colonia	Iztapalapa	Ciudad de México
9180	Ermita Zaragoza	Colonia	Iztapalapa	Ciudad de México
9200	Unidad Vicente Guerrero	Colonia	Iztapalapa	Ciudad de México
9208	Chinampac de Juárez	Colonia	Iztapalapa	Ciudad de México
9209	Renovación	Colonia	Iztapalapa	Ciudad de México
9210	Tepalcates	Colonia	Iztapalapa	Ciudad de México
9220	Unidad Ejército Constitucionalista	Colonia	Iztapalapa	Ciudad de México
9230	Álvaro Obregón	Colonia	Iztapalapa	Ciudad de México
9230	Ejército de Oriente	Colonia	Iztapalapa	Ciudad de México
9230	El Paraíso	Colonia	Iztapalapa	Ciudad de México
9230	José María Morelos y Pavón	Colonia	Iztapalapa	Ciudad de México
9239	Ejército de Oriente Zona Peñón	Colonia	Iztapalapa	Ciudad de México
9240	Progresista	Colonia	Iztapalapa	Ciudad de México
9250	La Regadera	Colonia	Iztapalapa	Ciudad de México
9260	Constitución de 1917	Colonia	Iztapalapa	Ciudad de México
9270	Colonial Iztapalapa	Colonia	Iztapalapa	Ciudad de México
9280	Jacarandas	Colonia	Iztapalapa	Ciudad de México
9290	Santa Cruz Meyehualco	Colonia	Iztapalapa	Ciudad de México
9300	Guadalupe del Moral	Colonia	Iztapalapa	Ciudad de México
9310	Leyes de Reforma 1a Sección	Colonia	Iztapalapa	Ciudad de México
9310	Leyes de Reforma 2a Sección	Colonia	Iztapalapa	Ciudad de México
9310	Leyes de Reforma 3a Sección	Colonia	Iztapalapa	Ciudad de México
9319	Cuchilla del Moral	Colonia	Iztapalapa	Ciudad de México
9320	Sideral	Colonia	Iztapalapa	Ciudad de México
9350	Albarrada	Colonia	Iztapalapa	Ciudad de México
9359	Eva Sámano de López Mateos	Colonia	Iztapalapa	Ciudad de México
9360	San Miguel	Barrio	Iztapalapa	Ciudad de México
9360	Ampliación San Miguel	Colonia	Iztapalapa	Ciudad de México
9400	San Juanico Nextipac	Pueblo	Iztapalapa	Ciudad de México
9400	El Sifón	Colonia	Iztapalapa	Ciudad de México
9410	Aculco	Pueblo	Iztapalapa	Ciudad de México
9410	Jardines de Churubusco	Colonia	Iztapalapa	Ciudad de México
9410	Magdalena Atlazolpa	Pueblo	Iztapalapa	Ciudad de México
9410	San José Aculco	Colonia	Iztapalapa	Ciudad de México
9420	Los Picos VI-B	Colonia	Iztapalapa	Ciudad de México
9420	Nueva Rosita	Colonia	Iztapalapa	Ciudad de México
9429	Purísima Atlazolpa	Colonia	Iztapalapa	Ciudad de México
9430	Apatlaco	Colonia	Iztapalapa	Ciudad de México
9430	El Triunfo	Colonia	Iztapalapa	Ciudad de México
9438	Ampliación El Triunfo	Colonia	Iztapalapa	Ciudad de México
9440	El Retoño	Colonia	Iztapalapa	Ciudad de México
9440	San Andrés Tetepilco	Colonia	Iztapalapa	Ciudad de México
9440	Zacahuitzco	Colonia	Iztapalapa	Ciudad de México
9450	Banjidal	Colonia	Iztapalapa	Ciudad de México
9460	Justo Sierra	Colonia	Iztapalapa	Ciudad de México
9470	Sinatel	Colonia	Iztapalapa	Ciudad de México
9479	Ampliación Sinatel	Colonia	Iztapalapa	Ciudad de México
9480	El Prado	Colonia	Iztapalapa	Ciudad de México
9500	Santa María Aztahuacán	Pueblo	Iztapalapa	Ciudad de México
9500	Santa María Aztahuacán Ampliación	Colonia	Iztapalapa	Ciudad de México
9510	Santa Martha Acatitla	Pueblo	Iztapalapa	Ciudad de México
9520	El Edén	Colonia	Iztapalapa	Ciudad de México
9520	San Sebastián Tecoloxtitla	Pueblo	Iztapalapa	Ciudad de México
9530	Santa Martha Acatitla Sur	Colonia	Iztapalapa	Ciudad de México
9550	Monte Alban	Colonia	Iztapalapa	Ciudad de México
9560	Paraje Zacatepec	Colonia	Iztapalapa	Ciudad de México
9570	Santa María Aztahuacán	Colonia	Iztapalapa	Ciudad de México
9578	Ejército de Agua Prieta	Colonia	Iztapalapa	Ciudad de México
9600	Santiago Acahualtepec	Pueblo	Iztapalapa	Ciudad de México
9608	Santiago Acahualtepec 1ra. Ampliación	Colonia	Iztapalapa	Ciudad de México
9609	Santiago Acahualtepec 2a. Ampliación	Colonia	Iztapalapa	Ciudad de México
9620	Lomas de Zaragoza	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Corrales	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Acorralado	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Avisadero	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Capilla	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Guadalupe	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Iztlahuaca	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Jardines	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección La Cruz	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Loma Alta	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Mercedes	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Palmitas	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Puente	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Ranchito	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Rancho Bajo	Colonia	Iztapalapa	Ciudad de México
9630	San Miguel Teotongo Sección Torres	Colonia	Iztapalapa	Ciudad de México
9637	Campestre Potrero	Colonia	Iztapalapa	Ciudad de México
9638	Ampliación Emiliano Zapata	Colonia	Iztapalapa	Ciudad de México
9640	Lomas de la Estancia	Colonia	Iztapalapa	Ciudad de México
9640	Xalpa	Colonia	Iztapalapa	Ciudad de México
9648	San Pablo	Colonia	Iztapalapa	Ciudad de México
9660	Citlalli	Colonia	Iztapalapa	Ciudad de México
9670	Palmitas	Colonia	Iztapalapa	Ciudad de México
9680	Tenorios	Colonia	Iztapalapa	Ciudad de México
9689	Barranca de Guadalupe	Colonia	Iztapalapa	Ciudad de México
9690	Iztlahuacán	Colonia	Iztapalapa	Ciudad de México
9696	Miravalles	Colonia	Iztapalapa	Ciudad de México
9698	Miguel de La Madrid Hurtado	Colonia	Iztapalapa	Ciudad de México
9700	Buenavista	Colonia	Iztapalapa	Ciudad de México
9700	Carlos Hank Gonzalez	Colonia	Iztapalapa	Ciudad de México
9700	Desarrollo Urbano Quetzalcoatl	Colonia	Iztapalapa	Ciudad de México
9700	Santa Cruz Meyehualco	Pueblo	Iztapalapa	Ciudad de México
9704	Degollado	Colonia	Iztapalapa	Ciudad de México
9705	Degollado - Mexicatlalli	Colonia	Iztapalapa	Ciudad de México
9706	San José Buenavista	Colonia	Iztapalapa	Ciudad de México
9708	Mixcoatl	Colonia	Iztapalapa	Ciudad de México
9709	Lomas de Santa Cruz	Colonia	Iztapalapa	Ciudad de México
9710	Los Ángeles Apanoaya	Colonia	Iztapalapa	Ciudad de México
9720	Francisco Villa	Colonia	Iztapalapa	Ciudad de México
9720	La Era	Colonia	Iztapalapa	Ciudad de México
9730	Reforma Política	Colonia	Iztapalapa	Ciudad de México
9740	Presidentes de México	Colonia	Iztapalapa	Ciudad de México
9750	Insurgentes	Colonia	Iztapalapa	Ciudad de México
9750	La Polvorilla	Colonia	Iztapalapa	Ciudad de México
9750	Las Peñas	Colonia	Iztapalapa	Ciudad de México
9760	Consejo Agrarista Mexicano	Colonia	Iztapalapa	Ciudad de México
9769	El Triángulo	Colonia	Iztapalapa	Ciudad de México
9770	Puente Blanco	Colonia	Iztapalapa	Ciudad de México
9780	Año de Juárez	Colonia	Iztapalapa	Ciudad de México
9780	Lomas de San Lorenzo	Colonia	Iztapalapa	Ciudad de México
9790	San Lorenzo Tezonco	Pueblo	Iztapalapa	Ciudad de México
9800	Culhuacán	Pueblo	Iztapalapa	Ciudad de México
9800	El Mirador	Colonia	Iztapalapa	Ciudad de México
9800	Estrella Culhuacán	Colonia	Iztapalapa	Ciudad de México
9800	Fuego Nuevo	Colonia	Iztapalapa	Ciudad de México
9800	San Antonio Culhuacán	Colonia	Iztapalapa	Ciudad de México
9800	San Antonio Culhuacán	Barrio	Iztapalapa	Ciudad de México
9800	San Simón Culhuacán	Barrio	Iztapalapa	Ciudad de México
9800	Tula	Barrio	Iztapalapa	Ciudad de México
9800	Valle de Luces	Colonia	Iztapalapa	Ciudad de México
9810	Granjas Esmeralda	Colonia	Iztapalapa	Ciudad de México
9810	Los Cipreses	Colonia	Iztapalapa	Ciudad de México
9810	Minerva	Colonia	Iztapalapa	Ciudad de México
9810	Progreso del Sur	Colonia	Iztapalapa	Ciudad de México
9819	Valle del Sur	Colonia	Iztapalapa	Ciudad de México
9820	El Santuario	Colonia	Iztapalapa	Ciudad de México
9820	Estrella del Sur	Colonia	Iztapalapa	Ciudad de México
9820	Ricardo Flores Magón	Colonia	Iztapalapa	Ciudad de México
9820	Santa Isabel Industrial	Colonia	Iztapalapa	Ciudad de México
9828	Ampliación Ricardo Flores Magón	Colonia	Iztapalapa	Ciudad de México
9829	Ampliación El Santuario	Colonia	Iztapalapa	Ciudad de México
9830	El Manto	Colonia	Iztapalapa	Ciudad de México
9830	El Molino	Colonia	Iztapalapa	Ciudad de México
9830	Lomas El Manto	Colonia	Iztapalapa	Ciudad de México
9830	Los Ángeles	Colonia	Iztapalapa	Ciudad de México
9830	Paraje San Juan	Colonia	Iztapalapa	Ciudad de México
9837	San Miguel 8va. Ampliación	Colonia	Iztapalapa	Ciudad de México
9838	Plan de Iguala	Colonia	Iztapalapa	Ciudad de México
9839	Ampliación Paraje San Juan	Colonia	Iztapalapa	Ciudad de México
9839	San Juan Joya	Colonia	Iztapalapa	Ciudad de México
9840	Los Reyes Culhuacán	Pueblo	Iztapalapa	Ciudad de México
9849	Ampliación Los Reyes	Colonia	Iztapalapa	Ciudad de México
9850	San Juan Xalpa	Colonia	Iztapalapa	Ciudad de México
9850	San Nicolás Tolentino	Colonia	Iztapalapa	Ciudad de México
9850	Santa María del Monte	Colonia	Iztapalapa	Ciudad de México
9856	Estado de Veracruz	Colonia	Iztapalapa	Ciudad de México
9856	Ampliación Veracruzana	Colonia	Iztapalapa	Ciudad de México
9858	Paraje San Juan Cerro	Colonia	Iztapalapa	Ciudad de México
9859	Benito Juárez	Colonia	Iztapalapa	Ciudad de México
9860	Bellavista	Colonia	Iztapalapa	Ciudad de México
9860	Ampliación Bellavista	Colonia	Iztapalapa	Ciudad de México
9860	Casa Blanca	Colonia	Iztapalapa	Ciudad de México
9860	Cerro de La Estrella	Colonia	Iztapalapa	Ciudad de México
9860	Parque Nacional Cerro  de la Estrella	Colonia	Iztapalapa	Ciudad de México
9860	El Rodeo	Colonia	Iztapalapa	Ciudad de México
9868	San Juan Estrella	Colonia	Iztapalapa	Ciudad de México
9870	12 de Diciembre	Colonia	Iztapalapa	Ciudad de México
9870	San Andrés Tomatlán	Colonia	Iztapalapa	Ciudad de México
9870	San Andrés Tomatlán	Pueblo	Iztapalapa	Ciudad de México
9870	Santa María Tomatlán	Pueblo	Iztapalapa	Ciudad de México
9880	El Vergel	Colonia	Iztapalapa	Ciudad de México
9880	Granjas Estrella	Colonia	Iztapalapa	Ciudad de México
9890	Lomas Estrella	Colonia	Iztapalapa	Ciudad de México
9897	Carlos Jonguitud Barrios	Colonia	Iztapalapa	Ciudad de México
9900	Guadalupe	Barrio	Iztapalapa	Ciudad de México
9900	San Antonio	Barrio	Iztapalapa	Ciudad de México
9900	San Lorenzo	Barrio	Iztapalapa	Ciudad de México
9910	La Esperanza	Colonia	Iztapalapa	Ciudad de México
9920	José López Portillo	Colonia	Iztapalapa	Ciudad de México
9930	El Rosario	Colonia	Iztapalapa	Ciudad de México
9940	Jardines de San Lorenzo Tezonco	Colonia	Iztapalapa	Ciudad de México
9960	Celoalliotli	Colonia	Iztapalapa	Ciudad de México
9960	USCOVI	Colonia	Iztapalapa	Ciudad de México
9960	El Molino Tezonco	Colonia	Iztapalapa	Ciudad de México
9960	Allapetlalli	Colonia	Iztapalapa	Ciudad de México
9960	La Planta	Colonia	Iztapalapa	Ciudad de México
9969	Cananea	Colonia	Iztapalapa	Ciudad de México
9970	Valle de San Lorenzo	Colonia	Iztapalapa	Ciudad de México
10000	Lomas Quebradas	Colonia	La Magdalena Contreras	Ciudad de México
10010	La Malinche	Colonia	La Magdalena Contreras	Ciudad de México
10010	San Bartolo Ameyalco	Colonia	La Magdalena Contreras	Ciudad de México
10020	Cuauhtémoc	Colonia	La Magdalena Contreras	Ciudad de México
10130	El Maestro	Colonia	La Magdalena Contreras	Ciudad de México
10200	San Jerónimo Lídice	Colonia	La Magdalena Contreras	Ciudad de México
10300	San Bernabé Ocotepec	Pueblo	La Magdalena Contreras	Ciudad de México
10320	El Tanque	Colonia	La Magdalena Contreras	Ciudad de México
10330	Las Cruces	Colonia	La Magdalena Contreras	Ciudad de México
10340	Los Padres	Colonia	La Magdalena Contreras	Ciudad de México
10350	Lomas de San Bernabé	Colonia	La Magdalena Contreras	Ciudad de México
10360	Huayatla	Colonia	La Magdalena Contreras	Ciudad de México
10368	Ampliación Potrerillo	Colonia	La Magdalena Contreras	Ciudad de México
10369	Ampliación Lomas de San Bernabé	Colonia	La Magdalena Contreras	Ciudad de México
10369	Tierra Unida	Colonia	La Magdalena Contreras	Ciudad de México
10370	Palmas	Colonia	La Magdalena Contreras	Ciudad de México
10378	Atacaxco	Colonia	La Magdalena Contreras	Ciudad de México
10379	Vista Hermosa	Colonia	La Magdalena Contreras	Ciudad de México
10380	Barros Sierra	Colonia	La Magdalena Contreras	Ciudad de México
10400	San Jerónimo Aculco	Colonia	La Magdalena Contreras	Ciudad de México
10500	Barrio San Francisco	Colonia	La Magdalena Contreras	Ciudad de México
10580	Barranca Seca	Colonia	La Magdalena Contreras	Ciudad de México
10600	El Rosal	Colonia	La Magdalena Contreras	Ciudad de México
10610	El Toro	Colonia	La Magdalena Contreras	Ciudad de México
10620	Potrerillo	Colonia	La Magdalena Contreras	Ciudad de México
10630	El Ocotal	Campamento	La Magdalena Contreras	Ciudad de México
10640	La Carbonera	Colonia	La Magdalena Contreras	Ciudad de México
10640	Pueblo Nuevo Alto	Colonia	La Magdalena Contreras	Ciudad de México
10640	Pueblo Nuevo Bajo	Colonia	La Magdalena Contreras	Ciudad de México
10660	El Ermitaño	Colonia	La Magdalena Contreras	Ciudad de México
10700	Héroes de Padierna	Colonia	La Magdalena Contreras	Ciudad de México
10710	Santa Teresa	Colonia	La Magdalena Contreras	Ciudad de México
10800	La Cruz	Colonia	La Magdalena Contreras	Ciudad de México
10810	San Francisco	Colonia	La Magdalena Contreras	Ciudad de México
10820	La Guadalupe	Colonia	La Magdalena Contreras	Ciudad de México
10830	La Concepción	Colonia	La Magdalena Contreras	Ciudad de México
10840	Las Calles	Barrio	La Magdalena Contreras	Ciudad de México
10840	Plazuela del Pedregal	Barrio	La Magdalena Contreras	Ciudad de México
10900	San Nicolás Totolapan	Pueblo	La Magdalena Contreras	Ciudad de México
10910	La Magdalena	Pueblo	La Magdalena Contreras	Ciudad de México
10920	Las Huertas	Colonia	La Magdalena Contreras	Ciudad de México
10926	Tierra Colorada	Campamento	La Magdalena Contreras	Ciudad de México
11000	Lomas de Chapultepec I Sección	Colonia	Miguel Hidalgo	Ciudad de México
11000	Lomas de Chapultepec VIII Sección	Colonia	Miguel Hidalgo	Ciudad de México
11000	Lomas de Chapultepec II Sección	Colonia	Miguel Hidalgo	Ciudad de México
11000	Lomas de Chapultepec III Sección	Colonia	Miguel Hidalgo	Ciudad de México
11000	Lomas de Chapultepec IV Sección	Colonia	Miguel Hidalgo	Ciudad de México
11000	Lomas de Chapultepec V Sección	Colonia	Miguel Hidalgo	Ciudad de México
11000	Lomas de Chapultepec VI Sección	Colonia	Miguel Hidalgo	Ciudad de México
11000	Lomas de Chapultepec VII Sección	Colonia	Miguel Hidalgo	Ciudad de México
11040	Molino del Rey	Colonia	Miguel Hidalgo	Ciudad de México
11100	Bosque de Chapultepec II Sección	Equipamiento	Miguel Hidalgo	Ciudad de México
11100	Bosque de Chapultepec III Sección	Equipamiento	Miguel Hidalgo	Ciudad de México
11200	Lomas Hermosa	Colonia	Miguel Hidalgo	Ciudad de México
11200	Lomas de Sotelo	Colonia	Miguel Hidalgo	Ciudad de México
11210	San Lorenzo Tlaltenango	Pueblo	Miguel Hidalgo	Ciudad de México
11220	Periodista	Colonia	Miguel Hidalgo	Ciudad de México
11230	Argentina Poniente	Colonia	Miguel Hidalgo	Ciudad de México
11240	Ignacio Manuel Altamirano	Colonia	Miguel Hidalgo	Ciudad de México
11250	10 de Abril	Colonia	Miguel Hidalgo	Ciudad de México
11260	México Nuevo	Colonia	Miguel Hidalgo	Ciudad de México
11260	San Joaquín	Colonia	Miguel Hidalgo	Ciudad de México
11270	Argentina Antigua	Colonia	Miguel Hidalgo	Ciudad de México
11280	Torre Blanca	Colonia	Miguel Hidalgo	Ciudad de México
11289	Ampliación Torre Blanca	Colonia	Miguel Hidalgo	Ciudad de México
11290	Huíchapan	Colonia	Miguel Hidalgo	Ciudad de México
11290	San Diego Ocoyoacac	Colonia	Miguel Hidalgo	Ciudad de México
11300	Verónica Anzures	Colonia	Miguel Hidalgo	Ciudad de México
11310	Mariano Escobedo	Colonia	Miguel Hidalgo	Ciudad de México
11320	Anáhuac I Sección	Colonia	Miguel Hidalgo	Ciudad de México
11320	Anáhuac II Sección	Colonia	Miguel Hidalgo	Ciudad de México
11330	Un Hogar Para Nosotros	Colonia	Miguel Hidalgo	Ciudad de México
11340	Santo Tomas	Colonia	Miguel Hidalgo	Ciudad de México
11350	Plutarco Elías Calles	Colonia	Miguel Hidalgo	Ciudad de México
11360	Agricultura	Colonia	Miguel Hidalgo	Ciudad de México
11370	Tlaxpana	Colonia	Miguel Hidalgo	Ciudad de México
11400	Popotla	Colonia	Miguel Hidalgo	Ciudad de México
11410	Legaria	Colonia	Miguel Hidalgo	Ciudad de México
11410	Tacuba	Pueblo	Miguel Hidalgo	Ciudad de México
11420	Nextitla	Colonia	Miguel Hidalgo	Ciudad de México
11430	Pensil Norte	Colonia	Miguel Hidalgo	Ciudad de México
11430	Ventura Pérez de Alva	Colonia	Miguel Hidalgo	Ciudad de México
11440	Reforma Pensil	Colonia	Miguel Hidalgo	Ciudad de México
11440	San Juanico	Colonia	Miguel Hidalgo	Ciudad de México
11450	Ahuehuetes Anáhuac	Colonia	Miguel Hidalgo	Ciudad de México
11450	Modelo Pensil	Colonia	Miguel Hidalgo	Ciudad de México
11450	Peralitos	Colonia	Miguel Hidalgo	Ciudad de México
11460	Dos Lagos	Colonia	Miguel Hidalgo	Ciudad de México
11460	Lago Norte	Colonia	Miguel Hidalgo	Ciudad de México
11460	Lago Sur	Colonia	Miguel Hidalgo	Ciudad de México
11460	Los Manzanos	Colonia	Miguel Hidalgo	Ciudad de México
11470	5 de Mayo	Colonia	Miguel Hidalgo	Ciudad de México
11470	Deportivo Pensil	Colonia	Miguel Hidalgo	Ciudad de México
11480	Francisco I Madero	Colonia	Miguel Hidalgo	Ciudad de México
11480	Popo	Colonia	Miguel Hidalgo	Ciudad de México
11489	Ampliación Popo	Colonia	Miguel Hidalgo	Ciudad de México
11490	Cuauhtémoc Pensil	Colonia	Miguel Hidalgo	Ciudad de México
11490	Pensil Sur	Colonia	Miguel Hidalgo	Ciudad de México
11500	Irrigación	Colonia	Miguel Hidalgo	Ciudad de México
11510	Polanco I Sección	Colonia	Miguel Hidalgo	Ciudad de México
11520	Granada	Colonia	Miguel Hidalgo	Ciudad de México
11529	Ampliación Granada	Colonia	Miguel Hidalgo	Ciudad de México
11530	Polanco II Sección	Colonia	Miguel Hidalgo	Ciudad de México
11540	Polanco III Sección	Colonia	Miguel Hidalgo	Ciudad de México
11550	Polanco IV Sección	Colonia	Miguel Hidalgo	Ciudad de México
11560	Polanco V Sección	Colonia	Miguel Hidalgo	Ciudad de México
11570	Chapultepec Morales	Colonia	Miguel Hidalgo	Ciudad de México
11580	Bosque de Chapultepec I Sección	Equipamiento	Miguel Hidalgo	Ciudad de México
11590	Anzures	Colonia	Miguel Hidalgo	Ciudad de México
11600	Residencial Militar	Colonia	Miguel Hidalgo	Ciudad de México
11610	Manuel Avila Camacho	Colonia	Miguel Hidalgo	Ciudad de México
11619	Campo Militar 1	Equipamiento	Miguel Hidalgo	Ciudad de México
11650	Reforma Social	Colonia	Miguel Hidalgo	Ciudad de México
11700	Bosque de las Lomas	Colonia	Miguel Hidalgo	Ciudad de México
11800	Escandón I Sección	Colonia	Miguel Hidalgo	Ciudad de México
11800	Escandón II Sección	Colonia	Miguel Hidalgo	Ciudad de México
11810	16 de Septiembre	Colonia	Miguel Hidalgo	Ciudad de México
11820	América	Colonia	Miguel Hidalgo	Ciudad de México
11830	Daniel Garza	Colonia	Miguel Hidalgo	Ciudad de México
11840	Ampliación Daniel Garza	Colonia	Miguel Hidalgo	Ciudad de México
11850	San Miguel Chapultepec I Sección	Colonia	Miguel Hidalgo	Ciudad de México
11850	San Miguel Chapultepec II Sección	Colonia	Miguel Hidalgo	Ciudad de México
11860	Observatorio	Colonia	Miguel Hidalgo	Ciudad de México
11870	Tacubaya	Colonia	Miguel Hidalgo	Ciudad de México
11910	Lomas de Bezares	Colonia	Miguel Hidalgo	Ciudad de México
11920	Real de las Lomas	Colonia	Miguel Hidalgo	Ciudad de México
11930	Lomas de Reforma	Colonia	Miguel Hidalgo	Ciudad de México
11950	Lomas Altas	Colonia	Miguel Hidalgo	Ciudad de México
12000	La Concepción	Barrio	Milpa Alta	Ciudad de México
12000	La Luz	Barrio	Milpa Alta	Ciudad de México
12000	Los Ángeles	Barrio	Milpa Alta	Ciudad de México
12000	San Mateo	Barrio	Milpa Alta	Ciudad de México
12000	Santa Cruz	Barrio	Milpa Alta	Ciudad de México
12000	Santa Martha	Barrio	Milpa Alta	Ciudad de México
12000	Villa Milpa Alta Centro	Colonia	Milpa Alta	Ciudad de México
12070	San Agustin	Barrio	Milpa Alta	Ciudad de México
12080	San Agustin Ohtenco	Pueblo	Milpa Alta	Ciudad de México
12100	Cruztitla	Barrio	Milpa Alta	Ciudad de México
12100	Tecaxtitla	Barrio	Milpa Alta	Ciudad de México
12100	Tenantitla	Barrio	Milpa Alta	Ciudad de México
12100	Xaltipac	Barrio	Milpa Alta	Ciudad de México
12100	Xochitepec	Barrio	Milpa Alta	Ciudad de México
12110	Emiliano Zapata	Colonia	Milpa Alta	Ciudad de México
12110	La Conchita	Colonia	Milpa Alta	Ciudad de México
12200	Nochtla	Barrio	Milpa Alta	Ciudad de México
12200	Ocotitla	Barrio	Milpa Alta	Ciudad de México
12200	Panchimalco	Barrio	Milpa Alta	Ciudad de México
12200	Tula	Barrio	Milpa Alta	Ciudad de México
12250	San Bartolomé Xicomulco	Pueblo	Milpa Alta	Ciudad de México
12300	San Salvador Cuauhtenco	Pueblo	Milpa Alta	Ciudad de México
12400	Centro	Barrio	Milpa Alta	Ciudad de México
12400	San Juan	Barrio	Milpa Alta	Ciudad de México
12400	San Miguel	Barrio	Milpa Alta	Ciudad de México
12410	Chalmita	Barrio	Milpa Alta	Ciudad de México
12500	San Lorenzo Tlacoyucan	Pueblo	Milpa Alta	Ciudad de México
12600	San Jerónimo Miacatlán	Pueblo	Milpa Alta	Ciudad de México
12700	San Francisco Tecoxpa	Pueblo	Milpa Alta	Ciudad de México
12800	San Juan Tepenahuac	Pueblo	Milpa Alta	Ciudad de México
12910	La Lupita Teticpac	Barrio	Milpa Alta	Ciudad de México
12920	San Marcos	Barrio	Milpa Alta	Ciudad de México
12930	San Miguel	Barrio	Milpa Alta	Ciudad de México
12940	San José	Barrio	Milpa Alta	Ciudad de México
12950	La Lupita Xolco	Barrio	Milpa Alta	Ciudad de México
13000	La Asunción	Barrio	Tláhuac	Ciudad de México
13010	Santa Cecilia	Colonia	Tláhuac	Ciudad de México
13020	San José	Colonia	Tláhuac	Ciudad de México
50010	Guadalupe	Colonia	Toluca	México
13030	San Juan	Barrio	Tláhuac	Ciudad de México
13040	San Mateo	Barrio	Tláhuac	Ciudad de México
13050	La Habana	Colonia	Tláhuac	Ciudad de México
13060	Santa Ana	Barrio	Tláhuac	Ciudad de México
13060	La Guadalupe	Barrio	Tláhuac	Ciudad de México
13070	La Magdalena	Barrio	Tláhuac	Ciudad de México
13070	San Miguel	Barrio	Tláhuac	Ciudad de México
13080	Los Reyes	Barrio	Tláhuac	Ciudad de México
13090	Quiahuatla	Colonia	Tláhuac	Ciudad de México
13093	San Sebastián	Colonia	Tláhuac	Ciudad de México
13094	San Isidro	Colonia	Tláhuac	Ciudad de México
13099	San Andrés	Barrio	Tláhuac	Ciudad de México
13100	La Guadalupe	Barrio	Tláhuac	Ciudad de México
13120	Ampliación Santa Catarina	Colonia	Tláhuac	Ciudad de México
13120	Santiago	Barrio	Tláhuac	Ciudad de México
13150	La Concepción	Barrio	Tláhuac	Ciudad de México
13180	San Miguel	Barrio	Tláhuac	Ciudad de México
13200	Miguel Hidalgo	Colonia	Tláhuac	Ciudad de México
13210	Los Olivos	Colonia	Tláhuac	Ciudad de México
13219	Las Arboledas	Colonia	Tláhuac	Ciudad de México
13219	Ampliación Los Olivos	Colonia	Tláhuac	Ciudad de México
13220	La Nopalera	Colonia	Tláhuac	Ciudad de México
13230	Granjas Cabrera	Colonia	Tláhuac	Ciudad de México
13250	La Turba	Colonia	Tláhuac	Ciudad de México
13270	Del Mar	Colonia	Tláhuac	Ciudad de México
13273	La Draga	Colonia	Tláhuac	Ciudad de México
13278	Villa Centroamericana	Colonia	Tláhuac	Ciudad de México
13280	Agrícola Metropolitana	Colonia	Tláhuac	Ciudad de México
13300	Santa Ana Centro	Barrio	Tláhuac	Ciudad de México
13300	Santiago Centro	Barrio	Tláhuac	Ciudad de México
13300	Santa Ana Poniente	Barrio	Tláhuac	Ciudad de México
13300	Santa Ana Norte	Barrio	Tláhuac	Ciudad de México
13300	Santiago Norte	Barrio	Tláhuac	Ciudad de México
13310	Zapotitla	Colonia	Tláhuac	Ciudad de México
13315	Ampliación Zapotitla	Colonia	Tláhuac	Ciudad de México
13319	La Estación	Colonia	Tláhuac	Ciudad de México
13360	La Conchita Zapotitlán	Colonia	Tláhuac	Ciudad de México
13360	Santa Ana Sur	Barrio	Tláhuac	Ciudad de México
13360	Santiago Sur	Barrio	Tláhuac	Ciudad de México
13400	San Francisco Tlaltenco	Pueblo	Tláhuac	Ciudad de México
13410	López Portillo	Colonia	Tláhuac	Ciudad de México
13419	Ampliación José López Portillo	Colonia	Tláhuac	Ciudad de México
13420	Selene	Colonia	Tláhuac	Ciudad de México
13430	Ampliación Selene	Colonia	Tláhuac	Ciudad de México
13440	Zacatenco	Colonia	Tláhuac	Ciudad de México
13450	Guadalupe Tlaltenco	Colonia	Tláhuac	Ciudad de México
13450	Ojo de Agua	Colonia	Tláhuac	Ciudad de México
13460	El Triángulo	Colonia	Tláhuac	Ciudad de México
13508	San Agustín	Barrio	Tláhuac	Ciudad de México
13508	La Soledad	Barrio	Tláhuac	Ciudad de México
13509	La Concepción	Barrio	Tláhuac	Ciudad de México
13510	La Lupita	Colonia	Tláhuac	Ciudad de México
13520	Francisco Villa	Colonia	Tláhuac	Ciudad de México
13530	Jaime Torres Bodet	Colonia	Tláhuac	Ciudad de México
13530	La Asunción	Colonia	Tláhuac	Ciudad de México
13540	El Rosario	Colonia	Tláhuac	Ciudad de México
13540	Tierra Blanca	Colonia	Tláhuac	Ciudad de México
13545	Ampliación La Conchita	Colonia	Tláhuac	Ciudad de México
13549	Peña Alta	Colonia	Tláhuac	Ciudad de México
13550	Jardines del Llano	Colonia	Tláhuac	Ciudad de México
13550	Potrero del Llano	Colonia	Tláhuac	Ciudad de México
13600	San Bartolomé	Barrio	Tláhuac	Ciudad de México
13610	Los Reyes	Barrio	Tláhuac	Ciudad de México
13625	Santa Cruz	Barrio	Tláhuac	Ciudad de México
13630	San Agustín	Barrio	Tláhuac	Ciudad de México
13640	San Miguel	Barrio	Tláhuac	Ciudad de México
13700	San Nicolás Tetelco	Pueblo	Tláhuac	Ciudad de México
13700	Tepantitlamilco	Colonia	Tláhuac	Ciudad de México
14000	Tlalpan Centro	Colonia	Tlalpan	Ciudad de México
14000	Tlalpan	Colonia	Tlalpan	Ciudad de México
14010	Parque del Pedregal	Colonia	Tlalpan	Ciudad de México
14020	Villa Olímpica	Colonia	Tlalpan	Ciudad de México
14030	Isidro Fabela	Colonia	Tlalpan	Ciudad de México
14039	Ampliación Isidro Fabela	Colonia	Tlalpan	Ciudad de México
14040	Cantera Puente de Piedra	Colonia	Tlalpan	Ciudad de México
14040	Pueblo Quieto	Colonia	Tlalpan	Ciudad de México
14049	Comuneros de Santa Úrsula	Colonia	Tlalpan	Ciudad de México
14050	Toriello Guerra	Colonia	Tlalpan	Ciudad de México
14060	Peña Pobre	Colonia	Tlalpan	Ciudad de México
14070	Rómulo Sánchez Mireles	Colonia	Tlalpan	Ciudad de México
14070	San Fernando	Barrio	Tlalpan	Ciudad de México
14070	San Pedro Apóstol	Colonia	Tlalpan	Ciudad de México
14080	Belisario Domínguez Sección XVI	Colonia	Tlalpan	Ciudad de México
14080	Del Niño Jesús	Barrio	Tlalpan	Ciudad de México
14090	La Joya	Colonia	Tlalpan	Ciudad de México
14100	Pedregal de San Nicolás 1A Sección	Colonia	Tlalpan	Ciudad de México
14100	Pedregal de San Nicolás 2A Sección	Colonia	Tlalpan	Ciudad de México
14100	Pedregal de San Nicolás 3A Sección	Colonia	Tlalpan	Ciudad de México
14100	Pedregal de San Nicolás 4A Sección	Colonia	Tlalpan	Ciudad de México
14100	Pedregal de San Nicolás 5ª Sección	Colonia	Tlalpan	Ciudad de México
14108	Chichicaspatl	Colonia	Tlalpan	Ciudad de México
14110	Ampliación Fuentes del Pedregal	Colonia	Tlalpan	Ciudad de México
14120	Rincón del Pedregal	Colonia	Tlalpan	Ciudad de México
50090	Santa Clara	Barrio	Toluca	México
14140	Fuentes del Pedregal	Colonia	Tlalpan	Ciudad de México
14150	Lomas del Pedregal Framboyanes	Colonia	Tlalpan	Ciudad de México
14160	Popular Santa Teresa	Colonia	Tlalpan	Ciudad de México
14200	Héroes de Padierna	Colonia	Tlalpan	Ciudad de México
14200	Jardines del Ajusco	Colonia	Tlalpan	Ciudad de México
14208	Colinas del Ajusco	Colonia	Tlalpan	Ciudad de México
14209	Torres de Padierna	Colonia	Tlalpan	Ciudad de México
14210	Jardines en la Montaña	Colonia	Tlalpan	Ciudad de México
14219	Six Flags (Reino Aventura)	Equipamiento	Tlalpan	Ciudad de México
14219	Parque Nacional Bosque del Pedregal	Equipamiento	Tlalpan	Ciudad de México
14220	Cuchilla de Padierna	Colonia	Tlalpan	Ciudad de México
14220	Lomas del Pedregal	Colonia	Tlalpan	Ciudad de México
14230	Cultura Maya	Colonia	Tlalpan	Ciudad de México
14239	Los Encinos	Colonia	Tlalpan	Ciudad de México
14240	Lomas de Padierna	Colonia	Tlalpan	Ciudad de México
14240	Lomas Hidalgo	Colonia	Tlalpan	Ciudad de México
14248	Cruz del Farol	Colonia	Tlalpan	Ciudad de México
14250	Miguel Hidalgo 2A Sección	Colonia	Tlalpan	Ciudad de México
14250	Miguel Hidalgo 3A Sección	Colonia	Tlalpan	Ciudad de México
14250	Miguel Hidalgo 4A Sección	Colonia	Tlalpan	Ciudad de México
14250	Miguel Hidalgo	Colonia	Tlalpan	Ciudad de México
14260	El Capulín	Barrio	Tlalpan	Ciudad de México
14260	Miguel Hidalgo 1A Sección	Colonia	Tlalpan	Ciudad de México
14266	Zacayucan Peña Pobre	Colonia	Tlalpan	Ciudad de México
14267	De Caramagüey	Barrio	Tlalpan	Ciudad de México
14268	La Lonja	Barrio	Tlalpan	Ciudad de México
14269	La Fama	Barrio	Tlalpan	Ciudad de México
14270	Primavera	Colonia	Tlalpan	Ciudad de México
14270	Verano	Colonia	Tlalpan	Ciudad de México
14275	Paraje 38	Colonia	Tlalpan	Ciudad de México
14300	Nueva Oriental Coapa	Colonia	Tlalpan	Ciudad de México
14300	Residencial Acoxpa	Colonia	Tlalpan	Ciudad de México
14300	Residencial Miramontes	Colonia	Tlalpan	Ciudad de México
14308	Ex Hacienda Coapa	Colonia	Tlalpan	Ciudad de México
14310	Belisario Domínguez	Colonia	Tlalpan	Ciudad de México
14310	Floresta Coyoacán	Colonia	Tlalpan	Ciudad de México
14320	Vergel Coapa	Colonia	Tlalpan	Ciudad de México
14325	Rinconada Coapa 2A Sección	Colonia	Tlalpan	Ciudad de México
14326	Tenorios	Colonia	Tlalpan	Ciudad de México
14330	Granjas Coapa	Colonia	Tlalpan	Ciudad de México
14330	Rinconada Coapa 1A Sección	Colonia	Tlalpan	Ciudad de México
14340	Vergel de Coyoacán	Colonia	Tlalpan	Ciudad de México
14340	Vergel del Sur	Colonia	Tlalpan	Ciudad de México
14350	Prado Coapa 1A Sección	Colonia	Tlalpan	Ciudad de México
14357	Prado Coapa 2A Sección	Colonia	Tlalpan	Ciudad de México
14357	Prado Coapa 3A Sección	Colonia	Tlalpan	Ciudad de México
14360	Magisterial	Colonia	Tlalpan	Ciudad de México
14360	Magisterial Coapa	Colonia	Tlalpan	Ciudad de México
14370	Residencial Chimali	Colonia	Tlalpan	Ciudad de México
14370	San Lorenzo Huipulco	Pueblo	Tlalpan	Ciudad de México
14370	Villa Lázaro Cárdenas	Colonia	Tlalpan	Ciudad de México
14376	Arboledas del Sur	Colonia	Tlalpan	Ciudad de México
14377	Hacienda San Juan	Colonia	Tlalpan	Ciudad de México
14380	A.M.S.A	Colonia	Tlalpan	Ciudad de México
14380	San Bartolo El Chico	Colonia	Tlalpan	Ciudad de México
14386	Rancho los Colorines	Colonia	Tlalpan	Ciudad de México
14387	Ex Hacienda San Juan de Dios	Colonia	Tlalpan	Ciudad de México
14388	Guadalupe	Colonia	Tlalpan	Ciudad de México
14389	Arenal de Guadalupe	Colonia	Tlalpan	Ciudad de México
14390	Rinconada Las Hadas	Colonia	Tlalpan	Ciudad de México
14390	Narciso Mendoza	Colonia	Tlalpan	Ciudad de México
14390	Residencial Villa Coapa	Colonia	Tlalpan	Ciudad de México
14390	Villa Coapa	Colonia	Tlalpan	Ciudad de México
14400	San Andrés Totoltepec	Pueblo	Tlalpan	Ciudad de México
14406	Divisadero	Colonia	Tlalpan	Ciudad de México
14408	Nuevo Renacimiento de Axalco	Colonia	Tlalpan	Ciudad de México
14409	Tecorral	Colonia	Tlalpan	Ciudad de México
14410	Bosques de Tepeximilpa	Colonia	Tlalpan	Ciudad de México
14410	Fuentes Brotantes	Colonia	Tlalpan	Ciudad de México
14420	Cumbres de Tepetongo	Colonia	Tlalpan	Ciudad de México
14420	Mesa de los Hornos	Colonia	Tlalpan	Ciudad de México
14420	Santa Úrsula Xitla	Pueblo	Tlalpan	Ciudad de México
14426	Texcaltenco	Colonia	Tlalpan	Ciudad de México
14426	Tlaxcaltenco la Mesa	Colonia	Tlalpan	Ciudad de México
14427	San Juan Tepeximilpa	Colonia	Tlalpan	Ciudad de México
14427	Tepeximilpa la Paz	Colonia	Tlalpan	Ciudad de México
14429	Santísima Trinidad	Colonia	Tlalpan	Ciudad de México
14430	El Truenito	Barrio	Tlalpan	Ciudad de México
14430	Tlalcoligia	Colonia	Tlalpan	Ciudad de México
14438	Pedregal de Santa Úrsula Xitla	Colonia	Tlalpan	Ciudad de México
14439	Pedregal de las Águilas	Colonia	Tlalpan	Ciudad de México
14440	Los Volcanes	Colonia	Tlalpan	Ciudad de México
14449	El Mirador 1A Sección	Colonia	Tlalpan	Ciudad de México
14449	El Mirador 2A Sección	Colonia	Tlalpan	Ciudad de México
14449	El Mirador 3A Sección	Colonia	Tlalpan	Ciudad de México
14460	Tlalpuente	Colonia	Tlalpan	Ciudad de México
14470	Plan de Ayala	Colonia	Tlalpan	Ciudad de México
14476	La Palma	Colonia	Tlalpan	Ciudad de México
14479	Viveros Coatectlán	Colonia	Tlalpan	Ciudad de México
14480	La Magdalena Petlacalco	Pueblo	Tlalpan	Ciudad de México
14490	San Miguel Xicalco	Pueblo	Tlalpan	Ciudad de México
14500	San Miguel Topilejo	Pueblo	Tlalpan	Ciudad de México
14600	Valle Escondido	Colonia	Tlalpan	Ciudad de México
14608	Colinas del Bosque	Colonia	Tlalpan	Ciudad de México
14609	Las Tórtolas	Colonia	Tlalpan	Ciudad de México
14610	Arenal Tepepan	Colonia	Tlalpan	Ciudad de México
14620	Club de Golf México	Colonia	Tlalpan	Ciudad de México
14629	San Buenaventura	Colonia	Tlalpan	Ciudad de México
14630	Chimalcoyoc	Pueblo	Tlalpan	Ciudad de México
14630	Villa Tlalpan	Colonia	Tlalpan	Ciudad de México
14640	Ejidos de San Pedro Mártir	Colonia	Tlalpan	Ciudad de México
14643	Fuentes de Tepepan	Colonia	Tlalpan	Ciudad de México
14646	Valle de Tepepan	Colonia	Tlalpan	Ciudad de México
14647	Juventud Unida	Colonia	Tlalpan	Ciudad de México
14647	Movimiento Organizado de Tlalpan	Colonia	Tlalpan	Ciudad de México
14647	Rinconada El Mirador	Colonia	Tlalpan	Ciudad de México
14650	San Pedro Mártir	Pueblo	Tlalpan	Ciudad de México
14653	Heróico Colegio Militar	Colonia	Tlalpan	Ciudad de México
14655	Valle Verde	Colonia	Tlalpan	Ciudad de México
14657	Tlalmille	Colonia	Tlalpan	Ciudad de México
14658	Mirador del Valle	Colonia	Tlalpan	Ciudad de México
14659	María Esther Zuno de Echeverría	Colonia	Tlalpan	Ciudad de México
14700	San Miguel Ajusco	Pueblo	Tlalpan	Ciudad de México
14710	Santo Tomas Ajusco	Pueblo	Tlalpan	Ciudad de México
14720	Belvedere Ajusco	Colonia	Tlalpan	Ciudad de México
14730	Lomas de Cuilotepec	Colonia	Tlalpan	Ciudad de México
14734	El Zacatón	Colonia	Tlalpan	Ciudad de México
14735	Lomas de Tepemecatl	Campamento	Tlalpan	Ciudad de México
14737	Vistas del Pedregal	Colonia	Tlalpan	Ciudad de México
14738	Bosques del Pedregal	Colonia	Tlalpan	Ciudad de México
14739	2 de Octubre	Colonia	Tlalpan	Ciudad de México
14740	Lomas de Padierna Sur	Colonia	Tlalpan	Ciudad de México
14748	Mirador I	Colonia	Tlalpan	Ciudad de México
14748	Mirador II	Colonia	Tlalpan	Ciudad de México
14749	Chimilli	Colonia	Tlalpan	Ciudad de México
14760	Héroes de 1910	Colonia	Tlalpan	Ciudad de México
14900	Parres El Guarda	Pueblo	Tlalpan	Ciudad de México
15000	General Ignacio Zaragoza	Colonia	Venustiano Carranza	Ciudad de México
15010	Valentín Gómez Farias	Colonia	Venustiano Carranza	Ciudad de México
15020	Puebla	Colonia	Venustiano Carranza	Ciudad de México
15100	Zona Centro	Colonia	Venustiano Carranza	Ciudad de México
15200	Janitzio	Colonia	Venustiano Carranza	Ciudad de México
15210	Valle Gómez	Colonia	Venustiano Carranza	Ciudad de México
15220	Nicolás Bravo	Colonia	Venustiano Carranza	Ciudad de México
15220	Popular Rastro	Colonia	Venustiano Carranza	Ciudad de México
15230	Emilio Carranza	Colonia	Venustiano Carranza	Ciudad de México
15240	Michoacana	Colonia	Venustiano Carranza	Ciudad de México
15250	Ampliación Michoacana	Colonia	Venustiano Carranza	Ciudad de México
15260	Ampliación 20 de Noviembre	Colonia	Venustiano Carranza	Ciudad de México
15270	Morelos	Colonia	Venustiano Carranza	Ciudad de México
15280	Penitenciaria	Colonia	Venustiano Carranza	Ciudad de México
15290	10 de Mayo	Colonia	Venustiano Carranza	Ciudad de México
15300	20 de Noviembre	Colonia	Venustiano Carranza	Ciudad de México
15309	5o Tramo 20 de Noviembre	Colonia	Venustiano Carranza	Ciudad de México
15310	Felipe Ángeles	Colonia	Venustiano Carranza	Ciudad de México
15320	Azteca	Colonia	Venustiano Carranza	Ciudad de México
15330	Tres Mosqueteros	Colonia	Venustiano Carranza	Ciudad de México
15339	Ampliación Venustiano Carranza	Colonia	Venustiano Carranza	Ciudad de México
15340	Venustiano Carranza	Colonia	Venustiano Carranza	Ciudad de México
15350	Ampliación Penitenciaria	Colonia	Venustiano Carranza	Ciudad de México
15370	Progresista	Colonia	Venustiano Carranza	Ciudad de México
15380	Escuela de Tiro	Colonia	Venustiano Carranza	Ciudad de México
15390	7 de Julio	Colonia	Venustiano Carranza	Ciudad de México
15400	Romero Rubio	Colonia	Venustiano Carranza	Ciudad de México
15410	Simón Bolívar	Colonia	Venustiano Carranza	Ciudad de México
15420	Ampliación Simón Bolívar	Colonia	Venustiano Carranza	Ciudad de México
15430	Aquiles Serdán	Colonia	Venustiano Carranza	Ciudad de México
15440	1° de Mayo	Colonia	Venustiano Carranza	Ciudad de México
15450	Damián Carmona	Colonia	Venustiano Carranza	Ciudad de México
15460	Revolución	Colonia	Venustiano Carranza	Ciudad de México
15470	Miguel Hidalgo	Colonia	Venustiano Carranza	Ciudad de México
15500	Moctezuma 1a Sección	Colonia	Venustiano Carranza	Ciudad de México
15510	Pensador Mexicano	Colonia	Venustiano Carranza	Ciudad de México
15520	Peñón de los Baños	Colonia	Venustiano Carranza	Ciudad de México
15530	Moctezuma 2a Sección	Colonia	Venustiano Carranza	Ciudad de México
15540	Santa Cruz Aviación	Colonia	Venustiano Carranza	Ciudad de México
15600	Arenal 1a Sección	Colonia	Venustiano Carranza	Ciudad de México
15610	Cuchilla Pantitlán	Colonia	Venustiano Carranza	Ciudad de México
15620	México (Lic. Benito Juárez)	Aeropuerto	Venustiano Carranza	Ciudad de México
15630	Caracol	Colonia	Venustiano Carranza	Ciudad de México
15640	Arenal 4a Sección	Colonia	Venustiano Carranza	Ciudad de México
15640	Arenal Puerto Aéreo	Colonia	Venustiano Carranza	Ciudad de México
15650	Ampliación Caracol	Colonia	Venustiano Carranza	Ciudad de México
15660	Arenal 3a Sección	Colonia	Venustiano Carranza	Ciudad de México
15670	Adolfo López Mateos	Colonia	Venustiano Carranza	Ciudad de México
15680	Arenal 2a Sección	Colonia	Venustiano Carranza	Ciudad de México
15700	Federal	Colonia	Venustiano Carranza	Ciudad de México
15710	Industrial Puerto Aéreo	Colonia	Venustiano Carranza	Ciudad de México
15730	4 Árboles	Colonia	Venustiano Carranza	Ciudad de México
15740	Aviación Civil	Colonia	Venustiano Carranza	Ciudad de México
15750	Ampliación Aviación Civil	Colonia	Venustiano Carranza	Ciudad de México
15800	Jamaica	Colonia	Venustiano Carranza	Ciudad de México
15810	Merced Balbuena	Colonia	Venustiano Carranza	Ciudad de México
15820	Lorenzo Boturini	Colonia	Venustiano Carranza	Ciudad de México
15830	Artes Gráficas	Colonia	Venustiano Carranza	Ciudad de México
15840	Sevilla	Colonia	Venustiano Carranza	Ciudad de México
15850	Magdalena Mixiuhca	Colonia	Venustiano Carranza	Ciudad de México
15860	La Magdalena Mixiuhca	Pueblo	Venustiano Carranza	Ciudad de México
15870	Aarón Sáenz	Colonia	Venustiano Carranza	Ciudad de México
15900	Jardín Balbuena	Colonia	Venustiano Carranza	Ciudad de México
15960	Del Parque	Colonia	Venustiano Carranza	Ciudad de México
15970	Aeronáutica Militar	Colonia	Venustiano Carranza	Ciudad de México
15980	24 de Abril	Colonia	Venustiano Carranza	Ciudad de México
15990	Álvaro Obregón	Colonia	Venustiano Carranza	Ciudad de México
16000	La Concepción Tlacoapa	Barrio	Xochimilco	Ciudad de México
16000	San Antonio	Barrio	Xochimilco	Ciudad de México
16000	San Juan	Barrio	Xochimilco	Ciudad de México
16010	Bosque Residencial del Sur	Colonia	Xochimilco	Ciudad de México
16010	Las Peritas	Colonia	Xochimilco	Ciudad de México
16010	Paseos del Sur	Colonia	Xochimilco	Ciudad de México
16010	San Bartolo El Chico	Colonia	Xochimilco	Ciudad de México
16020	San Juan Tepepan	Colonia	Xochimilco	Ciudad de México
16020	Santa María Tepepan	Pueblo	Xochimilco	Ciudad de México
16029	Ampliación Tepepan	Colonia	Xochimilco	Ciudad de México
16030	Huichapan	Colonia	Xochimilco	Ciudad de México
16030	La Noria	Colonia	Xochimilco	Ciudad de México
16030	Potrero de San Bernardino	Colonia	Xochimilco	Ciudad de México
16030	Ampliación La Noria	Colonia	Xochimilco	Ciudad de México
16034	18	Barrio	Xochimilco	Ciudad de México
16035	San Lorenzo La Cebada	Colonia	Xochimilco	Ciudad de México
16035	Rinconada Coapa	Colonia	Xochimilco	Ciudad de México
16036	Mercado de Flores Plantas y Hortalizas	Equipamiento	Xochimilco	Ciudad de México
16038	Ampliación San Marcos Norte	Colonia	Xochimilco	Ciudad de México
16040	La Asunción	Barrio	Xochimilco	Ciudad de México
16040	San Lorenzo	Barrio	Xochimilco	Ciudad de México
16050	Jardines del Sur	Colonia	Xochimilco	Ciudad de México
16050	San Marcos	Barrio	Xochimilco	Ciudad de México
16050	Tierra Nueva	Colonia	Xochimilco	Ciudad de México
16059	Pblo. Stgo.Tepalcatlalpan, U. H. Rinconada del Sur	Colonia	Xochimilco	Ciudad de México
16060	El Mirador	Colonia	Xochimilco	Ciudad de México
16070	Belén	Barrio	Xochimilco	Ciudad de México
16070	El Rosario	Barrio	Xochimilco	Ciudad de México
16070	La Guadalupita	Barrio	Xochimilco	Ciudad de México
16070	Santa Crucita	Barrio	Xochimilco	Ciudad de México
16080	La Santísima	Barrio	Xochimilco	Ciudad de México
16080	San Cristóbal	Barrio	Xochimilco	Ciudad de México
16080	San Diego	Barrio	Xochimilco	Ciudad de México
16080	San Esteban	Barrio	Xochimilco	Ciudad de México
16083	Caltongo	Barrio	Xochimilco	Ciudad de México
16090	San Pedro	Barrio	Xochimilco	Ciudad de México
16090	Tablas de San Lorenzo	Colonia	Xochimilco	Ciudad de México
16090	Xaltocan	Barrio	Xochimilco	Ciudad de México
16100	Santa Cruz Xochitepec	Pueblo	Xochimilco	Ciudad de México
16200	Santiago Tepalcatlalpan	Pueblo	Xochimilco	Ciudad de México
16210	La Concha	Colonia	Xochimilco	Ciudad de México
16240	Tlaxopan	Colonia	Xochimilco	Ciudad de México
16300	San Lucas Xochimanca	Pueblo	Xochimilco	Ciudad de México
16310	La Cañada	Colonia	Xochimilco	Ciudad de México
16320	San Lucas Oriente	Colonia	Xochimilco	Ciudad de México
16340	Texmic	Colonia	Xochimilco	Ciudad de México
16400	San Lorenzo Atemoaya	Pueblo	Xochimilco	Ciudad de México
16410	Lomas de Tonalco	Colonia	Xochimilco	Ciudad de México
16420	San Jerónimo	Colonia	Xochimilco	Ciudad de México
16428	El Jazmín	Colonia	Xochimilco	Ciudad de México
16429	Rancho Tejomulco	Colonia	Xochimilco	Ciudad de México
16430	Xochipilli	Colonia	Xochimilco	Ciudad de México
16440	Año de Juárez	Colonia	Xochimilco	Ciudad de México
16443	Pocitos	Barrio	Xochimilco	Ciudad de México
16450	Santa María Nativitas	Pueblo	Xochimilco	Ciudad de México
16457	Lomas de Nativitas	Colonia	Xochimilco	Ciudad de México
16459	Ampliación Nativitas	Colonia	Xochimilco	Ciudad de México
16500	Santa Cruz Acalpixca	Pueblo	Xochimilco	Ciudad de México
16513	Apatlaco	Barrio	Xochimilco	Ciudad de México
16513	Del Puente	Barrio	Xochimilco	Ciudad de México
16514	La Gallera	Barrio	Xochimilco	Ciudad de México
16514	Tetitla	Barrio	Xochimilco	Ciudad de México
16514	Calpulco	Barrio	Xochimilco	Ciudad de México
16520	La Planta	Barrio	Xochimilco	Ciudad de México
16530	Las Cruces	Barrio	Xochimilco	Ciudad de México
16530	Las Flores	Barrio	Xochimilco	Ciudad de México
16533	Ahualapa	Barrio	Xochimilco	Ciudad de México
16550	Valle de Santa María	Colonia	Xochimilco	Ciudad de México
16600	San Gregorio Atlapulco	Pueblo	Xochimilco	Ciudad de México
16604	San Andrés	Barrio	Xochimilco	Ciudad de México
16605	Los Reyes	Barrio	Xochimilco	Ciudad de México
16606	3 de Mayo	Barrio	Xochimilco	Ciudad de México
16607	San Antonio	Barrio	Xochimilco	Ciudad de México
16609	La Candelaria	Barrio	Xochimilco	Ciudad de México
16610	San Luis Tlaxialtemalco	Pueblo	Xochimilco	Ciudad de México
16614	Niños Héroes	Barrio	Xochimilco	Ciudad de México
16615	La Asunción	Barrio	Xochimilco	Ciudad de México
16616	Santa Cecilia	Barrio	Xochimilco	Ciudad de México
16617	San Sebastián	Barrio	Xochimilco	Ciudad de México
16620	San José	Barrio	Xochimilco	Ciudad de México
16629	La Guadalupana	Barrio	Xochimilco	Ciudad de México
16629	San Juan	Barrio	Xochimilco	Ciudad de México
16630	San Juan Moyotepec	Barrio	Xochimilco	Ciudad de México
16640	San Juan Minas	Barrio	Xochimilco	Ciudad de México
16710	Quirino Mendoza	Colonia	Xochimilco	Ciudad de México
16720	Del Carmen	Colonia	Xochimilco	Ciudad de México
16739	San Isidro	Colonia	Xochimilco	Ciudad de México
16740	Guadalupita	Colonia	Xochimilco	Ciudad de México
16749	Las Animas	Colonia	Xochimilco	Ciudad de México
16750	Calyequita	Barrio	Xochimilco	Ciudad de México
16770	San Felipe	Colonia	Xochimilco	Ciudad de México
16776	Santiaguito	Colonia	Xochimilco	Ciudad de México
16776	El Mirador	Colonia	Xochimilco	Ciudad de México
16780	Cerrillos Primera Sección	Colonia	Xochimilco	Ciudad de México
16780	El Sacrificio	Colonia	Xochimilco	Ciudad de México
16780	Cristo Rey	Colonia	Xochimilco	Ciudad de México
16780	Cerrillos Segunda Sección	Colonia	Xochimilco	Ciudad de México
16780	Cerrillos Tercera Sección	Colonia	Xochimilco	Ciudad de México
16797	Nativitas	Colonia	Xochimilco	Ciudad de México
16799	Las Mesitas	Colonia	Xochimilco	Ciudad de México
16800	San Mateo Xalpa	Pueblo	Xochimilco	Ciudad de México
16810	San Andrés Ahuayucan	Pueblo	Xochimilco	Ciudad de México
16810	Santa Inés	Colonia	Xochimilco	Ciudad de México
16810	Rosario Tlali	Colonia	Xochimilco	Ciudad de México
16813	El Calvario	Barrio	Xochimilco	Ciudad de México
16840	Santa Cruz Chavarrieta	Colonia	Xochimilco	Ciudad de México
16850	Chapultepec	Barrio	Xochimilco	Ciudad de México
16860	Santa Cruz de Guadalupe	Colonia	Xochimilco	Ciudad de México
16880	Santa Cecilia Tepetlapa	Pueblo	Xochimilco	Ciudad de México
16900	San Francisco Tlalnepantla	Pueblo	Xochimilco	Ciudad de México
50010	La Cruz Comalco	Colonia	Toluca	México
50010	La Magdalena	Colonia	Toluca	México
50010	Los Girasoles	Fraccionamiento	Toluca	México
50010	Los Girasoles II	Fraccionamiento	Toluca	México
50010	Los Girasoles III	Fraccionamiento	Toluca	México
50010	Los Girasoles IV	Fraccionamiento	Toluca	México
50010	San Lorenzo Tepaltitlán Centro	Pueblo	Toluca	México
50010	Tlacopa	Barrio	Toluca	México
50010	Universidad	Colonia	Toluca	México
50010	Las Flores	Fraccionamiento	Toluca	México
50010	San Angelín	Barrio	Toluca	México
50010	Galaxias de San Lorenzo	Fraccionamiento	Toluca	México
50010	El Tejocote	Colonia	Toluca	México
50010	El Balcón	Colonia	Toluca	México
50010	Los Girasoles I	Fraccionamiento	Toluca	México
50010	San Juan de la Cruz	Colonia	Toluca	México
50010	Hacienda San Agustín	Fraccionamiento	Toluca	México
50010	La Loma	Barrio	Toluca	México
50010	Del Panteón	Barrio	Toluca	México
50010	Villas Tepaltitlán	Fraccionamiento	Toluca	México
50010	Gran Morada	Fraccionamiento	Toluca	México
50016	Jardines de la Crespa	Unidad habitacional	Toluca	México
50016	Parque industrial San Antonio	Zona industrial	Toluca	México
50016	De la Crespa	Barrio	Toluca	México
50017	Las Brisas	Fraccionamiento	Toluca	México
50017	Rincón de San Lorenzo	Colonia	Toluca	México
50020	Bosques de la Mora	Fraccionamiento	Toluca	México
50020	Los Ángeles	Colonia	Toluca	México
50020	Los Frailes	Fraccionamiento	Toluca	México
50020	Rancho la Mora	Colonia	Toluca	México
50020	Rinconada de la Mora	Fraccionamiento	Toluca	México
50020	Santiago Miltepec	Pueblo	Toluca	México
50020	3 Caminos	Colonia	Toluca	México
50020	Valle de Santiago Residencial	Fraccionamiento	Toluca	México
50026	Carlos Hank González	Colonia	Toluca	México
50040	La Retama	Barrio	Toluca	México
50040	La Teresona	Barrio	Toluca	México
50040	Unión	Colonia	Toluca	México
50040	San Luis Obispo	Barrio	Toluca	México
50040	San Miguel Apinahuizco	Barrio	Toluca	México
50040	Sector Popular	Colonia	Toluca	México
50040	Sor Juana Inés de la Cruz	Colonia	Toluca	México
50040	Electricistas Locales	Colonia	Toluca	México
50050	El Cóporo	Barrio	Toluca	México
50050	Santa Bárbara	Barrio	Toluca	México
50050	Zopilocalco Sur	Barrio	Toluca	México
50050	Zopilocalco Norte	Barrio	Toluca	México
50060	Doctores	Colonia	Toluca	México
50060	Lomas Altas	Fraccionamiento	Toluca	México
50060	Niños Héroes (Pensiones)	Colonia	Toluca	México
50060	San Juan Buenavista	Colonia	Toluca	México
50060	Huitzila	Barrio	Toluca	México
50070	Independencia	Colonia	Toluca	México
50070	Meteoro	Colonia	Toluca	México
50070	Villas Fontana I	Fraccionamiento	Toluca	México
50070	Villas Fontana II	Fraccionamiento	Toluca	México
50070	Fidel Velázquez	Unidad habitacional	Toluca	México
50070	Reforma y Ferrocarriles Nacionales	Colonia	Toluca	México
50071	Toluca	Zona industrial	Toluca	México
50075	Las Torres	Fraccionamiento	Toluca	México
50075	Científicos	Colonia	Toluca	México
50080	La Merced  (Alameda)	Barrio	Toluca	México
50080	San Bernardino	Barrio	Toluca	México
50090	5 de Mayo	Colonia	Toluca	México
50100	Bosques de San Mateo	Colonia	Toluca	México
50100	14 de Diciembre	Colonia	Toluca	México
50100	El Trigo	Fraccionamiento	Toluca	México
50100	La Joya	Colonia	Toluca	México
50100	La Ribera I	Fraccionamiento	Toluca	México
50100	La Ribera II	Fraccionamiento	Toluca	México
50100	La Ribera III	Fraccionamiento	Toluca	México
50100	La Ribera IV	Fraccionamiento	Toluca	México
50100	Miguel Hidalgo (Corralitos)	Colonia	Toluca	México
50100	Niños Héroes	Colonia	Toluca	México
50100	Nueva Oxtotitlán	Colonia	Toluca	México
50100	Parque de San Mateo	Fraccionamiento	Toluca	México
50100	Parques Nacionales	Colonia	Toluca	México
50100	Protinbos	Colonia	Toluca	México
50100	Rincón del Parque	Colonia	Toluca	México
50100	San Mateo Oxtotitlán	Colonia	Toluca	México
50100	Ex-Hacienda San Jorge	Fraccionamiento	Toluca	México
50100	Lomas de San Mateo	Fraccionamiento	Toluca	México
50103	Tlayaca	Barrio	Toluca	México
50103	Tlanepantla	Barrio	Toluca	México
50103	Atotonilco	Barrio	Toluca	México
50110	Cultural	Colonia	Toluca	México
50110	Del Deporte	Colonia	Toluca	México
50110	Guadalupe San Buenaventura	Colonia	Toluca	México
50110	Plazas de San Buenaventura	Fraccionamiento	Toluca	México
50110	San Buenaventura	Colonia	Toluca	México
50110	Vicente Guerrero	Colonia	Toluca	México
50110	Villas de San Buenaventura	Fraccionamiento	Toluca	México
50110	Real del Bosque	Fraccionamiento	Toluca	México
50115	Loma Bonita	Colonia	Toluca	México
50120	Ciprés	Colonia	Toluca	México
50120	Federal (Adolfo López Mateos)	Colonia	Toluca	México
50120	Granjas	Colonia	Toluca	México
50120	Morelos 1a Sección	Colonia	Toluca	México
50120	Morelos 2a Secc	Colonia	Toluca	México
50120	Residencial Colón	Fraccionamiento	Toluca	México
50120	Tollocan INFONAVIT	Fraccionamiento	Toluca	México
50122	Zona Militar	Zona federal	Toluca	México
50130	Altamirano	Colonia	Toluca	México
50130	Américas	Colonia	Toluca	México
50130	Cuauhtémoc	Colonia	Toluca	México
50130	Francisco Murguía El Ranchito	Colonia	Toluca	México
50130	Universidad	Colonia	Toluca	México
50140	Nueva Santa María de las Rosas	Colonia	Toluca	México
50140	Nueva Santa María	Colonia	Toluca	México
50140	Santa María de las Rosas	Colonia	Toluca	México
50140	Valle Don Camilo	Fraccionamiento	Toluca	México
50140	Valle Verde	Colonia	Toluca	México
50140	Villas Florencia	Fraccionamiento	Toluca	México
50140	Terminal	Colonia	Toluca	México
50150	San Sebastián	Barrio	Toluca	México
50150	Izcalli IPIEM	Colonia	Toluca	México
50150	Izcalli Toluca	Colonia	Toluca	México
50150	Juan Beltrán	Conjunto habitacional	Toluca	México
50150	Progreso	Colonia	Toluca	México
50150	Salvador Sánchez Colín	Colonia	Toluca	México
50150	Vértice	Fraccionamiento	Toluca	México
50150	Comisión Federal de Electricidad	Colonia	Toluca	México
50160	Santa Ana Tlapaltitlán	Colonia	Toluca	México
50160	Villas de Santa Ana I	Fraccionamiento	Toluca	México
50160	Villas de Santa Ana II	Fraccionamiento	Toluca	México
50160	Villas de Santa Ana III	Fraccionamiento	Toluca	México
50160	Villas de Santa Ana IV	Fraccionamiento	Toluca	México
50160	Villas de Santa Ana V	Fraccionamiento	Toluca	México
50160	Villas de Santa Ana VI	Fraccionamiento	Toluca	México
50160	Villas de Santa Ana VII	Fraccionamiento	Toluca	México
50160	Villas de Santa Ana	Fraccionamiento	Toluca	México
50168	La Machincuepa	Fraccionamiento	Toluca	México
50168	Santa María Zozoquilpan	Colonia	Toluca	México
50170	Héroes del 5 de Mayo	Colonia	Toluca	México
50170	Isidro Fabela 1a Sección	Colonia	Toluca	México
50170	Las Haciendas	Fraccionamiento	Toluca	México
50170	Ocho Cedros	Colonia	Toluca	México
50170	El Seminario 1a Sección	Colonia	Toluca	México
50170	El Seminario 2a Sección	Colonia	Toluca	México
50170	El Seminario 3a Sección	Colonia	Toluca	México
50170	El Seminario 4a Sección	Colonia	Toluca	México
50170	El Seminario 5a Sección	Colonia	Toluca	México
50170	Villa Hogar	Colonia	Toluca	México
50170	Isidro Fabela 2a Sección	Colonia	Toluca	México
50170	Ocho Cedros 2a Sección	Colonia	Toluca	México
50180	Azteca	Colonia	Toluca	México
50180	Bosques de Colón	Fraccionamiento	Toluca	México
50180	Del Parque	Colonia	Toluca	México
50180	Hermanos de la Vega	Colonia	Toluca	México
50180	Lázaro Cárdenas	Colonia	Toluca	México
50180	Ampliación Lázaro Cárdenas	Colonia	Toluca	México
50180	Moderna de la Cruz	Colonia	Toluca	México
50190	La Magdalena	Colonia	Toluca	México
50190	Benito Juárez	Colonia	Toluca	México
50190	Emiliano Zapata	Colonia	Toluca	México
50190	Eva Sámano de López Mateos	Colonia	Toluca	México
50190	Unidad Victoria	Colonia	Toluca	México
50200	San Cristóbal Huichochitlán	Pueblo	Toluca	México
50200	San Andrés Cuexcontitlán	Pueblo	Toluca	México
50200	La Trinidad	Colonia	Toluca	México
50200	Barrio San Gabriel	Colonia	Toluca	México
50200	Armando Neyra Chavez	Colonia	Toluca	México
50200	Natividad	Colonia	Toluca	México
50200	La Concepción	Colonia	Toluca	México
50200	Santa Rosa	Colonia	Toluca	México
50200	San José Guadalupe	Colonia	Toluca	México
50200	San Salvador	Colonia	Toluca	México
50200	Paseos del Pilar	Fraccionamiento	Toluca	México
50205	Jicaltepec Cuexcontitlán	Colonia	Toluca	México
50205	San Diego de los Padres Cuexcontitlán	Colonia	Toluca	México
50205	San Diego de los Padres Otzacatipan	Ejido	Toluca	México
50206	San Diego Linares	Pueblo	Toluca	México
50206	La Loma Cuexcontitlán	Ejido	Toluca	México
50209	Toluca (Lic. Adolfo López Mateos)	Aeropuerto	Toluca	México
50210	Fuentes de San José	Fraccionamiento	Toluca	México
50210	Paseo Arboleda	Fraccionamiento	Toluca	México
50210	Los Sauces I	Fraccionamiento	Toluca	México
50210	Los Sauces II	Fraccionamiento	Toluca	México
50210	Los Sauces III	Fraccionamiento	Toluca	México
50210	Ex Hacienda San José	Fraccionamiento	Toluca	México
50210	Santa Cruz Otzacatipan	Colonia	Toluca	México
50210	Los Sauces IV	Colonia	Toluca	México
50210	Los Sauces V	Fraccionamiento	Toluca	México
50210	Valle de la Hacienda	Fraccionamiento	Toluca	México
50210	Hacienda del Valle II	Fraccionamiento	Toluca	México
50210	Bosques de Cantabria	Fraccionamiento	Toluca	México
50210	La Magdalena Otzacatipan	Barrio	Toluca	México
50210	Villa Mane	Fraccionamiento	Toluca	México
50210	Hacienda del Valle I	Fraccionamiento	Toluca	México
50210	Valle de San José	Fraccionamiento	Toluca	México
50214	Villas Santín	Fraccionamiento	Toluca	México
50214	Balcones Santín	Fraccionamiento	Toluca	México
50214	Paseos Santín	Fraccionamiento	Toluca	México
50220	San Mateo Otzacatipan	Pueblo	Toluca	México
50220	Villa Tulipanes	Fraccionamiento	Toluca	México
50220	Villas de San Mateo	Fraccionamiento	Toluca	México
50220	De Canaleja	Barrio	Toluca	México
50223	Parque industrial Exportec II	Zona industrial	Toluca	México
50223	Parque industrial Exportec I	Zona industrial	Toluca	México
50225	San Miguel Totoltepec	Pueblo	Toluca	México
50225	Geovillas Centenario	Fraccionamiento	Toluca	México
50225	Nueva San Francisco	Colonia	Toluca	México
50225	Bordo de las Canastas	Fraccionamiento	Toluca	México
50226	San Pedro Totoltepec	Pueblo	Toluca	México
50226	Villas Santa María (Galaxia)	Colonia	Toluca	México
50226	La Arboleda II	Fraccionamiento	Toluca	México
50226	La Arboleda III	Fraccionamiento	Toluca	México
50227	La Floresta	Fraccionamiento	Toluca	México
50227	Misiones de Santa Esperanza	Colonia	Toluca	México
50227	Geovillas de San Mateo	Fraccionamiento	Toluca	México
50227	Rinconadas del Pilar	Fraccionamiento	Toluca	México
50227	Paseos de Toluca	Fraccionamiento	Toluca	México
50227	Villas de Santa Mónica	Fraccionamiento	Toluca	México
50228	La Perla	Condominio	Toluca	México
50228	Geo Villas de la Ind	Unidad habitacional	Toluca	México
50228	La Arboleda IV	Fraccionamiento	Toluca	México
50228	La Arboleda	Fraccionamiento	Toluca	México
50228	Geovillas los Cedros	Unidad habitacional	Toluca	México
50228	Las Fuentes	Condominio	Toluca	México
50228	Villa de San Andrés	Fraccionamiento	Toluca	México
50228	Los Sabinos	Fraccionamiento	Toluca	México
50228	Geo Villas de la Ind. II	Fraccionamiento	Toluca	México
50228	La Crespa	Barrio	Toluca	México
50228	La Arboleda V	Fraccionamiento	Toluca	México
50228	Las Fuentes Ind.	Unidad habitacional	Toluca	México
50228	Las Fuentes del Ordal	Fraccionamiento	Toluca	México
50230	Las Misiones	Fraccionamiento	Toluca	México
50230	Villa Toscana	Fraccionamiento	Toluca	México
50230	Francisco Villa	Colonia	Toluca	México
50230	San José Guadalupe Otzacatipan	Pueblo	Toluca	México
50230	San Nicolás Tolentino	Pueblo	Toluca	México
50230	San Blas Totoltepec	Colonia	Toluca	México
50230	San Blas Otzacatipan	Colonia	Toluca	México
50233	Parque industrial Toluca 2000	Zona industrial	Toluca	México
50233	Parque industrial Vesta	Zona industrial	Toluca	México
50235	San Francisco Totoltepec	Pueblo	Toluca	México
50235	El Cerrillo Vista Hermosa	Colonia	Toluca	México
50235	Guadalupe Totoltepec	Barrio	Toluca	México
50235	San Francisco	Colonia	Toluca	México
50236	La Constitución Totoltepec	Colonia	Toluca	México
50236	Arroyo Vista Hermosa	Colonia	Toluca	México
50240	El Carmen Totoltepec	Colonia	Toluca	México
50240	El Olimpo	Fraccionamiento	Toluca	México
50240	Prados de Tollocan	Fraccionamiento	Toluca	México
50240	Los Ahuehuetes	Fraccionamiento	Toluca	México
50245	Santa María Totoltepec	Pueblo	Toluca	México
50245	Jesús García Lovera "El Pilar"	Colonia	Toluca	México
50245	Campo Real	Unidad habitacional	Toluca	México
50245	Los Héroes I	Fraccionamiento	Toluca	México
50245	Hacienda La Galia	Fraccionamiento	Toluca	México
50245	María Bonita	Fraccionamiento	Toluca	México
50245	Sor Juana Inés de la Cruz	Unidad habitacional	Toluca	México
50245	San Jerónimo	Unidad habitacional	Toluca	México
50245	San Antonio Abad	Unidad habitacional	Toluca	México
50245	Campo Real I	Fraccionamiento	Toluca	México
50245	Campo Real II	Fraccionamiento	Toluca	México
50245	Campo Real III	Unidad habitacional	Toluca	México
50245	Las Bugambilias	Unidad habitacional	Toluca	México
50245	Residencial la Joya	Unidad habitacional	Toluca	México
50245	La Alameda	Unidad habitacional	Toluca	México
50246	El Coecillo	Colonia	Toluca	México
50246	Los Héroes III	Fraccionamiento	Toluca	México
50246	Los Héroes II	Fraccionamiento	Toluca	México
50250	Las Palomas	Fraccionamiento	Toluca	México
50250	San Felipe Tlalmimilolpan	Pueblo	Toluca	México
50250	Santa Juanita	Ejido	Toluca	México
50250	La Curva	Colonia	Toluca	México
50250	La Cañada	Colonia	Toluca	México
50250	Las Margaritas	Fraccionamiento	Toluca	México
50250	Rancho de Maya	Colonia	Toluca	México
50250	La Loma Residencial	Fraccionamiento	Toluca	México
50253	Jardines de San Pedro	Colonia	Toluca	México
50253	Dos Ríos	Colonia	Toluca	México
50253	Los Álamos	Colonia	Toluca	México
50253	El Calvario	Colonia	Toluca	México
50253	La Comunidad	Colonia	Toluca	México
50254	Del Panteón	Barrio	Toluca	México
50254	Loma Bonita	Colonia	Toluca	México
50254	Tlala	Colonia	Toluca	México
50254	La Venta	Barrio	Toluca	México
50254	El Mogote	Colonia	Toluca	México
50254	El Frontón	Colonia	Toluca	México
50254	El Mirador	Barrio	Toluca	México
50254	Balcones de San Felipe	Fraccionamiento	Toluca	México
50255	El Refugio	Colonia	Toluca	México
50255	Santiago Tlacotepec	Colonia	Toluca	México
50255	San Juan Tilapa Centro	Colonia	Toluca	México
50255	El Durazno	Colonia	Toluca	México
50255	Vista Hermosa	Colonia	Toluca	México
50255	Cristo Rey	Colonia	Toluca	México
50255	Linda Vista	Colonia	Toluca	México
50255	Paraje Tlalmimilolpan	Colonia	Toluca	México
50255	Loma Bonita	Colonia	Toluca	México
50255	Los Pajaritos	Colonia	Toluca	México
50255	Santiago Tlacotepec Centro	Colonia	Toluca	México
50255	El Mirador	Colonia	Toluca	México
50255	Santa María	Colonia	Toluca	México
50255	Guadalupe	Colonia	Toluca	México
50256	Las Palmas	Colonia	Toluca	México
50256	Agua Bendita	Colonia	Toluca	México
50256	Las Barranquitas	Colonia	Toluca	México
50256	El Canal	Colonia	Toluca	México
50256	El Calvario	Colonia	Toluca	México
50257	La Joya	Barrio	Toluca	México
50257	La Joya	Colonia	Toluca	México
50257	El Cruzado	Colonia	Toluca	México
50257	Benito Juárez	Colonia	Toluca	México
50257	Tollocan	Colonia	Toluca	México
50257	La Joya de Ignacio Esquivel	Colonia	Toluca	México
50257	Apilulco	Colonia	Toluca	México
50257	Loma Bonita	Colonia	Toluca	México
50258	Acuxtitla	Colonia	Toluca	México
50258	El Chamizal	Colonia	Toluca	México
50258	Tilapa	Colonia	Toluca	México
50258	El Mostrante	Colonia	Toluca	México
50258	La Cruz	Colonia	Toluca	México
50258	Puxinco	Colonia	Toluca	México
50258	El Rosario	Colonia	Toluca	México
50258	Guadalupe	Colonia	Toluca	México
50258	Rancho Buenavista	Colonia	Toluca	México
50258	Paraje el Ocote	Colonia	Toluca	México
50260	Atenea	Fraccionamiento	Toluca	México
50260	Miramonte	Fraccionamiento	Toluca	México
50260	La Rivera	Fraccionamiento	Toluca	México
50260	Paseos del Valle	Fraccionamiento	Toluca	México
50260	El Pacífico	Colonia	Toluca	México
50260	La Era	Fraccionamiento	Toluca	México
50260	Capultitlán Centro	Colonia	Toluca	México
50260	Villas Fontana	Fraccionamiento	Toluca	México
50260	Villas Santa Esther	Fraccionamiento	Toluca	México
50260	Alejandría	Fraccionamiento	Toluca	México
50263	Los Pinos	Colonia	Toluca	México
50263	San Juan Apóstol	Barrio	Toluca	México
50263	De Cristo Rey	Barrio	Toluca	México
50263	De la Cruz	Barrio	Toluca	México
50263	La Virgen de Guadalupe	Barrio	Toluca	México
50263	San Isidro Labrador	Barrio	Toluca	México
50263	Del Espíritu Santo	Barrio	Toluca	México
50263	La Santísima Trinidad	Colonia	Toluca	México
50264	La Soledad	Barrio	Toluca	México
50264	San José	Barrio	Toluca	México
50264	San Felipe de Jesús	Barrio	Toluca	México
50264	San Judas Tadeo	Colonia	Toluca	México
50264	Las Palmas	Colonia	Toluca	México
50264	San Pablo	Colonia	Toluca	México
50265	San Miguel Zacango	Colonia	Toluca	México
50265	Villas Santa Isabel	Fraccionamiento	Toluca	México
50265	Del Panteón	Barrio	Toluca	México
50265	Guadalupe	Colonia	Toluca	México
50265	Sixto Noguez	Colonia	Toluca	México
50265	La Loma	Colonia	Toluca	México
50265	Cacalomacán Centro	Colonia	Toluca	México
50265	La Palma	Colonia	Toluca	México
50265	La Capilla	Colonia	Toluca	México
50265	Sagrado Corazón de Jesús	Colonia	Toluca	México
50265	Tierra Coloradas	Colonia	Toluca	México
50265	San Pedro	Colonia	Toluca	México
50265	El Chorrito	Colonia	Toluca	México
50265	Del Campo	Colonia	Toluca	México
50265	Las Palomas	Colonia	Toluca	México
50265	Sor Juana Inés de la Cruz	Colonia	Toluca	México
50266	San Antonio Buenavista	Pueblo	Toluca	México
50270	Tecaxic	Pueblo	Toluca	México
50270	Tepetongo	Barrio	Toluca	México
50273	San Pablo	Colonia	Toluca	México
50273	Buenavista	Barrio	Toluca	México
50274	Tlalnepantla	Barrio	Toluca	México
50274	Pueblo Nuevo (Serratón)	Colonia	Toluca	México
50274	El Pedregal	Barrio	Toluca	México
50280	Santiago Tlaxomulco Centro	Colonia	Toluca	México
50280	Calixtlahuaca	Pueblo	Toluca	México
50283	El Pozo Blanco	Barrio	Toluca	México
50283	La Pena	Barrio	Toluca	México
50283	Los Cipreses	Barrio	Toluca	México
50284	Los Pocitos	Colonia	Toluca	México
50284	El Calvario	Colonia	Toluca	México
50284	Tenojo	Colonia	Toluca	México
50285	Las Bugambilias	Unidad habitacional	Toluca	México
50285	San Martín Toltepec	Pueblo	Toluca	México
50285	La Palma Toltepec	Barrio	Toluca	México
50285	Palmillas	Barrio	Toluca	México
50285	Ojo de Agua	Colonia	Toluca	México
50285	San Marcos Yachihuacaltepec	Colonia	Toluca	México
50285	Zimbrones	Barrio	Toluca	México
50285	2 de Marzo	Colonia	Toluca	México
50285	Junta Local de Caminos	Fraccionamiento	Toluca	México
50285	San Marcos Yachihuacaltepec	Ejido	Toluca	México
50285	Lázaro Cárdenas	Colonia	Toluca	México
50285	San Isidro	Ranchería	Toluca	México
50285	Paseos San Martín	Conjunto habitacional	Toluca	México
50285	Almoloya de Juárez	Ejido	Toluca	México
50286	El Tepetate	Colonia	Toluca	México
50286	El Calvario	Colonia	Toluca	México
50286	La Pena	Colonia	Toluca	México
50290	Ejido Santa Cruz Atzcapotzaltongo	Colonia	Toluca	México
50290	La Vega	Fraccionamiento	Toluca	México
50290	San Pablo Autopan	Pueblo	Toluca	México
50290	Jicaltepec Autopan	Barrio	Toluca	México
50290	Bordo Nuevo	Ejido	Toluca	México
50290	El Cerro del Perico	Ejido	Toluca	México
50290	De Jesús 1da. Sección	Barrio	Toluca	México
50290	De Jesús 2da. Sección	Barrio	Toluca	México
50290	Del Pozo	Barrio	Toluca	México
50290	El Cerrito	Colonia	Toluca	México
50290	Tejocote	Colonia	Toluca	México
50290	Alcaltunco	Colonia	Toluca	México
50290	Tanamato	Colonia	Toluca	México
50290	Chupascliya	Colonia	Toluca	México
50290	Chichipicas	Colonia	Toluca	México
50290	Santa Cruz Atzcapotzaltongo	Colonia	Toluca	México
50290	La Granja	Barrio	Toluca	México
50293	Parque industrial Toluca	Zona industrial	Toluca	México
50294	De Jesús 3a. Sección	Barrio	Toluca	México
50294	De Santa Cruz	Barrio	Toluca	México
50294	De Pueblo Nuevo	Barrio	Toluca	México
50294	De Santa María	Barrio	Toluca	México
50294	Tlachaloya	Colonia	Toluca	México
50294	Villas los Ángeles	Unidad habitacional	Toluca	México
50295	Parque Industrial San Cayetano	Zona industrial	Toluca	México
50295	San Cayetano Morelos	Pueblo	Toluca	México
50295	Tlachaloya	Pueblo	Toluca	México
50295	San Carlos	Barrio	Toluca	México
50295	San Carlos Autopan	Colonia	Toluca	México
50295	San José la Costa	Ejido	Toluca	México
50295	Sebastián Lerdo de Tejada	Colonia	Toluca	México
50295	Tlachaloya 2a Sección Centro	Colonia	Toluca	México
50295	Aviación Autopan	Colonia	Toluca	México
50295	Balbuena	Barrio	Toluca	México
50295	San Diego	Fraccionamiento	Toluca	México
50295	Real de San Pablo	Fraccionamiento	Toluca	México
50295	Galaxia Toluca	Fraccionamiento	Toluca	México
50295	Cerrillo Piedras Blancas	Colonia	Toluca	México
50295	Las Jaras San Nicolás	Colonia	Toluca	México
50295	La Trinidad	Colonia	Toluca	México
50295	Julián Escalante	Colonia	Toluca	México
50295	Del Tejocote	Barrio	Toluca	México
50295	San Mateo	Colonia	Toluca	México
50295	San José Buenavista	Barrio	Toluca	México
50295	Xicaltepec	Ejido	Toluca	México
50295	Contracaja	Barrio	Toluca	México
50300	Villa de Acambay de Ruíz Castañeda Centro	Colonia	Acambay de Ruíz Castañeda	México
50300	El Triángulo	Colonia	Acambay de Ruíz Castañeda	México
50300	Peñasco de Dios	Colonia	Acambay de Ruíz Castañeda	México
50303	Endeje	Pueblo	Acambay de Ruíz Castañeda	México
50303	Manuel Hinojosa	Fraccionamiento	Acambay de Ruíz Castañeda	México
50303	Constituyentes	Colonia	Acambay de Ruíz Castañeda	México
50304	Los Pinos	Colonia	Acambay de Ruíz Castañeda	México
50305	Independencia	Colonia	Acambay de Ruíz Castañeda	México
50305	La Camelia	Colonia	Acambay de Ruíz Castañeda	México
50305	Niños Héroes	Colonia	Acambay de Ruíz Castañeda	México
50306	El Nogal	Colonia	Acambay de Ruíz Castañeda	México
50306	Revolución	Colonia	Acambay de Ruíz Castañeda	México
50306	Valle de los Espejos	Colonia	Acambay de Ruíz Castañeda	México
50310	Esdoca Barrio I	Barrio	Acambay de Ruíz Castañeda	México
50310	Esdoca (Esdoca Centro)	Pueblo	Acambay de Ruíz Castañeda	México
50310	Botidi	Pueblo	Acambay de Ruíz Castañeda	México
50310	Dongu Barrio Dos	Barrio	Acambay de Ruíz Castañeda	México
50310	La Cumbre	Ranchería	Acambay de Ruíz Castañeda	México
50313	Dateje	Pueblo	Acambay de Ruíz Castañeda	México
50313	Ganzda	Pueblo	Acambay de Ruíz Castañeda	México
50313	Loma Linda	Pueblo	Acambay de Ruíz Castañeda	México
50313	Hacienda Toto	Pueblo	Acambay de Ruíz Castañeda	México
50314	Barrancas	Pueblo	Acambay de Ruíz Castañeda	México
50314	Buenavista	Pueblo	Acambay de Ruíz Castañeda	México
50314	Bovini	Pueblo	Acambay de Ruíz Castañeda	México
50314	La Huerta	Pueblo	Acambay de Ruíz Castañeda	México
50314	Las Golondrinas	Pueblo	Acambay de Ruíz Castañeda	México
50314	Las Palomas	Ranchería	Acambay de Ruíz Castañeda	México
50315	Las Arenas (San Agustín)	Pueblo	Acambay de Ruíz Castañeda	México
50315	Mado Sector II	Pueblo	Acambay de Ruíz Castañeda	México
50315	Los Pilares	Pueblo	Acambay de Ruíz Castañeda	México
50315	Santa María las Arenas	Ranchería	Acambay de Ruíz Castañeda	México
50315	Las Trojes	Pueblo	Acambay de Ruíz Castañeda	México
50315	Santa María las Arenas Dos	Ranchería	Acambay de Ruíz Castañeda	México
50323	Boshi Grande	Pueblo	Acambay de Ruíz Castañeda	México
50324	La Manga	Pueblo	Acambay de Ruíz Castañeda	México
50324	Mado Sector I	Pueblo	Acambay de Ruíz Castañeda	México
50324	San Antonio las Palmas	Pueblo	Acambay de Ruíz Castañeda	México
50325	San Juanico Sector I	Pueblo	Acambay de Ruíz Castañeda	México
50325	San Nicolás Acambay	Pueblo	Acambay de Ruíz Castañeda	México
50325	La Venta (Barrio la Venta)	Ranchería	Acambay de Ruíz Castañeda	México
50325	San Juanico Sector II	Pueblo	Acambay de Ruíz Castañeda	México
50326	La Caridad	Pueblo	Acambay de Ruíz Castañeda	México
50326	San Ildefonso (San Ildefonso Yolotepec)	Pueblo	Acambay de Ruíz Castañeda	México
50326	Boshi Chiquito	Pueblo	Acambay de Ruíz Castañeda	México
50330	San Pedro de los Metates	Pueblo	Acambay de Ruíz Castañeda	México
50333	Pathé	Pueblo	Acambay de Ruíz Castañeda	México
50333	Boshindo	Pueblo	Acambay de Ruíz Castañeda	México
50333	Hondiga	Pueblo	Acambay de Ruíz Castañeda	México
50333	Agua Limpia	Pueblo	Acambay de Ruíz Castañeda	México
50333	Deshpe	Pueblo	Acambay de Ruíz Castañeda	México
50334	El Medrano	Ranchería	Acambay de Ruíz Castañeda	México
50335	El Fresadero	Rancho	Acambay de Ruíz Castañeda	México
50335	Chanteje	Pueblo	Acambay de Ruíz Castañeda	México
50335	La Estancia Sector I	Pueblo	Acambay de Ruíz Castañeda	México
50335	La Estancia Sector II	Pueblo	Acambay de Ruíz Castañeda	México
50335	Las Chivas (El Cerro)	Ranchería	Acambay de Ruíz Castañeda	México
50336	Loma de San Ángel	Pueblo	Acambay de Ruíz Castañeda	México
50336	La Laguna	Pueblo	Acambay de Ruíz Castañeda	México
50336	San José Boctó	Pueblo	Acambay de Ruíz Castañeda	México
50337	La Esperanza	Rancho	Acambay de Ruíz Castañeda	México
50337	La Soledad	Pueblo	Acambay de Ruíz Castañeda	México
50337	Pueblo Nuevo	Pueblo	Acambay de Ruíz Castañeda	México
50340	Guadalupe	Barrio	Acambay de Ruíz Castañeda	México
50340	Cerrito de Tixmadejé	Pueblo	Acambay de Ruíz Castañeda	México
50343	Hermosa Provincia	Barrio	Acambay de Ruíz Castañeda	México
50343	Doxtejé Centro	Pueblo	Acambay de Ruíz Castañeda	México
50343	Tixmadeje Grande (Santa María Tixmadeje)	Pueblo	Acambay de Ruíz Castañeda	México
50343	Tixmadeje Grande Barrio II	Pueblo	Acambay de Ruíz Castañeda	México
50343	Tixmadejé Chiquito	Pueblo	Acambay de Ruíz Castañeda	México
50343	Doxteje Barrio II	Barrio	Acambay de Ruíz Castañeda	México
50343	Doxteje Barrio Primero	Barrio	Acambay de Ruíz Castañeda	México
50343	Candeje	Barrio	Acambay de Ruíz Castañeda	México
50343	El Pedregal de Tixmadejé	Ranchería	Acambay de Ruíz Castañeda	México
50343	La Providencia	Ranchería	Acambay de Ruíz Castañeda	México
50344	La Florida	Pueblo	Acambay de Ruíz Castañeda	México
50344	El Ermitaño	Pueblo	Acambay de Ruíz Castañeda	México
50344	La Palma	Pueblo	Acambay de Ruíz Castañeda	México
50344	Tixmadeje	Ejido	Acambay de Ruíz Castañeda	México
50344	Detiña	Ejido	Acambay de Ruíz Castañeda	México
50345	Detiña (San Antonio Detiña)	Pueblo	Acambay de Ruíz Castañeda	México
50345	Dongu (Dongu Centro)	Pueblo	Acambay de Ruíz Castañeda	México
50345	Dongu Puerto	Ranchería	Acambay de Ruíz Castañeda	México
50345	Dongu Barrio Uno	Barrio	Acambay de Ruíz Castañeda	México
50345	Huamango (La Mesa de San Miguel Huamango)	Colonia	Acambay de Ruíz Castañeda	México
50350	Botí (Botí Agostadero)	Ranchería	Acambay de Ruíz Castañeda	México
50350	Los Sauces	Pueblo	Acambay de Ruíz Castañeda	México
50350	La Nopalera	Barrio	Acambay de Ruíz Castañeda	México
50353	Rincón de San Francisco Shaxni	Ranchería	Acambay de Ruíz Castañeda	México
50353	Puentecillas	Pueblo	Acambay de Ruíz Castañeda	México
50353	Cañada del Gallo	Pueblo	Acambay de Ruíz Castañeda	México
50353	Rincón de Juando	Ranchería	Acambay de Ruíz Castañeda	México
50353	Loma de Enmedio	Ranchería	Acambay de Ruíz Castañeda	México
50354	La Teresa (Santa Teresa)	Pueblo	Acambay de Ruíz Castañeda	México
50354	Conejeras	Pueblo	Acambay de Ruíz Castañeda	México
50354	Muyteje	Pueblo	Acambay de Ruíz Castañeda	México
50355	La Loma (Santa María la Loma)	Colonia	Acambay de Ruíz Castañeda	México
50355	El Capulín (Barrio el Capulín la Loma)	Barrio	Acambay de Ruíz Castañeda	México
50355	San Agustín la Loma	Ranchería	Acambay de Ruíz Castañeda	México
50356	Las Mangas	Pueblo	Acambay de Ruíz Castañeda	México
50356	Los Toriles	Pueblo	Acambay de Ruíz Castañeda	México
50356	Gando	Pueblo	Acambay de Ruíz Castañeda	México
50357	La Peñita	Barrio	Acambay de Ruíz Castañeda	México
50357	Juando	Pueblo	Acambay de Ruíz Castañeda	México
50357	Los Charcos	Pueblo	Acambay de Ruíz Castañeda	México
50357	San Francisco Shaxni	Pueblo	Acambay de Ruíz Castañeda	México
50357	Agostadero (San José Agostadero)	Pueblo	Acambay de Ruíz Castañeda	México
50357	San Francisco Shaxni	Ejido	Acambay de Ruíz Castañeda	México
50357	Loma del Fresno	Ranchería	Acambay de Ruíz Castañeda	México
50360	Aculco de Espinoza	Pueblo	Aculco	México
50370	Santa Ana Matlavat Primera Manzana	Colonia	Aculco	México
50370	Santa Ana Matlavat Segunda Sección	Colonia	Aculco	México
50370	Gunyo Oriente	Pueblo	Aculco	México
50370	Santa Ana Matlavat Centro	Pueblo	Aculco	México
50370	Jurica	Pueblo	Aculco	México
50370	Encinillas	Ejido	Aculco	México
50370	Santa María Nativitas Segundo Cuartel	Ranchería	Aculco	México
50370	La Esperanza	Ejido	Aculco	México
50370	San Francisquito	Ejido	Aculco	México
50370	Taxtho	Ejido	Aculco	México
50373	Arroyo Zarco	Pueblo	Aculco	México
50373	San Antonio Arroyo Zarco	Ranchería	Aculco	México
50373	Las Lajas	Ranchería	Aculco	México
50373	Arroyo Zarco	Ejido	Aculco	México
50374	El Azafrán Segunda Manzana	Ranchería	Aculco	México
50374	San Martín	Ejido	Aculco	México
50374	El Azafrán Centro	Pueblo	Aculco	México
50374	El Azafrán Tercera Manzana	Pueblo	Aculco	México
50375	Fondo	Pueblo	Aculco	México
50375	El Bonxhi	Pueblo	Aculco	México
50375	Barrancas	Ejido	Aculco	México
50375	El Colorado	Ranchería	Aculco	México
50375	Los Gavilanes	Pueblo	Aculco	México
50376	La Soledad	Barrio	Aculco	México
50376	Santa María Nativitas	Pueblo	Aculco	México
50376	Santa María Nativitas	Ejido	Aculco	México
50376	Las Minas	Ejido	Aculco	México
50376	Decandeje	Ranchería	Aculco	México
50376	Rancho Chapala	Ejido	Aculco	México
50376	Decandeje (Chapala Ejido Decandeje)	Ejido	Aculco	México
50380	Gunyo Centro	Colonia	Aculco	México
50380	San Jerónimo	Barrio	Aculco	México
50380	La Soledad	Ejido	Aculco	México
50380	Gunyo Poniente	Ranchería	Aculco	México
50383	El Zethe el Llano	Ranchería	Aculco	México
50383	Santiago Oxtoc Toxhié	Pueblo	Aculco	México
50383	El Zethe (Jazmín)	Pueblo	Aculco	México
50383	Santa Ana Oxtoc Toxhié	Ranchería	Aculco	México
50383	Totolopan (Ejido de Totolopan)	Barrio	Aculco	México
50383	San Antonio el Zethe	Ranchería	Aculco	México
50384	Ñado Buenavista	Pueblo	Aculco	México
50384	Los Ailes	Ranchería	Aculco	México
50385	San Jerónimo	Ejido	Aculco	México
50385	El Tixhiñu	Ranchería	Aculco	México
50385	San Joaquín Coscomatepec	Ejido	Aculco	México
50385	Bimbo	Ejido	Aculco	México
50386	San Joaquín Coscomatepec	Pueblo	Aculco	México
50386	San Antonio	Pueblo	Aculco	México
50393	Higuerillas B	Ranchería	Aculco	México
50393	Bañe	Pueblo	Aculco	México
50393	Bañe Primera Manzana	Ejido	Aculco	México
50393	Higuerillas C	Ranchería	Aculco	México
50393	Huizachal	Ranchería	Aculco	México
50394	La Presita Segundo Cuartel	Ranchería	Aculco	México
50394	Loma Alta Cabresteros	Ranchería	Aculco	México
50394	La Estancia	Ranchería	Aculco	México
50395	La Concepción	Ejido	Aculco	México
50396	La Concepción	Pueblo	Aculco	México
50396	San Lucas Totolmaloya	Pueblo	Aculco	México
50396	El Mogote	Ranchería	Aculco	México
50397	San Pedro Denxhi Centro	Pueblo	Aculco	México
50397	San Pedro Denxhi 2do Cuartel	Ejido	Aculco	México
50397	Presa del Tepozán	Pueblo	Aculco	México
50397	La Pera	Ejido	Aculco	México
50397	La Cofradía Grande	Ranchería	Aculco	México
50397	El Rincón	Ejido	Aculco	México
50400	Temascalcingo de José María Velasco	Pueblo	Temascalcingo	México
50400	Del Calvario	Barrio	Temascalcingo	México
50410	La Magdalena	Pueblo	Temascalcingo	México
50410	Maro	Barrio	Temascalcingo	México
50410	Puruahua	Barrio	Temascalcingo	México
50410	La Magdalena Cruz Blanca	Barrio	Temascalcingo	México
50410	Bonsho	Barrio	Temascalcingo	México
50410	Del Socorro	Barrio	Temascalcingo	México
50413	La Magdalena Bosha	Barrio	Temascalcingo	México
50413	Ahuacatitlán Cuarto y Quinto Cuartel	Ranchería	Temascalcingo	México
50413	Ahuacatitlán Centro	Pueblo	Temascalcingo	México
50414	San Mateo el Viejo	Pueblo	Temascalcingo	México
50414	San Pedro el Alto	Pueblo	Temascalcingo	México
50414	Santa Lucía (Ejido de San Mateo el Viejo)	Ranchería	Temascalcingo	México
50414	La Loma de San Mateo	Ranchería	Temascalcingo	México
50414	Barrio de Shelle	Ranchería	Temascalcingo	México
50415	Andaro	Barrio	Temascalcingo	México
50415	La Corona	Colonia	Temascalcingo	México
50415	Puente	Barrio	Temascalcingo	México
50420	Boshesdá	Pueblo	Temascalcingo	México
50420	Santiago Coachochitlán	Pueblo	Temascalcingo	México
50420	Boqui	Barrio	Temascalcingo	México
50420	Santiago Coachochitlán Barrio del Rincón	Colonia	Temascalcingo	México
50420	Mesa de Bombaro	Barrio	Temascalcingo	México
50420	Bombaro	Barrio	Temascalcingo	México
50420	Bachini	Barrio	Temascalcingo	México
50423	Pastores Primer Barrio	Ranchería	Temascalcingo	México
50423	San Pedro Potla Centro	Pueblo	Temascalcingo	México
50423	San Pedro Potla Segundo Barrio	Ranchería	Temascalcingo	México
50423	San Pedro Potla Primer Barrio Ejido	Ranchería	Temascalcingo	México
50423	Los Pastores (Pastores Segundo Barrio)	Ranchería	Temascalcingo	México
50423	San Pedro Potla Tercer Barrio	Ranchería	Temascalcingo	México
50423	San Pedro de la Loma	Ranchería	Temascalcingo	México
50424	San Francisco Tepeolulco Colonia Lázaro Cárdenas	Colonia	Temascalcingo	México
50424	San Francisco Tepeolulco	Pueblo	Temascalcingo	México
50424	Santa Ana Yenshu Centro	Pueblo	Temascalcingo	México
50424	Santa Ana Yenshu La Mesa	Ranchería	Temascalcingo	México
50424	Santa Ana Yenshu Ejido	Ranchería	Temascalcingo	México
50424	San Francisco Tepeolulco Tercer Barrio la Mesa	Barrio	Temascalcingo	México
50424	San Francisco Tepeolulco Primer Barrio	Barrio	Temascalcingo	México
50424	San Francisco Tepeolulco Segundo Barrio	Barrio	Temascalcingo	México
50425	San Juanico el Alto (San Juanico)	Pueblo	Temascalcingo	México
50425	San Juanico Centro	Ranchería	Temascalcingo	México
50430	Juanacatlán	Pueblo	Temascalcingo	México
50433	La Huerta	Pueblo	Temascalcingo	México
50433	San Francisco Solís	Pueblo	Temascalcingo	México
50433	San Vicente Solís	Pueblo	Temascalcingo	México
50433	Cuadrilla	Barrio	Temascalcingo	México
50434	Santa María Canchesda	Pueblo	Temascalcingo	México
50434	Mesa de Santiago (La Mesa)	Pueblo	Temascalcingo	México
50434	Mesa de Bañi	Pueblo	Temascalcingo	México
50434	La Estanzuela	Pueblo	Temascalcingo	México
50434	Mesa de los Garnica	Pueblo	Temascalcingo	México
50434	Barrio las Peñas	Pueblo	Temascalcingo	México
50434	Los Chamacueros	Ranchería	Temascalcingo	México
50435	Estación Solís (Estación Alberto Garduño)	Pueblo	Temascalcingo	México
50440	Pueblo Nuevo Solís (La Estancia)	Pueblo	Temascalcingo	México
50443	San Miguel Solís	Pueblo	Temascalcingo	México
50443	Santa María Solís	Pueblo	Temascalcingo	México
50443	San José Solís	Ranchería	Temascalcingo	México
50443	Ex-hacienda de Solís	Pueblo	Temascalcingo	México
50443	Los Pinos	Ranchería	Temascalcingo	México
50444	San Nicolás Solís	Pueblo	Temascalcingo	México
50444	Santa Rosa Solís	Pueblo	Temascalcingo	México
50444	Cerritos de Cárdenas	Ranchería	Temascalcingo	México
50444	Calderas	Ranchería	Temascalcingo	México
50444	Mogote de la Campana	Ranchería	Temascalcingo	México
50445	El Rodeo	Ranchería	Temascalcingo	México
50445	La Mesa del Venado	Pueblo	Temascalcingo	México
50445	Pozo de las Palomas	Ranchería	Temascalcingo	México
50446	San Antonio Solís	Pueblo	Temascalcingo	México
50446	San José los Reyes	Pueblo	Temascalcingo	México
50446	El Garay	Pueblo	Temascalcingo	México
50447	San José Ixtapa	Pueblo	Temascalcingo	México
50447	El Tejocote (La Loma)	Ranchería	Temascalcingo	México
50447	Guadalupe Ixtapa	Pueblo	Temascalcingo	México
50447	Ixtapa	Pueblo	Temascalcingo	México
50450	Atlacomulco de Fabela Centro	Colonia	Atlacomulco	México
50453	Felipe Ureña	Colonia	Atlacomulco	México
50453	Morelos	Colonia	Atlacomulco	México
50453	Bongoni	Colonia	Atlacomulco	México
50453	2 de Abril	Colonia	Atlacomulco	México
50453	El Arbolito	Colonia	Atlacomulco	México
50454	2da Sección Electricistas	Fraccionamiento	Atlacomulco	México
50454	El Calvario	Colonia	Atlacomulco	México
50454	Isidro Fabela	Colonia	Atlacomulco	México
50454	San Martín	Colonia	Atlacomulco	México
50454	Granjas	Colonia	Atlacomulco	México
50455	Quinta Mercedes	Fraccionamiento	Atlacomulco	México
50455	Cuatro Milpas	Colonia	Atlacomulco	México
50455	La Mora	Colonia	Atlacomulco	México
50455	Atlavilla	Fraccionamiento	Atlacomulco	México
50455	Las Mercedes	Colonia	Atlacomulco	México
50455	Las Fuentes	Colonia	Atlacomulco	México
50455	La Ascensión	Colonia	Atlacomulco	México
50455	Valle de los Sauces	Fraccionamiento	Atlacomulco	México
50455	ISSEMYM	Fraccionamiento	Atlacomulco	México
50456	Río Lerma (Tic Ti)	Colonia	Atlacomulco	México
50456	Miguel Portillo Saldaña	Fraccionamiento	Atlacomulco	México
50456	José Vasconcelos	Fraccionamiento	Atlacomulco	México
50457	La Garita	Colonia	Atlacomulco	México
50457	El Jazmín	Colonia	Atlacomulco	México
50457	Atenas	Colonia	Atlacomulco	México
50457	La Cruz	Colonia	Atlacomulco	México
50457	Ampliación la Garita	Colonia	Atlacomulco	México
50458	Atlacomulco	Parque industrial	Atlacomulco	México
50460	San Bartolo Lanzados	Pueblo	Atlacomulco	México
50463	Cerrito Colorado	Pueblo	Atlacomulco	México
50463	Tierras Blancas	Pueblo	Atlacomulco	México
50464	Diximoxi	Pueblo	Atlacomulco	México
50464	San Bartolo el Arenal	Pueblo	Atlacomulco	México
50464	Mayé el Fresno	Ranchería	Atlacomulco	México
50465	La Mesa de Chosto	Pueblo	Atlacomulco	México
50465	Santo Domingo Shomejé	Pueblo	Atlacomulco	México
50466	Chosto de los Jarros	Pueblo	Atlacomulco	México
50466	Lagunita Cantashí	Ranchería	Atlacomulco	México
50470	San Pablo Atotonilco	Pueblo	Atlacomulco	México
50473	El Salto	Pueblo	Atlacomulco	México
50473	Monte María (El Nogal)	Ranchería	Atlacomulco	México
50474	El Rincón de la Candelaria	Pueblo	Atlacomulco	México
50474	Tecoac (Santa María Nativitas)	Pueblo	Atlacomulco	México
50475	San José del Tunal	Pueblo	Atlacomulco	México
50475	San Ignacio de Loyola	Pueblo	Atlacomulco	México
50475	San Luis Boro	Pueblo	Atlacomulco	México
50476	Dolores la Joya	Pueblo	Atlacomulco	México
50476	El Magueyal	Ranchería	Atlacomulco	México
50480	San Francisco Chalchihuapan	Pueblo	Atlacomulco	México
50483	San Felipe Pueblo Nuevo	Pueblo	Atlacomulco	México
50483	Santiago Acutzilapan	Pueblo	Atlacomulco	México
50484	San Antonio Enchisi	Pueblo	Atlacomulco	México
50485	San Pedro del Rosal	Pueblo	Atlacomulco	México
50486	Nueva España (Ejido San Lorenzo Tlacotepec)	Colonia	Atlacomulco	México
50486	San Lorenzo Tlacotepec	Pueblo	Atlacomulco	México
50486	Santa Cruz Bombatevi	Pueblo	Atlacomulco	México
50486	Cuendó	Pueblo	Atlacomulco	México
50486	El Espejel	Ranchería	Atlacomulco	México
50487	La Palma	Pueblo	Atlacomulco	México
50487	Las Tarrias	Ranchería	Atlacomulco	México
50487	Bombatevi (Ejido Santa Cruz Bombatevi)	Ejido	Atlacomulco	México
50490	San Juan de los Jarros	Pueblo	Atlacomulco	México
50493	Bobashí de Guadalupe	Pueblo	Atlacomulco	México
50494	Manto del Río	Ejido	Atlacomulco	México
50495	Manto del Río	Pueblo	Atlacomulco	México
50496	San José Toxi	Pueblo	Atlacomulco	México
50497	San Jerónimo de los Jarros	Pueblo	Atlacomulco	México
50500	San Andrés Timilpan	Pueblo	Timilpan	México
50503	N Zititi	Barrio	Timilpan	México
50503	N Teje	Barrio	Timilpan	México
50503	M Bodo	Barrio	Timilpan	México
50504	N Gunzda	Barrio	Timilpan	México
50504	Aguacate	Barrio	Timilpan	México
50505	N Zola	Barrio	Timilpan	México
50505	Campo Santo	Barrio	Timilpan	México
50505	Segunda Manzana	Barrio	Timilpan	México
50507	Primera Manzana de Barrio Iturbide	Barrio	Timilpan	México
50507	Segunda Manzana de Barrio Iturbide	Barrio	Timilpan	México
50507	De Ocampo	Barrio	Timilpan	México
50508	Primera Manzana de San Nicolás(Puerto San Nicolás)	Pueblo	Timilpan	México
50508	Segunda Manzana de San Nicolás	Colonia	Timilpan	México
50509	Primera Manzana de Zaragoza	Pueblo	Timilpan	México
50509	Segunda Manzana de Zaragoza	Colonia	Timilpan	México
50509	Tercera Manzana de Zaragoza	Barrio	Timilpan	México
50510	Huapango	Pueblo	Timilpan	México
50520	Primera Manzana Barrio de Hidalgo	Barrio	Timilpan	México
50520	Iturbide (La Campesina)	Barrio	Timilpan	México
50523	Lomas de Emiliano Zapata (Las Lomas)	Colonia	Timilpan	México
50524	Segunda Manzana de Barrio Morelos	Barrio	Timilpan	México
50525	Tercera Manzana de Barrio Morelos	Barrio	Timilpan	México
50525	Primera Manzana de Barrio Morelos	Barrio	Timilpan	México
50525	Agua Bendita	Ranchería	Timilpan	México
50525	Segunda Manzana Barrio de Hidalgo	Ranchería	Timilpan	México
50525	Tercera Manzana de Barrio Iturbide Ixcaja	Barrio	Timilpan	México
50526	Segunda Manzana del Pueblo de Rincón de Bucio	Barrio	Timilpan	México
50526	Primera Manzana del Pueblo de Rincón de Bucio	Pueblo	Timilpan	México
50526	Primera Manzana de Cañada de Lobos	Pueblo	Timilpan	México
50526	Segunda Manzana de Cañada de Lobos	Barrio	Timilpan	México
50527	Tercera Manzana del Pueblo de Rincón de Bucio	Barrio	Timilpan	México
50528	El Palmito (San José el Palmito)	Pueblo	Timilpan	México
50540	Quinto Barrio Santiaguito Maxda (Enzdá)	Barrio	Timilpan	México
50540	San Antonio Yondejé	Pueblo	Timilpan	México
50540	Santiaguito Maxda	Pueblo	Timilpan	México
50550	San Bartolo Morelos	Pueblo	Morelos	México
50553	Primero (La Calavera)	Barrio	Morelos	México
50553	La Cofradía	Ranchería	Morelos	México
50554	Barrio Cuarto (La Loma)	Barrio	Morelos	México
50559	Xhinte de Lagos	Pueblo	Morelos	México
50560	Los Corralitos	Ranchería	Morelos	México
50560	Santa Clara de Juárez	Pueblo	Morelos	México
50563	El Cerrito	Ranchería	Morelos	México
50563	Los Negritos	Ranchería	Morelos	México
50563	La Cruz (San Simón la Cruz)	Ranchería	Morelos	México
50564	San Sebastián Buenos Aires (San Sebastián)	Pueblo	Morelos	México
50565	San José el Quelite	Ranchería	Morelos	México
50565	La Lagunilla	Ranchería	Morelos	México
50565	El Reino	Ranchería	Morelos	México
50565	Las Cenizas (Ejido de Santa Clara)	Ranchería	Morelos	México
50566	La Palma	Ranchería	Morelos	México
50566	La Malinche	Ranchería	Morelos	México
50566	Santa Cruz	Ejido	Morelos	México
50566	San Antonio Trojes (Rancho Trojes)	Rancho	Morelos	México
50566	Barrio Cuarto (La Trampa)	Barrio	Morelos	México
50567	San José la Epifania	Ranchería	Morelos	México
50567	Las Tinajas	Ranchería	Morelos	México
50570	Tlalpujahuilla	Pueblo	Morelos	México
50573	De Xicani	Barrio	Morelos	México
50574	San Lorenzo Malacota	Pueblo	Morelos	México
50575	Loma de Buenavista	Ranchería	Morelos	México
50583	San Gregorio Macapexco Barrio Segundo	Pueblo	Morelos	México
50583	Caxboncuac	Pueblo	Morelos	México
50584	San Gregorio Macapexco	Pueblo	Morelos	México
50584	San Antonio	Ranchería	Morelos	México
50584	Tercero	Barrio	Morelos	México
50590	Laguna Seca	Ranchería	Morelos	México
50590	San Marcos Tlazalpan	Pueblo	Morelos	México
50590	Benito Juárez	Colonia	Morelos	México
50596	Francisco I. Madero	Colonia	Morelos	México
50596	La Finca	Ranchería	Morelos	México
50597	La Beltrán	Ranchería	Morelos	México
50600	El Oro de Hidalgo	Pueblo	El Oro	México
50600	El Carmen	Colonia	El Oro	México
50600	San Rafael	Colonia	El Oro	México
50601	Santiago Oxtempan	Pueblo	El Oro	México
50603	Francisco I Madero	Colonia	El Oro	México
50603	Monte Alto	Colonia	El Oro	México
50604	Cuauhtémoc	Colonia	El Oro	México
50610	La Estrellita	Barrio	El Oro	México
50610	Aquiles Serdán	Colonia	El Oro	México
50610	Benito Juárez	Colonia	El Oro	México
50613	San Nicolás el Oro (Agua Escondida)	Ejido	El Oro	México
50614	San Nicolás Tultenango	Pueblo	El Oro	México
50614	Santiago Oxtempan	Ejido	El Oro	México
50615	La Nopalera	Pueblo	El Oro	México
50615	Estación Tultenango (Tultenango)	Paraje	El Oro	México
50615	El Mogote	Pueblo	El Oro	México
50616	Venta del Aire	Pueblo	El Oro	México
50616	La Soledad	Pueblo	El Oro	México
50617	San Isidro Ejido de Tapaxco	Ranchería	El Oro	México
50625	Santa Rosa de Lima	Pueblo	El Oro	México
50625	Las Peñitas	Barrio	El Oro	México
50625	Santa Rosa de Guadalupe	Pueblo	El Oro	México
50626	San Nicolás el Oro (San Nicolás)	Pueblo	El Oro	México
50627	Lázaro Cárdenas	Ranchería	El Oro	México
50627	Loma del Capulín	Ranchería	El Oro	México
50627	Presa Brockman	Pueblo	El Oro	México
50627	La Loma de la Cima	Pueblo	El Oro	México
50627	Santa Cruz el Tejocote (El Tejocote)	Pueblo	El Oro	México
50627	Cerro Llorón	Ranchería	El Oro	México
50627	El Gigante	Ranchería	El Oro	México
50627	Llanito Cuatro	Pueblo	El Oro	México
50630	Tapaxco	Pueblo	El Oro	México
50630	Yomeje	Ranchería	El Oro	México
50633	Bassoco de Hidalgo	Ranchería	El Oro	México
50633	Adolfo López Mateos	Pueblo	El Oro	México
50633	La Jordana	Pueblo	El Oro	México
50633	La Palma	Pueblo	El Oro	México
50634	Citeje	Pueblo	El Oro	México
50634	San Isidro, Pueblo Nuevo de los Ángeles	Barrio	El Oro	México
50634	Benemérito Pueblo Nuevo de los Ángeles	Barrio	El Oro	México
50634	Pueblo Nuevo de los Ángeles	Ranchería	El Oro	México
50635	Endotejiare	Pueblo	El Oro	México
50635	La Mesa	Pueblo	El Oro	México
50635	La Magdalena Morelos	Pueblo	El Oro	México
50636	Laguna Seca	Pueblo	El Oro	México
50637	La Concepción (La Concepción Segunda)	Pueblo	El Oro	México
50637	Buenavista	Pueblo	El Oro	México
50637	San Juan Bosco	Pueblo	El Oro	México
50637	Concepción Primera	Ranchería	El Oro	México
50640	Fernando Orozco y Berra	Colonia	San Felipe del Progreso	México
50640	Héroes de la Independencia	Colonia	San Felipe del Progreso	México
50640	La Venta	Colonia	San Felipe del Progreso	México
50640	Las Huertas	Fraccionamiento	San Felipe del Progreso	México
50640	Progreso	Colonia	San Felipe del Progreso	México
50640	La Cabecera Concepción	Barrio	San Felipe del Progreso	México
50640	San Felipe del Progreso Centro	Colonia	San Felipe del Progreso	México
50640	Ejidal	Colonia	San Felipe del Progreso	México
50640	José María Morelos	Colonia	San Felipe del Progreso	México
50640	Las Colonias	Colonia	San Felipe del Progreso	México
50640	La Tenería	Colonia	San Felipe del Progreso	México
50653	La Cabecera	Ejido	San Felipe del Progreso	México
50653	Tunal Nenaxi	Ejido	San Felipe del Progreso	México
50653	El Agostadero Ejido de San Juan Jalpa	Barrio	San Felipe del Progreso	México
50653	La Esperanza	Colonia	San Felipe del Progreso	México
50653	Guadalupe	Colonia	San Felipe del Progreso	México
50653	Flor de María	Ranchería	San Felipe del Progreso	México
50653	San Juan Jalpa Centro	Pueblo	San Felipe del Progreso	México
50654	San Juan Jalpa	Ejido	San Felipe del Progreso	México
50654	Plateros Palmillas	Colonia	San Felipe del Progreso	México
50655	Las Torres, San Lucas Ocotepec	Barrio	San Felipe del Progreso	México
50655	Calvario Buenavista	Pueblo	San Felipe del Progreso	México
50655	El Carmen Ocotepec	Pueblo	San Felipe del Progreso	México
50655	Palmillas	Pueblo	San Felipe del Progreso	México
50655	San Lucas Ocotepec	Pueblo	San Felipe del Progreso	México
50655	La Concepción Chico (El Centro)	Ranchería	San Felipe del Progreso	México
50655	Guadalupe, San Lucas Ocotepec	Ranchería	San Felipe del Progreso	México
50655	Vicente Guerrero	Colonia	San Felipe del Progreso	México
50656	El Tunal	Pueblo	San Felipe del Progreso	México
50656	El Obraje	Pueblo	San Felipe del Progreso	México
50660	San José del Rincón Centro	Pueblo	San José del Rincón	México
50660	San José del Rincón	Ejido	San José del Rincón	México
50663	El Capulín San Miguel del Centro	Ranchería	San José del Rincón	México
50663	Guadalupe del Pedregal el Calvario	Ranchería	San José del Rincón	México
50663	La Puerta San Miguel del Centro	Ranchería	San José del Rincón	México
50663	Las Rosas San Miguel del Centro	Barrio	San José del Rincón	México
50663	San Francisco de la Loma Segunda Sección	Ranchería	San José del Rincón	México
50663	Guarda de Guadalupe	Pueblo	San José del Rincón	México
50663	Rosa de la Palma	Ranchería	San José del Rincón	México
50663	Santa Cruz del Rincón	Pueblo	San José del Rincón	México
50663	La Soledad el Guarda	Pueblo	San José del Rincón	México
50663	San Onofre Centro	Pueblo	San José del Rincón	México
50663	Jesús Carranza	Pueblo	San José del Rincón	México
50663	San Miguel del Centro	Pueblo	San José del Rincón	México
50663	El Porvenir	Pueblo	San José del Rincón	México
50663	San Francisco Solo	Pueblo	San José del Rincón	México
50663	Cedro de la Manzana	Pueblo	San José del Rincón	México
50663	Guadalupe del Pedregal	Pueblo	San José del Rincón	México
50663	Guadalupe del Pedregal la Palma	Pueblo	San José del Rincón	México
50663	San Francisco de la Loma	Pueblo	San José del Rincón	México
50663	Pathe Mula de los Cedros	Pueblo	San José del Rincón	México
50663	El Consuelo	Ejido	San José del Rincón	México
50663	San Juan Evangelista Fracción X	Ranchería	San José del Rincón	México
50663	La Cuadrilla San Miguel del Centro	Pueblo	San José del Rincón	México
50663	Emiliano Zapata Ampliación la Mesa	Colonia	San José del Rincón	México
50663	San Onofre	Ejido	San José del Rincón	México
50663	El Guarda Ejido	Ranchería	San José del Rincón	México
50664	Las Escobas del Agua San Jerónimo de los Dolores	Barrio	San José del Rincón	México
50664	Buenavista Casa Blanca	Pueblo	San José del Rincón	México
50664	Estación la Trinidad	Pueblo	San José del Rincón	México
50664	San Miguel Agua Bendita	Pueblo	San José del Rincón	México
50664	San Miguel Chisda	Pueblo	San José del Rincón	México
50664	El Valerio	Pueblo	San José del Rincón	México
50664	San Jerónimo de los Dolores	Pueblo	San José del Rincón	México
50664	La Soledad	Ejido	San José del Rincón	México
50664	San Isidro la Trinidad	Pueblo	San José del Rincón	México
50665	Concepción del Monte	Pueblo	San José del Rincón	México
50665	San Joaquín del Monte	Pueblo	San José del Rincón	México
50665	Yondece del Cedro	Pueblo	San José del Rincón	México
50665	Fábrica Concepción	Pueblo	San José del Rincón	México
50665	La Esperanza	Pueblo	San José del Rincón	México
50665	La Trinidad Concepción	Pueblo	San José del Rincón	México
50665	Guadalupe Buenavista	Pueblo	San José del Rincón	México
50665	Buenavista Casa Blanca	Ejido	San José del Rincón	México
50665	Guadalupe Chico	Pueblo	San José del Rincón	México
50666	San Felipe de Jesús	Pueblo	San José del Rincón	México
50666	Rosa San Antonio Concepción del Monte	Barrio	San José del Rincón	México
50666	Purungueo	Pueblo	San José del Rincón	México
50666	Canoas San Felipe de Jesús	Barrio	San José del Rincón	México
50666	Falda Loma	Pueblo	San José del Rincón	México
50667	Palo Amarillo	Pueblo	San José del Rincón	México
50667	Rosa de Palo Amarillo	Pueblo	San José del Rincón	México
50667	San Jerónimo Pilitas	Pueblo	San José del Rincón	México
50667	Pancho Maya	Pueblo	San José del Rincón	México
50667	Garatachea	Pueblo	San José del Rincón	México
50667	Cevatí	Pueblo	San José del Rincón	México
50667	Guadalupe las Cabras	Pueblo	San José del Rincón	México
50667	Las Palomas	Ranchería	San José del Rincón	México
50668	El Calvario Concepción de la Venta	Barrio	San José del Rincón	México
50668	Guarda la Lagunita el Pueblito	Ranchería	San José del Rincón	México
50668	Concepción la Venta	Pueblo	San José del Rincón	México
50668	Fábrica Pueblo Nuevo	Pueblo	San José del Rincón	México
50668	Guarda de San Antonio Buenavista	Pueblo	San José del Rincón	México
50668	Santa Cruz del Tejocote	Pueblo	San José del Rincón	México
50668	Cieneguillas	Ranchería	San José del Rincón	México
50668	Sanacoche Centro	Pueblo	San José del Rincón	México
50668	Guarda la Lagunita el Potrero	Ranchería	San José del Rincón	México
50668	Benito Juárez Santa Cruz del Tejocote	Colonia	San José del Rincón	México
50668	El Tepetate Guarda de San Antonio Buenavista	Pueblo	San José del Rincón	México
50668	Fábrica Pueblo Nuevo Monte Alto	Pueblo	San José del Rincón	México
50668	El Salto la Venta	Pueblo	San José del Rincón	México
50668	Guarda San Antonio Plaza de Gallos	Pueblo	San José del Rincón	México
50668	San Bartolo Guarda la Lagunita	Pueblo	San José del Rincón	México
50668	Sanacoche	Ejido	San José del Rincón	México
50668	Sabaneta Quintana	Pueblo	San José del Rincón	México
50668	Canoas Guarda la Lagunita	Barrio	San José del Rincón	México
50668	La Mesa la Lagunita	Barrio	San José del Rincón	México
50668	Las Rosas	Ranchería	San José del Rincón	México
50668	Las Tinajas	Ranchería	San José del Rincón	México
50668	Loma Bonita Guarda la Lagunita	Barrio	San José del Rincón	México
50670	El Ocho el Pintal	Barrio	San José del Rincón	México
50670	Providencia Ejido el Depósito	Pueblo	San José del Rincón	México
50670	Santa Juanita el Depósito	Barrio	San José del Rincón	México
50670	Los Lobos Segunda Sección	Pueblo	San José del Rincón	México
50670	La Palma el Depósito	Barrio	San José del Rincón	México
50670	El Llano San Juan Palo Seco	Barrio	San José del Rincón	México
50670	San Antonio el Depósito	Barrio	San José del Rincón	México
50670	El Pintal el Depósito	Barrio	San José del Rincón	México
50670	La Curva el Depósito	Pueblo	San José del Rincón	México
50670	El Llano de las Rosas	Barrio	San José del Rincón	México
50673	El Llano Grande Jaltepec	Barrio	San José del Rincón	México
50673	El Toril Ejido la Soledad	Barrio	San José del Rincón	México
50673	Jaltepec Centro	Pueblo	San José del Rincón	México
50673	Loma del Rancho	Pueblo	San José del Rincón	México
50673	Santiago Gigante Jaltepec	Pueblo	San José del Rincón	México
50673	Los Pintados	Ejido	San José del Rincón	México
50673	El Rancho Jaltepec	Barrio	San José del Rincón	México
50674	Los Pintados	Ranchería	San José del Rincón	México
50674	San Antonio Pueblo Nuevo	Pueblo	San José del Rincón	México
50674	Santa Rita Pueblo Nuevo	Ranchería	San José del Rincón	México
50674	El Lindero Pueblo Nuevo	Barrio	San José del Rincón	México
50674	El Pintado Pueblo Nuevo	Barrio	San José del Rincón	México
50674	Santa Ana Pueblo Nuevo	Barrio	San José del Rincón	México
50674	El 44 Pueblo Nuevo	Barrio	San José del Rincón	México
50674	El Cerrito Pueblo Nuevo	Barrio	San José del Rincón	México
50674	Agua Zarca Pueblo Nuevo	Pueblo	San José del Rincón	México
50674	Santa Cruz Pueblo Nuevo	Barrio	San José del Rincón	México
50674	De Dolores	Ranchería	San José del Rincón	México
50675	Loma Grande San Antonio Pueblo Nuevo	Barrio	San José del Rincón	México
50675	San Diego Pueblo Nuevo	Barrio	San José del Rincón	México
50675	El Quelite Pueblo Nuevo	Barrio	San José del Rincón	México
50676	La Magdalena San Juan Palo Seco	Barrio	San José del Rincón	México
50676	Puentecillas el Deposito	Barrio	San José del Rincón	México
50676	Fundereje el Depósito	Barrio	San José del Rincón	México
50676	El Cable Ejido el Depósito	Pueblo	San José del Rincón	México
50676	Remege el Depósito	Ejido	San José del Rincón	México
50676	El Fresno el Depósito	Barrio	San José del Rincón	México
50676	San Juan Palo Seco Centro	Pueblo	San José del Rincón	México
50676	Los Cedros San Juan Palo Seco	Barrio	San José del Rincón	México
50676	Loma del Cedro el Depósito	Ranchería	San José del Rincón	México
50677	La Mesa	Pueblo	San José del Rincón	México
50677	San Antonio Palo Seco Barrio la Mesa	Pueblo	San José del Rincón	México
50677	La Trampa Grande	Ranchería	San José del Rincón	México
50677	Cañada del Sauco	Pueblo	San José del Rincón	México
50677	Chivatí la Mesa	Barrio	San José del Rincón	México
50677	El Huizache	Pueblo	San José del Rincón	México
50677	Yondece el Grande	Pueblo	San José del Rincón	México
50677	El Lijadero la Mesa	Barrio	San José del Rincón	México
50678	Minita del Cedro Uno	Pueblo	San José del Rincón	México
50678	Las Rosas	Pueblo	San José del Rincón	México
50678	Los Lobos Centro	Pueblo	San José del Rincón	México
50678	San Joaquín Lamillas Centro	Pueblo	San José del Rincón	México
50678	Minita del Cedro Dos	Pueblo	San José del Rincón	México
50678	La Chispa	Pueblo	San José del Rincón	México
50678	El Puente Barrio de las Rosas	Pueblo	San José del Rincón	México
50678	La Trampa Chica	Pueblo	San José del Rincón	México
50678	San Ramón las Rosas	Barrio	San José del Rincón	México
50678	San Joaquín Lamillas	Barrio	San José del Rincón	México
50680	Emilio Portes Gil	Pueblo	San Felipe del Progreso	México
50683	Tepetitlán Emilio Portes Gil	Barrio	San Felipe del Progreso	México
50683	Tungareo, Emilio Portes Gil	Barrio	San Felipe del Progreso	México
50683	Palmillas	Ejido	San Felipe del Progreso	México
50684	San Pedro el Alto	Pueblo	San Felipe del Progreso	México
50684	San Pedro el Chico	Ejido	San Felipe del Progreso	México
50684	San José, Ejido de San Pedro el Alto	Barrio	San Felipe del Progreso	México
50684	Las Ánimas, Ejido de San Pedro el Alto	Barrio	San Felipe del Progreso	México
50684	Tierra Blanca, Ejido de San Pedro el Alto	Barrio	San Felipe del Progreso	México
50685	Fresno Nichi	Pueblo	San Felipe del Progreso	México
50685	San Jerónimo Mavatí	Pueblo	San Felipe del Progreso	México
50685	San Nicolás Mavatí	Pueblo	San Felipe del Progreso	México
50685	Charcos Azules San Jerónimo Mavatí	Barrio	San Felipe del Progreso	México
50685	Las Presas, Ejido de San Jerónimo Mavatí	Barrio	San Felipe del Progreso	México
50685	La Virgen	Ranchería	San Felipe del Progreso	México
50685	Cerro de la Luna del Fresno Nichi	Barrio	San Felipe del Progreso	México
50686	San Juan Coté	Ejido	San Felipe del Progreso	México
50686	San Juan Coté Centro	Pueblo	San Felipe del Progreso	México
50686	Guadalupe Coté	Pueblo	San Felipe del Progreso	México
50686	San Antonio de las Huertas	Pueblo	San Felipe del Progreso	México
50686	San Miguel la Labor	Pueblo	San Felipe del Progreso	México
50686	Santa Ana Nichi	Pueblo	San Felipe del Progreso	México
50686	Santa Ana Nichi	Ejido	San Felipe del Progreso	México
50686	Tres Estrellas	Pueblo	San Felipe del Progreso	México
50686	La Virgen San Pedro el Alto	Pueblo	San Felipe del Progreso	México
50686	Agua Zarca Nichi	Ranchería	San Felipe del Progreso	México
50686	Las Palomas, Santa Ana Nichi	Barrio	San Felipe del Progreso	México
50686	El Llano Santa Ana Nichi Ejido	Barrio	San Felipe del Progreso	México
50687	Dolores Hidalgo	Pueblo	San Felipe del Progreso	México
50687	San Agustín Mextepec	Pueblo	San Felipe del Progreso	México
50687	San Antonio Mextepec	Pueblo	San Felipe del Progreso	México
50687	San Jerónimo Bonchete	Pueblo	San Felipe del Progreso	México
50687	Santa Cruz Mextepec	Pueblo	San Felipe del Progreso	México
50687	La Constitución, San Antonio Mextepec	Colonia	San Felipe del Progreso	México
50693	Purísima Concepción Mayorazgo (Mayorazgo)	Pueblo	San Felipe del Progreso	México
50693	Estutempan	Ranchería	San Felipe del Progreso	México
50693	Santa Cruz de San Pablo Tlalchichilpa	Barrio	San Felipe del Progreso	México
50694	Dios Padre	Pueblo	San Felipe del Progreso	México
50694	Calvario del Carmen	Pueblo	San Felipe del Progreso	México
50694	San Nicolás Guadalupe	Pueblo	San Felipe del Progreso	México
50694	La Virgen	Ejido	San Felipe del Progreso	México
50694	Zaragoza, Ejido de Fresno Nichi	Ranchería	San Felipe del Progreso	México
50694	Ampliación de San Antonio la Ciénega	Ranchería	San Felipe del Progreso	México
50694	Santa Cruz, San Pedro el Alto	Barrio	San Felipe del Progreso	México
50694	Mesa de la Agüita	Ranchería	San Felipe del Progreso	México
50694	San Francisco San Nicolás Guadalupe	Barrio	San Felipe del Progreso	México
50695	La Ciénega	Ranchería	San Felipe del Progreso	México
50695	San Antonio la Ciénega (La Rosa)	Pueblo	San Felipe del Progreso	México
50695	La Soledad	Ranchería	San Felipe del Progreso	México
50695	Boreje de San Antonio la Ciénega	Barrio	San Felipe del Progreso	México
50695	Encinillas de San Antonio la Ciénega	Ranchería	San Felipe del Progreso	México
50695	El Salto San Antonio la Ciénega	Barrio	San Felipe del Progreso	México
50695	Chichilpa	Ejido	San Felipe del Progreso	México
50695	La Cañada San Antonio la Ciénega	Barrio	San Felipe del Progreso	México
50695	La Manzana	Ranchería	San Felipe del Progreso	México
50696	La Concepción Chico	Ejido	San Felipe del Progreso	México
50696	Ejido de Tlalchichilpa	Ranchería	San Felipe del Progreso	México
50696	Dotegiare	Pueblo	San Felipe del Progreso	México
50696	Chichilpa	Pueblo	San Felipe del Progreso	México
50696	Rioyos Buenavista	Pueblo	San Felipe del Progreso	México
50696	San Juan Evangelista	Ejido	San Felipe del Progreso	México
50696	La Carrera	Ranchería	San Felipe del Progreso	México
50696	San Juan Rioyos	Pueblo	San Felipe del Progreso	México
50696	La Mesa, Rioyos Buenavista	Barrio	San Felipe del Progreso	México
50697	Choteje	Pueblo	San Felipe del Progreso	México
50697	San Pablo Tlalchichilpa	Pueblo	San Felipe del Progreso	México
50697	Tlalchichilpa	Ranchería	San Felipe del Progreso	México
50697	Rincón de los Pirules	Pueblo	San Felipe del Progreso	México
50697	Santa Rita de la Cuesta	Ejido	San Felipe del Progreso	México
50697	La Era San Pablo Tlalchichilpa	Barrio	San Felipe del Progreso	México
50697	San Francisco Ejido de San Pablo Tlalchichilpa	Barrio	San Felipe del Progreso	México
50697	Rosa del Calvario	Ranchería	San Felipe del Progreso	México
50700	Jocotitlán	Pueblo	Jocotitlán	México
50700	San Juan	Barrio	Jocotitlán	México
50700	San Agustín	Barrio	Jocotitlán	México
50700	Santo Domingo	Barrio	Jocotitlán	México
50710	Benito Juárez	Colonia	Jocotitlán	México
50710	El Satélite	Colonia	Jocotitlán	México
50710	Emiliano Zapata	Colonia	Jocotitlán	México
50710	Concepción Caro	Pueblo	Jocotitlán	México
50710	San Miguel Tenochtitlán	Pueblo	Jocotitlán	México
50710	La Presa	Colonia	Jocotitlán	México
50710	San Andrés	Colonia	Jocotitlán	México
50713	Santa María Citendeje	Pueblo	Jocotitlán	México
50714	Los Martínez	Rancho	Jocotitlán	México
50715	San José	Barrio	Jocotitlán	México
50715	San Juan Coajomulco	Pueblo	Jocotitlán	México
50715	Santa Cruz Chico	Barrio	Jocotitlán	México
50716	San Juan Coajomulco	Colonia	Jocotitlán	México
50717	Santiago Casandeje	Pueblo	Jocotitlán	México
50717	San Marcos Coajomulco	Pueblo	Jocotitlán	México
50717	Ex-Hacienda Alcibar	Hacienda	Jocotitlán	México
50720	San José Boqui	Pueblo	Jocotitlán	México
50724	Santiago Yeche	Pueblo	Jocotitlán	México
50724	Las Fuentes Yeche	Ranchería	Jocotitlán	México
50724	Boyecha	Barrio	Jocotitlán	México
50724	La Luz	Barrio	Jocotitlán	México
50724	Tula	Barrio	Jocotitlán	México
50724	El Lindero	Barrio	Jocotitlán	México
50724	Huemetla	Pueblo	Jocotitlán	México
50725	San Mateo Ixtlahuaca	Ranchería	Jocotitlán	México
50725	San Jacinto	Barrio	Jocotitlán	México
50725	La Soledad	Barrio	Jocotitlán	México
50726	El Huerto	Ranchería	Jocotitlán	México
50726	La Venta Yeche	Ranchería	Jocotitlán	México
50726	Meje	Pueblo	Jocotitlán	México
50726	San Francisco Cheje	Pueblo	Jocotitlán	México
50726	15 de Agosto	Barrio	Jocotitlán	México
50726	Cheje	Ejido	Jocotitlán	México
50726	Tiacaque	Pueblo	Jocotitlán	México
50726	San Dimas	Ranchería	Jocotitlán	México
50726	Providencia	Ejido	Jocotitlán	México
50727	La Providencia	Pueblo	Jocotitlán	México
50727	Los Reyes	Pueblo	Jocotitlán	México
50733	Enguindo San Isidro	Barrio	Jocotitlán	México
50733	El Progreso	Barrio	Jocotitlán	México
50733	La Tenería	Barrio	Jocotitlán	México
50733	Los Javieres	Barrio	Jocotitlán	México
50734	San José de Villeje	Ranchería	Jocotitlán	México
50734	San Joaquín	Barrio	Jocotitlán	México
50734	Las Ánimas Villeje	Pueblo	Jocotitlán	México
50734	Legorreta	Ranchería	Jocotitlán	México
50734	Santa Clara	Barrio	Jocotitlán	México
50734	Pasteje	Zona industrial	Jocotitlán	México
50734	Guadalupe	Barrio	Jocotitlán	México
50734	Ex-Hacienda San José Villeje	Ranchería	Jocotitlán	México
50736	Mavoro	Pueblo	Jocotitlán	México
50736	Siffari	Pueblo	Jocotitlán	México
50736	Zacualpan	Pueblo	Jocotitlán	México
50736	La Era	Barrio	Jocotitlán	México
50736	Ojo de Agua	Pueblo	Jocotitlán	México
50736	La Manga	Barrio	Jocotitlán	México
50736	Santa Mónica	Ranchería	Jocotitlán	México
50737	Chivoro	Barrio	Jocotitlán	México
50737	Santa María Endare	Pueblo	Jocotitlán	México
50737	La Venta	Barrio	Jocotitlán	México
50737	La Loma de Endare	Barrio	Jocotitlán	México
50737	El Ruso	Barrio	Jocotitlán	México
50737	Buenavista	Barrio	Jocotitlán	México
50740	Ixtlahuaca de Rayón Centro	Pueblo	Ixtlahuaca	México
50740	Sedue	Colonia	Ixtlahuaca	México
50740	San Francisco de Asís	Colonia	Ixtlahuaca	México
50740	PROFEDIX I	Colonia	Ixtlahuaca	México
50740	PROFEDIX II	Colonia	Ixtlahuaca	México
50740	La Concepción de los Baños	Ejido	Ixtlahuaca	México
50740	San Pedro	Barrio	Ixtlahuaca	México
50740	Magisterial	Fraccionamiento	Ixtlahuaca	México
50743	Los Reyes	Fraccionamiento	Ixtlahuaca	México
50744	Químico José Donaciano y Mier	Fraccionamiento	Ixtlahuaca	México
50744	ISSEMYM	Fraccionamiento	Ixtlahuaca	México
50750	Jalpa de los Baños	Pueblo	Ixtlahuaca	México
50750	San Antonio de los Remedios	Pueblo	Ixtlahuaca	México
50750	Jalpa de Dolores	Ranchería	Ixtlahuaca	México
50750	20 de Noviembre	Ejido	Ixtlahuaca	México
50753	Guadalupe del Río	Colonia	Ixtlahuaca	México
50753	San Francisco del Río	Ranchería	Ixtlahuaca	México
50753	Cuauhtémoc	Colonia	Ixtlahuaca	México
50754	San Cristóbal de los Baños	Pueblo	Ixtlahuaca	México
50754	La Concepción de los Baños	Pueblo	Ixtlahuaca	México
50754	Atotonilco	Ejido	Ixtlahuaca	México
50754	La Concepción de los Baños Primero	Ejido	Ixtlahuaca	México
50755	San Pedro de los Baños	Pueblo	Ixtlahuaca	México
50755	Casa Blanca	Barrio	Ixtlahuaca	México
50760	San Ignacio del Pedregal	Pueblo	Ixtlahuaca	México
50760	Santa Ana la Ladera	Pueblo	Ixtlahuaca	México
50760	San Isidro Boxipe	Pueblo	Ixtlahuaca	México
50760	Santa Ana Ixtlahuaca (Santa Ana Ixtlahuacingo)	Pueblo	Ixtlahuaca	México
50764	Shira	Barrio	Ixtlahuaca	México
50770	La Concepción Enyege	Pueblo	Ixtlahuaca	México
50770	Dolores Enyege	Pueblo	Ixtlahuaca	México
50770	La Guadalupana (El Sauco)	Pueblo	Ixtlahuaca	México
50770	San Andrés del Pedregal	Pueblo	Ixtlahuaca	México
50770	San Juan de las Manzanas	Pueblo	Ixtlahuaca	México
50770	San Miguel Enyege	Pueblo	Ixtlahuaca	México
50770	El Rincón de los Perales	Ranchería	Ixtlahuaca	México
50770	Emiliano Zapata (Santo Domingo)	Pueblo	Ixtlahuaca	México
50770	La Bandera	Barrio	Ixtlahuaca	México
50773	Guadalupe Cachi	Pueblo	Ixtlahuaca	México
50773	San Pablo de los Remedios	Pueblo	Ixtlahuaca	México
50773	Santo Domingo de Guzmán	Pueblo	Ixtlahuaca	México
50773	San Mateo Ixtlahuaca	Pueblo	Ixtlahuaca	México
50773	San José del Río	Ranchería	Ixtlahuaca	México
50773	El Tecomate	Barrio	Ixtlahuaca	México
50774	Santo Domingo Huereje	Barrio	Ixtlahuaca	México
50774	San Francisco de Guzmán	Ranchería	Ixtlahuaca	México
50774	Trojes	Barrio	Ixtlahuaca	México
50774	Santa María del Llano	Pueblo	Ixtlahuaca	México
50774	San Bartolo del Llano	Pueblo	Ixtlahuaca	México
50774	Francisco I Madero	Colonia	Ixtlahuaca	México
50774	Huereje	Ejido	Ixtlahuaca	México
50774	Luis Donaldo Colosio	Colonia	Ixtlahuaca	México
50774	Número 5	Barrio	Ixtlahuaca	México
50774	Número 9	Barrio	Ixtlahuaca	México
50774	San José Huereje	Ranchería	Ixtlahuaca	México
50774	Ignacio Zaragoza	Colonia	Ixtlahuaca	México
50775	San Miguel el Alto (Ranchos Viejos)	Pueblo	Ixtlahuaca	México
50780	San Ildefonso	Pueblo	Ixtlahuaca	México
50780	San Lorenzo Toxico	Pueblo	Ixtlahuaca	México
50780	San Lorenzo Toxico Manzana Sexta	Ejido	Ixtlahuaca	México
50780	San Lorenzo Toxico Manzana Séptima	Ejido	Ixtlahuaca	México
50780	San Lorenzo Toxico Manzana Octava	Ejido	Ixtlahuaca	México
50780	San Francisco Ixtlahuaca	Pueblo	Ixtlahuaca	México
50780	San Francisco	Ranchería	Ixtlahuaca	México
50783	San Antonio Bonixi	Pueblo	Ixtlahuaca	México
50783	San Joaquín el Junco	Barrio	Ixtlahuaca	México
50783	San Pedro la Cabecera	Barrio	Ixtlahuaca	México
50783	La Purísima	Ejido	Ixtlahuaca	México
50783	San Joaquín la Cabecera	Barrio	Ixtlahuaca	México
50783	San Jerónimo la Cañada	Pueblo	Ixtlahuaca	México
50783	Hacienda la Purísima	Fraccionamiento	Ixtlahuaca	México
50785	San Jerónimo Ixtapantongo	Pueblo	Ixtlahuaca	México
50785	San Jerónimo Ixtlapantongo	Ejido	Ixtlahuaca	México
50800	Jiquipilco	Pueblo	Jiquipilco	México
50810	Manzana Primera la Capilla	Ranchería	Jiquipilco	México
50810	Manzana Tercera Panthé	Ranchería	Jiquipilco	México
50810	Manzana Segunda	Ranchería	Jiquipilco	México
50810	Manzana Tercera Juashi	Ranchería	Jiquipilco	México
50810	Manzana Tercera (Bodo)	Ranchería	Jiquipilco	México
50810	Manzana Primera Parte Alta	Colonia	Jiquipilco	México
50810	Las Palomitas (Puerto Jiquipilli)	Ranchería	Jiquipilco	México
50810	Manzana Tercera Tasthe	Ranchería	Jiquipilco	México
50813	Loma de Endotzi (Manzana Sexta)	Pueblo	Jiquipilco	México
50813	Manzana Sexta Parte Centro	Ranchería	Jiquipilco	México
50813	Manzana Quinta (La Cañada)	Ranchería	Jiquipilco	México
50813	Manzana Sexta Parte Alta	Ranchería	Jiquipilco	México
50813	Manzana Sexta Parte Baja	Ranchería	Jiquipilco	México
50814	El Jaral (Tierra Montón)	Ranchería	Jiquipilco	México
50814	Buenavista	Ranchería	Jiquipilco	México
50815	San Francisco Portezuelo	Ranchería	Jiquipilco	México
50815	Portezuelo	Pueblo	Jiquipilco	México
50815	Loma del Madroño	Pueblo	Jiquipilco	México
50816	Santa Isabel	Ejido	Jiquipilco	México
50816	Manzana Cuarta	Pueblo	Jiquipilco	México
50816	San Isidro	Ranchería	Jiquipilco	México
50820	Mañi	Ejido	Jiquipilco	México
50820	Santa María Nativitas el Colector	Ejido	Jiquipilco	México
50820	Llano Grande (Planta Piloto)	Ejido	Jiquipilco	México
50820	Las Golondrinas	Ranchería	Jiquipilco	México
50823	Tierra Blanca	Ranchería	Jiquipilco	México
50824	San Martín Morelos	Pueblo	Jiquipilco	México
50824	Los Quiroz	Ranchería	Jiquipilco	México
50825	San Miguel Yuxtepec	Pueblo	Jiquipilco	México
50825	Sección del Cerrito	Ranchería	Jiquipilco	México
50825	El Santuario del Señor del Cerrito	Equipamiento	Jiquipilco	México
50825	Pie del Cerro	Ranchería	Jiquipilco	México
50825	La Pastora	Ranchería	Jiquipilco	México
50826	La Purísima	Colonia	Jiquipilco	México
50830	Loma del Astillero	Pueblo	Jiquipilco	México
50830	Manzana Cuarta de Santa Cruz Tepexpan	Pueblo	Jiquipilco	México
50830	Manzana Tercera de Santa Cruz Tepexpan	Ranchería	Jiquipilco	México
50830	Santa Cruz Tepexpan	Colonia	Jiquipilco	México
50830	Manzana Segunda de Santa Cruz Tepexpan	Colonia	Jiquipilco	México
50833	San José del Sitio	Pueblo	Jiquipilco	México
50833	San Francisco el Alto	Ranchería	Jiquipilco	México
50833	Bóximo	Ranchería	Jiquipilco	México
50834	Alegre	Ranchería	Jiquipilco	México
50834	Buenos Aires	Pueblo	Jiquipilco	México
50835	Dolores Amarillas	Ejido	Jiquipilco	México
50836	San Antonio Nixini	Pueblo	Jiquipilco	México
50836	Hacienda Nixini	Ranchería	Jiquipilco	México
50840	Loma Vicente Guerrero	Pueblo	Jiquipilco	México
50840	Loma de San Felipe	Pueblo	Jiquipilco	México
50840	Mañi (Ex-hacienda de Mañi)	Ranchería	Jiquipilco	México
50840	Moxteje	Pueblo	Jiquipilco	México
50840	Santa María Nativitas	Ejido	Jiquipilco	México
50840	Los Ortices	Ranchería	Jiquipilco	México
50840	Loma del Sitio	Colonia	Jiquipilco	México
50840	Moxteje	Ejido	Jiquipilco	México
50840	Santa María Nativitas	Pueblo	Jiquipilco	México
50843	San Felipe y Santiago	Pueblo	Jiquipilco	México
50844	San Bartolo Oxtotitlán	Pueblo	Jiquipilco	México
50844	De Sila	Pueblo	Jiquipilco	México
50844	Loma Hermosa	Ranchería	Jiquipilco	México
50844	Primero Buenos Aires	Ranchería	Jiquipilco	México
50844	Benito Juárez San Felipe Santiago	Colonia	Jiquipilco	México
50844	La Nopalera	Ranchería	Jiquipilco	México
50844	Morelos San Felipe y Santiago	Colonia	Jiquipilco	México
50845	Loma de Malacota	Pueblo	Jiquipilco	México
50845	Emiliano Zapata	Colonia	Jiquipilco	México
50845	Loma de San Pedro	Ranchería	Jiquipilco	México
50845	Santa Lucía	Ranchería	Jiquipilco	México
50846	Manzana Quinta de San Bartolo Oxtotitlán	Ranchería	Jiquipilco	México
50847	Loma de Hidalgo	Pueblo	Jiquipilco	México
50847	Colorado	Ranchería	Jiquipilco	México
50847	El Rincón Loma de Hidalgo	Ranchería	Jiquipilco	México
50847	Flores Magón	Colonia	Jiquipilco	México
50847	Manzana Tercera Loma de Hidalgo	Colonia	Jiquipilco	México
50847	Loma Hidalgo Manzana Cuarta	Colonia	Jiquipilco	México
50847	Loma Hidalgo Colonia Benito Juárez	Colonia	Jiquipilco	México
50848	Palo Gacho	Ranchería	Jiquipilco	México
50850	Temoaya	Pueblo	Temoaya	México
50850	Tlaltenango Abajo	Barrio	Temoaya	México
50850	Tlaltenango Arriba	Barrio	Temoaya	México
50860	Loma Alta	Barrio	Temoaya	México
50860	Pothé	Barrio	Temoaya	México
50863	La Cañada	Barrio	Temoaya	México
50863	Jiquipilco el Viejo	Pueblo	Temoaya	México
50863	Tierra Blanca	Pueblo	Temoaya	México
50864	Calle Real	Barrio	Temoaya	México
50864	Cerrito del Panal	Pueblo	Temoaya	México
50865	Enthavi	Pueblo	Temoaya	México
50865	Enthavi 2da Sección	Pueblo	Temoaya	México
50865	Enthavi 3ra Sección Ojo de Agua	Pueblo	Temoaya	México
50865	Solalpan 2da Sección	Pueblo	Temoaya	México
50866	Solalpan 1ra. Sección	Pueblo	Temoaya	México
50866	San Pedro Abajo 2da Sección (Loma Larga)	Pueblo	Temoaya	México
50866	Zanja Vieja	Barrio	Temoaya	México
50866	Tlaltenanguito	Pueblo	Temoaya	México
50866	Luis Donaldo Colosio Murrieta	Barrio	Temoaya	México
50866	San Pedro Abajo	Pueblo	Temoaya	México
50866	San Pedro Abajo 1ra Sección (Loma del Caracol)	Ranchería	Temoaya	México
50867	Puente Roto	Colonia	Temoaya	México
50867	San Pedro Arriba 1ra. Sección	Ranchería	Temoaya	México
50867	Laurel 1ra. Sección	Barrio	Temoaya	México
50867	San Pedro Arriba 3a Sección	Pueblo	Temoaya	México
50867	San Pedro Arriba 4ta Sección (Cinco Reales)	Pueblo	Temoaya	México
50867	San Pedro Arriba 2da. Sección	Barrio	Temoaya	México
50867	Laureles 2da Sección	Barrio	Temoaya	México
50867	San Pedro Arriba	Pueblo	Temoaya	México
50867	San Pedro Arriba 5ta Sección (San Lorencito)	Pueblo	Temoaya	México
50868	San Pedro Arriba 6ta. Sección	Ranchería	Temoaya	México
50868	Centro Ceremonial Otomí	Colonia	Temoaya	México
50869	Adolfo López Mateos	Colonia	Temoaya	México
50870	San Lorenzo Oyamel	Pueblo	Temoaya	México
50870	Mimbres	Ejido	Temoaya	México
50874	La Magdalena Tenexpan	Pueblo	Temoaya	México
50874	Campamento Kilometro 48	Ranchería	Temoaya	México
50874	Molino Arriba	Barrio	Temoaya	México
50880	Hacienda las Trojes	Fraccionamiento	Temoaya	México
50880	Buena Ventura	Fraccionamiento	Temoaya	México
50880	De Trojes (San Antonio del Puente)	Ranchería	Temoaya	México
50880	San José Pathé	Pueblo	Temoaya	México
50880	Loma de Progreso	Pueblo	Temoaya	México
50880	San Antonio del Puente	Pueblo	Temoaya	México
50883	Dolores	Ejido	Temoaya	México
50883	Morelos	Colonia	Temoaya	México
50884	Llano de la Y	Pueblo	Temoaya	México
50885	San José Buenavista el Grande	Pueblo	Temoaya	México
50885	Rinconada del Valle	Fraccionamiento	Temoaya	México
50886	Molino Abajo	Barrio	Temoaya	México
50886	Loma de San Nicolás	Colonia	Temoaya	México
50886	La Magdalena Tenexpan 3ra. Sección	Pueblo	Temoaya	México
50886	La Magdalena Tenexpan 4ta. Sección	Ranchería	Temoaya	México
50890	San Diego Alcalá	Pueblo	Temoaya	México
50890	Lázaro Cárdenas	Colonia	Temoaya	México
50890	Emiliano Zapata (Ejido Santiago Temoaya)	Colonia	Temoaya	México
50890	Silverio Galicia García	Ranchería	Temoaya	México
50893	San José Comalco	Pueblo	Temoaya	México
50893	San Mateo Alcalá	Pueblo	Temoaya	México
50894	San Lucas	Ranchería	Temoaya	México
50894	San José las Lomas	Pueblo	Temoaya	México
50895	Allende	Ejido	Temoaya	México
50895	Las Lomas	Ranchería	Temoaya	México
50896	Taborda	Ejido	Temoaya	México
50900	Almoloya de Juárez Centro	Colonia	Almoloya de Juárez	México
50900	Armando Bernal	Unidad habitacional	Almoloya de Juárez	México
50900	Ecológico SUTEYM	Fraccionamiento	Almoloya de Juárez	México
50900	Loma de Juárez	Colonia	Almoloya de Juárez	México
50900	El Plan de San Pedro	Colonia	Almoloya de Juárez	México
50900	San Pedro	Barrio	Almoloya de Juárez	México
50903	Mina México	Pueblo	Almoloya de Juárez	México
50903	San Pedro	Ejido	Almoloya de Juárez	México
50903	Santa Juana Primera Sección	Pueblo	Almoloya de Juárez	México
50903	Colinas del Sol	Fraccionamiento	Almoloya de Juárez	México
50903	Rincón del Alamo	Fraccionamiento	Almoloya de Juárez	México
50903	Barrio San Pedro Zona Norte	Ranchería	Almoloya de Juárez	México
50903	Ejido de San Lorenzo Cuauhtenco	Ranchería	Almoloya de Juárez	México
50903	San José Amealco (Rancho el Capulín)	Ranchería	Almoloya de Juárez	México
50903	San Nicolás	Ranchería	Almoloya de Juárez	México
50904	Cereso Almoloya	Equipamiento	Almoloya de Juárez	México
50904	Barrio de la Cabecera Primera Sección	Pueblo	Almoloya de Juárez	México
50904	San Mateo Tlalchichilpan	Pueblo	Almoloya de Juárez	México
50904	Santiaguito Tlalcilalcalli	Pueblo	Almoloya de Juárez	México
50904	Barrio de la Cabecera Tercera Sección	Pueblo	Almoloya de Juárez	México
50904	Framboyanes	Fraccionamiento	Almoloya de Juárez	México
50904	La Cabecera	Barrio	Almoloya de Juárez	México
50904	Barrio Santa Juana	Ranchería	Almoloya de Juárez	México
50904	Cerro San Mateo	Ranchería	Almoloya de Juárez	México
50906	San Miguel Almoloyán	Pueblo	Almoloya de Juárez	México
50906	Santa María Nativitas	Pueblo	Almoloya de Juárez	México
50906	El Tepetatal	Barrio	Almoloya de Juárez	México
50906	La Navidad	Colonia	Almoloya de Juárez	México
50907	San Pedro de la Hortaliza (Ejido Almoloyán)	Ejido	Almoloya de Juárez	México
50907	San Lorenzo Cuauhtenco	Pueblo	Almoloya de Juárez	México
50907	El Plan	Barrio	Almoloya de Juárez	México
50910	Benito Juárez	Pueblo	Almoloya de Juárez	México
50910	Tabernillas (Santa Catarina)	Pueblo	Almoloya de Juárez	México
50910	Mextepec (Ex-Hacienda Mextepec)	Pueblo	Almoloya de Juárez	México
50910	Laguna de Tabernillas (El Resbaloso)	Pueblo	Almoloya de Juárez	México
50910	Loma del Jacal (Loma de las Mangas)	Ranchería	Almoloya de Juárez	México
50920	Conjunto Urbano Rancho San Juan	Fraccionamiento	Almoloya de Juárez	México
50920	Mayorazgo de León (Estación Río México)	Pueblo	Almoloya de Juárez	México
50920	Salitre de Mañones	Pueblo	Almoloya de Juárez	México
50920	San Antonio Atotonilco	Ranchería	Almoloya de Juárez	México
50920	Santa Juana Centro (La Palma)	Pueblo	Almoloya de Juárez	México
50920	San Agustín Citlali	Pueblo	Almoloya de Juárez	México
50920	Santa Juana Segunda Sección	Pueblo	Almoloya de Juárez	México
50920	Del Carmen	Barrio	Almoloya de Juárez	México
50920	Ejido San Antonio Ocoyotepec	Ranchería	Almoloya de Juárez	México
50920	Ejido de Santa Juana Primera seccion	Ranchería	Almoloya de Juárez	México
50920	Ex-Hacienda Boreje	Ranchería	Almoloya de Juárez	México
50920	Atotonilco	Ranchería	Almoloya de Juárez	México
50924	Cieneguillas de Mañones	Ranchería	Almoloya de Juárez	México
50924	San Agustín las Tablas	Pueblo	Almoloya de Juárez	México
50925	Loma del Salitre	Colonia	Almoloya de Juárez	México
50925	Barrio la Unión Ocoyotepec	Ranchería	Almoloya de Juárez	México
50925	Loma del Rancho	Ranchería	Almoloya de Juárez	México
50926	Casa Nueva (Casa Nueva Yebuciví)	Pueblo	Almoloya de Juárez	México
50926	El Santito (Barrio el Santito Yebuciví)	Ranchería	Almoloya de Juárez	México
50926	Barrio los Lagartos Yebuciví	Ranchería	Almoloya de Juárez	México
50926	Río Frío (Río Frío Yebuciví)	Barrio	Almoloya de Juárez	México
50927	Ocoyotepec (Ocoyotepec Centro)	Pueblo	Almoloya de Juárez	México
50927	Yebuciví Centro (Yebuciví)	Pueblo	Almoloya de Juárez	México
50927	Palos Amarillos (Palos Amarillos Yebuciví)	Pueblo	Almoloya de Juárez	México
50927	El Plan Ocoyotepec	Barrio	Almoloya de Juárez	México
50927	Barrio del Jacal de Yebuciví	Barrio	Almoloya de Juárez	México
50927	Lázaro Cárdenas (La Trampa)	Colonia	Almoloya de Juárez	México
50927	La Soledad Ocoyotepec	Pueblo	Almoloya de Juárez	México
50927	Buenavista Yebuciví	Barrio	Almoloya de Juárez	México
50927	La Lagunita Yebuciví	Ranchería	Almoloya de Juárez	México
50930	La Tinaja	Pueblo	Almoloya de Juárez	México
50930	Ejido la Gavia (San José la Gavia)	Pueblo	Almoloya de Juárez	México
50930	Hacienda la Gavia	Ranchería	Almoloya de Juárez	México
50933	Cieneguillas de Guadalupe	Pueblo	Almoloya de Juárez	México
50933	San Cristóbal	Ejido	Almoloya de Juárez	México
50933	Loma de la Tinaja	Barrio	Almoloya de Juárez	México
50934	Ejido San Diego	Pueblo	Almoloya de Juárez	México
50934	Paredón Ejido Norte	Pueblo	Almoloya de Juárez	México
50934	La Hortaliza	Ranchería	Almoloya de Juárez	México
50934	Paredón Ejido	Ranchería	Almoloya de Juárez	México
50934	San Diego (Ciénega de San Diego)	Ranchería	Almoloya de Juárez	México
50934	San Diego Buenavista (Ejido San Diego)	Rancho	Almoloya de Juárez	México
50934	Santiaguito	Ranchería	Almoloya de Juárez	México
50935	Loma Blanca	Ranchería	Almoloya de Juárez	México
50935	Paredón Centro	Pueblo	Almoloya de Juárez	México
50935	El Tulillo	Ranchería	Almoloya de Juárez	México
50935	La Galera (La Galera)	Barrio	Almoloya de Juárez	México
50940	San Francisco Tlalcilalcalpan	Pueblo	Almoloya de Juárez	México
50940	Cañada de Guadarrama	Pueblo	Almoloya de Juárez	México
50940	San Isidro (El Reservado)	Pueblo	Almoloya de Juárez	México
50940	Santa Cruz de los Patos	Barrio	Almoloya de Juárez	México
50940	Rancho Carbajales	Fraccionamiento	Almoloya de Juárez	México
50940	Besana Ancha	Barrio	Almoloya de Juárez	México
50943	Colinas de San Francisco	Fraccionamiento	Almoloya de Juárez	México
50943	Rancho Viejo	Colonia	Almoloya de Juárez	México
50943	Loma de Guadalupe	Ranchería	Almoloya de Juárez	México
50943	Bellavista	Colonia	Almoloya de Juárez	México
50943	Geovillas el Nevado	Fraccionamiento	Almoloya de Juárez	México
50944	La Lima	Ranchería	Almoloya de Juárez	México
50944	Arroyo Zarco la Mesa	Pueblo	Almoloya de Juárez	México
50944	Dilatada Sur (Dilatada)	Pueblo	Almoloya de Juárez	México
50944	La Posta	Ranchería	Almoloya de Juárez	México
50944	Arroyo Zarco	Ranchería	Almoloya de Juárez	México
50945	San Nicolás Amealco	Pueblo	Almoloya de Juárez	México
50945	El Estanco	Colonia	Almoloya de Juárez	México
50945	San Antonio Buenavista	Pueblo	Almoloya de Juárez	México
50945	El Estanco	Ejido	Almoloya de Juárez	México
50946	San Agustín Poteje Centro	Pueblo	Almoloya de Juárez	México
50946	Rosa Morada	Pueblo	Almoloya de Juárez	México
50946	Santa María Nativitas (Ejido Tres Barrancas)	Ejido	Almoloya de Juárez	México
50946	Poteje Norte	Pueblo	Almoloya de Juárez	México
50946	Poteje Sur	Pueblo	Almoloya de Juárez	México
50946	Loma de San Miguel	Barrio	Almoloya de Juárez	México
50946	Olaldea (Colonia Olaldea)	Unidad habitacional	Almoloya de Juárez	México
50960	Rancho de los Padres Propiedad	Ranchería	Villa Victoria	México
50960	Villa Victoria	Pueblo	Villa Victoria	México
50963	Santa Isabel del Monte	Pueblo	Villa Victoria	México
50963	El Fresno San Agustín	Pueblo	Villa Victoria	México
50964	Laguna Seca Ejido Primera Sección	Ejido	Villa Victoria	México
50964	San Agustín Altamirano Primera Sección	Pueblo	Villa Victoria	México
50964	Sansón	Pueblo	Villa Victoria	México
50964	Turcio Segunda Sección	Ranchería	Villa Victoria	México
50965	Piedras Blancas Sur	Ranchería	Villa Victoria	México
50965	Ejido de Jesús María Segunda Sección	Ranchería	Villa Victoria	México
50965	San Joaquín del Monte	Pueblo	Villa Victoria	México
50965	Puente los Velázquez	Barrio	Villa Victoria	México
50965	Doctor Gustavo Baz	Colonia	Villa Victoria	México
50965	Los Padres	Ejido	Villa Victoria	México
50965	Hospital Propiedad, Dos Estrellas	Pueblo	Villa Victoria	México
50965	Jesús María	Ejido	Villa Victoria	México
50965	El Hospital	Ejido	Villa Victoria	México
50965	Los Matorrales	Barrio	Villa Victoria	México
50966	Santiago del Monte	Pueblo	Villa Victoria	México
50966	Laguna Seca 2da Sección	Pueblo	Villa Victoria	México
50966	El Gallito	Barrio	Villa Victoria	México
50966	San Agustín Altamirano 2da. Sección	Pueblo	Villa Victoria	México
50967	San Luis el Alto	Pueblo	Villa Victoria	México
50967	San Luis la Gavia	Ranchería	Villa Victoria	México
50967	San Luis la Manzana	Pueblo	Villa Victoria	México
50967	Turcio 1a Secc	Pueblo	Villa Victoria	México
50967	Turcio la Loma	Pueblo	Villa Victoria	México
50967	Turcio 3ra. Sección	Pueblo	Villa Victoria	México
50970	Laguna Seca Propiedad	Pueblo	Villa Victoria	México
50973	San Agustín Canohillas Primera Sección	Pueblo	Villa Victoria	México
50973	La Unión Berros	Pueblo	Villa Victoria	México
50973	San Agustín Canohillas Segunda Sección	Pueblo	Villa Victoria	México
50973	San Agustín Monte Alto, La Trampa	Pueblo	Villa Victoria	México
50974	San Agustín Berros	Pueblo	Villa Victoria	México
50974	Dolores Vaquerías	Pueblo	Villa Victoria	México
50974	Sección de Guadalupe	Pueblo	Villa Victoria	México
50975	Cerritos del Pilar	Pueblo	Villa Victoria	México
50975	Las Peñas	Pueblo	Villa Victoria	México
50975	San Pedro del Rincón	Pueblo	Villa Victoria	México
50975	El Vivero	Barrio	Villa Victoria	México
50975	La Puerta del Pilar	Pueblo	Villa Victoria	México
50975	Jesús María Monte Alto	Pueblo	Villa Victoria	México
50975	Ojitos de Agua	Ranchería	Villa Victoria	México
50980	Potrero de San Diego	Pueblo	Villa Victoria	México
50983	Los Remedios Suchitepec	Barrio	Villa Victoria	México
50983	Palizada	Pueblo	Villa Victoria	México
50983	Cerrillo Grande	Barrio	Villa Victoria	México
50983	Santa Cruz de la Rosa	Barrio	Villa Victoria	México
50983	Cerrillo Chico	Barrio	Villa Victoria	México
50984	San Diego Suchitepec	Pueblo	Villa Victoria	México
50984	Agua Zarca	Pueblo	Villa Victoria	México
50984	Agua Grande	Pueblo	Villa Victoria	México
50984	Los Cedros Suchitepec	Barrio	Villa Victoria	México
50984	Nuevo Bosque	Barrio	Villa Victoria	México
50984	La Mesa	Pueblo	Villa Victoria	México
50984	Loma de la Rosa	Pueblo	Villa Victoria	México
50984	El Jacal	Pueblo	Villa Victoria	México
50984	La Providencia	Barrio	Villa Victoria	México
50984	El Panteón	Barrio	Villa Victoria	México
50985	Casas Coloradas	Pueblo	Villa Victoria	México
50985	El Espinal	Pueblo	Villa Victoria	México
50985	San Felipe de la Rosa	Pueblo	Villa Victoria	México
50985	La Presa	Ranchería	Villa Victoria	México
50986	El Catorce	Barrio	Villa Victoria	México
50986	Vaquerías Palizada	Barrio	Villa Victoria	México
50986	Mesa de Suchitímber	Barrio	Villa Victoria	México
50986	El Capulín	Barrio	Villa Victoria	México
50986	Villa Victoria	Ejido	Villa Victoria	México
50986	Mesa del Espinal	Barrio	Villa Victoria	México
50986	Ojo de Agua	Barrio	Villa Victoria	México
50987	El Atole	Barrio	Villa Victoria	México
50987	Los Aviones	Barrio	Villa Victoria	México
50987	Las Milpas	Barrio	Villa Victoria	México
50987	Campo Nuevo	Barrio	Villa Victoria	México
50987	Loma Larga	Barrio	Villa Victoria	México
50987	Loma del Burro	Barrio	Villa Victoria	México
50990	De San Isidro	Barrio	Villa Victoria	México
50993	Piedras Blancas (Piedras Blancas Centro)	Pueblo	Villa Victoria	México
50993	Mina Vieja	Pueblo	Villa Victoria	México
50993	Centro del Cerrillo	Barrio	Villa Victoria	México
50994	El Ocote	Barrio	Villa Victoria	México
50994	San Marcos de la Loma	Pueblo	Villa Victoria	México
50994	De San Miguel	Barrio	Villa Victoria	México
50994	La Campanilla	Pueblo	Villa Victoria	México
50994	Sitio Centro	Pueblo	Villa Victoria	México
50994	Sitio Ejido	Pueblo	Villa Victoria	México
50995	Loma del Molino	Barrio	Villa Victoria	México
50995	Venta de Ocotillos	Pueblo	Villa Victoria	México
50995	El Cerrillo	Barrio	Villa Victoria	México
50995	Ex-Hacienda de Ayala	Pueblo	Villa Victoria	México
50995	San Roque	Pueblo	Villa Victoria	México
50996	Loma de San José	Ranchería	Villa Victoria	México
50996	Loma de Guadalupe	Pueblo	Villa Victoria	México
50996	San Diego del Cerrito	Pueblo	Villa Victoria	México
50996	De Puentecillas	Barrio	Villa Victoria	México
50996	Ramejé	Barrio	Villa Victoria	México
50996	El Centenario	Barrio	Villa Victoria	México
50996	San Antonio del Rincón	Pueblo	Villa Victoria	México
50997	Loma de Lienzo	Pueblo	Villa Victoria	México
50997	Cuadrilla Vieja	Pueblo	Villa Victoria	México
50997	Los Cedros	Pueblo	Villa Victoria	México
50997	La Alameda	Pueblo	Villa Victoria	México
50997	Centro del Cerrillo	Pueblo	Villa Victoria	México
51000	Cabecera de Indígenas	Pueblo	Villa de Allende	México
51000	San José Villa de Allende	Pueblo	Villa de Allende	México
51004	Vare Chiquichuca	Pueblo	Villa de Allende	México
51004	Batán Chico	Ranchería	Villa de Allende	México
51004	Casa Blanca	Barrio	Villa de Allende	México
51004	Manzana del Puerto	Ranchería	Villa de Allende	México
51004	Los Hoyos	Barrio	Villa de Allende	México
51005	San Pablo Malacatepec	Pueblo	Villa de Allende	México
51005	Santa Teresa	Pueblo	Villa de Allende	México
51005	La Peña	Pueblo	Villa de Allende	México
51005	Loma Bonita	Barrio	Villa de Allende	México
51005	Mesa Chica	Ranchería	Villa de Allende	México
51005	Loma Chica	Ranchería	Villa de Allende	México
51005	Loma de San Pablo	Ranchería	Villa de Allende	México
51006	San Juan	Barrio	Villa de Allende	México
51006	Manzana los Colchones	Barrio	Villa de Allende	México
51007	San Jerónimo Totoltepec	Pueblo	Villa de Allende	México
51007	El Aventurero	Pueblo	Villa de Allende	México
51007	Chiquichuca	Barrio	Villa de Allende	México
51007	El Chirimoyo	Barrio	Villa de Allende	México
51007	Mesas de San Jerónimo	Barrio	Villa de Allende	México
51007	El Potrero	Ranchería	Villa de Allende	México
51007	Santa Cruz, San Jerónimo Totoltepec	Barrio	Villa de Allende	México
51008	San Ildefonso	Pueblo	Villa de Allende	México
51008	Manzana de Cashte	Ranchería	Villa de Allende	México
51009	San Miguel	Pueblo	Villa de Allende	México
51009	Barrio de Santiago	Barrio	Villa de Allende	México
51009	Santa María de las Delicias	Pueblo	Villa de Allende	México
51010	Los Cedros	Barrio	Villa de Allende	México
51010	Loma de Juárez	Pueblo	Villa de Allende	México
51013	San Francisco de Asís	Pueblo	Villa de Allende	México
51013	El Boncho	Barrio	Villa de Allende	México
51013	La Joya	Barrio	Villa de Allende	México
51014	El Salto	Barrio	Villa de Allende	México
51014	Los Tules	Barrio	Villa de Allende	México
51015	El Jacal	Pueblo	Villa de Allende	México
51015	Salitre del Cerro	Pueblo	Villa de Allende	México
51015	San Isidro	Pueblo	Villa de Allende	México
51015	Soledad del Salitre	Pueblo	Villa de Allende	México
51016	Buenavista 23	Pueblo	Villa de Allende	México
51016	Bosencheve	Pueblo	Villa de Allende	México
51016	Las Dalias	Pueblo	Villa de Allende	México
51016	El Cinco	Barrio	Villa de Allende	México
51016	Manzana de Chichicaishle	Barrio	Villa de Allende	México
51016	Los Pozos	Barrio	Villa de Allende	México
51016	Las Casitas	Ranchería	Villa de Allende	México
51017	Santa Cruz	Barrio	Villa de Allende	México
51017	San Miguel la Máquina	Ranchería	Villa de Allende	México
51019	Cuesta del Carmen	Pueblo	Villa de Allende	México
51019	La Piedra	Pueblo	Villa de Allende	México
51019	San Juan Buenavista	Pueblo	Villa de Allende	México
51019	El Puerto Lengua de Vaca	Ranchería	Villa de Allende	México
51019	Macia	Ejido	Villa de Allende	México
51019	Mesas de San Juan Buenavista	Ranchería	Villa de Allende	México
51019	Mesas del Clarín	Ranchería	Villa de Allende	México
51020	San Felipe Santiago	Pueblo	Villa de Allende	México
51024	Mesas de Zacango	Pueblo	Villa de Allende	México
51024	San Cayetano	Pueblo	Villa de Allende	México
51024	Monte Alto	Ranchería	Villa de Allende	México
51025	Sabana del Rosario	Pueblo	Villa de Allende	México
51025	Mesas de San Martín	Pueblo	Villa de Allende	México
51026	Sabana de Taborda 1ra Sección	Paraje	Villa de Allende	México
51026	Sabana de San Jerónimo	Ranchería	Villa de Allende	México
51026	Sabana de Taborda 2da Sección	Ranchería	Villa de Allende	México
51027	Cerro de Guadalupe	Ranchería	Villa de Allende	México
51027	San Martín	Ejido	Villa de Allende	México
51027	Morelos	Ranchería	Villa de Allende	México
51027	La Sabana de San Jerónimo	Ejido	Villa de Allende	México
51027	Sabana de la Peña	Ranchería	Villa de Allende	México
51028	Sabana del Madroño	Pueblo	Villa de Allende	México
51028	Sabana del Refugio	Pueblo	Villa de Allende	México
51028	Filiberto Gómez	Pueblo	Villa de Allende	México
51029	Los Berros	Pueblo	Villa de Allende	México
51029	Manzana la Pera	Ranchería	Villa de Allende	México
51029	San Agustín Berros el Salto	Barrio	Villa de Allende	México
51030	Cabecera de Indígenas Segundo Cuartel	Pueblo	Donato Guerra	México
51030	Cabecera de Indígenas Primer Cuartel	Pueblo	Donato Guerra	México
51030	Villa Donato Guerra	Pueblo	Donato Guerra	México
51030	San Agustín de las Palmas (San Agustín)	Pueblo	Donato Guerra	México
51034	San Lucas Texcaltitlán	Pueblo	Donato Guerra	México
51035	San Lucas Texcaltitlán (Sabanillas)	Ejido	Donato Guerra	México
51035	Santiago Huitlapaltepec	Pueblo	Donato Guerra	México
51036	San José Tilostoc	Ranchería	Donato Guerra	México
51040	San Simón de la Laguna	Pueblo	Donato Guerra	México
51043	San Antonio de la Laguna	Pueblo	Donato Guerra	México
51044	San Martín Obispo	Ranchería	Donato Guerra	México
51044	San Martín Obispo (San Martín San Pedro)	Pueblo	Donato Guerra	México
51044	San Antonio Hidalgo (Ranchería de San Antonio)	Ranchería	Donato Guerra	México
51044	Puerto de la Cruz	Rancho	Donato Guerra	México
51045	Batán Chico	Ranchería	Donato Guerra	México
51045	Batán Grande	Ranchería	Donato Guerra	México
51046	San Francisco Mihualtepec	Pueblo	Donato Guerra	México
51046	San Miguel Xooltepec	Pueblo	Donato Guerra	México
51050	San Juan Xoconusco	Pueblo	Donato Guerra	México
51050	De Arriba de San Juan Xoconusco	Barrio	Donato Guerra	México
51054	Mesas Altas de Xoconusco	Pueblo	Donato Guerra	México
51055	Macheros	Ranchería	Donato Guerra	México
51055	Llano Redondo de Zaragoza (Llano Redondo)	Ranchería	Donato Guerra	México
51055	El Capulín	Ranchería	Donato Guerra	México
51055	La Fundición	Ranchería	Donato Guerra	México
51070	La Calzada	Ranchería	Ixtapan del Oro	México
51070	Ixtapan del Oro	Pueblo	Ixtapan del Oro	México
51070	San Martín Ocoxochitepec (San Martín)	Pueblo	Ixtapan del Oro	México
51074	San Miguel Ixtapan	Pueblo	Ixtapan del Oro	México
51075	La Mesa de San Martín	Ranchería	Ixtapan del Oro	México
51075	El Teperreal	Ranchería	Ixtapan del Oro	México
51076	Miahuatlán de Hidalgo (Santa Cruz Miahuatlán)	Pueblo	Ixtapan del Oro	México
51077	Miahuatlán	Ejido	Ixtapan del Oro	México
51080	El Chilar	Ranchería	Ixtapan del Oro	México
51080	Ayalita	Ranchería	Ixtapan del Oro	México
51083	La Puerta	Ranchería	Ixtapan del Oro	México
51084	Peña Colorada	Ranchería	Ixtapan del Oro	México
51084	La Calera de los Gallos	Ranchería	Ixtapan del Oro	México
51084	Milpillas	Pueblo	Ixtapan del Oro	México
51085	Tutuapan	Ranchería	Ixtapan del Oro	México
51089	San Telmo	Ranchería	Ixtapan del Oro	México
51089	Santa Cruz Viejo	Pueblo	Ixtapan del Oro	México
51100	Santo Tomás de los Plátanos	Pueblo	Santo Tomás	México
51104	San Miguel Sandemialma	Ejido	Santo Tomás	México
51104	Ojo de Agua	Ranchería	Santo Tomás	México
51105	Los Nogales	Ranchería	Santo Tomás	México
51105	El Sifón	Colonia	Santo Tomás	México
51105	Rincón Chico	Pueblo	Santo Tomás	México
51105	Rincón Grande	Pueblo	Santo Tomás	México
51105	San Pedro Ixtapantongo (Ixtapantongo)	Pueblo	Santo Tomás	México
51105	Rincón Vivero (El Maracaná)	Ranchería	Santo Tomás	México
51105	Frontón Vivero	Ranchería	Santo Tomás	México
51106	El Salitre Bramador	Ranchería	Santo Tomás	México
51106	Tacuitapan	Pueblo	Santo Tomás	México
51106	Salitre Terreros	Ranchería	Santo Tomás	México
51106	Loma Bonita	Pueblo	Santo Tomás	México
51106	Las Fincas	Ranchería	Santo Tomás	México
51106	Las Canoas	Ranchería	Santo Tomás	México
51108	Santa Bárbara	Pueblo	Santo Tomás	México
51108	Viejo	Pueblo	Santo Tomás	México
51109	El Plan	Pueblo	Santo Tomás	México
51109	El Llano	Pueblo	Santo Tomás	México
51115	Poblado de Santo Tomás (El Puerto San Isidro)	Ranchería	Santo Tomás	México
51115	Potrero de Abajo (Colonia Guadalupe)	Ranchería	Santo Tomás	México
51115	El Anono	Ranchería	Santo Tomás	México
51115	Potrero de Abajo (Granadillo)	Ranchería	Santo Tomás	México
51116	San Pedro el Grande	Ranchería	Santo Tomás	México
51116	San José Barbechos (Los Barbechos)	Ranchería	Santo Tomás	México
51117	Salitre de la Cal (El Zapote)	Ranchería	Santo Tomás	México
51117	Potrero de Arriba (La Ceiba)	Ranchería	Santo Tomás	México
51130	Otzoloapan	Pueblo	Otzoloapan	México
51136	Estancia Chica	Pueblo	Otzoloapan	México
51137	Agua Zarca (Agua Zarca de Arriba)	Ranchería	Otzoloapan	México
51138	El Calvario (San José el Calvario)	Pueblo	Otzoloapan	México
51139	Pinal del Marquesado	Pueblo	Otzoloapan	México
51140	San Miguel Piru (El Piru)	Ranchería	Otzoloapan	México
51140	San Miguel de la Campana (San Miguel)	Ranchería	Otzoloapan	México
51144	Terreros	Pueblo	Otzoloapan	México
51145	Guadalupe (Los Lotes)	Barrio	Otzoloapan	México
51147	El Limón	Ranchería	Otzoloapan	México
51149	Zuluapan	Pueblo	Otzoloapan	México
51160	Alcantarilla	Colonia	Zacazonapan	México
51160	Zacazonapan	Pueblo	Zacazonapan	México
51160	Juan Villafaña	Colonia	Zacazonapan	México
51163	Santa María	Pueblo	Zacazonapan	México
51164	El Potrero	Pueblo	Zacazonapan	México
51170	Arrastradero	Ranchería	Zacazonapan	México
51173	La Cañada	Pueblo	Zacazonapan	México
51173	El Puerto	Ranchería	Zacazonapan	México
51200	San Antonio	Colonia	Valle de Bravo	México
51200	Manguito	Colonia	Valle de Bravo	México
51200	Agua Fría	Colonia	Valle de Bravo	México
51200	El Calvario	Colonia	Valle de Bravo	México
51200	ISSEMYM	Colonia	Valle de Bravo	México
51200	La Peña	Colonia	Valle de Bravo	México
51200	Sánchez	Colonia	Valle de Bravo	México
51200	Emiliano Zapata	Colonia	Valle de Bravo	México
51200	Loma Bonita	Colonia	Valle de Bravo	México
51200	La Capilla	Colonia	Valle de Bravo	México
51200	Barranca Seca	Colonia	Valle de Bravo	México
51200	Avándaro	Pueblo	Valle de Bravo	México
51200	Los Saucos	Pueblo	Valle de Bravo	México
51200	Valle de Bravo	Pueblo	Valle de Bravo	México
51200	Rincón Villa del Valle	Colonia	Valle de Bravo	México
51200	Santa María Ahuacatlan	Barrio	Valle de Bravo	México
51204	De Guadalupe	Barrio	Valle de Bravo	México
51204	Otumba	Colonia	Valle de Bravo	México
51206	El Cerrillo (San José el Cerrillo)	Pueblo	Valle de Bravo	México
51207	Tres Puentes	Pueblo	Valle de Bravo	México
51207	San Mateo Acatitlán	Pueblo	Valle de Bravo	México
51207	El Castellano	Ranchería	Valle de Bravo	México
51207	Loma de Rodríguez	Ranchería	Valle de Bravo	México
51207	Loma de Chihuahua	Ranchería	Valle de Bravo	México
51207	Rincón de Estradas	Pueblo	Valle de Bravo	México
51208	La Candelaria	Pueblo	Valle de Bravo	México
51209	Santa María Pipioltepec (Pipioltepec)	Pueblo	Valle de Bravo	México
51210	Santa Teresa Tiloxtoc	Pueblo	Valle de Bravo	México
51217	El Arco	Pueblo	Valle de Bravo	México
51217	San Gaspar	Pueblo	Valle de Bravo	México
51218	Santa Magdalena Tiloxtoc	Pueblo	Valle de Bravo	México
51219	San Gabriel Ixtla	Pueblo	Valle de Bravo	México
51220	Cerro Colorado	Pueblo	Valle de Bravo	México
51225	Cuadrilla de Dolores	Pueblo	Valle de Bravo	México
51226	Valle Escondido	Colonia	Valle de Bravo	México
51226	Escalerillas	Ranchería	Valle de Bravo	México
51226	Casas Viejas	Pueblo	Valle de Bravo	México
51226	La Volanta	Ranchería	Valle de Bravo	México
51227	Peña Blanca	Pueblo	Valle de Bravo	México
51229	Mesa de Jaimes	Pueblo	Valle de Bravo	México
51229	Monte Alto	Colonia	Valle de Bravo	México
51230	Loma Bonita	Colonia	Valle de Bravo	México
51230	Colorines	Pueblo	Valle de Bravo	México
51230	San Juan Atezcapan	Pueblo	Valle de Bravo	México
51230	San Nicolás Tolentino	Pueblo	Valle de Bravo	México
51230	El Durazno	Ranchería	Valle de Bravo	México
51230	El Polvorin	Colonia	Valle de Bravo	México
51237	El Manzano	Pueblo	Valle de Bravo	México
51238	Los Pozos (Pinar de Osorios)	Pueblo	Valle de Bravo	México
51238	Mesa Rica (La Finca)	Ranchería	Valle de Bravo	México
51238	San José Potrerillos (Potrerillos)	Ranchería	Valle de Bravo	México
51239	Cerro Gordo	Pueblo	Valle de Bravo	México
51240	San Simón el Alto	Pueblo	Valle de Bravo	México
51245	Godínez Tehuastepec	Pueblo	Valle de Bravo	México
51246	Mesa de Dolores Primera Sección (Mesa del Rayo)	Pueblo	Valle de Bravo	México
51246	Atesquelites (Tres Quelites)	Ranchería	Valle de Bravo	México
51247	Santo Tomás el Pedregal	Ranchería	Valle de Bravo	México
51247	La Laguna	Pueblo	Valle de Bravo	México
51247	Tierra Grande (La Loma)	Ranchería	Valle de Bravo	México
51248	El Fresno (El Fresno la Compañía)	Pueblo	Valle de Bravo	México
51248	Tenantongo	Ranchería	Valle de Bravo	México
51260	San Jerónimo Primera Sección (El Convento)	Pueblo	Amanalco	México
51260	Amanalco de Becerra	Pueblo	Amanalco	México
51260	San Jerónimo	Pueblo	Amanalco	México
51260	San Juan	Pueblo	Amanalco	México
51265	Rincón de Guadalupe	Pueblo	Amanalco	México
51265	San Lucas	Pueblo	Amanalco	México
51266	Las Pilas	Ranchería	Amanalco	México
51266	San Mateo	Pueblo	Amanalco	México
51266	San Miguel (San Miguel Tenextepec)	Pueblo	Amanalco	México
51266	San Sebastián el Chico	Barrio	Amanalco	México
51266	Pueblo Nuevo	Pueblo	Amanalco	México
51267	San Mateo Quinta Sección (La Providencia)	Pueblo	Amanalco	México
51267	San Sebastián el Grande	Pueblo	Amanalco	México
51268	Polvillos (San Bartolo Quinta Sección)	Pueblo	Amanalco	México
51268	San Bartolo	Pueblo	Amanalco	México
51270	El Ancón	Pueblo	Amanalco	México
51270	El Temporal	Ranchería	Amanalco	México
51273	Capilla Vieja	Ranchería	Amanalco	México
51273	Ojo de Agua	Ranchería	Amanalco	México
51274	Corral de Piedra	Ranchería	Amanalco	México
51280	El Capulín Segunda Sección	Pueblo	Amanalco	México
51280	El Capulín Tercera Sección (Palo Mancornado)	Pueblo	Amanalco	México
51280	Huacal Viejo	Pueblo	Amanalco	México
51280	El Capulín Primera Sección	Pueblo	Amanalco	México
51280	Agua Bendita	Ranchería	Amanalco	México
51285	El Potrero Segunda Sección	Pueblo	Amanalco	México
51285	El Potrero	Pueblo	Amanalco	México
51287	Hacienda Nueva	Pueblo	Amanalco	México
51287	El Zacatonal	Ranchería	Amanalco	México
51287	San Lucas Cuarta Sección (San Francisco)	Pueblo	Amanalco	México
51287	El Pedregal	Ranchería	Amanalco	México
51300	La Cascada (Barrio del Varal)	Barrio	Temascaltepec	México
51300	La Magdalena (La Magdalena)	Barrio	Temascaltepec	México
51300	San Francisco	Barrio	Temascaltepec	México
51300	Balveria	Barrio	Temascaltepec	México
51300	San Sebastián Carboneras (Carboneras)	Pueblo	Temascaltepec	México
51300	Temascaltepec de González	Pueblo	Temascaltepec	México
51300	Del Fortín	Barrio	Temascaltepec	México
51300	Milán	Barrio	Temascaltepec	México
51300	De Santiago	Barrio	Temascaltepec	México
51300	Del Temeroso	Barrio	Temascaltepec	México
51300	De Cantarranas	Barrio	Temascaltepec	México
51300	Carnicería	Pueblo	Temascaltepec	México
51303	San Lucas del Pulque	Pueblo	Temascaltepec	México
51304	Telpintla	Pueblo	Temascaltepec	México
51304	La Albarrada (San Francisco la Albarrada)	Pueblo	Temascaltepec	México
51304	Los Timbres	Pueblo	Temascaltepec	México
51304	El Tule	Ranchería	Temascaltepec	México
51305	El Cerro Pelón	Pueblo	Temascaltepec	México
51305	El Peñón	Ranchería	Temascaltepec	México
51310	La Finca	Pueblo	Temascaltepec	México
51310	El Salitre	Pueblo	Temascaltepec	México
51314	El Chilar del Ejido de las Trancas	Ranchería	Temascaltepec	México
51314	Las Trancas	Ranchería	Temascaltepec	México
51314	San Pedro Tenayac	Pueblo	Temascaltepec	México
51314	Potrero de Tenayac	Pueblo	Temascaltepec	México
51315	Lampazos	Pueblo	Temascaltepec	México
51320	San Mateo Almomoloa	Pueblo	Temascaltepec	México
51320	Potrero de San José (La Rinconada)	Pueblo	Temascaltepec	México
51323	San Francisco Oxtotilpan	Pueblo	Temascaltepec	México
51323	Mesón Viejo	Pueblo	Temascaltepec	México
51324	Hoyos de Vázquez	Ranchería	Temascaltepec	México
51324	San Miguel Oxtotilpan	Pueblo	Temascaltepec	México
51325	Granjas de Cieneguillas	Ranchería	Temascaltepec	México
51325	Santanas	Pueblo	Temascaltepec	México
51325	La Comunidad	Pueblo	Temascaltepec	México
51325	Cieneguillas de González (Cieneguillas)	Pueblo	Temascaltepec	México
51325	San Antonio Albarranes	Pueblo	Temascaltepec	México
51326	Jesús del Monte	Pueblo	Temascaltepec	México
51340	Real de Arriba	Ejido	Temascaltepec	México
51340	Rincón de San Andrés	Pueblo	Temascaltepec	México
51340	Mina del Rincón	Ranchería	Temascaltepec	México
51340	Las Mesas de Real de Arriba	Ranchería	Temascaltepec	México
51340	Real de Arriba	Pueblo	Temascaltepec	México
51340	San Andrés de los Gama	Pueblo	Temascaltepec	México
51340	Milpas Viejas	Pueblo	Temascaltepec	México
51344	La Laguna	Ranchería	Temascaltepec	México
51344	Los Ocotes	Pueblo	Temascaltepec	México
51344	Pedregales de Tequesquipan	Ranchería	Temascaltepec	México
51344	Pueblo Nuevo	Ranchería	Temascaltepec	México
51344	San Martín Tequesquipan (Tequesquipan)	Pueblo	Temascaltepec	México
51344	La Estancia de Tequesquipan	Pueblo	Temascaltepec	México
51344	Rincón de Atarasquillo	Pueblo	Temascaltepec	México
51344	Rincón de Tequesquipan	Pueblo	Temascaltepec	México
51344	San Juan	Ranchería	Temascaltepec	México
51345	El Varal	Ranchería	Temascaltepec	México
51346	Cajones	Ranchería	Temascaltepec	México
51346	Cieneguillas de Labra	Ranchería	Temascaltepec	México
51346	Labor las Cabras	Ranchería	Temascaltepec	México
51346	Manzana de Tequesquipan (Las Manzanas)	Ranchería	Temascaltepec	México
51346	Manzana del Jabalí	Ranchería	Temascaltepec	México
51346	La Cumbre	Ranchería	Temascaltepec	México
51346	La Guacamaya	Pueblo	Temascaltepec	México
51346	Plan de Vigas	Pueblo	Temascaltepec	México
51350	San Miguel Zinacantepec	Pueblo	Zinacantepec	México
51354	La Joya	Colonia	Zinacantepec	México
51354	Ejidal San Francisco Tlalcilalcalpan	Colonia	Zinacantepec	México
51354	De San Miguel	Barrio	Zinacantepec	México
51354	Del Calvario	Barrio	Zinacantepec	México
51354	La Esperanza	Fraccionamiento	Zinacantepec	México
51354	Cerro del Murciélago	Barrio	Zinacantepec	México
51354	Las Ánimas	Colonia	Zinacantepec	México
51354	La Aurora II	Fraccionamiento	Zinacantepec	México
51354	La Aurora I	Fraccionamiento	Zinacantepec	México
51354	Residencial Zinacantepec	Fraccionamiento	Zinacantepec	México
51354	29 de Octubre	Fraccionamiento	Zinacantepec	México
51354	Los Maestros	Fraccionamiento	Zinacantepec	México
51354	Villas de Guadalupe	Fraccionamiento	Zinacantepec	México
51354	San Miguel	Barrio	Zinacantepec	México
51354	Vista Nevado 1	Fraccionamiento	Zinacantepec	México
51355	San Valentín	Fraccionamiento	Zinacantepec	México
51355	El Capón (Puerta del Llano)	Ranchería	Zinacantepec	México
51355	Santa Martha	Ranchería	Zinacantepec	México
51355	Zimbrones	Barrio	Zinacantepec	México
51355	Las Culturas	Colonia	Zinacantepec	México
51355	Emiliano Zapata	Colonia	Zinacantepec	México
51355	San Jorge	Exhacienda	Zinacantepec	México
51355	La Cruz	Colonia	Zinacantepec	México
51355	Residencial La Victoria	Fraccionamiento	Zinacantepec	México
51355	Rinconada de Tecaxic	Colonia	Zinacantepec	México
51355	Zamarrero	Fraccionamiento	Zinacantepec	México
51355	San Lorenzo Cuautenco	Pueblo	Zinacantepec	México
51355	San Luis Mextepec	Pueblo	Zinacantepec	México
51355	Rancho San Nicolás	Fraccionamiento	Zinacantepec	México
51355	Bosques Residencial	Fraccionamiento	Zinacantepec	México
51355	Ojuelos	Fraccionamiento	Zinacantepec	México
51355	La Virgen	Colonia	Zinacantepec	México
51355	La Joya	Colonia	Zinacantepec	México
51355	El Porvenir	Fraccionamiento	Zinacantepec	México
51355	La Loma	Fraccionamiento	Zinacantepec	México
51355	Casa Grande	Fraccionamiento	Zinacantepec	México
51355	Privadas de la Hacienda	Fraccionamiento	Zinacantepec	México
51355	Nueva Serratón	Colonia	Zinacantepec	México
51355	Zimbron	Colonia	Zinacantepec	México
51355	Vista Hermosa	Colonia	Zinacantepec	México
51356	De la Veracruz	Barrio	Zinacantepec	México
51356	San Gregorio	Fraccionamiento	Zinacantepec	México
51356	Irma Patricia Galindo de Rez	Colonia	Zinacantepec	México
51356	Deportiva	Colonia	Zinacantepec	México
51356	Lindavista	Colonia	Zinacantepec	México
51357	San Matías Transfiguración	Colonia	Zinacantepec	México
51357	El Testerazo	Colonia	Zinacantepec	México
51357	Ricardo Flores Magón	Colonia	Zinacantepec	México
51357	Hacienda San José Barbabosa	Fraccionamiento	Zinacantepec	México
51357	El Potrero Barbosa	Colonia	Zinacantepec	México
51357	Paraje la Puerta de Barbabosa	Fraccionamiento	Zinacantepec	México
51357	Vista Nevado Plus	Fraccionamiento	Zinacantepec	México
51360	Santa María del Monte	Pueblo	Zinacantepec	México
51364	El Cóporo	Barrio	Zinacantepec	México
51364	El Curtidor	Barrio	Zinacantepec	México
51364	San Miguel Hojas Anchas	Barrio	Zinacantepec	México
51366	San Bartolo del Llano (San Isidro)	Barrio	Zinacantepec	México
51366	San Bartolo el Viejo	Barrio	Zinacantepec	México
51367	Loma del Kiosco	Ranchería	Zinacantepec	México
51367	San Cristóbal Tecolit	Pueblo	Zinacantepec	México
51367	Loma de San Francisco	Pueblo	Zinacantepec	México
51367	De México	Barrio	Zinacantepec	México
51370	Bosques del Nevado	Fraccionamiento	Zinacantepec	México
51370	San Juan de las Huertas	Pueblo	Zinacantepec	México
51370	Santa Cruz Cuauhtenco	Pueblo	Zinacantepec	México
51370	Morelos	Colonia	Zinacantepec	México
51370	Dos de Marzo	Colonia	Zinacantepec	México
51373	Recibitas (El Remolino)	Barrio	Zinacantepec	México
51374	Ojo de Agua	Pueblo	Zinacantepec	México
51375	Tejalpa	Pueblo	Zinacantepec	México
51375	Benito Juárez	Colonia	Zinacantepec	México
51380	San Antonio Acahualco	Pueblo	Zinacantepec	México
51383	Cuauhtémoc	Colonia	Zinacantepec	México
51383	Progreso	Colonia	Zinacantepec	México
51383	San Pedro Tejalpa	Pueblo	Zinacantepec	México
51384	El Contadero de Matamoros (San José)	Pueblo	Zinacantepec	México
51385	Ciendabajo (Hacienda de Abajo)	Barrio	Zinacantepec	México
51386	La Cañada (Cañada Grande)	Colonia	Zinacantepec	México
51386	La Herradura	Colonia	Zinacantepec	México
51390	La Puerta del Monte	Pueblo	Zinacantepec	México
51390	Buenavista	Pueblo	Zinacantepec	México
51393	Loma Alta	Pueblo	Zinacantepec	México
51393	Raíces	Pueblo	Zinacantepec	México
51393	La Peñuela	Pueblo	Zinacantepec	México
51400	Tejupilco de Hidalgo Centro	Colonia	Tejupilco	México
51400	La Isla	Colonia	Tejupilco	México
51400	Sánchez	Colonia	Tejupilco	México
51400	Hidalgo	Colonia	Tejupilco	México
51400	La Florida	Colonia	Tejupilco	México
51410	Rincón de Ugarte	Colonia	Tejupilco	México
51410	Jalpan (Jalpan San Simón)	Pueblo	Tejupilco	México
51410	El Capire	Colonia	Tejupilco	México
51410	Rincón de Ugartes	Ranchería	Tejupilco	México
51410	San José de la Laguna	Colonia	Tejupilco	México
51410	Agua Bendita	Ranchería	Tejupilco	México
51410	Buenavista	Colonia	Tejupilco	México
51410	Cerro de Cacalotepec	Ranchería	Tejupilco	México
51410	El Cuagüilote Ojo de Agua (La Pera)	Ranchería	Tejupilco	México
51410	Ojo de Agua (Rincón de Ugarte)	Ranchería	Tejupilco	México
51410	Rincón de López	Colonia	Tejupilco	México
51412	México Sesenta y Ocho	Colonia	Tejupilco	México
51412	Rincón del Carmen	Pueblo	Tejupilco	México
51412	Juárez	Colonia	Tejupilco	México
51412	Lomas de Tejupilco	Colonia	Tejupilco	México
51412	México 68	Colonia	Tejupilco	México
51412	Rincón de Jaimes	Colonia	Tejupilco	México
51412	Juntas de Zacatepec (El Pedregal 2da. Manzana)	Ranchería	Tejupilco	México
51412	Rincón de Aguirre	Ranchería	Tejupilco	México
51412	Santo Domingo-Zacatepec	Pueblo	Tejupilco	México
51412	Vicente Guerrero	Colonia	Tejupilco	México
51412	Luis Donaldo Colosio	Colonia	Tejupilco	México
51412	Las Américas	Colonia	Tejupilco	México
51412	Independencia	Colonia	Tejupilco	México
51412	Cerro de Mazatepec	Ranchería	Tejupilco	México
51412	El Ocote	Ranchería	Tejupilco	México
51412	La Laguna de Mazatepec	Ranchería	Tejupilco	México
51412	Mazatepec	Pueblo	Tejupilco	México
51412	Rinconada de la Labor	Ranchería	Tejupilco	México
51412	Río de Aquiagua (Aquiagua)	Pueblo	Tejupilco	México
51412	Del Sol	Colonia	Tejupilco	México
51412	Emiliano Zapata	Colonia	Tejupilco	México
51412	Las Rosas	Colonia	Tejupilco	México
51413	San Andrés Ocotepec	Pueblo	Tejupilco	México
51413	San Gabriel Pantoja	Pueblo	Tejupilco	México
51413	Los Baños	Ranchería	Tejupilco	México
51413	Plan de Maguey	Ranchería	Tejupilco	México
51413	Puerto Madroño	Ranchería	Tejupilco	México
51413	Rincón de San Gabriel	Ranchería	Tejupilco	México
51414	ISSEMYM	Fraccionamiento	Tejupilco	México
51414	La Cabecera (Cabecera de los Arrayanes)	Colonia	Tejupilco	México
51414	Paso de Vigas	Colonia	Tejupilco	México
51414	Cuadrilla de Leones	Ranchería	Tejupilco	México
51414	Los Pericones	Ranchería	Tejupilco	México
51414	Rincón del Naranjo La Cabecera	Ranchería	Tejupilco	México
51414	Los Colorines	Ranchería	Tejupilco	México
51414	Fragüita	Ranchería	Tejupilco	México
51415	La Cofradía (Los Mangos)	Colonia	Tejupilco	México
51415	El Calvario	Colonia	Tejupilco	México
51415	Cañadas de San Simón (Cañada de Chivas)	Ranchería	Tejupilco	México
51415	Epazotes	Colonia	Tejupilco	México
51415	Salitre de San Lucas	Ranchería	Tejupilco	México
51415	Jumiltepec	Pueblo	Tejupilco	México
51415	Suquitila	Ranchería	Tejupilco	México
51415	El Cirián de la Laguna (El Cirián)	Ranchería	Tejupilco	México
51415	El Salitre Segunda Seccción	Ranchería	Tejupilco	México
51416	San Lucas del Maíz (San Lucas)	Pueblo	Tejupilco	México
51416	La Joya de San Lucas	Ranchería	Tejupilco	México
51416	Llano Grande (Llano Grande de San Lucas)	Ranchería	Tejupilco	México
51416	Piedra Ancha	Ranchería	Tejupilco	México
51417	Sauz de San Lucas (El Sauz)	Pueblo	Tejupilco	México
51417	El Platanal (El Platanal de San Lucas)	Ranchería	Tejupilco	México
51417	Agua Negra	Ranchería	Tejupilco	México
51417	Antonio de San Lucas del Maíz	Ranchería	Tejupilco	México
51417	Cuadrilla de los Martínez (Los Martínez)	Ranchería	Tejupilco	México
51417	Cuevillas	Ranchería	Tejupilco	México
51417	El Mamey de San Lucas	Ranchería	Tejupilco	México
51417	La Angostura Primera	Ranchería	Tejupilco	México
51417	Fundadora de San Lucas del Maíz	Ranchería	Tejupilco	México
51417	Limón de San Lucas del Maíz	Ranchería	Tejupilco	México
51417	Los Melchores de San Lucas (Los Melchores)	Ranchería	Tejupilco	México
51418	Tenería (Pueblo Nuevo)	Pueblo	Tejupilco	México
51418	Almoloya de las Granadas	Pueblo	Tejupilco	México
51418	Cerro Alto (Milpa Vieja)	Ranchería	Tejupilco	México
51418	Río Grande	Pueblo	Tejupilco	México
51422	La Labor de Zaragoza	Pueblo	Tejupilco	México
51422	Cerro Gordo	Ranchería	Tejupilco	México
51422	El Limón de Ixtapan	Ranchería	Tejupilco	México
51422	El Rodeo	Ranchería	Tejupilco	México
51422	La Estancia de Ixtapan	Ranchería	Tejupilco	México
51422	Ocoyapan	Pueblo	Tejupilco	México
51422	Zapote del Ancón	Ranchería	Tejupilco	México
51423	Arballo	Colonia	Tejupilco	México
51423	Pantoja	Pueblo	Tejupilco	México
51423	Antimonio	Ranchería	Tejupilco	México
51423	Antimonio Pantoja	Ranchería	Tejupilco	México
51423	El Capire de Pantoja	Ranchería	Tejupilco	México
51423	Santiago Arizmendi	Pueblo	Tejupilco	México
51424	Llano Grande	Pueblo	Tejupilco	México
51424	El Sauz Ocotepec (El Sauz)	Ranchería	Tejupilco	México
51424	Encinos Verdes	Ranchería	Tejupilco	México
51424	Las Ánimas	Ranchería	Tejupilco	México
51424	Rincón el Sauz Ocotepec	Ranchería	Tejupilco	México
51425	Cerro del Chirimoyo	Ranchería	Tejupilco	México
51425	Cerro del Divisadero	Ranchería	Tejupilco	México
51425	El Zapote de Ixtapan (El Zapote)	Ranchería	Tejupilco	México
51425	Hacienda de Ixtapan	Ranchería	Tejupilco	México
51425	Juluapan (Juloapan)	Ranchería	Tejupilco	México
51425	Las Moras	Ranchería	Tejupilco	México
51425	Lodo Prieto	Ranchería	Tejupilco	México
51425	Los Nopales	Ranchería	Tejupilco	México
51425	Puerto de Jalpan (Jalpa)	Ranchería	Tejupilco	México
51425	Rincón Chiquito	Ranchería	Tejupilco	México
51425	San Francisco	Ranchería	Tejupilco	México
51426	Puerto del Aire	Pueblo	Tejupilco	México
51426	Ilamos	Ranchería	Tejupilco	México
51426	La Guitarra	Ranchería	Tejupilco	México
51426	Las Juntas de Ixtapan	Ranchería	Tejupilco	México
51426	San Miguel Ixtapan	Pueblo	Tejupilco	México
51427	El Carmen de Ixtapan	Colonia	Tejupilco	México
51427	Tirados	Ranchería	Tejupilco	México
51427	Cuadrilla de López	Colonia	Tejupilco	México
51427	Acamuchitlán	Pueblo	Tejupilco	México
51427	El Aguacate de Monte de Dios	Ranchería	Tejupilco	México
51427	El Burrito (El Sauz)	Ranchería	Tejupilco	México
51427	Salitre de Acamuchitlán (El Salitre)	Pueblo	Tejupilco	México
51427	Las Juntas	Ranchería	Tejupilco	México
51427	Monte de Dios	Ranchería	Tejupilco	México
51427	Pinzán Morado	Ranchería	Tejupilco	México
51427	Plaza de Gallos	Ranchería	Tejupilco	México
51427	Salto Grande	Ranchería	Tejupilco	México
51427	San Mateo (San Mateo Ixtapan)	Ranchería	Tejupilco	México
51427	Tonatilco	Ranchería	Tejupilco	México
51428	Las Mesas de Ixtapan (Las Mesas)	Pueblo	Tejupilco	México
51428	Santa Rosa Rincón de Jaimes	Ranchería	Tejupilco	México
51428	El Potrero de Ixtapan (El Potrero)	Ranchería	Tejupilco	México
51428	La Florida (Kilómetro 5)	Pueblo	Tejupilco	México
51428	Barranca de Ixtapan	Ranchería	Tejupilco	México
51428	Campanario de Ixtapan (El Campanario)	Ranchería	Tejupilco	México
51428	Santa María de las Flores	Ranchería	Tejupilco	México
51428	Santa Rosa (Las Juntas)	Ranchería	Tejupilco	México
51430	Bejucos	Colonia	Tejupilco	México
51432	Rincón del Guayabal	Colonia	Tejupilco	México
51432	Cerro de los Elizaldes	Ranchería	Tejupilco	México
51432	Cerro de los Huérfanos	Ranchería	Tejupilco	México
51432	Cuadrilla del Molino	Ranchería	Tejupilco	México
51432	El Ciruelo	Ranchería	Tejupilco	México
51432	La Cañada	Ranchería	Tejupilco	México
51432	Las Mesas de los Capires (Las Mesas)	Ranchería	Tejupilco	México
51432	Potrero del Guayabal	Ranchería	Tejupilco	México
51432	Puerto la Piedra Labrada (Puerto de Carboneras)	Ranchería	Tejupilco	México
51432	Rincón de Carboneras (Carboneras)	Ranchería	Tejupilco	México
51433	El Corupo	Ranchería	Tejupilco	México
51433	El Jumate	Ranchería	Tejupilco	México
51433	El Zapote de Acamuchitlán (El Zapote)	Pueblo	Tejupilco	México
51433	La Calera	Ranchería	Tejupilco	México
51433	La Mesa	Ranchería	Tejupilco	México
51433	Planes de la Cofradía (Los Planes)	Ranchería	Tejupilco	México
51433	Río Chiquito	Ranchería	Tejupilco	México
51433	Tejapan Limones (Tejapan)	Pueblo	Tejupilco	México
51434	Coahuilotes	Ranchería	Tejupilco	México
51434	El Guayabo	Ranchería	Tejupilco	México
51434	El Naranjo Grande	Ranchería	Tejupilco	México
51434	La Bolsa	Ranchería	Tejupilco	México
51434	La Cuitacera	Ranchería	Tejupilco	México
51434	Las Anonas	Ranchería	Tejupilco	México
51434	Las Ilamas	Ranchería	Tejupilco	México
51434	Los Pinzanes (La Pinzanera)	Ranchería	Tejupilco	México
51434	Naranjo Chiquito	Ranchería	Tejupilco	México
51434	Paso de San Juan	Pueblo	Tejupilco	México
51435	Paso del Guayabal (El Paso)	Pueblo	Tejupilco	México
51435	Barro Prieto	Ranchería	Tejupilco	México
51435	Cacahuananche	Ranchería	Tejupilco	México
51435	La Calera	Ranchería	Tejupilco	México
51435	Paso de la Parota	Ranchería	Tejupilco	México
51435	Plan del Puente	Ranchería	Tejupilco	México
51436	Benito Juárez (Lázaro Cárdenas del Río)	Colonia	Tejupilco	México
51436	El Molino del Salto (Galera del Molino)	Ranchería	Tejupilco	México
51436	El Salto (El Salto Dos)	Ranchería	Tejupilco	México
51436	Las Juntas del Salto	Ranchería	Tejupilco	México
51436	Las Lomas (Los Depósitos)	Ranchería	Tejupilco	México
51436	Mesa de Gallos (El Llano)	Ranchería	Tejupilco	México
51436	La Palma Cuata (La Palma)	Colonia	Tejupilco	México
51436	Potrero Grande	Ranchería	Tejupilco	México
51436	El Puerto del Blanqueadero (Peñas Pintas)	Ranchería	Tejupilco	México
51437	La Parota (Rancho las Parotas)	Ranchería	Tejupilco	México
51437	Paredes Prietas	Ranchería	Tejupilco	México
51440	El Progreso de Luvianos	Colonia	Luvianos	México
51440	San Sebastián (Rincón de San Sebastián)	Ranchería	Luvianos	México
51440	Rincón de Alambre	Ranchería	Luvianos	México
51440	Niños Héroes	Colonia	Luvianos	México
51442	Trojes	Ranchería	Luvianos	México
51442	Arroyo Seco	Ranchería	Luvianos	México
51442	Cerro del Venado	Pueblo	Luvianos	México
51442	Cuadrilla de Benítez	Pueblo	Luvianos	México
51442	Ojo de Agua	Ranchería	Luvianos	México
51442	Rincón de Vargas	Ranchería	Luvianos	México
51442	Toma de Agua	Ranchería	Luvianos	México
51443	El Estanco	Colonia	Luvianos	México
51443	Puerto del Salitre	Ranchería	Luvianos	México
51443	Calaveras	Ranchería	Luvianos	México
51443	Capire	Ranchería	Luvianos	México
51443	El Pie de la Loma	Ranchería	Luvianos	México
51443	Jaquinicuil	Ranchería	Luvianos	México
51443	Los Pinzanes	Ranchería	Luvianos	México
51445	San Antonio Luvianos (San Antonio)	Colonia	Luvianos	México
51445	Cerro de la Culebra	Ranchería	Luvianos	México
51445	Paso de la Arena	Ranchería	Luvianos	México
51446	Caja de Agua	Colonia	Luvianos	México
51446	Cerro de Castelanes	Pueblo	Luvianos	México
51446	Cerro del Agua	Ranchería	Luvianos	México
51446	El Pueblito	Ranchería	Luvianos	México
51446	Iglesia Vieja	Pueblo	Luvianos	México
51446	Puerta de Golpe	Ranchería	Luvianos	México
51446	Rincón de San Lucas	Ranchería	Luvianos	México
51453	El Copalito	Ranchería	Luvianos	México
51453	El Naranjito	Pueblo	Luvianos	México
51453	El Puerto de la Sosa	Ranchería	Luvianos	México
51453	El Reparo de Nanchititla (El Reparo)	Pueblo	Luvianos	México
51453	El Rincón de Cagalaguas (Rincón los Mejías)	Ranchería	Luvianos	México
51453	Hormigueros	Pueblo	Luvianos	México
51453	Las Lajas	Ranchería	Luvianos	México
51453	Las Palmas	Ranchería	Luvianos	México
51453	Los Arrayanes (Los Arrayanes Verdes)	Ranchería	Luvianos	México
51453	Los Bancos	Ranchería	Luvianos	México
51453	Los Ocotes	Ranchería	Luvianos	México
51453	Los Piñones (El Sauz)	Rancho	Luvianos	México
51453	Los Terreros	Ranchería	Luvianos	México
51453	Plan de Chihuahua	Ranchería	Luvianos	México
51453	Puerto de los Duraznos	Ranchería	Luvianos	México
51453	Rincón de Arrayanes	Ranchería	Luvianos	México
51453	Rincón de González	Ranchería	Luvianos	México
51454	Cañadas de Nanchititla	Colonia	Luvianos	México
51454	Aguacatillo	Ranchería	Luvianos	México
51454	Carrizal	Ranchería	Luvianos	México
51454	Colcomeca	Ranchería	Luvianos	México
51454	El Capire	Pueblo	Luvianos	México
51454	Guayabos (El Guayabo)	Rancho	Luvianos	México
51454	La Laguna	Ranchería	Luvianos	México
51454	Las Paredes	Ranchería	Luvianos	México
51454	Los Bancos	Ranchería	Luvianos	México
51454	Los Tejocotes	Ranchería	Luvianos	México
51454	Majada de los Encinos (Majada de Encinos)	Ranchería	Luvianos	México
51454	Monte Verde	Ranchería	Luvianos	México
51454	Palo Verde	Ranchería	Luvianos	México
51454	Palos Prietos	Ranchería	Luvianos	México
51454	Peña Calva	Ranchería	Luvianos	México
51454	Rincón de Martínez	Ranchería	Luvianos	México
51454	Tequesquite (El Tequezquite)	Ranchería	Luvianos	México
51455	El Cirare (Cirián de Hilar)	Ranchería	Luvianos	México
51455	La Canoa	Ranchería	Luvianos	México
51455	Las Parotas	Ranchería	Luvianos	México
51455	Los Arrayanes	Ranchería	Luvianos	México
51455	Los Llanitos	Ranchería	Luvianos	México
51455	Los Tequereques	Ranchería	Luvianos	México
51455	Mesa de los Caballos	Ranchería	Luvianos	México
51455	Ojo de Agua-Palo Gordo	Pueblo	Luvianos	México
51455	Palo Gordo	Ranchería	Luvianos	México
51455	Sesteadero de Abajo	Ranchería	Luvianos	México
51455	Sesteadero de Arriba	Ranchería	Luvianos	México
51455	Solosúchil	Ranchería	Luvianos	México
51456	Las Anonas	Ranchería	Luvianos	México
51456	Caja de Agua	Pueblo	Luvianos	México
51456	Calabazos (Las Pilas)	Ranchería	Luvianos	México
51456	El Cerro	Ranchería	Luvianos	México
51456	El Limón	Pueblo	Luvianos	México
51456	El Plátano	Ranchería	Luvianos	México
51456	El Pueblito	Pueblo	Luvianos	México
51456	El Rodeo	Ranchería	Luvianos	México
51456	La Angostura Dos	Ranchería	Luvianos	México
51456	La Angostura Uno (Cerro de la Angostura Uno)	Ranchería	Luvianos	México
51456	La Arboleda	Ranchería	Luvianos	México
51456	La Camelina	Ranchería	Luvianos	México
51456	La Mesa del Potrero Chiquito	Ranchería	Luvianos	México
51456	La Toma	Ranchería	Luvianos	México
51456	Los Pericones (Ranchería los Pericones)	Ranchería	Luvianos	México
51456	Mesa de Nietos	Pueblo	Luvianos	México
51456	Playa el Guayabo	Ranchería	Luvianos	México
51456	Salitrillo	Ranchería	Luvianos	México
51456	Sanguijuelas	Ranchería	Luvianos	México
51456	El Sauz Palo Gordo	Pueblo	Luvianos	México
51456	Tremesinos	Ranchería	Luvianos	México
51457	La Estancia de Nanchititla (La Estancia)	Ranchería	Luvianos	México
51457	Cacahuananche	Ranchería	Luvianos	México
51457	Cuachinola	Ranchería	Luvianos	México
51457	El Carrizal	Ranchería	Luvianos	México
51457	El Huizache	Ranchería	Luvianos	México
51457	El Jagüey	Ranchería	Luvianos	México
51457	El Naranjo	Pueblo	Luvianos	México
51457	El Tanque	Ranchería	Luvianos	México
51457	Las Lajitas	Ranchería	Luvianos	México
51457	Las Piñas	Ranchería	Luvianos	México
51457	Los Arrayanes	Ranchería	Luvianos	México
51457	Los Pinzanes	Pueblo	Luvianos	México
51457	El Ojo de Agua	Ranchería	Luvianos	México
51457	Piedra Colorada	Ranchería	Luvianos	México
51457	Puerto de los Terreros	Ranchería	Luvianos	México
51457	Puerto de los Zacatones	Ranchería	Luvianos	México
51457	Sesteadero	Ranchería	Luvianos	México
51458	Cuahuilotes (Cuajilotes)	Ranchería	Luvianos	México
51458	Avellaneda	Ranchería	Luvianos	México
51458	El Cascalote	Ranchería	Luvianos	México
51458	El Manguito (La Parotilla)	Ranchería	Luvianos	México
51458	El Salto de San Jerónimo	Ranchería	Luvianos	México
51458	Jocoleche	Ranchería	Luvianos	México
51458	Las Juntas	Colonia	Luvianos	México
51458	Las Trojas	Ranchería	Luvianos	México
51458	Lechuguillas	Ranchería	Luvianos	México
51458	Los Curindales	Ranchería	Luvianos	México
51458	Navarrete	Ranchería	Luvianos	México
51459	El Barro	Ranchería	Luvianos	México
51459	El Ranchito	Ranchería	Luvianos	México
51459	Gabazos (El Bagaso)	Ranchería	Luvianos	México
51459	Las Garzas (Potrerillos)	Ranchería	Luvianos	México
51462	Rincón de Rodríguez	Colonia	Luvianos	México
51462	Carbajales	Ranchería	Luvianos	México
51462	Corral Nuevo	Ranchería	Luvianos	México
51462	Cruz de Piedra	Ranchería	Luvianos	México
51462	El Capire de Acatitlán	Ranchería	Luvianos	México
51462	El Limón	Pueblo	Luvianos	México
51462	El Mamey Acatitlán	Pueblo	Luvianos	México
51462	Jalpan	Ranchería	Luvianos	México
51462	Jocoal	Ranchería	Luvianos	México
51462	La Mesa	Ranchería	Luvianos	México
51462	La Palma	Pueblo	Luvianos	México
51462	La Unidad (Los Ciruelos)	Ranchería	Luvianos	México
51462	Mango Solo	Ranchería	Luvianos	México
51462	Rancho Viejo	Pueblo	Luvianos	México
51462	Santa Cruz	Ranchería	Luvianos	México
51462	El Salitre Estancia Grande	Ranchería	Luvianos	México
51463	San Juan Acatitlán (Acatitlán)	Colonia	Luvianos	México
51463	Alborejo (Puerto Alborejo)	Ranchería	Luvianos	México
51463	Corral del Barro	Ranchería	Luvianos	México
51463	Cuadrilla de Sánchez	Pueblo	Luvianos	México
51463	El Aguacate	Ranchería	Luvianos	México
51463	El Naranjo de San Isidro (El Naranjo Primero)	Ranchería	Luvianos	México
51463	Hilamache	Pueblo	Luvianos	México
51463	Puerto del Higo	Ranchería	Luvianos	México
51463	Rincón del Hilamache	Ranchería	Luvianos	México
51463	Rincón del Naranjo la Presa	Ranchería	Luvianos	México
51463	Salitre del Puente (Puente del Salitre)	Pueblo	Luvianos	México
51463	Tres Encinos	Ranchería	Luvianos	México
51464	Estancia Grande (San José Estancia Grande)	Ranchería	Luvianos	México
51464	Puerto el Capulín	Ranchería	Luvianos	México
51464	Santa Rosa Estancia Grande	Ranchería	Luvianos	México
51465	San Simón Piedra Grande (San Simón)	Pueblo	Luvianos	México
51465	Hermiltepec (Peña Blanca)	Colonia	Luvianos	México
51465	El Crucillo	Ranchería	Luvianos	México
51465	El Manguito	Ranchería	Luvianos	México
51465	El Rincón Piedra Grande	Ranchería	Luvianos	México
51465	La Candelaria	Ranchería	Luvianos	México
51465	La Minita	Ranchería	Luvianos	México
51465	Magadán	Ranchería	Luvianos	México
51465	Paso del Agua (Cristo Rey)	Pueblo	Luvianos	México
51465	Piedra Grande	Pueblo	Luvianos	México
51465	Salitre Piedra Grande	Pueblo	Luvianos	México
51465	Santa Rosa Hermiltepec	Pueblo	Luvianos	México
51465	Mesa de los Espinos (Mesa de las Escobas)	Ranchería	Luvianos	México
51466	El Tecuán	Ranchería	Luvianos	México
51466	La Chaqueta	Ranchería	Luvianos	México
51466	La Laguna	Ranchería	Luvianos	México
51466	Potrero de Palmarillos	Ranchería	Luvianos	México
51467	Buenavista	Ranchería	Luvianos	México
51467	El Brasil	Ranchería	Luvianos	México
51467	El Pueblito	Pueblo	Luvianos	México
51467	La Parota	Ranchería	Luvianos	México
51467	La Yerbabuena	Ranchería	Luvianos	México
51467	Los Bancos	Ranchería	Luvianos	México
51467	Los Pozos	Ranchería	Luvianos	México
51467	Mesa del Capulín (Mesa de los Nanches)	Ranchería	Luvianos	México
51467	Pedernales	Ranchería	Luvianos	México
51467	Potrero Vallecitos (El Potrero)	Pueblo	Luvianos	México
51467	Pungarancho	Pueblo	Luvianos	México
51467	San Nicolás	Ranchería	Luvianos	México
51467	Vallecitos de Hermiltepec (Vallecito)	Pueblo	Luvianos	México
51468	Agua Colorada	Ranchería	Luvianos	México
51468	Arrayán	Ranchería	Luvianos	México
51468	Cañada del Campanario	Ranchería	Luvianos	México
51468	Chirimoya	Ranchería	Luvianos	México
51468	Ciprianes	Pueblo	Luvianos	México
51468	Cruz de Clavos	Pueblo	Luvianos	México
51468	El Campanario	Pueblo	Luvianos	México
51468	El Cirián de Hermiltepec	Pueblo	Luvianos	México
51468	El Granjen	Ranchería	Luvianos	México
51468	Huiztepec	Ranchería	Luvianos	México
51468	Rincón Cruz de Clavos	Ranchería	Luvianos	México
51468	Rincón de Ciprianes	Ranchería	Luvianos	México
51470	San Simón de Guerrero	Pueblo	San Simón de Guerrero	México
51470	Cruz Verde	Barrio	San Simón de Guerrero	México
51470	Santa Rosa (La Gallinada)	Barrio	San Simón de Guerrero	México
51475	San Pedro (El Espinal)	Barrio	San Simón de Guerrero	México
51475	San José (Barrio Tecolote)	Barrio	San Simón de Guerrero	México
51475	La Fragua	Barrio	San Simón de Guerrero	México
51476	Del Monte	Barrio	San Simón de Guerrero	México
51477	La Sierrita	Ranchería	San Simón de Guerrero	México
51479	Estancia Vieja (San José la Estancia)	Ranchería	San Simón de Guerrero	México
51479	Santa Cruz	Barrio	San Simón de Guerrero	México
51479	Mina de Agua	Ranchería	San Simón de Guerrero	México
51480	La Rueda San Gabriel Cuentla	Ranchería	San Simón de Guerrero	México
51480	San Diego Cuentla (Llano Grande)	Pueblo	San Simón de Guerrero	México
51480	San Gabriel Cuentla	Pueblo	San Simón de Guerrero	México
51480	La Rinconada	Pueblo	San Simón de Guerrero	México
51480	Rincón de los Trigos	Ranchería	San Simón de Guerrero	México
51483	Rancho Viejo	Ranchería	San Simón de Guerrero	México
51483	Titipac Cuentla (Titipac)	Ranchería	San Simón de Guerrero	México
51483	Peña Redonda	Ranchería	San Simón de Guerrero	México
51483	Yerbabuena	Ranchería	San Simón de Guerrero	México
51484	El Mango Cuentla (El Mango)	Ranchería	San Simón de Guerrero	México
51484	El Zapote	Ranchería	San Simón de Guerrero	México
51484	Guardarraya	Ranchería	San Simón de Guerrero	México
51485	El Jocoyol Cuentla (Jocoyoles)	Ranchería	San Simón de Guerrero	México
51485	El Momustle	Ranchería	San Simón de Guerrero	México
51485	La Cumbre	Ranchería	San Simón de Guerrero	México
51486	Los Berros Cuentla	Ranchería	San Simón de Guerrero	México
51500	Amatepec	Pueblo	Amatepec	México
51510	Rincón de la Cofradía	Pueblo	Amatepec	México
51510	San Martín	Pueblo	Amatepec	México
51510	El Aguacate (El Aguacate San Martín)	Ranchería	Amatepec	México
51513	Chapuluapan	Ranchería	Amatepec	México
51513	Rincón de San Simón	Ranchería	Amatepec	México
51513	Corral de Piedra	Pueblo	Amatepec	México
51513	Cerro de Tlacotepec (Tlacotepec)	Pueblo	Amatepec	México
51513	Coyol de San Simón	Ranchería	Amatepec	México
51513	Encinal Verde	Ranchería	Amatepec	México
51514	Los Guajes	Pueblo	Amatepec	México
51514	San Miguel (San Miguel Zinacausto)	Pueblo	Amatepec	México
51514	Coahuilotes (Los Coahuilotes)	Pueblo	Amatepec	México
51514	El Malpaso	Pueblo	Amatepec	México
51514	Cerro de Santiago	Ranchería	Amatepec	México
51514	Güijas Blancas	Ranchería	Amatepec	México
51514	El Mango Piedras Anchas	Ranchería	Amatepec	México
51515	El Veladero	Pueblo	Amatepec	México
51515	La Mora	Ranchería	Amatepec	México
51515	El Puerto	Ranchería	Amatepec	México
51515	Joya de la Venta	Ranchería	Amatepec	México
51516	El Panteón de San Felipe de Jesús	Ranchería	Amatepec	México
51516	La Carrera	Ranchería	Amatepec	México
51516	Los Encinos	Ranchería	Amatepec	México
51516	Los Timbres	Ranchería	Amatepec	México
51516	El Monteal (Barranca Papaloapan)	Pueblo	Amatepec	México
51516	Las Joyas	Ranchería	Amatepec	México
51516	San Felipe de Jesús	Pueblo	Amatepec	México
51516	Puente Viejo	Ranchería	Amatepec	México
51517	San Simón (San Simón Zozocoltepec)	Pueblo	Amatepec	México
51517	Tepehuajes Uno (Tepehuajes de Arriba)	Pueblo	Amatepec	México
51517	Tepehuajes (Tepehuajes de Abajo)	Ranchería	Amatepec	México
51517	La Parota (La Parota Tepehuajes)	Ranchería	Amatepec	México
51518	El Llano	Ranchería	Amatepec	México
51523	Cerro de las Ánimas (El Cerro de las Ánimas)	Pueblo	Amatepec	México
51523	El Sitio	Pueblo	Amatepec	México
51523	Pueblo Nuevo (San Lucas Pueblo Nuevo)	Pueblo	Amatepec	México
51523	Cerro de las Ánimas-El Manguito	Ranchería	Amatepec	México
51523	San Marcos	Ranchería	Amatepec	México
51524	Tepehuastitlán	Ranchería	Amatepec	México
51524	Salitre de López	Ranchería	Amatepec	México
51525	Palmarillos	Ranchería	Amatepec	México
51525	Aguacatitlán (La Carreta)	Pueblo	Amatepec	México
51525	Dolores (Hacienda Dolores)	Pueblo	Amatepec	México
51525	El Rancho	Pueblo	Amatepec	México
51525	El Fresno	Ranchería	Amatepec	México
51525	Salitre Palmarillos	Pueblo	Amatepec	México
51525	Los Sabinos	Ranchería	Amatepec	México
51525	Charco Hondo (El Tlacuache)	Ranchería	Amatepec	México
51526	Rincón de Esmeraldas	Pueblo	Amatepec	México
51526	Ayuquila	Pueblo	Amatepec	México
51526	Las Latas (Ayuquila)	Pueblo	Amatepec	México
51526	San Francisco de los Pinzanes	Pueblo	Amatepec	México
51526	La Chupa Rosa	Ranchería	Amatepec	México
51526	Los Órganos	Ranchería	Amatepec	México
51526	Las Pailas	Ranchería	Amatepec	México
51526	La Rayuela	Ranchería	Amatepec	México
51526	Barranca de Esmeraldas ( La Güila )	Ranchería	Amatepec	México
51527	Barranca del Mamey	Ranchería	Amatepec	México
51527	Crucero Cerro del Campo	Ranchería	Amatepec	México
51527	Cuadrilla del Naranjo (Rincón del Naranjo)	Ranchería	Amatepec	México
51527	Cuadrilla Nueva (La Presa)	Ranchería	Amatepec	México
51527	El Zapote	Ranchería	Amatepec	México
51527	Puente del Rodeo	Ranchería	Amatepec	México
51527	Los Timbres	Pueblo	Amatepec	México
51527	La Cofradía	Pueblo	Amatepec	México
51527	Cerro del Campo	Pueblo	Amatepec	México
51527	Santiago	Pueblo	Amatepec	México
51527	El Ortigo	Ranchería	Amatepec	México
51527	Peña del Cuervo	Ranchería	Amatepec	México
51527	Escuela Vieja	Ranchería	Amatepec	México
51527	Acatempan	Ranchería	Amatepec	México
51527	Cuadrilla Nueva	Ranchería	Amatepec	México
51527	Barrio de la Uva	Ranchería	Amatepec	México
51530	Palmar Chico	Pueblo	Amatepec	México
51530	Salitre Santa Bárbara (Santa Bárbara)	Pueblo	Amatepec	México
51530	El Conejo (Conejo Viejo)	Colonia	Amatepec	México
51530	Aviación (Campo de Aviación)	Colonia	Amatepec	México
51530	La Chaqueta	Ranchería	Amatepec	México
51530	El Pantalón	Ranchería	Amatepec	México
51530	El Convento	Ranchería	Amatepec	México
51533	Los Ajoques	Ranchería	Amatepec	México
51533	El Tlapanco	Pueblo	Amatepec	México
51533	Meyuca	Ranchería	Amatepec	México
51533	Cerro del Coyol	Ranchería	Amatepec	México
51533	Barranca del Coyol	Ranchería	Amatepec	México
51533	San Juan Tizapán (La Haciendita)	Ranchería	Amatepec	México
51533	Cristo Rey (Guacamayas)	Ranchería	Amatepec	México
51534	Matuz Puerto del Rodeo	Pueblo	Amatepec	México
51534	San Antonio Matuz	Ranchería	Amatepec	México
51534	La Palma	Colonia	Amatepec	México
51534	Las Ceibas	Ranchería	Amatepec	México
51534	Potrerillos (Potrerillos Matuz)	Ranchería	Amatepec	México
51534	Pinzanes Matuz	Ranchería	Amatepec	México
51534	El Cirián	Ranchería	Amatepec	México
51534	El Arrayán	Ranchería	Amatepec	México
51535	Cuadrilla de López	Pueblo	Amatepec	México
51535	El Tamarindo	Colonia	Amatepec	México
51535	Guayabillos	Ranchería	Amatepec	México
51536	Corral Viejo	Ranchería	Amatepec	México
51536	Santa Bárbara	Ranchería	Amatepec	México
51536	Mango Matuz	Ranchería	Amatepec	México
51536	Buenavista	Ranchería	Amatepec	México
51537	El Mamey	Ranchería	Amatepec	México
51537	Huixtitla	Pueblo	Amatepec	México
51537	Amadores (Los Amador)	Pueblo	Amatepec	México
51537	Cincuenta Arrobas	Pueblo	Amatepec	México
51537	Quimichatenco (Barranca de Quimichatenco)	Pueblo	Amatepec	México
51537	El Zapote (El Zapote López)	Ranchería	Amatepec	México
51537	El Zapote Cincuenta Arrobas (El Zapote)	Ranchería	Amatepec	México
51537	San José (San José del Palmar)	Ranchería	Amatepec	México
51537	Barranca de Gallegos	Ranchería	Amatepec	México
51540	El Pino	Ranchería	Amatepec	México
51540	Tierra Azul	Ranchería	Amatepec	México
51540	Platanal	Ranchería	Amatepec	México
51540	Los Colorines	Ranchería	Amatepec	México
51540	Los Espinos	Ranchería	Amatepec	México
51540	El Consuelo	Ranchería	Amatepec	México
51540	Puerto de la Uva	Ranchería	Amatepec	México
51540	El Paraje	Ranchería	Amatepec	México
51543	Tlalchichilpan	Ranchería	Amatepec	México
51543	El Rodeo	Ranchería	Amatepec	México
51544	Sumpancle	Ranchería	Amatepec	México
51544	La Goleta	Pueblo	Amatepec	México
51544	Zacatones	Ranchería	Amatepec	México
51550	Tlatlaya	Pueblo	Tlatlaya	México
51553	La Cueva	Pueblo	Tlatlaya	México
51553	Loma Larga	Pueblo	Tlatlaya	México
51553	Peña del Agua	Ranchería	Tlatlaya	México
51553	Piedra Ancha	Ranchería	Tlatlaya	México
51553	Puerto Frío	Ranchería	Tlatlaya	México
51553	Teopazul (Teopazul el Encinal)	Ranchería	Tlatlaya	México
51553	Coatepec (Coatepequito)	Pueblo	Tlatlaya	México
51553	Miraveles	Ranchería	Tlatlaya	México
51553	Dieciocho de Marzo	Ranchería	Tlatlaya	México
51553	El Terroncillo	Ranchería	Tlatlaya	México
51554	Corral de Piedra Dos (Corral de Piedra)	Ranchería	Tlatlaya	México
51554	Juntas del Paso Topilar	Ranchería	Tlatlaya	México
51554	El Arenal	Ranchería	Tlatlaya	México
51554	Tecomatlán	Ranchería	Tlatlaya	México
51554	Cerro del Morado	Ranchería	Tlatlaya	México
51554	El Revelado	Ranchería	Tlatlaya	México
51555	El Potrero	Ranchería	Tlatlaya	México
51555	La Laguna Puerto de la Arena	Ranchería	Tlatlaya	México
51555	Puerto de la Arena	Pueblo	Tlatlaya	México
51555	Plan de la Cuadrilla	Ranchería	Tlatlaya	México
51556	Juntas del Río Limón	Ranchería	Tlatlaya	México
51556	San Mateo (San Mateo Guayatenco)	Pueblo	Tlatlaya	México
51556	El Limón	Pueblo	Tlatlaya	México
51556	El Mango	Ranchería	Tlatlaya	México
51556	Cuadrilla de Gutiérrez	Ranchería	Tlatlaya	México
51557	Los Ocotes	Pueblo	Tlatlaya	México
51557	San Juan Tetitlán	Pueblo	Tlatlaya	México
51557	Benito Juárez	Colonia	Tlatlaya	México
51558	Barriales	Ranchería	Tlatlaya	México
51558	Cuadrilla de los Sotero	Ranchería	Tlatlaya	México
51558	La Cofradía	Ranchería	Tlatlaya	México
51558	Pueblo Nuevo	Colonia	Tlatlaya	México
51559	Corral Parota (Tepehuastitlán)	Ranchería	Tlatlaya	México
51559	La Guacamaya	Ranchería	Tlatlaya	México
51559	Mazatitla	Ranchería	Tlatlaya	México
51559	Santa Cruz	Pueblo	Tlatlaya	México
51559	Santa María	Pueblo	Tlatlaya	México
51560	Limón Terrero	Ranchería	Tlatlaya	México
51560	Azúchil	Ranchería	Tlatlaya	México
51564	El Poroche	Ranchería	Tlatlaya	México
51564	El Tiquimil	Ranchería	Tlatlaya	México
51564	Los Bautistas (Cerro de los Bautistas)	Ranchería	Tlatlaya	México
51564	Las Juntas de Azúchil	Ranchería	Tlatlaya	México
51565	El Devanador	Ranchería	Tlatlaya	México
51565	La Cubata	Ranchería	Tlatlaya	México
51565	Vuelta del Río	Pueblo	Tlatlaya	México
51566	Coahuilotes (Pueblo Nuevo)	Ranchería	Tlatlaya	México
51566	El Naranjito (Naranjito del Paso)	Ranchería	Tlatlaya	México
51566	Ranchos Nuevos	Ranchería	Tlatlaya	México
51566	El Zapote (El Zapote San Antonio del Rosario)	Pueblo	Tlatlaya	México
51566	Cacahuananche	Ranchería	Tlatlaya	México
51568	La Lagunilla	Pueblo	Tlatlaya	México
51569	Agua Fría	Ranchería	Tlatlaya	México
51569	La Víbora	Ranchería	Tlatlaya	México
51569	Las Juntas (Las Juntas del Paso)	Ranchería	Tlatlaya	México
51569	Paso de Jaquinicuil	Pueblo	Tlatlaya	México
51569	El Naranjito	Pueblo	Tlatlaya	México
51569	El Reparo	Ranchería	Tlatlaya	México
51569	El Ciruelo	Ranchería	Tlatlaya	México
51569	Los Limones	Ranchería	Tlatlaya	México
51570	Santa Ana Zicatecoyan	Pueblo	Tlatlaya	México
51570	Tierra Blanca	Colonia	Tlatlaya	México
51572	Barranca de las Flores	Ranchería	Tlatlaya	México
51572	Chachalacatenco	Ranchería	Tlatlaya	México
51572	El Alambique	Ranchería	Tlatlaya	México
51572	Peña Colorada	Ranchería	Tlatlaya	México
51572	Pinzán Morado	Ranchería	Tlatlaya	México
51572	Plan del Alambique	Ranchería	Tlatlaya	México
51573	El Montón	Ranchería	Tlatlaya	México
51573	El Tamarindo	Ranchería	Tlatlaya	México
51573	El Toroal	Ranchería	Tlatlaya	México
51573	San Juan Corral	Pueblo	Tlatlaya	México
51573	La Parota	Pueblo	Tlatlaya	México
51574	Los Hornos	Ranchería	Tlatlaya	México
51574	Pinzán Morado (Cerro Blanco)	Ranchería	Tlatlaya	México
51574	Río Topilar (Topilar)	Ranchería	Tlatlaya	México
51575	Charco del Lagarto	Ranchería	Tlatlaya	México
51575	El Manguito	Ranchería	Tlatlaya	México
51575	Peña del Órgano	Pueblo	Tlatlaya	México
51576	Cuadrilla Nueva	Ranchería	Tlatlaya	México
51576	Juntas de Santa Ana Zicatecoyan	Ranchería	Tlatlaya	México
51576	El Zopilote	Pueblo	Tlatlaya	México
51576	Moctezuma	Pueblo	Tlatlaya	México
51576	Rancho Cuá	Ranchería	Tlatlaya	México
51577	Amacuatitla	Ranchería	Tlatlaya	México
51577	Puerto Minatitlán	Ranchería	Tlatlaya	México
51577	Cruz del Norte	Pueblo	Tlatlaya	México
51577	El Gavilán	Pueblo	Tlatlaya	México
51577	Puerto Seco	Pueblo	Tlatlaya	México
51578	Cerro de Aguacatepec	Ranchería	Tlatlaya	México
51578	El Mango	Ranchería	Tlatlaya	México
51578	Corral de Piedra	Pueblo	Tlatlaya	México
51578	Salitrillo	Ranchería	Tlatlaya	México
51578	Rincón del Aguacate	Pueblo	Tlatlaya	México
51578	Salitre Grande	Ranchería	Tlatlaya	México
51578	La Alcantarilla	Ranchería	Tlatlaya	México
51579	El Suchual de Santa Ana (El Suchual)	Ranchería	Tlatlaya	México
51579	San Felipe Tepehuastitlán	Ranchería	Tlatlaya	México
51579	Pie del Cerro	Pueblo	Tlatlaya	México
51579	Tejupilquito	Pueblo	Tlatlaya	México
51579	La Cofradía	Rancho	Tlatlaya	México
51579	Cuadrilla del Cirián (Cirián Grande)	Ranchería	Tlatlaya	México
51579	Cuadrilla de las Flores	Ranchería	Tlatlaya	México
51579	San Lucas	Ranchería	Tlatlaya	México
51580	El Limo	Ranchería	Tlatlaya	México
51580	San Francisco de Asís (San Francisco)	Pueblo	Tlatlaya	México
51580	Tlacocuspan	Pueblo	Tlatlaya	México
51582	El Naranjo Palmar Grande	Ranchería	Tlatlaya	México
51582	Palmar Grande	Pueblo	Tlatlaya	México
51583	Macuatitla	Ranchería	Tlatlaya	México
51583	Pie del Cerro San Vicente	Ranchería	Tlatlaya	México
51583	Palma Torcida	Pueblo	Tlatlaya	México
51584	El Salitre Ojo de Agua	Ranchería	Tlatlaya	México
51584	Cuadrilla Nueva	Ranchería	Tlatlaya	México
51584	Ancón de los Curieles	Pueblo	Tlatlaya	México
51584	El Higo Prieto	Pueblo	Tlatlaya	México
51585	San Pedro Limón	Pueblo	Tlatlaya	México
51586	Palos Verdes	Pueblo	Tlatlaya	México
51587	El Cascalote	Ranchería	Tlatlaya	México
51587	Cirián Grande	Ranchería	Tlatlaya	México
51587	El Guayabo	Ranchería	Tlatlaya	México
51587	El Llano	Ranchería	Tlatlaya	México
51587	Huixtitla	Ranchería	Tlatlaya	México
51587	Peña Blanca	Ranchería	Tlatlaya	México
51587	Rancho Viejo	Ranchería	Tlatlaya	México
51587	Mayaltepec	Pueblo	Tlatlaya	México
51588	El Guitarratel	Ranchería	Tlatlaya	México
51588	El Sauz	Ranchería	Tlatlaya	México
51588	Puerto de los Martínez	Ranchería	Tlatlaya	México
51588	Las Esmeraldas (Puerto del Órgano)	Ranchería	Tlatlaya	México
51588	Las Esmeraldas	Pueblo	Tlatlaya	México
51590	Rincón Grande	Pueblo	Tlatlaya	México
51598	Las Juntas	Ranchería	Tlatlaya	México
51598	Palos Altos	Ranchería	Tlatlaya	México
51598	San Antonio del Rosario	Pueblo	Tlatlaya	México
51598	El Naranjo	Pueblo	Tlatlaya	México
51598	Nuevo Copaltepec	Pueblo	Tlatlaya	México
51598	El Temblor	Pueblo	Tlatlaya	México
51599	La Parota	Pueblo	Tlatlaya	México
51599	Ancón de la Presa	Ranchería	Tlatlaya	México
51600	Sultepec de Pedro Ascencio de Alquisiras	Pueblo	Sultepec	México
51603	Capula	Pueblo	Sultepec	México
51604	Real de Abajo (Santa Lucía)	Hacienda	Sultepec	México
51605	Diego Sánchez	Pueblo	Sultepec	México
51605	La Ciénega	Pueblo	Sultepec	México
51606	Santa Cruz (Santa Cruz Texcalapa)	Pueblo	Sultepec	México
51606	Santo Tomás de las Flores (Santo Tomás)	Pueblo	Sultepec	México
51607	La Albarrada	Pueblo	Sultepec	México
51607	La Unión	Pueblo	Sultepec	México
51610	Sultepequito	Pueblo	Sultepec	México
51610	San Isidro Xochitla	Pueblo	Sultepec	México
51610	La Laguna	Barrio	Sultepec	México
51610	San Miguel Terrero	Pueblo	Sultepec	México
51613	Santa Anita	Pueblo	Sultepec	México
51613	Pepechuca	Pueblo	Sultepec	México
51613	San Hipólito Zacatales	Pueblo	Sultepec	México
51613	Sultepequito	Ejido	Sultepec	México
51614	Las Peñas	Pueblo	Sultepec	México
51614	El Rincón del Cristo (Rinconada del Cristo)	Pueblo	Sultepec	México
51614	El Cristo	Pueblo	Sultepec	México
51614	El Momoxtle	Ranchería	Sultepec	México
51620	Aserradero Viejo	Pueblo	Sultepec	México
51620	Puerto Frío	Pueblo	Sultepec	México
51620	La Troja Vieja	Pueblo	Sultepec	México
51620	Los Epazotes	Pueblo	Sultepec	México
51623	Puentecillas	Pueblo	Sultepec	México
51623	Las Mesas	Pueblo	Sultepec	México
51623	Cuatro Cruces	Ranchería	Sultepec	México
51624	La Virgen	Ejido	Sultepec	México
51624	San José el Potrero	Pueblo	Sultepec	México
51624	Trojes	Pueblo	Sultepec	México
51624	2da. Manzana 4 Cruces	Pueblo	Sultepec	México
51633	Manial de Guadalupe de Abajo	Ranchería	Sultepec	México
51633	Manial de Guadalupe de Arriba	Pueblo	Sultepec	México
51633	Cruz de Cedro	Pueblo	Sultepec	México
51634	Mextepec	Pueblo	Sultepec	México
51634	San Miguelito	Pueblo	Sultepec	México
51634	El Ranchito	Ranchería	Sultepec	México
51634	San Francisco de Asís	Pueblo	Sultepec	México
51635	El Potrero (Potrero de Guadalupe)	Pueblo	Sultepec	México
51636	Potzontepec	Pueblo	Sultepec	México
51636	El Calvarito	Pueblo	Sultepec	México
51637	El Teamate	Pueblo	Sultepec	México
51637	Salayatla	Pueblo	Sultepec	México
51637	Salinas	Ranchería	Sultepec	México
51637	Atzumpa	Pueblo	Sultepec	México
51637	Rincón de los Aguilares	Pueblo	Sultepec	México
51640	San Pedro Hueyahualco	Pueblo	Sultepec	México
51644	Jalpan (Jalpa)	Pueblo	Sultepec	México
51644	El Huizache	Pueblo	Sultepec	México
51645	San Miguel Totolmaloya	Pueblo	Sultepec	México
51645	Cojaltitla	Pueblo	Sultepec	México
51645	Tenanguillo de las Peñas	Pueblo	Sultepec	México
51645	Laguna Verde	Pueblo	Sultepec	México
51646	El Naranjo	Pueblo	Sultepec	México
51647	Puente Mocho	Ranchería	Sultepec	México
51647	San José Xochitla	Ranchería	Sultepec	México
51650	Coquillo	Pueblo	Sultepec	México
51650	Metlaltepec	Pueblo	Sultepec	México
51650	Filo de los Amates	Ranchería	Sultepec	México
51650	Las Joyas	Pueblo	Sultepec	México
51653	Laguna Seca	Pueblo	Sultepec	México
51653	Capulatengo	Pueblo	Sultepec	México
51654	San Nicolás del Cobre (San Nicolás)	Pueblo	Sultepec	México
51654	Tehuilotepec	Pueblo	Sultepec	México
51655	El Puerto del Teamate (Puerto de las Majadas)	Pueblo	Sultepec	México
51670	Texcaltitlán	Pueblo	Texcaltitlán	México
51673	Tlacotepec	Pueblo	Texcaltitlán	México
51673	Venta Morales ( El Pedregal )	Ranchería	Texcaltitlán	México
51673	Palo Amarillo	Ranchería	Texcaltitlán	México
51673	El Agostadero	Ranchería	Texcaltitlán	México
51674	Palmillas	Pueblo	Texcaltitlán	México
51674	Ojo de Agua	Ranchería	Texcaltitlán	México
51674	Venta Morales (La Laguna)	Ejido	Texcaltitlán	México
51675	San Agustín	Pueblo	Texcaltitlán	México
51675	El Chapaneal	Pueblo	Texcaltitlán	México
51675	Gavia Chica ( Rincón )	Ranchería	Texcaltitlán	México
51675	Los Lirios	Ranchería	Texcaltitlán	México
51675	Las Tablas (Las Tablas San José)	Ranchería	Texcaltitlán	México
51675	San José	Ranchería	Texcaltitlán	México
51676	Santa María	Pueblo	Texcaltitlán	México
51676	Texcapilla	Pueblo	Texcaltitlán	México
51676	Llano Grande	Pueblo	Texcaltitlán	México
51676	Nueva Santa María	Ranchería	Texcaltitlán	México
51680	Las Lágrimas	Pueblo	Texcaltitlán	México
51690	San Miguel	Pueblo	Texcaltitlán	México
51693	Jesús del Monte	Pueblo	Texcaltitlán	México
51693	Yuytepec	Pueblo	Texcaltitlán	México
51693	Acatitlán	Pueblo	Texcaltitlán	México
51694	Agua del Trébol	Ranchería	Texcaltitlán	México
51694	Las Paredes	Ranchería	Texcaltitlán	México
51695	Huayatenco	Pueblo	Texcaltitlán	México
51695	Carbajal	Pueblo	Texcaltitlán	México
51695	Noxtepec	Pueblo	Texcaltitlán	México
51695	Rastrojo Largo	Ranchería	Texcaltitlán	México
51696	Chiquintepec	Pueblo	Texcaltitlán	México
51697	San Francisco	Pueblo	Texcaltitlán	México
51697	Arroyo Seco	Pueblo	Texcaltitlán	México
51700	Coatepec Harinas	Pueblo	Coatepec Harinas	México
51700	Primera de San Miguel (La Punta)	Ranchería	Coatepec Harinas	México
51700	Segunda de Analco (La Presa)	Ranchería	Coatepec Harinas	México
51704	Segunda de San Miguel (El Cerrito)	Barrio	Coatepec Harinas	México
51705	Primera de Zacanguillo (Santo Niño Doctor)	Ranchería	Coatepec Harinas	México
51713	Guadalupe	Colonia	Coatepec Harinas	México
51714	Cochisquila	Pueblo	Coatepec Harinas	México
51714	Plan de San Francisco	Ranchería	Coatepec Harinas	México
51714	Cuentla	Ranchería	Coatepec Harinas	México
51715	Primera de Analco	Ranchería	Coatepec Harinas	México
51716	Acuitlapilco	Pueblo	Coatepec Harinas	México
51716	El Potrero	Colonia	Coatepec Harinas	México
51720	San José del Progreso (San José)	Pueblo	Coatepec Harinas	México
51720	Loma de Acuitlapilco	Pueblo	Coatepec Harinas	México
51720	Santo Niño	Ranchería	Coatepec Harinas	México
51720	San Martín el Salto	Ranchería	Coatepec Harinas	México
51720	Zacatones (San Felipe de Jesús)	Ranchería	Coatepec Harinas	México
51723	La Providencia	Ranchería	Coatepec Harinas	México
51723	El Telar	Pueblo	Coatepec Harinas	México
51723	Potrero Redondo	Pueblo	Coatepec Harinas	México
51723	Agua Bendita	Pueblo	Coatepec Harinas	México
51723	El Picacho	Ranchería	Coatepec Harinas	México
51723	La Conchita	Ranchería	Coatepec Harinas	México
51723	Las Trojes	Ranchería	Coatepec Harinas	México
51724	Segunda del Monte (La Presa)	Pueblo	Coatepec Harinas	México
51724	Primera del Monte (La Presa)	Pueblo	Coatepec Harinas	México
51724	Primera de Santa Ana	Ranchería	Coatepec Harinas	México
51724	Segunda de Zacanguillo	Ranchería	Coatepec Harinas	México
51724	Segunda de Santa Ana	Barrio	Coatepec Harinas	México
51725	Las Jaras	Ranchería	Coatepec Harinas	México
51726	Agua Amarga	Pueblo	Coatepec Harinas	México
51726	San Fernando	Ranchería	Coatepec Harinas	México
51726	Los Fresnos	Ranchería	Coatepec Harinas	México
51727	Tecolotepec	Pueblo	Coatepec Harinas	México
51727	Teocotitla	Ranchería	Coatepec Harinas	México
51727	El Potrerito	Ranchería	Coatepec Harinas	México
51727	Capulín Redondo	Ranchería	Coatepec Harinas	México
51727	Huayanalco	Ranchería	Coatepec Harinas	México
51727	Piedras Anchas (Primera del Monte)	Ranchería	Coatepec Harinas	México
51727	La Rosa	Ranchería	Coatepec Harinas	México
51730	Puerta del Carmen	Ranchería	Coatepec Harinas	México
51730	Llano Grande	Pueblo	Coatepec Harinas	México
51733	Meyuca de Morelos (Meyuca)	Pueblo	Coatepec Harinas	México
51733	Baja de Laja Azul	Pueblo	Coatepec Harinas	México
51733	Alta de Laja Azul	Ranchería	Coatepec Harinas	México
51734	El Reynoso	Pueblo	Coatepec Harinas	México
51734	San Luis (Colonia Hidalgo)	Ranchería	Coatepec Harinas	México
51734	El Cedrito	Pueblo	Coatepec Harinas	México
51735	Adolfo López Mateos	Colonia	Coatepec Harinas	México
51735	La Cercada	Ranchería	Coatepec Harinas	México
51750	Chiltepec de Hidalgo	Pueblo	Coatepec Harinas	México
51750	Las Vueltas	Pueblo	Coatepec Harinas	México
51750	La Laguna	Ranchería	Coatepec Harinas	México
51753	Monte de las Vueltas	Ranchería	Coatepec Harinas	México
51753	La Galera	Ranchería	Coatepec Harinas	México
51754	Ixtlahuaca de Villada	Pueblo	Coatepec Harinas	México
51754	Cruz de Piedra	Pueblo	Coatepec Harinas	México
51754	Las Mesas	Pueblo	Coatepec Harinas	México
51754	San Pedro	Ranchería	Coatepec Harinas	México
51760	San Francisco	Pueblo	Villa Guerrero	México
51760	Villa Guerrero	Pueblo	Villa Guerrero	México
51760	15 de Mayo	Unidad habitacional	Villa Guerrero	México
51760	Santa Cecilia	Barrio	Villa Guerrero	México
51765	Buenavista	Pueblo	Villa Guerrero	México
51765	San Felipe	Pueblo	Villa Guerrero	México
51765	Jesús Carranza (Rancho de Jesús)	Pueblo	Villa Guerrero	México
51765	El Islote	Pueblo	Villa Guerrero	México
51765	Ejido de San Mateo Coapexco	Ranchería	Villa Guerrero	México
51765	Coxcacoaco	Ranchería	Villa Guerrero	México
51766	El Progreso Hidalgo	Pueblo	Villa Guerrero	México
51767	La Finca	Pueblo	Villa Guerrero	México
51767	Potrero Nuevo	Pueblo	Villa Guerrero	México
51767	Ejido de la Finca	Ranchería	Villa Guerrero	México
51773	El Venturero Santa María Aranzazú	Ranchería	Villa Guerrero	México
51773	San Diego	Pueblo	Villa Guerrero	México
51773	Cruz Vidriada	Pueblo	Villa Guerrero	México
51775	Santa María Aranzazú (Santa María)	Pueblo	Villa Guerrero	México
51775	La Joya	Ranchería	Villa Guerrero	México
51776	San Miguel	Pueblo	Villa Guerrero	México
51776	San Lucas	Pueblo	Villa Guerrero	México
51777	San Bartolomé (San Bartolo)	Pueblo	Villa Guerrero	México
51777	San José	Pueblo	Villa Guerrero	México
51777	El Moral	Pueblo	Villa Guerrero	México
51777	Los Ranchos de San José	Ranchería	Villa Guerrero	México
51777	Cuajimalpa (Los Cuervos)	Ranchería	Villa Guerrero	México
51777	Zanjillas San Bartolomé	Ranchería	Villa Guerrero	México
51783	San Mateo Coapexco	Pueblo	Villa Guerrero	México
51783	Santiago Oxtotitlán	Pueblo	Villa Guerrero	México
51783	Zacango	Pueblo	Villa Guerrero	México
51783	Loma de Zacango (El Venturero)	Ranchería	Villa Guerrero	México
51784	Totolmajac	Pueblo	Villa Guerrero	México
51784	El Carmen	Pueblo	Villa Guerrero	México
51784	El Izote	Pueblo	Villa Guerrero	México
51784	San Pedro Buenos Aires (San Pedro)	Pueblo	Villa Guerrero	México
51785	Porfirio Díaz	Pueblo	Villa Guerrero	México
51786	San Gaspar	Pueblo	Villa Guerrero	México
51786	La Loma de la Concepción	Ranchería	Villa Guerrero	México
51786	Matlazinca	Pueblo	Villa Guerrero	México
51786	Tequimilpa	Pueblo	Villa Guerrero	México
51786	El Peñón	Ranchería	Villa Guerrero	México
51786	Potrero de la Sierra	Ranchería	Villa Guerrero	México
51800	Paraje el Cuetzillo	Ranchería	Zacualpan	México
51800	Zacualpan	Pueblo	Zacualpan	México
51800	Santiago	Pueblo	Zacualpan	México
51800	Los Zapotes (Barrio San José)	Barrio	Zacualpan	México
51800	Tlapexco	Ranchería	Zacualpan	México
51810	Huitzoltepec	Pueblo	Zacualpan	México
51813	Ayotuxco	Pueblo	Zacualpan	México
51814	San Juan	Ranchería	Zacualpan	México
51814	Coloxtitlán	Pueblo	Zacualpan	México
51814	Tetzicapan (Texicapan)	Colonia	Zacualpan	México
51815	Gama de la Paz	Pueblo	Zacualpan	México
51815	Zotzocola	Pueblo	Zacualpan	México
51815	El Sitio	Pueblo	Zacualpan	México
51815	San Jerónimo	Ranchería	Zacualpan	México
51816	El Fresno	Pueblo	Zacualpan	México
51816	El Salto	Pueblo	Zacualpan	México
51816	El Durazno	Ranchería	Zacualpan	México
51817	Tres Cruces	Ranchería	Zacualpan	México
51817	Río Florido 2da. Sección	Pueblo	Zacualpan	México
51817	El Colorín	Ranchería	Zacualpan	México
51817	Río Florido 1ra. Sección	Ranchería	Zacualpan	México
51820	Piedra Parada	Pueblo	Zacualpan	México
51820	Tepextitla 2da. Sección	Pueblo	Zacualpan	México
51825	El Despoblado	Pueblo	Zacualpan	México
51825	Agua Dulce	Ranchería	Zacualpan	México
51825	Los Ejidos	Ranchería	Zacualpan	México
51826	La Luz	Pueblo	Zacualpan	México
51826	Las Huertas	Pueblo	Zacualpan	México
51826	Apetlahuacan	Pueblo	Zacualpan	México
51827	El Cortijo	Pueblo	Zacualpan	México
51827	Los Planes Vista Hermosa	Ranchería	Zacualpan	México
51827	Zacualpilla	Pueblo	Zacualpan	México
51827	Tepextitla 1ra. Sección	Ranchería	Zacualpan	México
51850	Los Barriales	Ranchería	Zacualpan	México
51850	Hueytecoxco	Ranchería	Zacualpan	México
51850	Tres Cruces	Ranchería	Zacualpan	México
51850	Mamatla	Pueblo	Zacualpan	México
51850	El Coyol	Ranchería	Zacualpan	México
51854	Memetla	Barrio	Zacualpan	México
51854	Cruz de Quiote	Ranchería	Zacualpan	México
51854	La Mora	Ranchería	Zacualpan	México
51854	Velixtla	Ranchería	Zacualpan	México
51855	Teocaltzingo	Ranchería	Zacualpan	México
51855	El Verdecillo	Ranchería	Zacualpan	México
51855	La Trinidad	Ranchería	Zacualpan	México
51855	Yolotepec	Ranchería	Zacualpan	México
51856	Ixtayotla	Pueblo	Zacualpan	México
51856	Coronas	Ranchería	Zacualpan	México
51857	San Antonio Amealco	Pueblo	Zacualpan	México
51857	Calatepec	Ranchería	Zacualpan	México
51857	Huaxtitla	Ranchería	Zacualpan	México
51857	La Cofradía	Ranchería	Zacualpan	México
51860	Almoloya de Alquisiras	Pueblo	Almoloya de Alquisiras	México
51860	Jaltepec de Arriba	Pueblo	Almoloya de Alquisiras	México
51860	Cuarta Manzana	Ranchería	Almoloya de Alquisiras	México
51860	Cerro de Tlapexco (Segunda Manzana)	Barrio	Almoloya de Alquisiras	México
51863	La Unión Riva Palacio	Pueblo	Almoloya de Alquisiras	México
51863	Totoltepec de la Paz	Pueblo	Almoloya de Alquisiras	México
51863	Cerro del Guayabo	Ranchería	Almoloya de Alquisiras	México
51863	La Barranca	Ranchería	Almoloya de Alquisiras	México
51863	La Guadalupana	Colonia	Almoloya de Alquisiras	México
51863	Loma Larga	Ranchería	Almoloya de Alquisiras	México
51863	Totoltepec de Arriba	Ranchería	Almoloya de Alquisiras	México
51864	San Andrés Tepetitlán	Pueblo	Almoloya de Alquisiras	México
51864	Plutarco González (Higueras)	Pueblo	Almoloya de Alquisiras	México
51864	Capulmanca	Ranchería	Almoloya de Alquisiras	México
51865	Quinta Manzana	Pueblo	Almoloya de Alquisiras	México
51865	Ahuacatitlán	Pueblo	Almoloya de Alquisiras	México
51866	Agua Fría	Pueblo	Almoloya de Alquisiras	México
51866	Tepehuajes	Ejido	Almoloya de Alquisiras	México
51866	Las Mesas	Pueblo	Almoloya de Alquisiras	México
51866	Los Ranchos	Ranchería	Almoloya de Alquisiras	México
51866	Mesa del Río	Ranchería	Almoloya de Alquisiras	México
51867	Progreso los Hernández (Colonia los Hernández)	Ranchería	Almoloya de Alquisiras	México
51867	San Antonio Pachuquilla	Pueblo	Almoloya de Alquisiras	México
51867	Buenos Aires	Pueblo	Almoloya de Alquisiras	México
51867	Llano de las Casas	Pueblo	Almoloya de Alquisiras	México
51867	San José Tizates (Tizates)	Pueblo	Almoloya de Alquisiras	México
51867	Vista Hermosa	Ranchería	Almoloya de Alquisiras	México
51870	Cuauhtenco	Ejido	Almoloya de Alquisiras	México
51874	Sexta Manzana	Ranchería	Almoloya de Alquisiras	México
51874	Los Pinos	Ranchería	Almoloya de Alquisiras	México
51874	El Mirador	Ranchería	Almoloya de Alquisiras	México
51874	La Lobera	Ranchería	Almoloya de Alquisiras	México
51875	Plan de Vigas	Pueblo	Almoloya de Alquisiras	México
51875	Yerbabuena	Ranchería	Almoloya de Alquisiras	México
51880	Los Pérez	Ranchería	Almoloya de Alquisiras	México
51880	Aquiapan	Ranchería	Almoloya de Alquisiras	México
51883	Triguillos	Pueblo	Almoloya de Alquisiras	México
51883	Cuevillas	Ranchería	Almoloya de Alquisiras	México
51900	Ixtapan de la Sal	Pueblo	Ixtapan de la Sal	México
51904	Santa Ana	Barrio	Ixtapan de la Sal	México
51904	San Pedro	Colonia	Ixtapan de la Sal	México
51905	Santa Catarina	Colonia	Ixtapan de la Sal	México
51905	10 de Agosto	Colonia	Ixtapan de la Sal	México
51905	Revolución	Colonia	Ixtapan de la Sal	México
51906	Los Cedros	Colonia	Ixtapan de la Sal	México
51906	INFONAVIT	Unidad habitacional	Ixtapan de la Sal	México
51906	5 de Febrero	Colonia	Ixtapan de la Sal	México
51906	3 de Mayo	Colonia	Ixtapan de la Sal	México
51907	San Gaspar	Barrio	Ixtapan de la Sal	México
51907	Bugambilias	Fraccionamiento	Ixtapan de la Sal	México
51907	Ixtapita	Colonia	Ixtapan de la Sal	México
51910	El Abrojo	Pueblo	Ixtapan de la Sal	México
51915	Los Naranjos	Pueblo	Ixtapan de la Sal	México
51915	Juárez	Colonia	Ixtapan de la Sal	México
51916	Ahuacatitlán	Pueblo	Ixtapan de la Sal	México
51916	San José del Arenal	Pueblo	Ixtapan de la Sal	México
51916	San Miguel Laderas	Pueblo	Ixtapan de la Sal	México
51916	Yerbas Buenas	Pueblo	Ixtapan de la Sal	México
51916	Plan de San Miguel	Pueblo	Ixtapan de la Sal	México
51916	El Rincón de Dios Yerbas Buenas	Ranchería	Ixtapan de la Sal	México
51916	San Pablo	Ranchería	Ixtapan de la Sal	México
51917	San Diego Alcalá	Ranchería	Ixtapan de la Sal	México
51917	Llano de la Unión	Pueblo	Ixtapan de la Sal	México
51917	Santa Ana Xochuca	Pueblo	Ixtapan de la Sal	México
51917	Llano de San Diego	Ranchería	Ixtapan de la Sal	México
51917	Palo Blanco	Colonia	Ixtapan de la Sal	México
51917	El Progreso	Colonia	Ixtapan de la Sal	México
51920	Tlacochaca	Pueblo	Ixtapan de la Sal	México
51920	San Pedro Tlacochaca	Ranchería	Ixtapan de la Sal	México
51920	Portezuelos Uno (San Andrés)	Ranchería	Ixtapan de la Sal	México
51923	Yautepec	Pueblo	Ixtapan de la Sal	México
51923	San Andrés	Ranchería	Ixtapan de la Sal	México
51924	El Salitre	Pueblo	Ixtapan de la Sal	México
51924	Rancho San Diego	Fraccionamiento	Ixtapan de la Sal	México
51924	Residencial Cipres	Fraccionamiento	Ixtapan de la Sal	México
51930	Malinaltenango	Pueblo	Ixtapan de la Sal	México
51933	San Pedro Tecomatepec	Pueblo	Ixtapan de la Sal	México
51933	San Alejo	Pueblo	Ixtapan de la Sal	México
51933	Puerta Grande	Pueblo	Ixtapan de la Sal	México
51933	El Refugio	Ranchería	Ixtapan de la Sal	México
51933	El Arenal de las Ollas	Ranchería	Ixtapan de la Sal	México
51936	Coaxusco	Pueblo	Ixtapan de la Sal	México
51937	Mesón Nuevo	Pueblo	Ixtapan de la Sal	México
51950	Tonatico Centro	Colonia	Tonatico	México
51950	Santa María Norte	Barrio	Tonatico	México
51950	San Sebastián	Barrio	Tonatico	México
51950	San Gaspar	Barrio	Tonatico	México
51950	Santa María Sur	Barrio	Tonatico	México
51950	San Felipe	Barrio	Tonatico	México
51950	Portón de Sueño	Unidad habitacional	Tonatico	México
51953	Paso de San Juan	Colonia	Tonatico	México
51954	La Comunidad	Ranchería	Tonatico	México
51955	San Miguel	Ranchería	Tonatico	México
51956	El Rincón	Ranchería	Tonatico	México
51956	El Trapiche	Colonia	Tonatico	México
51959	Los Amates (San José de los Amates)	Ranchería	Tonatico	México
51960	Tlacopan	Ranchería	Tonatico	México
51963	La Audiencia	Ranchería	Tonatico	México
51963	San Bartolo	Ranchería	Tonatico	México
51964	Salinas	Ranchería	Tonatico	México
51964	El Terrero	Ranchería	Tonatico	México
51970	El Zapote	Ranchería	Tonatico	México
51973	La Puerta de Santiago	Ranchería	Tonatico	México
51974	Ojo de Agua	Ranchería	Tonatico	México
51974	Colixtlahuacán	Ranchería	Tonatico	México
51977	La Vega	Ranchería	Tonatico	México
51980	Santa Ana	Barrio	Zumpahuacán	México
51980	San Mateo	Barrio	Zumpahuacán	México
51980	Zumpahuacan	Pueblo	Zumpahuacán	México
51980	San Juan	Pueblo	Zumpahuacán	México
51980	San Pedro Guadalupe	Pueblo	Zumpahuacán	México
51980	San Agustín	Barrio	Zumpahuacán	México
51980	San Miguel	Barrio	Zumpahuacán	México
51980	La Ascención	Barrio	Zumpahuacán	México
51980	La Cabecera	Barrio	Zumpahuacán	México
51984	San Nicolás Palo Dulce	Ranchería	Zumpahuacán	México
51984	Guadalupe Ahuacatlán	Pueblo	Zumpahuacán	México
51985	Llano del Copal	Ranchería	Zumpahuacán	México
51985	Santiaguito	Ranchería	Zumpahuacán	México
51986	San Pablo Tejalpa	Pueblo	Zumpahuacán	México
51986	Santa Catarina	Pueblo	Zumpahuacán	México
51986	San Miguel Ateopa	Ranchería	Zumpahuacán	México
51987	San José Tecontla	Ranchería	Zumpahuacán	México
51987	San Antonio Guadalupe	Pueblo	Zumpahuacán	México
51988	Guadalupe Tlapizalco	Pueblo	Zumpahuacán	México
51989	Santa Cruz de los Pilares	Pueblo	Zumpahuacán	México
51990	San Gaspar	Pueblo	Zumpahuacán	México
51994	San Mateo Despoblado	Ranchería	Zumpahuacán	México
51994	Amolonca	Ranchería	Zumpahuacán	México
51994	Santa María la Asunción	Pueblo	Zumpahuacán	México
51995	Chiapa San Isidro	Ranchería	Zumpahuacán	México
51995	Guadalupe Chiltamalco	Ranchería	Zumpahuacán	México
51995	Santa Ana Despoblado	Ranchería	Zumpahuacán	México
51995	San Pedro Guadalupe (Despoblado)	Ranchería	Zumpahuacán	México
51995	Santa Cruz Atempa	Pueblo	Zumpahuacán	México
51996	Ahuatzingo	Pueblo	Zumpahuacán	México
51997	El Zapote	Ranchería	Zumpahuacán	México
51997	Guadalupe Victoria	Colonia	Zumpahuacán	México
51997	El Tamarindo	Ranchería	Zumpahuacán	México
52000	Lerma de Villada Centro	Pueblo	Lerma	México
52004	Hacienda Santa Clara	Fraccionamiento	Lerma	México
52004	Bosques de Lerma	Fraccionamiento	Lerma	México
52004	Parque industrial Cerrillo I	Zona industrial	Lerma	México
52004	Parque industrial Cerrillo II	Zona industrial	Lerma	México
52004	Corredor Industrial Toluca Lerma	Zona industrial	Lerma	México
52004	Guadalupe la Ciénega	Colonia	Lerma	México
52004	La Mota	Colonia	Lerma	México
52004	Isidro Fabela	Colonia	Lerma	México
52004	Valle de Lerma	Fraccionamiento	Lerma	México
52004	CIDECO	Unidad habitacional	Lerma	México
52004	Auris	Unidad habitacional	Lerma	México
52004	INFONAVIT	Fraccionamiento	Lerma	México
52004	Ejidal Emiliano Zapata	Colonia	Lerma	México
52004	Santa Clara	Fraccionamiento	Lerma	México
52004	Los Cedros 400	Fraccionamiento	Lerma	México
52004	La Bomba	Colonia	Lerma	México
52004	Nueva Ameyalco	Colonia	Lerma	México
52004	San Isidro	Colonia	Lerma	México
52004	El Porvenir ll	Colonia	Lerma	México
52005	Los Olivos	Fraccionamiento	Lerma	México
52005	Valle de Encinos	Fraccionamiento	Lerma	México
52005	Residencial Tirés	Fraccionamiento	Lerma	México
52005	La Toscana Residencial	Fraccionamiento	Lerma	México
52005	El Panteón	Colonia	Lerma	México
52005	San José el Llanito	Pueblo	Lerma	México
52005	Amomolulco	Pueblo	Lerma	México
52005	Club de Golf los Encinos	Fraccionamiento	Lerma	México
52006	Hacienda Lerma	Fraccionamiento	Lerma	México
52006	El Calvario la Merced	Colonia	Lerma	México
52006	La Estación	Colonia	Lerma	México
52010	El Árbol	Ranchería	Lerma	México
52010	San Nicolás Peralta	Pueblo	Lerma	México
52010	Álvaro Obregón Tlalmimilolpan	Colonia	Lerma	México
52010	La Loma	Colonia	Lerma	México
52010	San Pablo	Colonia	Lerma	México
52020	El Espino Peralta	Pueblo	Lerma	México
52020	Casa Blanca (Tierras Nuevas)	Colonia	Lerma	México
52030	El Caracol	Colonia	Lerma	México
52030	San Pedro Tultepec	Pueblo	Lerma	México
52030	Santa Cruz Tultepec	Pueblo	Lerma	México
52030	Alfredo del Mazo	Colonia	Lerma	México
52030	Adolfo López Mateos	Colonia	Lerma	México
52040	El Tiradero	Colonia	Lerma	México
52040	San Miguel Ameyalco	Pueblo	Lerma	México
52040	La Montoya	Ranchería	Lerma	México
52040	La Joya	Colonia	Lerma	México
52040	Ojo de Agua	Colonia	Lerma	México
52040	Cristo Rey	Colonia	Lerma	México
52040	San Miguel Ameyalco	Ejido	Lerma	México
52043	Santiago Analco	Pueblo	Lerma	México
52044	San Mateo Atarasquillo	Pueblo	Lerma	México
52044	Santa María Atarasquillo	Pueblo	Lerma	México
52044	Las Águilas	Colonia	Lerma	México
52045	Cañada de Alferes	Pueblo	Lerma	México
52045	Salazar	Pueblo	Lerma	México
52045	Llano Capacho	Pueblo	Lerma	México
52046	Santa Cruz Chignahuapan	Pueblo	Lerma	México
52047	Agrícola Analco	Colonia	Lerma	México
52047	La Manga ( La Laguna )	Ranchería	Lerma	México
52047	Cucuhapan	Colonia	Lerma	México
52047	San Lorenzo Huitzizilapan	Ejido	Lerma	México
52050	Dolores (Ranchería Dolores)	Colonia	Lerma	México
52050	Flor de Gallo Huitzizilapan	Ranchería	Lerma	México
52050	Santa María Tlalmimilolpan	Pueblo	Lerma	México
52050	La Concepción Xochicuautla	Pueblo	Lerma	México
52050	Metate Viejo Tlalmimilolpan	Pueblo	Lerma	México
52050	San Agustín Huitzizilapan	Pueblo	Lerma	México
52050	San Lorenzo Huitzizilapan	Pueblo	Lerma	México
52050	San Pedro Huitzizilapan	Pueblo	Lerma	México
52050	Santa Catarina	Pueblo	Lerma	México
52050	Zacamulpa Huitzizilapan	Pueblo	Lerma	México
52050	Zacamulpa Tlalmimilolpan	Pueblo	Lerma	México
52050	Santa Cruz Huitzizilapan	Ranchería	Lerma	México
52050	Guadalupe Victoria Huitzizilapan	Colonia	Lerma	México
52050	Adolfo López Mateos Huitzizilapan	Colonia	Lerma	México
52050	N Dexi Huitzizilapan	Colonia	Lerma	México
52054	San Francisco Xochicuautla	Pueblo	Lerma	México
52054	Buenavista	Colonia	Lerma	México
52054	La Joya	Colonia	Lerma	México
52055	Barranca Grande	Pueblo	Lerma	México
52055	Pueblo Nuevo Tlalmimilolpan	Pueblo	Lerma	México
52055	La Reforma Tlalmimilolpan	Colonia	Lerma	México
52059	La Unidad Huitzizilapan	Pueblo	Lerma	México
52059	San Martín las Rajas Huitzizilapan	Pueblo	Lerma	México
52059	La Lupita ( Casas Viejas )	Pueblo	Lerma	México
52059	Las Mesas Huitzizilapan	Pueblo	Lerma	México
52060	Xonacatlán	Colonia	Xonacatlán	México
52060	Adolfo López Mateos	Colonia	Xonacatlán	México
52064	San Antonio	Colonia	Xonacatlán	México
52065	Emiliano Zapata	Colonia	Xonacatlán	México
52067	La Manga	Barrio	Xonacatlán	México
52067	Francisco I. Madero	Colonia	Xonacatlán	México
52067	El Espino	Colonia	Xonacatlán	México
52067	La Jardona	Colonia	Xonacatlán	México
52070	Santa María Zolotepec	Pueblo	Xonacatlán	México
52070	5 de Mayo	Colonia	Xonacatlán	México
52073	Los Laureles	Barrio	Xonacatlán	México
52073	Lomas de Zolotepec (La Loma)	Barrio	Xonacatlán	México
52073	La Herradura	Barrio	Xonacatlán	México
52074	San Pedro	Barrio	Xonacatlán	México
52074	San Miguel Mimiapan	Pueblo	Xonacatlán	México
52074	Los Mesones	Barrio	Xonacatlán	México
52074	La Cuesta	Barrio	Xonacatlán	México
52074	San Juan	Barrio	Xonacatlán	México
52075	La Cañada	Barrio	Xonacatlán	México
52076	Santiago Tejocotillos	Pueblo	Xonacatlán	México
52076	El Rancho	Barrio	Xonacatlán	México
52076	Celso Vicencio	Colonia	Xonacatlán	México
52076	Paraje el Candelero	Colonia	Xonacatlán	México
52076	Paraje Pipileros	Colonia	Xonacatlán	México
52077	Santa Cruz	Barrio	Xonacatlán	México
52077	San Juan el Potrero (El Potrero)	Colonia	Xonacatlán	México
52080	Villa Cuauhtémoc	Pueblo	Otzolotepec	México
52082	De la Rosa	Barrio	Otzolotepec	México
52082	Solanos	Barrio	Otzolotepec	México
52082	San Agustín Mimbres	Pueblo	Otzolotepec	México
52082	Fábrica María (Pilar María)	Pueblo	Otzolotepec	México
52083	De la Barranca	Barrio	Otzolotepec	México
52083	San Mateo Mozoquilpan	Pueblo	Otzolotepec	México
52083	Santa María Tetitla	Pueblo	Otzolotepec	México
52084	La Loma de Puente San Pedro	Barrio	Otzolotepec	México
52084	La Raya	Barrio	Otzolotepec	México
52084	La Paja	Colonia	Otzolotepec	México
52084	Puente San Pedro	Pueblo	Otzolotepec	México
52085	De Mozoquilpan	Ejido	Otzolotepec	México
52085	De San Juan	Barrio	Otzolotepec	México
52085	De Santa María Tetitla	Ejido	Otzolotepec	México
52085	El Capulín	Barrio	Otzolotepec	México
52085	Santa Ana Mayorazgo	Pueblo	Otzolotepec	México
52085	San Isidro las Trojes	Pueblo	Otzolotepec	México
52088	Ejido de la Y Sección Siete A Revolución	Colonia	Otzolotepec	México
52088	La Florida	Unidad habitacional	Otzolotepec	México
52088	La Joya	Colonia	Otzolotepec	México
52088	Guadalupe Victoria	Colonia	Otzolotepec	México
52088	La Y	Barrio	Otzolotepec	México
52089	Villa Seca (La Providencia Villa Seca)	Ejido	Otzolotepec	México
52090	Zona Número Cuatro San Mateo Capulhuac	Pueblo	Otzolotepec	México
52090	Zona Número Uno San Mateo Capulhuac	Pueblo	Otzolotepec	México
52090	Zona Número Tres San Mateo Capulhuac	Pueblo	Otzolotepec	México
52090	Zona Número Dos San Mateo Capulhuac	Pueblo	Otzolotepec	México
52090	San Mateo Capulhuac	Pueblo	Otzolotepec	México
52094	Rancho el Oxco	Colonia	Otzolotepec	México
52094	La Trampa	Colonia	Otzolotepec	México
52095	La Concepción de Hidalgo	Pueblo	Otzolotepec	México
52096	La Rosa	Colonia	Otzolotepec	México
52096	La Presa	Ranchería	Otzolotepec	México
52096	La Huánica	Pueblo	Otzolotepec	México
52096	Santa Ana Jilotzingo	Pueblo	Otzolotepec	México
52100	San Mateo Atenco Centro	Colonia	San Mateo Atenco	México
52104	400 Uno Residencial	Fraccionamiento	San Mateo Atenco	México
52104	El Fortín	Fraccionamiento	San Mateo Atenco	México
52104	Espacio Uno Residecial	Fraccionamiento	San Mateo Atenco	México
52104	Hacienda Santa María	Fraccionamiento	San Mateo Atenco	México
52104	Residencial San Ángel	Fraccionamiento	San Mateo Atenco	México
52104	Grafito	Fraccionamiento	San Mateo Atenco	México
52104	Fénix Residencial	Fraccionamiento	San Mateo Atenco	México
52104	Vitalia San Mateo	Fraccionamiento	San Mateo Atenco	México
52104	Hacienda Real Residencial	Fraccionamiento	San Mateo Atenco	México
52104	Tezontle	Fraccionamiento	San Mateo Atenco	México
52104	Carlos Hank González	Unidad habitacional	San Mateo Atenco	México
52104	La Magdalena	Barrio	San Mateo Atenco	México
52104	San Francisco	Barrio	San Mateo Atenco	México
52104	San Juan	Barrio	San Mateo Atenco	México
52104	San Miguel	Barrio	San Mateo Atenco	México
52104	San Nicolás	Barrio	San Mateo Atenco	México
52104	Santa María	Barrio	San Mateo Atenco	México
52104	Santiago	Barrio	San Mateo Atenco	México
52104	Cuauhtémoc	Fraccionamiento	San Mateo Atenco	México
52104	Villas de Metepec San Mateo	Fraccionamiento	San Mateo Atenco	México
52104	Rinconada San Carlos	Fraccionamiento	San Mateo Atenco	México
52104	Hacienda El Dorado	Fraccionamiento	San Mateo Atenco	México
52104	Hacienda El Dorado II	Fraccionamiento	San Mateo Atenco	México
52104	Vista Verde	Fraccionamiento	San Mateo Atenco	México
52105	Álvaro Obregón	Colonia	San Mateo Atenco	México
52105	Buenavista	Colonia	San Mateo Atenco	México
52105	La Concepción	Barrio	San Mateo Atenco	México
52105	San Isidro	Barrio	San Mateo Atenco	México
52105	San Pedro	Barrio	San Mateo Atenco	México
52105	Santa Elena	Fraccionamiento	San Mateo Atenco	México
52106	Francisco I. Madero	Colonia	San Mateo Atenco	México
52107	Guadalupe	Barrio	San Mateo Atenco	México
52107	San Lucas	Barrio	San Mateo Atenco	México
52107	Villas de Atenco	Fraccionamiento	San Mateo Atenco	México
52107	Olmos	Fraccionamiento	San Mateo Atenco	México
52107	San Román	Fraccionamiento	San Mateo Atenco	México
52110	Emiliano Zapata	Colonia	San Mateo Atenco	México
52120	Reforma	Colonia	San Mateo Atenco	México
52140	Residencial Campestre Metepec	Fraccionamiento	Metepec	México
52140	Casa del Pedregal	Fraccionamiento	Metepec	México
52140	Quinta del Sol	Condominio	Metepec	México
52140	Residencial Los Cerezos	Condominio	Metepec	México
52140	El Campanario	Condominio	Metepec	México
52140	Guerrero	Condominio	Metepec	México
52140	La Herradura III	Fraccionamiento	Metepec	México
52140	Los Morillos	Fraccionamiento	Metepec	México
52140	Los Santos	Condominio	Metepec	México
52140	Los Sauces II	Condominio	Metepec	México
52140	Mayorazgo	Unidad habitacional	Metepec	México
52140	Metepec Centro	Colonia	Metepec	México
52140	Puerta de Hierro	Condominio	Metepec	México
52140	San Agustín	Condominio	Metepec	México
52140	San Lorenzo Coacalco (San Lorenzo)	Pueblo	Metepec	México
52140	San Mateo	Barrio	Metepec	México
52140	San Miguel	Barrio	Metepec	México
52140	Santa Cruz	Barrio	Metepec	México
52140	Santa Teresa	Fraccionamiento	Metepec	México
52140	Villas Amozoc	Fraccionamiento	Metepec	México
52140	Los Robles	Condominio	Metepec	México
52140	La Herradura I	Condominio	Metepec	México
52140	Residencial Alborada	Condominio	Metepec	México
52140	Espíritu Santo	Barrio	Metepec	México
52140	Santiaguito	Barrio	Metepec	México
52140	Coaxustenco	Barrio	Metepec	México
52140	Villas del Sol	Condominio	Metepec	México
52140	Quintas las Manzanas	Fraccionamiento	Metepec	México
52140	Villa Romana	Fraccionamiento	Metepec	México
52140	Maple	Condominio	Metepec	México
52140	Rincón Viejo	Fraccionamiento	Metepec	México
52143	De la Asunción	Barrio	Metepec	México
52143	San Miguel Totocuitlapilco	Pueblo	Metepec	México
52144	Condado del Valle	Fraccionamiento	Metepec	México
52144	Agrícola Álvaro Obregón	Colonia	Metepec	México
52144	Residencial Foresta	Fraccionamiento	Metepec	México
52145	San Lucas Tunco	Pueblo	Metepec	México
52146	San Sebastián	Pueblo	Metepec	México
52147	San Gaspar Tlahuelilpan	Pueblo	Metepec	México
52148	Hacienda San Antonio	Fraccionamiento	Metepec	México
52148	Finca Real	Fraccionamiento	Metepec	México
52148	Los Sauces	Condominio	Metepec	México
52148	Agrícola Lázaro Cárdenas	Colonia	Metepec	México
52148	Llano Grande (El Salitre)	Colonia	Metepec	México
52149	Residencial La Loma	Condominio	Metepec	México
52149	Los Álamos	Fraccionamiento	Metepec	México
52149	Andrés Molina Enríquez	Unidad habitacional	Metepec	México
52149	La Virgen	Fraccionamiento	Metepec	México
52149	Las Mitras	Condominio	Metepec	México
52149	Lomas de San Isidro	Condominio	Metepec	México
52149	Hacienda del Bosque	Condominio	Metepec	México
52149	Rincón de San Isidro	Condominio	Metepec	México
52149	San Isidro Residencial	Fraccionamiento	Metepec	México
52149	San José La Pilita	Colonia	Metepec	México
52149	Valle del Cristal	Condominio	Metepec	México
52149	Villas San Agustín	Fraccionamiento	Metepec	México
52149	Los Vitrales	Condominio	Metepec	México
52149	Villas Magdalena	Condominio	Metepec	México
52149	Villas Dante	Fraccionamiento	Metepec	México
52149	Las Magnolias	Condominio	Metepec	México
52150	El Manantial	Fraccionamiento	Metepec	México
52150	Residencial Balmoral	Fraccionamiento	Metepec	México
52150	Solar	Condominio	Metepec	México
52150	La Joya	Condominio	Metepec	México
52150	San Ángel	Condominio	Metepec	México
52150	Villa Dorada	Fraccionamiento	Metepec	México
52150	Villas Chapultepec	Condominio	Metepec	México
52150	Villas Esperanza	Fraccionamiento	Metepec	México
52150	Villas II Residencial	Fraccionamiento	Metepec	México
52150	Villas III	Fraccionamiento	Metepec	México
52150	Villas Kent Secc Sauces	Fraccionamiento	Metepec	México
52150	Casa Magna	Colonia	Metepec	México
52150	El Castaño	Fraccionamiento	Metepec	México
52150	La Antigua	Condominio	Metepec	México
52150	Loma Real	Condominio	Metepec	México
52154	Los Cedros	Fraccionamiento	Metepec	México
52154	Villas Estefanía	Condominio	Metepec	México
52154	Real de Arcos	Condominio	Metepec	México
52155	Virreyes	Condominio	Metepec	México
52156	Chopos	Condominio	Metepec	México
52156	Olmos	Condominio	Metepec	México
52156	Los Girasoles	Condominio	Metepec	México
52156	El Portón I, II, III	Condominio	Metepec	México
52156	Hípico	Fraccionamiento	Metepec	México
52156	Villas Metepec	Condominio	Metepec	México
52156	El Hipico	Colonia	Metepec	México
52157	El Rodeo	Colonia	Metepec	México
52157	Las Haciendas	Fraccionamiento	Metepec	México
52158	Los Fresnos	Condominio	Metepec	México
52158	Plazuelas de San Francisco	Condominio	Metepec	México
52158	Rincón de San Gabriel	Condominio	Metepec	México
52158	Rinconada San Carlos	Fraccionamiento	Metepec	México
52158	San Francisco Coaxusco	Pueblo	Metepec	México
52158	San Marino	Fraccionamiento	Metepec	México
52159	Residencial Country Club	Fraccionamiento	Metepec	México
52159	Fortanet	Fraccionamiento	Metepec	México
52159	San Carlos	Fraccionamiento	Metepec	México
52159	San Gabriel	Condominio	Metepec	México
52160	El Arenal	Colonia	Metepec	México
52160	San Bartolomé Tlaltelulco	Pueblo	Metepec	México
52160	Santiaguito	Barrio	Metepec	México
52160	Urbano Bonanza	Conjunto habitacional	Metepec	México
52161	Santa María Magdalena Ocotitlán	Pueblo	Metepec	México
52164	San Jorge Pueblo Nuevo	Pueblo	Metepec	México
52164	Unión	Colonia	Metepec	México
52164	Casa del Valle	Fraccionamiento	Metepec	México
52164	Residencial Las Palmas	Fraccionamiento	Metepec	México
52165	Las Margaritas	Fraccionamiento	Metepec	México
52165	Agripín García Estrada	Unidad habitacional	Metepec	México
52165	Santa Cruz Ocotitlán	Barrio	Metepec	México
52166	Dr. Jorge Jiménez Cantú	Colonia	Metepec	México
52166	La Michoacana	Colonia	Metepec	México
52166	Luisa Isabel Campos de Jiménez Cantú	Colonia	Metepec	México
52167	Alteza Residencial Metepec	Condominio	Metepec	México
52167	Bosques San Juan	Condominio	Metepec	México
52167	Isidro Fabela	Unidad habitacional	Metepec	México
52167	Jesús Jiménez Gallardo	Fraccionamiento	Metepec	México
52167	Residencial Las Américas	Fraccionamiento	Metepec	México
52167	El Ciprés	Condominio	Metepec	México
52167	Villas San Gregorio	Condominio	Metepec	México
52167	Municipal	Colonia	Metepec	México
52167	Las Jaras	Colonia	Metepec	México
52167	Estoril	Condominio	Metepec	México
52167	Juan Fernández Albarrán	Condominio	Metepec	México
52168	Residencial Veranda	Condominio	Metepec	México
52168	Prados de Ceboruco	Condominio	Metepec	México
52168	Solidaridad de los Electricistas	Colonia	Metepec	México
52168	Villas Alteza	Fraccionamiento	Metepec	México
52168	Valle de San Javier	Condominio	Metepec	México
52169	Juan Fernández Albarrán	Fraccionamiento	Metepec	México
52169	Las Glorias	Condominio	Metepec	México
52169	Los Nogales	Condominio	Metepec	México
52169	Purísima	Colonia	Metepec	México
52169	Real de San Javier	Fraccionamiento	Metepec	México
52169	Xinantécatl	Fraccionamiento	Metepec	México
52170	El Nogal	Condominio	Metepec	México
52170	Puerta del Sol	Condominio	Metepec	México
52170	El Carmen	Condominio	Metepec	México
52170	Real de San Jerónimo	Fraccionamiento	Metepec	México
52170	San José	Condominio	Metepec	México
52170	San Jerónimo	Condominio	Metepec	México
52170	San Jerónimo Chicahualco	Pueblo	Metepec	México
52170	Rinconada San Jerónimo	Condominio	Metepec	México
52170	Quintas de San Jerónimo	Condominio	Metepec	México
52170	Los Arboles I	Condominio	Metepec	México
52170	Los Arboles II	Condominio	Metepec	México
52172	Amarena Residencial	Condominio	Metepec	México
52172	Residencial Aria	Condominio	Metepec	México
52172	El Baldaquin Residencial	Condominio	Metepec	México
52172	Quinta Las Azaleas	Condominio	Metepec	México
52172	San Miguel Regla	Condominio	Metepec	México
52172	Bellavista	Condominio	Metepec	México
52172	Ibiza Residencial	Condominio	Metepec	México
52172	Los Almendros	Condominio	Metepec	México
52172	Portofino Royal Country Club	Fraccionamiento	Metepec	México
52172	Rancho El Silencio	Condominio	Metepec	México
52172	Lomas de la Asunción	Condominio	Metepec	México
52172	Residencial Bosques de Ciruelos	Condominio	Metepec	México
52172	Bosques de la Asunción	Condominio	Metepec	México
52172	Casa Real	Condominio	Metepec	México
52172	Residencial La Joya Diamante	Condominio	Metepec	México
52172	Alsacia	Fraccionamiento	Metepec	México
52172	Aquitania	Condominio	Metepec	México
52172	Residencial San Salvador	Condominio	Metepec	México
52172	Explanada del Parque	Fraccionamiento	Metepec	México
52172	Villas Kent Sección Guadalupe	Condominio	Metepec	México
52172	ISSEMYM la Providencia	Condominio	Metepec	México
52172	Real de Azaleas II	Condominio	Metepec	México
52172	Real de Azaleas I	Condominio	Metepec	México
52172	Lorena	Fraccionamiento	Metepec	México
52172	Los Sauces	Condominio	Metepec	México
52172	Paseo Normandía	Condominio	Metepec	México
52172	La Asunción	Fraccionamiento	Metepec	México
52172	El Pueblito	Condominio	Metepec	México
52172	Rancho San Lucas	Fraccionamiento	Metepec	México
52172	Rinconada San Luis	Condominio	Metepec	México
52172	San Salvador Tizatlalli	Pueblo	Metepec	México
52172	Sur de La Hacienda	Condominio	Metepec	México
52172	Esperanza López Mateos	Unidad habitacional	Metepec	México
52172	Villas Kent Sección el Nevado	Condominio	Metepec	México
52172	Villas Santa Teresa	Condominio	Metepec	México
52172	Villas Tizatlalli	Condominio	Metepec	México
52172	Agrícola Francisco I. Madero	Colonia	Metepec	México
52172	Bellavista	Colonia	Metepec	México
52172	Santa Cecilia	Condominio	Metepec	México
52172	Estrella	Condominio	Metepec	México
52172	Galápagos	Condominio	Metepec	México
52172	Real de Azaleas III	Fraccionamiento	Metepec	México
52172	San Antonio Regla	Condominio	Metepec	México
52172	Santa María Regla	Condominio	Metepec	México
52172	Hábitat Metepec	Condominio	Metepec	México
52172	Árbol de la Vida	Colonia	Metepec	México
52172	Paseo Santa Elena	Condominio	Metepec	México
52172	Santa Rita	Condominio	Metepec	México
52172	Villas Los Arrayanes	Condominio	Metepec	México
52172	San Miguel	Condominio	Metepec	México
52172	El Pirul	Condominio	Metepec	México
52172	La Capilla	Condominio	Metepec	México
52172	Los Cisnes	Condominio	Metepec	México
52172	Real de Azaleas	Condominio	Metepec	México
52172	Misión Viejo	Fraccionamiento	Metepec	México
52172	Palma Real	Fraccionamiento	Metepec	México
52172	La Concordia	Condominio	Metepec	México
52172	Altavista	Fraccionamiento	Metepec	México
52172	Haciendas de Guadalupe	Fraccionamiento	Metepec	México
52175	Casa Blanca	Colonia	Metepec	México
52175	Los Arcos	Condominio	Metepec	México
52175	La Noria	Fraccionamiento	Metepec	México
52175	Renacimiento	Condominio	Metepec	México
52175	Villas Casa Blanca	Condominio	Metepec	México
52176	Arboledas I	Condominio	Metepec	México
52176	Izcalli Cuauhtémoc I	Fraccionamiento	Metepec	México
52176	Izcalli Cuauhtémoc II	Fraccionamiento	Metepec	México
52176	Izcalli Cuauhtémoc III	Fraccionamiento	Metepec	México
52176	Izcalli Cuauhtémoc IV	Fraccionamiento	Metepec	México
52176	Izcalli Cuauhtémoc V	Fraccionamiento	Metepec	México
52176	Izcalli Cuauhtémoc VI	Fraccionamiento	Metepec	México
52176	Las Marinas	Fraccionamiento	Metepec	México
52176	La Campesina	Colonia	Metepec	México
52176	Rancho San Francisco	Fraccionamiento	Metepec	México
52177	Residencial La Providencia	Fraccionamiento	Metepec	México
52177	Las Barcenas Residencial	Condominio	Metepec	México
52177	Campestre del Valle	Condominio	Metepec	México
52177	Residencial Citlalli	Condominio	Metepec	México
52177	La Hortaliza	Unidad habitacional	Metepec	México
52177	La Providencia	Colonia	Metepec	México
52177	Lázaro Cárdenas	Unidad habitacional	Metepec	México
52177	Rancho la Providencia	Fraccionamiento	Metepec	México
52177	Residencial La Gavia	Fraccionamiento	Metepec	México
52177	El Alcázar	Condominio	Metepec	México
52177	Villas Country	Condominio	Metepec	México
52177	Rinconada Mexicana	Condominio	Metepec	México
52178	Campestre del Virrey	Fraccionamiento	Metepec	México
52178	Las Viandas	Fraccionamiento	Metepec	México
52178	Villas Campestre de Metepec	Condominio	Metepec	México
52179	Arboledas II	Condominio	Metepec	México
52179	Los Pilares	Fraccionamiento	Metepec	México
52179	Pilares	Colonia	Metepec	México
52179	Tollocan II	Unidad habitacional	Metepec	México
52179	Arcos I y II	Condominio	Metepec	México
52179	Diamante	Condominio	Metepec	México
52179	El Ensueño	Condominio	Metepec	México
52180	San Mateo Mexicaltzingo Centro	Pueblo	Mexicaltzingo	México
52182	San José	Colonia	Mexicaltzingo	México
52182	Tecuanapa	Colonia	Mexicaltzingo	México
52183	Azcapotzalco	Colonia	Mexicaltzingo	México
52183	El Calvario Tepanuaya	Colonia	Mexicaltzingo	México
52185	La Estación	Colonia	Mexicaltzingo	México
52185	Mazachulco	Colonia	Mexicaltzingo	México
52189	San Isidro	Colonia	Mexicaltzingo	México
52200	Calimaya de Díaz González	Pueblo	Calimaya	México
52200	San Pedro - San Pablo	Barrio	Calimaya	México
52200	San Juan	Barrio	Calimaya	México
52200	Calimaya	Colonia	Calimaya	México
52200	San Martín	Barrio	Calimaya	México
52203	Los Ángeles	Barrio	Calimaya	México
52203	Santa Cecilia	Barrio	Calimaya	México
52203	El Rosario	Barrio	Calimaya	México
52203	Cruz de la Misión	Barrio	Calimaya	México
52204	Cruz Verde	Barrio	Calimaya	México
52204	Cruz Blanca	Barrio	Calimaya	México
52204	Guadalupe	Barrio	Calimaya	México
52204	Las Torres	Colonia	Calimaya	México
52205	Sauces	Colonia	Calimaya	México
52205	El Calvario	Barrio	Calimaya	México
52210	Zaragoza de Guadalupe	Pueblo	Calimaya	México
52213	San Diego la Huerta	Pueblo	Calimaya	México
52214	La Loma	Ranchería	Calimaya	México
52215	Las Jarillas	Colonia	Calimaya	México
52215	Francisco Villa	Colonia	Calimaya	México
52220	San Andrés Ocotlán	Pueblo	Calimaya	México
52223	San Bartolito Tlaltelolco	Pueblo	Calimaya	México
52224	La Concepción Coatipac (La Conchita)	Pueblo	Calimaya	México
52224	Santa Cruz Tecuantitlán	Colonia	Calimaya	México
52224	Valle del Nevado	Fraccionamiento	Calimaya	México
52225	Arboledas (San Andrés)	Colonia	Calimaya	México
52226	Bosque de las Fuentes Residencial	Fraccionamiento	Calimaya	México
52226	Residencial Rancho el Mesón	Fraccionamiento	Calimaya	México
52226	Vistahermosa (Rancho los Jardines)	Ranchería	Calimaya	México
52227	Lomas Virreyes	Fraccionamiento	Calimaya	México
52227	Villas del Campo	Fraccionamiento	Calimaya	México
52227	Hacienda de las Fuentes	Fraccionamiento	Calimaya	México
52230	Santa María Nativitas	Pueblo	Calimaya	México
52230	La Aurora II	Fraccionamiento	Calimaya	México
52230	Residencial Santa María	Fraccionamiento	Calimaya	México
52233	San Lorenzo Cuauhtenco	Pueblo	Calimaya	México
52233	La Guadalupana	Barrio	Calimaya	México
52234	San Marcos de la Cruz	Pueblo	Calimaya	México
52235	San Cristóbal	Ranchería	Calimaya	México
52235	El Arenal	Colonia	Calimaya	México
52236	El Tarimoro	Colonia	Calimaya	México
52240	Chapultepec	Pueblo	Chapultepec	México
52240	El Calvario	Colonia	Chapultepec	México
52243	Las Américas	Colonia	Chapultepec	México
52243	Del Campesino	Colonia	Chapultepec	México
52244	Santa Teresa	Unidad habitacional	Chapultepec	México
52250	La Presa (Ejido de Chapultepec)	Colonia	Chapultepec	México
52250	San Isidro	Colonia	Chapultepec	México
52254	Los Ciruelos  (Rancho el Iris)	Ranchería	Chapultepec	México
52254	Vista Hermosa (Rancho el Huevito)	Ranchería	Chapultepec	México
52280	Villas del Sauce	Fraccionamiento	San Antonio la Isla	México
52280	San Antonio la Isla	Pueblo	San Antonio la Isla	México
52280	San Lucas Tepemajalco	Pueblo	San Antonio la Isla	México
52280	Cuauhtémoc	Colonia	San Antonio la Isla	México
52282	Ex Rancho San Dimas	Fraccionamiento	San Antonio la Isla	México
52286	San Antonio	Ranchería	San Antonio la Isla	México
52290	San Agustín	Ranchería	San Antonio la Isla	México
52300	Tenango de Arista Centro	Colonia	Tenango del Valle	México
52300	San Isidro	Colonia	Tenango del Valle	México
52300	Tenango de Arista	Colonia	Tenango del Valle	México
52303	León Guzmán	Colonia	Tenango del Valle	México
52303	De Valle	Colonia	Tenango del Valle	México
52303	Parque Industrial	Colonia	Tenango del Valle	México
52303	Ojo de Agua	Colonia	Tenango del Valle	México
52303	Santa Martha	Colonia	Tenango del Valle	México
52303	Teotenango	Barrio	Tenango del Valle	México
52303	El Carrizal	Barrio	Tenango del Valle	México
52303	Santo Niño de Atocha	Barrio	Tenango del Valle	México
52303	Las Atoleras	Barrio	Tenango del Valle	México
52303	Magisterial	Fraccionamiento	Tenango del Valle	México
52303	Real de Tetela	Fraccionamiento	Tenango del Valle	México
52303	La Soya	Colonia	Tenango del Valle	México
52303	Guadalupe	Colonia	Tenango del Valle	México
52303	Del Bosque	Fraccionamiento	Tenango del Valle	México
52304	Campesina	Colonia	Tenango del Valle	México
52304	La Estación	Barrio	Tenango del Valle	México
52304	San José	Colonia	Tenango del Valle	México
52304	Buenos Aires	Colonia	Tenango del Valle	México
52304	La Tabla	Fraccionamiento	Tenango del Valle	México
52304	Narciso Bassols	Colonia	Tenango del Valle	México
52305	San Martín	Colonia	Tenango del Valle	México
52305	Magisterial	Colonia	Tenango del Valle	México
52305	La Joya	Colonia	Tenango del Valle	México
52305	El Festival	Colonia	Tenango del Valle	México
52305	Cruz Verde	Colonia	Tenango del Valle	México
52305	La Aurora	Fraccionamiento	Tenango del Valle	México
52305	Los Cedros	Barrio	Tenango del Valle	México
52305	Tecamicalli	Fraccionamiento	Tenango del Valle	México
52307	El Coloso	Colonia	Tenango del Valle	México
52307	Monte Calvario	Colonia	Tenango del Valle	México
52310	San Francisco Tetetla	Ranchería	Tenango del Valle	México
52315	Santiaguito Cuaxustenco	Pueblo	Tenango del Valle	México
52315	El Paraíso	Fraccionamiento	Tenango del Valle	México
52316	El Cerrito (Los Charcos)	Ranchería	Tenango del Valle	México
52316	José Herrera (La Deportiva)	Ranchería	Tenango del Valle	México
52316	Loma San Joaquín	Ranchería	Tenango del Valle	México
52316	La Providencia	Ranchería	Tenango del Valle	México
52316	Las Crucecitas	Colonia	Tenango del Valle	México
52317	Gómez Tagle	Ranchería	Tenango del Valle	México
52320	Santa María Jajalpa	Pueblo	Tenango del Valle	México
52320	La Hacienda de Cuautenango	Ranchería	Tenango del Valle	México
52330	San Pedro Zictepec	Pueblo	Tenango del Valle	México
52330	Lázaro Cárdenas	Barrio	Tenango del Valle	México
52330	Cruz Blanca	Colonia	Tenango del Valle	México
52333	San Francisco Tepexoxuca	Barrio	Tenango del Valle	México
52333	Los Lavaderos	Barrio	Tenango del Valle	México
52334	La Herradura	Colonia	Tenango del Valle	México
52336	La Haciendita	Colonia	Tenango del Valle	México
52337	La Isleta	Colonia	Tenango del Valle	México
52340	San Francisco Putla	Pueblo	Tenango del Valle	México
52340	El Porvenir	Barrio	Tenango del Valle	México
52343	San Isidro	Colonia	Tenango del Valle	México
52345	San Miguel Balderas	Pueblo	Tenango del Valle	México
52346	Santa Cruz Pueblo Nuevo	Ranchería	Tenango del Valle	México
52346	Loma Rancho Juan Méndez	Ranchería	Tenango del Valle	México
52347	San Juan Tepehuizco	Colonia	Tenango del Valle	México
52350	San Bartolomé Atlatlahuca	Pueblo	Tenango del Valle	México
52353	El Guarda	Ranchería	Tenango del Valle	México
52353	Acatzingo	Colonia	Tenango del Valle	México
52353	Los Cedros	Barrio	Tenango del Valle	México
52353	La Cooperativa	Colonia	Tenango del Valle	México
52354	Las Minas	Colonia	Tenango del Valle	México
52355	San Pedro Tlanixco	Pueblo	Tenango del Valle	México
52355	San José (Barranca Mocha)	Colonia	Tenango del Valle	México
52355	El Zarzal	Colonia	Tenango del Valle	México
52356	La Azteca	Colonia	Tenango del Valle	México
52356	San Román	Colonia	Tenango del Valle	México
52357	Santa Cecilia	Colonia	Tenango del Valle	México
52357	La Loma (Las Ruinas)	Colonia	Tenango del Valle	México
52360	Santa María Rayón Centro	Pueblo	Rayón	México
52362	Ignacio López Rayón	Colonia	Rayón	México
52362	La Pirámide	Colonia	Rayón	México
52362	Los Cerritos	Ranchería	Rayón	México
52363	Guadalupe	Colonia	Rayón	México
52363	De la Cruz	Colonia	Rayón	México
52363	Niños Héroes	Colonia	Rayón	México
52363	San Isidro	Colonia	Rayón	México
52364	Santa Isabel	Colonia	Rayón	México
52364	Sanabria	Ranchería	Rayón	México
52365	San Juan la Isla	Pueblo	Rayón	México
52366	Casa Blanca	Ranchería	Rayón	México
52366	La Asunción	Colonia	Rayón	México
52366	San José	Colonia	Rayón	México
52366	La Joya	Colonia	Rayón	México
52367	Ex-Hacienda Santiaguito	Colonia	Rayón	México
52370	La Campana	Colonia	Joquicingo	México
52370	Joquicingo	Pueblo	Joquicingo	México
52370	Cuarto Barrio	Barrio	Joquicingo	México
52370	Tercer Barrio	Barrio	Joquicingo	México
52370	Segundo Barrio	Barrio	Joquicingo	México
52374	Maxtleca de Galeana	Pueblo	Joquicingo	México
52376	El Ojo de Agua	Ranchería	Joquicingo	México
52380	San Miguel de Ocampo	Pueblo	Joquicingo	México
52387	Las Parcelas	Colonia	Joquicingo	México
52387	San Pedro, Cerro las Rosas [La Prepa]	Pueblo	Joquicingo	México
52387	Techuchulco de Allende	Pueblo	Joquicingo	México
52390	El Guarda de Guerrero (San José el Guarda)	Pueblo	Joquicingo	México
52400	Tenancingo de Degollado Centro	Colonia	Tenancingo	México
52400	ISSEMYM	Colonia	Tenancingo	México
52400	San Pedrito	Colonia	Tenancingo	México
52400	La Barranca	Colonia	Tenancingo	México
52403	Shiperes	Colonia	Tenancingo	México
52403	San Isidro	Pueblo	Tenancingo	México
52403	El Chiflón	Colonia	Tenancingo	México
52410	San Vicente	Barrio	Tenancingo	México
52410	De Teotla	Barrio	Tenancingo	México
52410	Del Calvario	Colonia	Tenancingo	México
52410	Capilla de Guadalupe	Barrio	Tenancingo	México
52410	El Carrizal	Barrio	Tenancingo	México
52410	Atotonilco	Pueblo	Tenancingo	México
52410	Tierra Blanca	Pueblo	Tenancingo	México
52410	San Diego	Pueblo	Tenancingo	México
52410	Morelos	Colonia	Tenancingo	México
52410	Capilla de los Remedios	Colonia	Tenancingo	México
52413	San Antonio Agua Bendita	Pueblo	Tenancingo	México
52414	Santa Ana Ixtlahuatzingo (Santa Ana)	Pueblo	Tenancingo	México
52415	La Compuerta	Pueblo	Tenancingo	México
52415	La Ocotalera	Pueblo	Tenancingo	México
52415	Rinconada de Santa Teresa	Colonia	Tenancingo	México
52416	San Martín Coapaxtongo	Pueblo	Tenancingo	México
52416	Francisco Zarco	Pueblo	Tenancingo	México
52416	Plan de San Martín	Pueblo	Tenancingo	México
52416	Los Morales	Pueblo	Tenancingo	México
52416	La Mesita	Colonia	Tenancingo	México
52420	Chalchihuapan	Pueblo	Tenancingo	México
52420	San Juan Tetitlán	Pueblo	Tenancingo	México
52420	Gualupita	Colonia	Tenancingo	México
52420	San Ramón	Pueblo	Tenancingo	México
52420	San Mateo	Colonia	Tenancingo	México
52420	14 de Marzo	Colonia	Tenancingo	México
52423	San Juan Xochiaca	Pueblo	Tenancingo	México
52423	San Gabriel Zepayautla	Pueblo	Tenancingo	México
52424	San Simonito	Pueblo	Tenancingo	México
52425	San Miguel Tecomatlán	Pueblo	Tenancingo	México
52425	San Pedro Ejido Tecomatlán	Pueblo	Tenancingo	México
52426	Tepoxtepec	Pueblo	Tenancingo	México
52427	Guadalupe Victoria	Colonia	Tenancingo	México
52427	Santa Cruz Xochiaca	Pueblo	Tenancingo	México
52430	Ixpuichiapan	Ejido	Tenancingo	México
52430	San José el Cuartel	Colonia	Tenancingo	México
52433	Plan de Guadalupe	Ranchería	Tenancingo	México
52433	San José Tenería (Tenería)	Pueblo	Tenancingo	México
52433	Cruz Vidriada	Pueblo	Tenancingo	México
52433	Ejido de Tenería (El Llano)	Colonia	Tenancingo	México
52433	Emiliano Zapata Ejido de Tenancingo	Colonia	Tenancingo	México
52433	Valle de Guadalupe	Colonia	Tenancingo	México
52434	San José Chalmita	Pueblo	Tenancingo	México
52435	Acatzingo (Acatzingo de la Piedra)	Pueblo	Tenancingo	México
52435	Ixpuichiapan	Pueblo	Tenancingo	México
52435	Tepalcatepec	Pueblo	Tenancingo	México
52435	Tepetzingo	Pueblo	Tenancingo	México
52435	Quetzalapa	Pueblo	Tenancingo	México
52435	Terrenate	Pueblo	Tenancingo	México
52435	Santa Teresita Acatzingo	Pueblo	Tenancingo	México
52435	La Lagunilla	Pueblo	Tenancingo	México
52435	Ejército del Trabajo	Colonia	Tenancingo	México
52435	Emiliano Zapata Ejido Tepetzingo	Colonia	Tenancingo	México
52435	San Francisco Tepetzingo	Colonia	Tenancingo	México
52436	Vimate	Fraccionamiento	Tenancingo	México
52436	El Salitre	Pueblo	Tenancingo	México
52436	La Trinidad	Pueblo	Tenancingo	México
52436	Pueblo Nuevo	Pueblo	Tenancingo	México
52436	La Ciénega	Colonia	Tenancingo	México
52436	Las Casuarinas	Colonia	Tenancingo	México
52437	El Carmen (El Desierto del Carmen)	Pueblo	Tenancingo	México
52437	San Nicolás	Pueblo	Tenancingo	México
52437	Convento del Santo Desierto del Carmen	Pueblo	Tenancingo	México
52437	Lázaro Cárdenas Ixpuchiapan	Colonia	Tenancingo	México
52437	La Loma	Pueblo	Tenancingo	México
52440	La Soledad	Barrio	Malinalco	México
52440	San Guillermo	Barrio	Malinalco	México
52440	San Martín	Barrio	Malinalco	México
52440	San Pedro	Barrio	Malinalco	México
52440	Santa María	Barrio	Malinalco	México
52440	Malinalco	Pueblo	Malinalco	México
52440	Campos de San Martín	Ranchería	Malinalco	México
52440	San Juan	Colonia	Malinalco	México
52440	Santa Mónica	Barrio	Malinalco	México
52443	San Nicolás	Pueblo	Malinalco	México
52443	Jesús María	Ranchería	Malinalco	México
52443	San Sebastián	Ranchería	Malinalco	México
52444	San Simón el Alto	Pueblo	Malinalco	México
52460	Chalma	Pueblo	Malinalco	México
52460	Tepopula	Ranchería	Malinalco	México
52463	Pachuquilla	Pueblo	Malinalco	México
52463	Palmar de Guadalupe	Pueblo	Malinalco	México
52463	El Zapote	Ranchería	Malinalco	México
52464	La Ladrillera	Pueblo	Malinalco	México
52464	Puente Caporal (La Guancha)	Ranchería	Malinalco	México
52464	El Puentecito	Pueblo	Malinalco	México
52464	La Loma	Ranchería	Malinalco	México
52465	Jalmolonga (La Hacienda)	Pueblo	Malinalco	México
52465	Amate Amarillo	Pueblo	Malinalco	México
52465	La Huerta	Ranchería	Malinalco	México
52465	Loma del Cóporo	Ranchería	Malinalco	México
52466	Monte Grande	Pueblo	Malinalco	México
52466	La Joya Redonda	Ranchería	Malinalco	México
52467	Planta Alameda	Pueblo	Malinalco	México
52467	Tepehuajes	Ranchería	Malinalco	México
52467	Palo Dulce	Ranchería	Malinalco	México
52470	Noxtepec de Zaragoza (El Aguacate)	Ranchería	Malinalco	México
52470	Santa María Xoquiac	Pueblo	Malinalco	México
52473	San Pedro Chichicasco (San Pedro)	Ranchería	Malinalco	México
52473	El Platanar	Pueblo	Malinalco	México
52473	Chichicasco el Viejo	Ranchería	Malinalco	México
52476	Juárez	Colonia	Malinalco	México
52477	Aldama	Colonia	Malinalco	México
52477	Hidalgo	Colonia	Malinalco	México
52477	San Andrés Nicolás Bravo	Pueblo	Malinalco	México
52477	La Angostura	Ranchería	Malinalco	México
52477	Emiliano Zapata	Ranchería	Malinalco	México
52480	El Cerrito (El Calvario)	Ranchería	Ocuilan	México
52480	Ocuilán de Arteaga	Pueblo	Ocuilan	México
52480	Santa María (Tlacutapa)	Ranchería	Ocuilan	México
52480	San Sebastían	Pueblo	Ocuilan	México
52483	La Cañada	Pueblo	Ocuilan	México
52483	Chalmita	Pueblo	Ocuilan	México
52484	El Ahuehuete	Pueblo	Ocuilan	México
52484	La Ciénega	Pueblo	Ocuilan	México
52484	Santa Cruz Tezontepec (Totoltepec)	Pueblo	Ocuilan	México
52484	Santa Mónica	Pueblo	Ocuilan	México
52484	El Picacho (San Antonio el Picacho)	Ranchería	Ocuilan	México
52484	Reforma Agraria (El Pedregal)	Ranchería	Ocuilan	México
52484	La Haciendita	Ranchería	Ocuilan	México
52484	Amola (San Isidro Amola)	Ranchería	Ocuilan	México
52484	Tlecuilco	Ranchería	Ocuilan	México
52485	La Esperanza (El Arenal)	Pueblo	Ocuilan	México
52486	Doctor Gustavo Baz	Colonia	Ocuilan	México
52486	Cinco Caminos	Ranchería	Ocuilan	México
52487	Coyoltepec	Ranchería	Ocuilan	México
52490	La Lagunita	Pueblo	Ocuilan	México
52490	Los Manantiales (El Río Chiquito)	Ranchería	Ocuilan	México
52490	Plaza Nueva	Ranchería	Ocuilan	México
52493	Ahuatenco	Ranchería	Ocuilan	México
52493	Ajuchitlán	Ranchería	Ocuilan	México
52493	Mexicapa	Ranchería	Ocuilan	México
52493	Tlatempa	Ranchería	Ocuilan	México
52494	Pastoría (La Pastora)	Pueblo	Ocuilan	México
52494	El Puente	Ranchería	Ocuilan	México
52494	Santa Ana	Ranchería	Ocuilan	México
52494	Tepetzingo (Tepezingo)	Ranchería	Ocuilan	México
52494	Las Trojes	Ranchería	Ocuilan	México
52495	San Juan Atzingo	Pueblo	Ocuilan	México
52495	Santa Lucía	Pueblo	Ocuilan	México
52495	Santa Martha	Pueblo	Ocuilan	México
52495	Lomas de Teocaltzingo (Loma de Tecalzingo)	Ranchería	Ocuilan	México
52495	Santa María Nativitas	Ranchería	Ocuilan	México
52496	San José el Tótoc	Ranchería	Ocuilan	México
52496	El Capulín	Ranchería	Ocuilan	México
52497	Pueblo Nuevo	Ranchería	Ocuilan	México
52497	San Isidro	Ranchería	Ocuilan	México
52500	Libertad	Colonia	Atizapán	México
52500	Santa Cruz Atizapán	Pueblo	Atizapán	México
52503	Magisterial	Colonia	Atizapán	México
52504	Tepozoco	Colonia	Atizapán	México
52505	El Tepiololco	Colonia	Atizapán	México
52506	La Remolacha	Colonia	Atizapán	México
52540	Almoloya del Río	Pueblo	Almoloya del Río	México
52540	Loma Linda	Colonia	Almoloya del Río	México
52542	La Puerta	Colonia	Almoloya del Río	México
52543	La Florida (El Jagüey)	Colonia	Almoloya del Río	México
52544	Campesina-Emiliano Zapata	Colonia	Almoloya del Río	México
52570	Mexicapan	Barrio	Texcalyacac	México
52570	San Mateo Texcalyacac	Pueblo	Texcalyacac	México
52570	La Joya Maravillas	Colonia	Texcalyacac	México
52574	Las Maravillas	Colonia	Texcalyacac	México
52600	Santiago Tianguistenco de Galeana	Pueblo	Tianguistenco	México
52600	Guadalupe Rhon de Hank	Colonia	Tianguistenco	México
52600	Izcalli	Unidad habitacional	Tianguistenco	México
52600	Isidro Fabela	Parque industrial	Tianguistenco	México
52600	Cipreses	Fraccionamiento	Tianguistenco	México
52600	San Cayetano	Colonia	Tianguistenco	México
52600	20 de Noviembre	Conjunto habitacional	Tianguistenco	México
52603	Guadalupe Yancuictlalpan (Gualupita)	Pueblo	Tianguistenco	México
52603	Las Granjas	Colonia	Tianguistenco	México
52604	San Isidro	Ranchería	Tianguistenco	México
52605	Jardines de Santiago	Fraccionamiento	Tianguistenco	México
52605	La Mora	Fraccionamiento	Tianguistenco	México
52607	La Palma	Colonia	Tianguistenco	México
52613	San José Mezapa Sección Uno	Pueblo	Tianguistenco	México
52613	San José Mezapa Sección Dos	Pueblo	Tianguistenco	México
52614	San Lorenzo Huehuetitlán	Pueblo	Tianguistenco	México
52640	San Pedro Tlaltizapan	Pueblo	Tianguistenco	México
52640	San Miguel (368)	Colonia	Tianguistenco	México
52644	El Buen Suceso	Ranchería	Tianguistenco	México
52645	Ex-Hacienda de Atenco	Pueblo	Tianguistenco	México
52645	San Isidro	Colonia	Tianguistenco	México
52646	El Tejocote	Ranchería	Tianguistenco	México
52650	Santiago Tilapa	Pueblo	Tianguistenco	México
52653	Coamilpa de Juárez	Pueblo	Tianguistenco	México
52654	El Mirasol	Pueblo	Tianguistenco	México
52656	La Magdalena de los Reyes	Pueblo	Tianguistenco	México
52656	Santa Cruz de Bravo	Pueblo	Tianguistenco	México
52656	El Apilulco	Colonia	Tianguistenco	México
52660	Villa de San Nicolás Coatepec de las Bateas	Pueblo	Tianguistenco	México
52664	Tierra Colorada	Ranchería	Tianguistenco	México
52664	Chiquixpac Sección II	Pueblo	Tianguistenco	México
52664	Chiquixpac Sección Uno	Ranchería	Tianguistenco	México
52664	Pueblo Nuevo	Colonia	Tianguistenco	México
52664	Techmaninalli	Colonia	Tianguistenco	México
52664	Tzitzicazapa	Colonia	Tianguistenco	México
52665	San Bartolo del Progreso (San Bartolo)	Pueblo	Tianguistenco	México
52665	La Lagunilla	Pueblo	Tianguistenco	México
52665	Tlacuitlapa	Pueblo	Tianguistenco	México
52665	Campesina	Colonia	Tianguistenco	México
52665	Meztitla	Colonia	Tianguistenco	México
52665	Texoconalco	Colonia	Tianguistenco	México
52665	Mumana-Átl	Ranchería	Tianguistenco	México
52666	Tlacomulco	Pueblo	Tianguistenco	México
52666	Antlantlacpac	Pueblo	Tianguistenco	México
52667	Ocotenco	Pueblo	Tianguistenco	México
52667	Ahuatenco	Pueblo	Tianguistenco	México
52667	Tlaminca	Pueblo	Tianguistenco	México
52680	Xalatlaco	Pueblo	Xalatlaco	México
52680	San Agustín	Barrio	Xalatlaco	México
52680	San Bartolo	Barrio	Xalatlaco	México
52680	San Francisco	Barrio	Xalatlaco	México
52680	San Juan	Barrio	Xalatlaco	México
52680	Techichili	Barrio	Xalatlaco	México
52683	San Bartolito	Colonia	Xalatlaco	México
52683	Coxto (Coschto)	Ranchería	Xalatlaco	México
52683	Mezapa la Fábrica	Colonia	Xalatlaco	México
52684	Morelos	Pueblo	Xalatlaco	México
52684	Tejocotes	Pueblo	Xalatlaco	México
52685	Santa Fe Mezapa	Pueblo	Xalatlaco	México
52686	Águila (La Mesa)	Pueblo	Xalatlaco	México
52686	Coexapa	Pueblo	Xalatlaco	México
52686	El Yete	Ranchería	Xalatlaco	México
52688	San Juan Tomasquillo	Pueblo	Xalatlaco	México
52688	Cruz Larga	Pueblo	Xalatlaco	México
52689	Potrero	Pueblo	Xalatlaco	México
52689	Escalerillas (Barrio San Francisco)	Ranchería	Xalatlaco	México
52690	El Capulín	Pueblo	Xalatlaco	México
52693	Jaras Verdes	Ranchería	Xalatlaco	México
52693	Las Cocinas	Ranchería	Xalatlaco	México
52700	Capulhuac de Mirafuentes Centro	Colonia	Capulhuac	México
52700	San Juan Bautista	Colonia	Capulhuac	México
52710	San Miguel Almaya	Pueblo	Capulhuac	México
52710	San Nicolás Tlazala	Pueblo	Capulhuac	México
52710	Lomas de San Juan	Pueblo	Capulhuac	México
52710	Agua Blanca	Pueblo	Capulhuac	México
52710	La Cuchillla	Ejido	Capulhuac	México
52710	Valle de los Sauces	Fraccionamiento	Capulhuac	México
52710	Las Chinampas	Ejido	Capulhuac	México
52713	Guadalupe Victoria	Pueblo	Capulhuac	México
52714	La Lagunilla	Colonia	Capulhuac	México
52714	Capetillo	Ranchería	Capulhuac	México
52720	San Isidro	Barrio	Capulhuac	México
52723	La Poza	Colonia	Capulhuac	México
52723	Hueyutitla	Ranchería	Capulhuac	México
52730	San Miguelito	Barrio	Capulhuac	México
52730	Molino de San Cayetano	Colonia	Capulhuac	México
52733	Santa María Coaxusco	Barrio	Capulhuac	México
52733	La Cruz	Colonia	Capulhuac	México
52740	Centro Ocoyoacac	Colonia	Ocoyoacac	México
52740	Santa María	Barrio	Ocoyoacac	México
52740	San Miguel	Barrio	Ocoyoacac	México
52740	Coapanoaya	Barrio	Ocoyoacac	México
52740	Ejido la Campana	Colonia	Ocoyoacac	México
52743	Bosque de los Encinos	Fraccionamiento	Ocoyoacac	México
52743	Hacienda San Martín	Fraccionamiento	Ocoyoacac	México
52743	Juárez (Los Chirinos)	Colonia	Ocoyoacac	México
52743	La Marquesa	Ranchería	Ocoyoacac	México
52743	Río Hondito	Colonia	Ocoyoacac	México
52743	Ortiz Rubio (Jajalpa)	Colonia	Ocoyoacac	México
52743	Ex-hacienda Jajalpa	Fraccionamiento	Ocoyoacac	México
52743	San Miguel (Posito del Olvido)	Barrio	Ocoyoacac	México
52743	Cañada Honda	Ranchería	Ocoyoacac	México
52743	El Bellotal	Colonia	Ocoyoacac	México
52743	El Peñón	Ranchería	Ocoyoacac	México
52743	El Portezuelo	Ranchería	Ocoyoacac	México
52743	El Zarco (Las Truchas)	Ranchería	Ocoyoacac	México
52743	La Conchita	Ranchería	Ocoyoacac	México
52750	Loma Bonita	Barrio	Ocoyoacac	México
52750	Texcalpa (Ex-hacienda Texcalpa)	Ranchería	Ocoyoacac	México
52753	San Jerónimo Acazulco	Pueblo	Ocoyoacac	México
52753	Loma de los Esquiveles	Colonia	Ocoyoacac	México
52753	Joquicingo	Ranchería	Ocoyoacac	México
52753	La Lomita	Ranchería	Ocoyoacac	México
52753	Valle del Silencio [Parque Recreativo]	Ranchería	Ocoyoacac	México
52754	San Pedro Atlapulco	Pueblo	Ocoyoacac	México
52754	Cruz de la Misión	Ranchería	Ocoyoacac	México
52754	San Isidro Tehualtepec	Ranchería	Ocoyoacac	México
52754	San Pedro	Ranchería	Ocoyoacac	México
52755	Benevento	Fraccionamiento	Ocoyoacac	México
52755	Santiaguito	Barrio	Ocoyoacac	México
52755	Tepexoyuca	Barrio	Ocoyoacac	México
52755	El Llano del Compromiso	Colonia	Ocoyoacac	México
52756	El Pedregal de Guadalupe Hidalgo	Pueblo	Ocoyoacac	México
52756	El Pirame	Colonia	Ocoyoacac	México
52756	Guadalupe Victoria	Colonia	Ocoyoacac	México
52756	Puerta del Carmen	Fraccionamiento	Ocoyoacac	México
52757	San Antonio el Llanito	Zona industrial	Ocoyoacac	México
52757	San Antonio el Llanito	Pueblo	Ocoyoacac	México
52757	San Pedro Cholula	Pueblo	Ocoyoacac	México
52757	Estación Maclovio Herrera	Zona industrial	Ocoyoacac	México
52760	El Cerrito	Ranchería	Huixquilucan	México
52760	Huixquilucan de Degollado Centro	Colonia	Huixquilucan	México
52760	San Ramón	Barrio	Huixquilucan	México
52760	San Martín	Barrio	Huixquilucan	México
52760	San Melchor	Barrio	Huixquilucan	México
52760	San Juan Bautista	Barrio	Huixquilucan	México
52760	El Plan	Ranchería	Huixquilucan	México
52760	San Miguel	Barrio	Huixquilucan	México
52760	El Retiro	Ranchería	Huixquilucan	México
52763	Vista Horizonte	Fraccionamiento	Huixquilucan	México
52763	Hacienda de las Palmas	Fraccionamiento	Huixquilucan	México
52763	Villa Florence	Fraccionamiento	Huixquilucan	México
52764	Jesús del Monte	Colonia	Huixquilucan	México
52764	La Retama	Colonia	Huixquilucan	México
52765	Esfuerzo Obrero	Colonia	Huixquilucan	México
52765	Industria Militar y Cove	Colonia	Huixquilucan	México
52765	San Fernando	Colonia	Huixquilucan	México
52765	San Fernando	Fraccionamiento	Huixquilucan	México
52766	San Jacinto	Ranchería	Huixquilucan	México
52766	Santiago Yancuitlalpan	Pueblo	Huixquilucan	México
52766	Zacamulpa	Pueblo	Huixquilucan	México
52766	El Mirasol	Ranchería	Huixquilucan	México
52767	Ignacio Allende	Pueblo	Huixquilucan	México
52767	El Palacio	Pueblo	Huixquilucan	México
52767	El Xiguiro	Barrio	Huixquilucan	México
52768	San Juan Yautepec	Pueblo	Huixquilucan	México
52769	La Cañada	Ranchería	Huixquilucan	México
52769	La Cima	Colonia	Huixquilucan	México
52769	Agua de Santo	Ranchería	Huixquilucan	México
52770	Paseos del Bosque	Condominio	Huixquilucan	México
52770	Las Canteras	Colonia	Huixquilucan	México
52773	Magdalena Chichicaspa	Pueblo	Huixquilucan	México
52773	Del Río	Barrio	Huixquilucan	México
52773	La Manzana (La Rinconada)	Barrio	Huixquilucan	México
52773	Magdalena Chichicaspa (Las Campanitas)	Ejido	Huixquilucan	México
52773	El Escobal	Barrio	Huixquilucan	México
52773	El Manzano	Barrio	Huixquilucan	México
52773	La Capilla	Ranchería	Huixquilucan	México
52774	El Pedregal	Colonia	Huixquilucan	México
52774	Bosque Real	Fraccionamiento	Huixquilucan	México
52774	Arenal	Colonia	Huixquilucan	México
52775	Constituyentes de 1917	Colonia	Huixquilucan	México
52775	Tierra y Libertad	Colonia	Huixquilucan	México
52776	Loma del Carmen	Colonia	Huixquilucan	México
52776	La Unidad	Colonia	Huixquilucan	México
52777	Federal Burocrática	Colonia	Huixquilucan	México
52777	El Bosque	Colonia	Huixquilucan	México
52777	Paradice	Unidad habitacional	Huixquilucan	México
52778	Palo Solo	Colonia	Huixquilucan	México
52778	Ampliación Palo Solo	Colonia	Huixquilucan	México
52779	Conjunto Urbano Green House	Fraccionamiento	Huixquilucan	México
52779	Montón Cuarteles	Colonia	Huixquilucan	México
52779	Pirules	Colonia	Huixquilucan	México
52779	Lomas Country Club	Fraccionamiento	Huixquilucan	México
52780	Bosques de las Lomas	Colonia	Huixquilucan	México
52780	Lomas de Tecamachalco Sección Bosques I y II	Fraccionamiento	Huixquilucan	México
52780	Lomas de Tecamachalco Sección Cumbres	Colonia	Huixquilucan	México
52783	Rinconada de la Herradura	Fraccionamiento	Huixquilucan	México
52783	Bosques de la Herradura	Fraccionamiento	Huixquilucan	México
52784	La Herradura	Fraccionamiento	Huixquilucan	México
52784	La Herradura Sección III	Fraccionamiento	Huixquilucan	México
52784	La Herradura Sección II	Fraccionamiento	Huixquilucan	México
52784	La Herradura Sección I	Fraccionamiento	Huixquilucan	México
52785	Jardines de la Herradura	Colonia	Huixquilucan	México
52785	Balcones de la Herradura	Fraccionamiento	Huixquilucan	México
52785	Galardón	Conjunto habitacional	Huixquilucan	México
52785	Lomas de La Herradura	Fraccionamiento	Huixquilucan	México
52786	Lomas Anáhuac	Fraccionamiento	Huixquilucan	México
52786	Magnocentro	Fraccionamiento	Huixquilucan	México
52786	Parques de la Herradura	Fraccionamiento	Huixquilucan	México
52787	Bosques de las Palmas	Fraccionamiento	Huixquilucan	México
52787	Paseo de las Palmas	Fraccionamiento	Huixquilucan	México
52787	Villa de las Lomas	Colonia	Huixquilucan	México
52787	Valle de las Palmas	Fraccionamiento	Huixquilucan	México
52787	Interlomas	Colonia	Huixquilucan	México
52787	Palmas Altas Residencial	Condominio	Huixquilucan	México
52788	Frondoso Torres	Condominio	Huixquilucan	México
52788	Lomas de las Palmas	Fraccionamiento	Huixquilucan	México
52788	Lomas del Olivo	Fraccionamiento	Huixquilucan	México
52788	Privada del Bosque	Fraccionamiento	Huixquilucan	México
52789	El Olivo	Colonia	Huixquilucan	México
52789	Lomas del Sol	Fraccionamiento	Huixquilucan	México
52790	San Francisco Dos Ríos	Pueblo	Huixquilucan	México
52790	La Pera	Colonia	Huixquilucan	México
52793	San Bartolomé Coatepec	Pueblo	Huixquilucan	México
52793	Paraje el Mirador	Colonia	Huixquilucan	México
52793	Paraje Trejo (El Chaparral)	Colonia	Huixquilucan	México
52793	El Obraje	Colonia	Huixquilucan	México
52794	La Cumbre	Ranchería	Huixquilucan	México
52794	La Glorieta	Ranchería	Huixquilucan	México
52794	El Hielo	Colonia	Huixquilucan	México
52794	El Guarda (Puerto el Guarda)	Ranchería	Huixquilucan	México
52795	Santa Cruz Ayotuxco	Pueblo	Huixquilucan	México
52795	Canales	Colonia	Huixquilucan	México
52796	San Cristóbal Texcalucan	Pueblo	Huixquilucan	México
52797	Huiloteapan (San José Huiloteapan)	Ranchería	Huixquilucan	México
52798	Cerro de San Francisco	Colonia	Huixquilucan	México
52798	San Francisco Ayotuzco	Pueblo	Huixquilucan	México
52799	Agua Bendita	Ranchería	Huixquilucan	México
52799	Agua Blanca	Ranchería	Huixquilucan	México
52799	El Laurel	Ranchería	Huixquilucan	México
52799	Llano Grande (San Miguel Llano Grande)	Ranchería	Huixquilucan	México
52799	Piedra Grande	Ranchería	Huixquilucan	México
52900	Ciudad Adolfo López Mateos	Colonia	Atizapán de Zaragoza	México
52910	Adolfo López Mateos	Colonia	Atizapán de Zaragoza	México
52910	Hogares de Atizapán	Fraccionamiento	Atizapán de Zaragoza	México
52910	Primero de Septiembre	Colonia	Atizapán de Zaragoza	México
52910	Los Álamos	Colonia	Atizapán de Zaragoza	México
52910	Ex Hacienda del Pedregal	Fraccionamiento	Atizapán de Zaragoza	México
52910	Adolfo López Mateos Ampliación I	Colonia	Atizapán de Zaragoza	México
52910	Real del Pedregal	Fraccionamiento	Atizapán de Zaragoza	México
52910	Residencial San Mateo	Fraccionamiento	Atizapán de Zaragoza	México
52910	Adolfo López Mateos Ampliación II	Colonia	Atizapán de Zaragoza	México
52915	El Capulín	Colonia	Atizapán de Zaragoza	México
52915	México 86	Colonia	Atizapán de Zaragoza	México
52915	Villa de las Torres	Colonia	Atizapán de Zaragoza	México
52915	La Nueva Era	Colonia	Atizapán de Zaragoza	México
52915	Atizapán 2000	Colonia	Atizapán de Zaragoza	México
52915	José María Morelos y Pavón	Colonia	Atizapán de Zaragoza	México
52915	El Mirador	Colonia	Atizapán de Zaragoza	México
52916	Loma de María Luisa	Colonia	Atizapán de Zaragoza	México
52916	Los Olivos	Colonia	Atizapán de Zaragoza	México
52916	El Túnel (Sección)	Colonia	Atizapán de Zaragoza	México
52918	Hacienda del Pedregal	Fraccionamiento	Atizapán de Zaragoza	México
52918	Emiliano Zapata	Colonia	Atizapán de Zaragoza	México
52918	Ampliación Emiliano Zapata I	Colonia	Atizapán de Zaragoza	México
52918	Miraflores	Colonia	Atizapán de Zaragoza	México
52918	Villa de las Palmas	Colonia	Atizapán de Zaragoza	México
52918	Sagitario II	Colonia	Atizapán de Zaragoza	México
52918	Villa de las Palmas Ampliación	Colonia	Atizapán de Zaragoza	México
52918	Lomas de las Torres	Colonia	Atizapán de Zaragoza	México
52918	Lomas de Monte María	Colonia	Atizapán de Zaragoza	México
52918	Ex-Hacienda el Pedregal	Colonia	Atizapán de Zaragoza	México
52918	Ampliación Emiliano Zapata II	Colonia	Atizapán de Zaragoza	México
52919	Bosques de Ixtacala	Colonia	Atizapán de Zaragoza	México
52919	Revolución	Colonia	Atizapán de Zaragoza	México
52919	Universidad Autonoma Metropolitana	Colonia	Atizapán de Zaragoza	México
52919	Bosques de Primavera	Colonia	Atizapán de Zaragoza	México
52920	Cerro Grande	Colonia	Atizapán de Zaragoza	México
52920	Peñitas	Colonia	Atizapán de Zaragoza	México
52920	Ampliación Peñitas	Colonia	Atizapán de Zaragoza	México
52920	San Mateo Tecoloapan	Pueblo	Atizapán de Zaragoza	México
52920	San Antonio Pocitos	Colonia	Atizapán de Zaragoza	México
52923	Villa Jardín	Colonia	Atizapán de Zaragoza	México
52924	San José el Jaral	Colonia	Atizapán de Zaragoza	México
52924	San José el Jaral I	Colonia	Atizapán de Zaragoza	México
52925	Lomas de La Hacienda	Fraccionamiento	Atizapán de Zaragoza	México
52926	Jardines de Monterrey	Colonia	Atizapán de Zaragoza	México
52926	Margarita Maza de Juárez	Colonia	Atizapán de Zaragoza	México
52926	Villa San José	Colonia	Atizapán de Zaragoza	México
52927	El Cerrito	Colonia	Atizapán de Zaragoza	México
52927	San Miguel Xochimanga	Colonia	Atizapán de Zaragoza	México
52928	El Campanario	Fraccionamiento	Atizapán de Zaragoza	México
52928	Lomas de San Miguel Norte	Colonia	Atizapán de Zaragoza	México
52928	Lomas de San Miguel Sur	Colonia	Atizapán de Zaragoza	México
52928	Lomas de Tepalcapa	Colonia	Atizapán de Zaragoza	México
52928	Prados de Ixtacala I	Colonia	Atizapán de Zaragoza	México
52928	General Cárdenas del Río	Colonia	Atizapán de Zaragoza	México
52928	San Juan Ixtacala Plano Sur	Colonia	Atizapán de Zaragoza	México
52928	San Juan Ixtacala Plano Norte	Colonia	Atizapán de Zaragoza	México
52928	Ejidos San Miguel Chalma	Colonia	Atizapán de Zaragoza	México
52928	Lomas de Tepalcapa Ampliación	Colonia	Atizapán de Zaragoza	México
52928	Capulín Ampliación	Colonia	Atizapán de Zaragoza	México
52928	Prados de Ixtacala II	Colonia	Atizapán de Zaragoza	México
52929	Hacienda de la Luz	Colonia	Atizapán de Zaragoza	México
52929	Villas de la Hacienda	Fraccionamiento	Atizapán de Zaragoza	México
52929	Tierra de en Medio	Colonia	Atizapán de Zaragoza	México
52930	Lomas de Valle Escondido	Fraccionamiento	Atizapán de Zaragoza	México
52930	Residencial Chiluca (Club de Golf Chiluca)	Fraccionamiento	Atizapán de Zaragoza	México
52930	La Estadía	Fraccionamiento	Atizapán de Zaragoza	México
52930	Plazas del Condado	Fraccionamiento	Atizapán de Zaragoza	México
52930	Bosque Esmeralda	Fraccionamiento	Atizapán de Zaragoza	México
52930	Chiluca	Pueblo	Atizapán de Zaragoza	México
52934	Rancho Blanco Ejido de Espíritu Santo	Ejido	Atizapán de Zaragoza	México
52936	Prado Largo	Fraccionamiento	Atizapán de Zaragoza	México
52937	Club de Golf Vallescondido	Fraccionamiento	Atizapán de Zaragoza	México
52937	Hacienda de Valle Escondido	Fraccionamiento	Atizapán de Zaragoza	México
52937	Valle Escondido	Fraccionamiento	Atizapán de Zaragoza	México
52938	Condado de Sayavedra	Fraccionamiento	Atizapán de Zaragoza	México
52938	Fincas de Sayavedra	Colonia	Atizapán de Zaragoza	México
52938	Rancho San Juan	Fraccionamiento	Atizapán de Zaragoza	México
52940	Rinconada Bonfil	Colonia	Atizapán de Zaragoza	México
52940	Alfredo V. Bonfil	Colonia	Atizapán de Zaragoza	México
52940	Ampliación Alfredo V Bonfil	Colonia	Atizapán de Zaragoza	México
52940	Prof. Cristóbal Higuera	Colonia	Atizapán de Zaragoza	México
52940	Prof. Cristóbal Higuera Ampliación	Colonia	Atizapán de Zaragoza	México
52940	Luis Donaldo Colosio	Colonia	Atizapán de Zaragoza	México
52945	Atizapán	Ejido	Atizapán de Zaragoza	México
52945	Real de Atizapán	Fraccionamiento	Atizapán de Zaragoza	México
52945	Rinconada de las Arboledas	Fraccionamiento	Atizapán de Zaragoza	México
52945	Vergel de Arboledas	Fraccionamiento	Atizapán de Zaragoza	México
52945	La Explanada	Colonia	Atizapán de Zaragoza	México
52946	San Juan Bosco	Colonia	Atizapán de Zaragoza	México
52947	Lomas Lindas I Sección	Fraccionamiento	Atizapán de Zaragoza	México
52947	La Cima	Fraccionamiento	Atizapán de Zaragoza	México
52947	Lomas Lindas II Sección	Fraccionamiento	Atizapán de Zaragoza	México
52948	Boulevares de Atizapán	Fraccionamiento	Atizapán de Zaragoza	México
52948	El Pedregal de Atizapán	Fraccionamiento	Atizapán de Zaragoza	México
52948	Central de Abastos	Zona comercial	Atizapán de Zaragoza	México
52948	El Riachuelo	Colonia	Atizapán de Zaragoza	México
52949	Las Águilas	Colonia	Atizapán de Zaragoza	México
52949	Sagitario I	Colonia	Atizapán de Zaragoza	México
52949	Seis de Octubre	Colonia	Atizapán de Zaragoza	México
52950	Las Arboledas	Fraccionamiento	Atizapán de Zaragoza	México
52953	Ahuehuetes	Colonia	Atizapán de Zaragoza	México
52953	Las Colonias	Colonia	Atizapán de Zaragoza	México
52953	Laureles	Fraccionamiento	Atizapán de Zaragoza	México
52953	Torres de Atizapán VI	Fraccionamiento	Atizapán de Zaragoza	México
52953	Torres de Atizapán VIII	Colonia	Atizapán de Zaragoza	México
52957	Mayorazgos de la Concordia	Fraccionamiento	Atizapán de Zaragoza	México
52957	Mayorazgos de los Gigantes	Fraccionamiento	Atizapán de Zaragoza	México
52957	Mayorazgos del Bosque	Fraccionamiento	Atizapán de Zaragoza	México
52957	Club Hípico San Miguel	Fraccionamiento	Atizapán de Zaragoza	México
52959	Club de Golf Hacienda	Fraccionamiento	Atizapán de Zaragoza	México
52960	Barrio Norte	Colonia	Atizapán de Zaragoza	México
52965	La Condesa	Fraccionamiento	Atizapán de Zaragoza	México
52966	México Nuevo	Colonia	Atizapán de Zaragoza	México
52966	27 de Septiembre	Unidad habitacional	Atizapán de Zaragoza	México
52967	Bosques de Atizapán	Fraccionamiento	Atizapán de Zaragoza	México
52967	Coporo	Colonia	Atizapán de Zaragoza	México
52967	Rincón de los Bosques	Colonia	Atizapán de Zaragoza	México
52967	Rinconada de Atizapán	Fraccionamiento	Atizapán de Zaragoza	México
52968	Fraccionamiento Industrial El Pedregal	Zona industrial	Atizapán de Zaragoza	México
52968	Zona Industrial 1 (Prof. Cristóbal Higuera)	Zona industrial	Atizapán de Zaragoza	México
52968	Zona Industrial 2 (México Nuevo)	Zona industrial	Atizapán de Zaragoza	México
52970	San José	Fraccionamiento	Atizapán de Zaragoza	México
52970	Valle de México	Fraccionamiento	Atizapán de Zaragoza	México
52970	La Ermita	Colonia	Atizapán de Zaragoza	México
52970	Las Alamedas	Fraccionamiento	Atizapán de Zaragoza	México
52975	El Potrero	Colonia	Atizapán de Zaragoza	México
52975	Lomas de San Lorenzo	Colonia	Atizapán de Zaragoza	México
52975	Lomas de San Lorenzo Ampliación	Colonia	Atizapán de Zaragoza	México
52975	Rincón de la Montaña	Fraccionamiento	Atizapán de Zaragoza	México
52976	Atizapán Moderno	Fraccionamiento	Atizapán de Zaragoza	México
52977	14 de Diciembre	Unidad habitacional	Atizapán de Zaragoza	México
52977	Lomas de Atizapán	Fraccionamiento	Atizapán de Zaragoza	México
52977	Lomas de Atizapán II	Fraccionamiento	Atizapán de Zaragoza	México
52978	Jardines de Atizapán	Fraccionamiento	Atizapán de Zaragoza	México
52978	Las Acacias	Fraccionamiento	Atizapán de Zaragoza	México
52979	Alborada	Colonia	Atizapán de Zaragoza	México
52979	Lázaro Cárdenas	Colonia	Atizapán de Zaragoza	México
52979	Paseos de México	Fraccionamiento	Atizapán de Zaragoza	México
52980	Las Flores	Colonia	Atizapán de Zaragoza	México
52980	San Martín de Porres	Colonia	Atizapán de Zaragoza	México
52980	San Martín de Porres Ampliación	Colonia	Atizapán de Zaragoza	México
52980	Demetrio Vallejo	Colonia	Atizapán de Zaragoza	México
52980	Demetrio Vallejo Ampliación	Colonia	Atizapán de Zaragoza	México
52980	Los Cajones	Colonia	Atizapán de Zaragoza	México
52985	La Cruz	Colonia	Atizapán de Zaragoza	México
52985	Lomas de Guadalupe	Colonia	Atizapán de Zaragoza	México
52985	Morelos	Colonia	Atizapán de Zaragoza	México
52985	Rincón de la Charrería	Colonia	Atizapán de Zaragoza	México
52986	Ignacio López Rayón	Colonia	Atizapán de Zaragoza	México
52987	Conjunto Habitacional Villa Sol	Fraccionamiento	Atizapán de Zaragoza	México
52987	Capulín Monte Sol	Colonia	Atizapán de Zaragoza	México
52987	La Cañada	Fraccionamiento	Atizapán de Zaragoza	México
52987	Lomas de Capistrano	Colonia	Atizapán de Zaragoza	México
52987	Bosques de San Martín	Colonia	Atizapán de Zaragoza	México
52987	Ex Ejido el Mosco	Colonia	Atizapán de Zaragoza	México
52988	Casitas Capistrano	Fraccionamiento	Atizapán de Zaragoza	México
52989	Residencial Lago Esmeralda	Fraccionamiento	Atizapán de Zaragoza	México
52989	Nuevo Madín	Colonia	Atizapán de Zaragoza	México
52989	Viejo Madín	Colonia	Atizapán de Zaragoza	México
52990	Calacoaya	Pueblo	Atizapán de Zaragoza	México
52990	El Chaparral	Colonia	Atizapán de Zaragoza	México
52990	El Chaparral Ampliación	Colonia	Atizapán de Zaragoza	México
52994	Lomas de Bellavista	Fraccionamiento	Atizapán de Zaragoza	México
52995	Club de Golf Bellavista	Fraccionamiento	Atizapán de Zaragoza	México
52996	Conjunto Taxco	Colonia	Atizapán de Zaragoza	México
52996	Explanada Calacoaya	Fraccionamiento	Atizapán de Zaragoza	México
52996	Privada de Las Arboledas	Fraccionamiento	Atizapán de Zaragoza	México
52996	Privada las Huertas	Fraccionamiento	Atizapán de Zaragoza	México
52996	Calacoaya Residencial	Fraccionamiento	Atizapán de Zaragoza	México
52996	Rincón Colonial	Fraccionamiento	Atizapán de Zaragoza	México
52996	ISSEMYM	Unidad habitacional	Atizapán de Zaragoza	México
52997	Cinco de Mayo	Colonia	Atizapán de Zaragoza	México
52997	El Calvario	Colonia	Atizapán de Zaragoza	México
52998	Fuentes del Sol	Fraccionamiento	Atizapán de Zaragoza	México
52998	Fuentes de Satélite	Fraccionamiento	Atizapán de Zaragoza	México
52998	Rancho Castro	Colonia	Atizapán de Zaragoza	México
52998	Misión de la Presa	Fraccionamiento	Atizapán de Zaragoza	México
53000	San Bartolo Naucalpan (Naucalpan Centro)	Pueblo	Naucalpan de Juárez	México
53000	Unidad Morelos	Colonia	Naucalpan de Juárez	México
53010	Conjunto San Miguel	Fraccionamiento	Naucalpan de Juárez	México
53030	Bosque de los Remedios	Colonia	Naucalpan de Juárez	México
53040	Las Américas	Fraccionamiento	Naucalpan de Juárez	México
53050	El Mirador	Fraccionamiento	Naucalpan de Juárez	México
53060	Loma Taurina	Colonia	Naucalpan de Juárez	México
53070	Adolfo López Mateos	Colonia	Naucalpan de Juárez	México
53100	Ciudad Satélite	Fraccionamiento	Naucalpan de Juárez	México
53100	Club Cuicacalli	Fraccionamiento	Naucalpan de Juárez	México
53110	Santa Cruz del Monte	Pueblo	Naucalpan de Juárez	México
53110	Fontana Residencial	Fraccionamiento	Naucalpan de Juárez	México
53110	Bugambilias	Fraccionamiento	Naucalpan de Juárez	México
53115	Lomas de Las Fuentes	Fraccionamiento	Naucalpan de Juárez	México
53116	La Alteza	Fraccionamiento	Naucalpan de Juárez	México
53117	El Sauzalito	Fraccionamiento	Naucalpan de Juárez	México
53117	Cristóbal Colón	Fraccionamiento	Naucalpan de Juárez	México
53119	Colonial Satélite	Fraccionamiento	Naucalpan de Juárez	México
53120	Lomas Verdes 1a Sección	Fraccionamiento	Naucalpan de Juárez	México
53120	Lomas Verdes (Conjunto Lomas Verdes)	Fraccionamiento	Naucalpan de Juárez	México
53124	Bosque Alto	Colonia	Naucalpan de Juárez	México
53124	Petroquímica Lomas Verdes	Unidad habitacional	Naucalpan de Juárez	México
53124	La Cuspide	Colonia	Naucalpan de Juárez	México
53125	Lomas Verdes 3a Sección	Fraccionamiento	Naucalpan de Juárez	México
53125	Lomas Verdes 4a Sección	Fraccionamiento	Naucalpan de Juárez	México
53126	Lomas Verdes 5a Sección (La Concordia)	Fraccionamiento	Naucalpan de Juárez	México
53126	Lomas Verdes 6a Sección	Fraccionamiento	Naucalpan de Juárez	México
53126	El Cristo	Colonia	Naucalpan de Juárez	México
53127	La Alteña I	Fraccionamiento	Naucalpan de Juárez	México
53127	La Alteña II	Fraccionamiento	Naucalpan de Juárez	México
53127	La Alteña III	Fraccionamiento	Naucalpan de Juárez	México
53127	Lomas de Santa Cruz	Fraccionamiento	Naucalpan de Juárez	México
53128	Conjunto la Ronda	Colonia	Naucalpan de Juárez	México
53128	Residencial Santa Cruz	Fraccionamiento	Naucalpan de Juárez	México
53129	Jardines de Satélite	Fraccionamiento	Naucalpan de Juárez	México
53129	Telefonistas	Unidad habitacional	Naucalpan de Juárez	México
53130	Jardines de la Florida	Fraccionamiento	Naucalpan de Juárez	México
53138	Hacienda de Cristo (Exhacienda de Cristo)	Colonia	Naucalpan de Juárez	México
53140	Boulevares	Fraccionamiento	Naucalpan de Juárez	México
53140	Misiones	Fraccionamiento	Naucalpan de Juárez	México
53140	Ampliación Misiones	Fraccionamiento	Naucalpan de Juárez	México
53140	Jardines de Boulevares	Fraccionamiento	Naucalpan de Juárez	México
53150	Santa Cruz Acatlán	Pueblo	Naucalpan de Juárez	México
53160	La Florida	Fraccionamiento	Naucalpan de Juárez	México
53170	Loma de Cristy	Fraccionamiento	Naucalpan de Juárez	México
53177	Rinconada Diligencias	Fraccionamiento	Naucalpan de Juárez	México
53178	La Soledad	Fraccionamiento	Naucalpan de Juárez	México
53179	Lomas Verdes INFONAVIT	Unidad habitacional	Naucalpan de Juárez	México
53200	Lomas de San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53200	La Atalaya	Fraccionamiento	Naucalpan de Juárez	México
53215	Casas Viejas (La Era)	Colonia	Naucalpan de Juárez	México
53215	La Huerta San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53215	La Barranquilla	Fraccionamiento	Naucalpan de Juárez	México
53216	Santiago Tepatlaxco	Pueblo	Naucalpan de Juárez	México
53217	La Presa (Tejocote)	Colonia	Naucalpan de Juárez	México
53217	El Tejocote 2da. Sección	Colonia	Naucalpan de Juárez	México
53217	El Tejocote	Colonia	Naucalpan de Juárez	México
53218	Colinas de San Mateo	Colonia	Naucalpan de Juárez	México
53218	Rancho Colorado	Colonia	Naucalpan de Juárez	México
53219	Rincón Verde	Colonia	Naucalpan de Juárez	México
53220	San Mateo Nopala	Pueblo	Naucalpan de Juárez	México
53220	Rinconada de los Parques	Colonia	Naucalpan de Juárez	México
53220	Rincón de Las Fuentes	Fraccionamiento	Naucalpan de Juárez	México
53220	Real San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53220	La Joya II	Fraccionamiento	Naucalpan de Juárez	México
53220	La Joya I	Fraccionamiento	Naucalpan de Juárez	México
53220	La Joyita	Fraccionamiento	Naucalpan de Juárez	México
53224	San Mateo Nopala Zona Norte	Colonia	Naucalpan de Juárez	México
53227	Izcalli San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53227	San Mateo Nopala Zona Sur	Colonia	Naucalpan de Juárez	México
53227	Rinconada San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53227	Cumbres de San Mateo	Colonia	Naucalpan de Juárez	México
53227	Pedregal de San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53228	Praderas de San Mateo	Colonia	Naucalpan de Juárez	México
53228	Santa Rosa	Colonia	Naucalpan de Juárez	México
53228	La Luna (San Mateo Nopala)	Colonia	Naucalpan de Juárez	México
53228	El Risco	Fraccionamiento	Naucalpan de Juárez	México
53228	Laderas de la Colmena	Fraccionamiento	Naucalpan de Juárez	México
53228	Los Emperadores	Fraccionamiento	Naucalpan de Juárez	México
53229	San Mateo Nopala (Bellavista)	Ejido	Naucalpan de Juárez	México
53229	Las Ánimas (Ex-Hacienda las Ánimas)	Colonia	Naucalpan de Juárez	México
53229	Pinos II	Colonia	Naucalpan de Juárez	México
53229	Jardines del Ojo de Agua	Colonia	Naucalpan de Juárez	México
53229	Puente de Piedra	Colonia	Naucalpan de Juárez	México
53229	El Cobradero	Colonia	Naucalpan de Juárez	México
53229	Cipreses (Las Julianas)	Barrio	Naucalpan de Juárez	México
53229	El Puerto	Colonia	Naucalpan de Juárez	México
53229	El Chabacano	Colonia	Naucalpan de Juárez	México
53229	Las Arenillas	Barrio	Naucalpan de Juárez	México
53229	Córdoba	Colonia	Naucalpan de Juárez	México
53229	La Rosa	Colonia	Naucalpan de Juárez	México
53229	La Hiedra	Colonia	Naucalpan de Juárez	México
53229	Juan Gómez	Barrio	Naucalpan de Juárez	México
53229	La Cuesta	Colonia	Naucalpan de Juárez	México
53229	Las Peñitas	Barrio	Naucalpan de Juárez	México
53229	Tito	Barrio	Naucalpan de Juárez	México
53229	Agua Buena	Barrio	Naucalpan de Juárez	México
53229	Rancho Viejo	Barrio	Naucalpan de Juárez	México
53229	Del Tejocote	Ejido	Naucalpan de Juárez	México
53230	Los Álamos	Fraccionamiento	Naucalpan de Juárez	México
53237	Los Fresnos	Fraccionamiento	Naucalpan de Juárez	México
53239	Ampliación Los Fresnos	Fraccionamiento	Naucalpan de Juárez	México
53240	Jardines de San Mateo Sección Colinas	Fraccionamiento	Naucalpan de Juárez	México
53240	Jardines de San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53240	Anexo Jardines de San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53240	Alcanfores	Fraccionamiento	Naucalpan de Juárez	México
53240	Prado San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53240	Valle de San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53247	Lomas de Occipaco	Colonia	Naucalpan de Juárez	México
53248	Laderas de San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53250	Santiago Occipaco	Pueblo	Naucalpan de Juárez	México
53250	La Palma	Fraccionamiento	Naucalpan de Juárez	México
53260	México 68	Colonia	Naucalpan de Juárez	México
53270	San Juan Totoltepec	Pueblo	Naucalpan de Juárez	México
53270	Las Papas	Fraccionamiento	Naucalpan de Juárez	México
53278	Izcalli del Bosque	Fraccionamiento	Naucalpan de Juárez	México
53279	Bosques de Moctezuma	Colonia	Naucalpan de Juárez	México
53279	Tercer Mundo	Colonia	Naucalpan de Juárez	México
53280	Ciudad Brisa	Fraccionamiento	Naucalpan de Juárez	México
53283	Pedregal de Echegaray	Fraccionamiento	Naucalpan de Juárez	México
53283	Tiahui	Fraccionamiento	Naucalpan de Juárez	México
53290	Balcones de San Mateo	Fraccionamiento	Naucalpan de Juárez	México
53290	Vista del Valle Sección Electricistas	Fraccionamiento	Naucalpan de Juárez	México
53296	Vista del Valle II, III, IV y IX	Fraccionamiento	Naucalpan de Juárez	México
53296	Xalpa de La Huerta	Fraccionamiento	Naucalpan de Juárez	México
53296	Vista del Valle Sección Bosques	Fraccionamiento	Naucalpan de Juárez	México
53297	Paseos del Bosque	Fraccionamiento	Naucalpan de Juárez	México
53297	Ex-Ejido Santiago Occipaco	Colonia	Naucalpan de Juárez	México
53298	Cumbres de Himalaya	Colonia	Naucalpan de Juárez	México
53300	Colón Echegaray	Fraccionamiento	Naucalpan de Juárez	México
53300	Hacienda de Echegaray	Fraccionamiento	Naucalpan de Juárez	México
53309	Rincón Echegaray	Fraccionamiento	Naucalpan de Juárez	México
53310	Bosque de Echegaray	Fraccionamiento	Naucalpan de Juárez	México
53310	Bosque de Echegaray Sección Electricistas	Fraccionamiento	Naucalpan de Juárez	México
53320	Diez de Abril	Colonia	Naucalpan de Juárez	México
53329	Rivera de Echegaray	Fraccionamiento	Naucalpan de Juárez	México
53330	Cervecera Modelo	Colonia	Naucalpan de Juárez	México
53338	Santa María Nativitas	Pueblo	Naucalpan de Juárez	México
53338	Conjunto la Huerta	Fraccionamiento	Naucalpan de Juárez	México
53339	Rincón del Bosque de Echegaray	Fraccionamiento	Naucalpan de Juárez	México
53340	La Perla	Fraccionamiento	Naucalpan de Juárez	México
53340	Los Pastores	Fraccionamiento	Naucalpan de Juárez	México
53348	Industrial La Perla	Zona industrial	Naucalpan de Juárez	México
53350	Rancho Atenco	Colonia	Naucalpan de Juárez	México
53370	Industrial Alce Blanco	Zona industrial	Naucalpan de Juárez	México
53370	Naucalpan	Zona industrial	Naucalpan de Juárez	México
53378	Ahuizotla (Santiago Ahuizotla)	Colonia	Naucalpan de Juárez	México
53390	Lomas de Sotelo	Fraccionamiento	Naucalpan de Juárez	México
53398	El Parque	Fraccionamiento	Naucalpan de Juárez	México
53400	Los Remedios	Pueblo	Naucalpan de Juárez	México
53410	Ampliación Los Remedios (El Beato)	Colonia	Naucalpan de Juárez	México
53410	Padre Figueroa	Colonia	Naucalpan de Juárez	México
53410	Unión Popular	Colonia	Naucalpan de Juárez	México
53420	Loma Colorada 1ra. Sección	Colonia	Naucalpan de Juárez	México
53425	La Universal	Colonia	Naucalpan de Juárez	México
53425	El Corralito	Colonia	Naucalpan de Juárez	México
53426	San Lorenzo Totolinga	Pueblo	Naucalpan de Juárez	México
53426	Emiliano Zapata	Colonia	Naucalpan de Juárez	México
53426	La Cañada - San Lorenzo Totolinga	Colonia	Naucalpan de Juárez	México
53426	La Raquelito	Colonia	Naucalpan de Juárez	México
53426	Cuartos II 1a Sección	Colonia	Naucalpan de Juárez	México
53426	Cuartos III	Colonia	Naucalpan de Juárez	México
53426	San Lorenzo Totolinga 2a Sección	Colonia	Naucalpan de Juárez	México
53426	San Lorenzo Totolinga 1a Sección	Colonia	Naucalpan de Juárez	México
53426	Casa Blanca	Colonia	Naucalpan de Juárez	México
53426	Los Cuartos II	Colonia	Naucalpan de Juárez	México
53427	Las Huertas 1a Secc	Colonia	Naucalpan de Juárez	México
53427	Las Huertas 2a Sección	Colonia	Naucalpan de Juárez	México
53427	Las Huertas 3a Sección	Colonia	Naucalpan de Juárez	México
53427	Luisa Isabel Campos de Jiménez Cantú (Cuartos I)	Colonia	Naucalpan de Juárez	México
53427	Loma Colorada 2da. Sección	Colonia	Naucalpan de Juárez	México
53427	El Porvenir	Colonia	Naucalpan de Juárez	México
53427	Lomas de los Remedios	Colonia	Naucalpan de Juárez	México
53427	Las Caballerizas	Colonia	Naucalpan de Juárez	México
53428	México 86 (La Chacona)	Colonia	Naucalpan de Juárez	México
53430	Los Arcos	Colonia	Naucalpan de Juárez	México
53430	Reubicación el Torito	Colonia	Naucalpan de Juárez	México
53440	Sierra Nevada	Colonia	Naucalpan de Juárez	México
53440	Unión Popular	Unidad habitacional	Naucalpan de Juárez	México
53440	Predio el Zapote	Colonia	Naucalpan de Juárez	México
53450	Ciudad de los Niños	Colonia	Naucalpan de Juárez	México
53458	Bosque de los Remedios	Unidad habitacional	Naucalpan de Juárez	México
53459	Ampliación Ciudad de los Niños	Colonia	Naucalpan de Juárez	México
53460	Barrio el Torito	Colonia	Naucalpan de Juárez	México
53460	La Rivera	Colonia	Naucalpan de Juárez	México
53460	Los Arcos	Fraccionamiento	Naucalpan de Juárez	México
53470	Loma de Canteras (Lomas de Cantera)	Fraccionamiento	Naucalpan de Juárez	México
53489	Parque Industrial Naucalpan	Zona industrial	Naucalpan de Juárez	México
53490	Lomas de San Agustín	Colonia	Naucalpan de Juárez	México
53490	Santa Lilia Chamapa	Colonia	Naucalpan de Juárez	México
53490	Las Tinajas (Predio Las Tinajas)	Colonia	Naucalpan de Juárez	México
53490	La Monera	Colonia	Naucalpan de Juárez	México
53500	El Conde	Colonia	Naucalpan de Juárez	México
53500	San Andrés Atoto	Colonia	Naucalpan de Juárez	México
53519	Industrial Atoto	Zona industrial	Naucalpan de Juárez	México
53520	El Olivar	Colonia	Naucalpan de Juárez	México
53520	Rosa de Castilla	Colonia	Naucalpan de Juárez	México
53529	Industrial Tlatilco	Zona industrial	Naucalpan de Juárez	México
53530	El Molinito	Colonia	Naucalpan de Juárez	México
53530	Jardines del Molinito	Fraccionamiento	Naucalpan de Juárez	México
53530	Nuevo Molinito	Colonia	Naucalpan de Juárez	México
53533	Campo Militar 1	Equipamiento	Naucalpan de Juárez	México
53550	Ampliación San Esteban	Colonia	Naucalpan de Juárez	México
53550	San Esteban Huitzilacasco	Pueblo	Naucalpan de Juárez	México
53550	Unidad San Esteban	Colonia	Naucalpan de Juárez	México
53560	Lázaro Cárdenas	Colonia	Naucalpan de Juárez	México
53569	San Francisco Cuautlalpan	Pueblo	Naucalpan de Juárez	México
53570	La Cañada	Colonia	Naucalpan de Juárez	México
53570	Lomas de la Cañada	Colonia	Naucalpan de Juárez	México
53570	San Antonio Zomeyucan (Zona Urbana)	Colonia	Naucalpan de Juárez	México
53570	San Antonio Zomeyucan	Pueblo	Naucalpan de Juárez	México
53580	Reforma San Luís	Colonia	Naucalpan de Juárez	México
53580	Loma Linda	Colonia	Naucalpan de Juárez	México
53580	Ampliación Loma Linda	Colonia	Naucalpan de Juárez	México
53580	San Luís Tlatilco	Pueblo	Naucalpan de Juárez	México
53580	La Esperanza	Colonia	Naucalpan de Juárez	México
53580	Piedras Negras	Colonia	Naucalpan de Juárez	México
53598	Hidalgo	Colonia	Naucalpan de Juárez	México
53598	Estado de México (El Tambor)	Colonia	Naucalpan de Juárez	México
53640	Nueva San Rafael	Colonia	Naucalpan de Juárez	México
53640	Bosques de Chamapa	Colonia	Naucalpan de Juárez	México
53650	San Miguel Dextha	Barrio	Naucalpan de Juárez	México
53650	San Francisco Chimalpa	Pueblo	Naucalpan de Juárez	México
53650	Mojonera	Barrio	Naucalpan de Juárez	México
53650	Dudy	Barrio	Naucalpan de Juárez	México
53650	Chixtu	Barrio	Naucalpan de Juárez	México
53650	La Cañada de Boche	Barrio	Naucalpan de Juárez	México
53650	Donity	Barrio	Naucalpan de Juárez	México
53650	Cielito	Barrio	Naucalpan de Juárez	México
53650	Upeny de Gora	Barrio	Naucalpan de Juárez	México
53650	La Mora	Barrio	Naucalpan de Juárez	México
53650	Dayu	Barrio	Naucalpan de Juárez	México
53650	Yongua	Barrio	Naucalpan de Juárez	México
53650	Arenillas (La Capilla)	Barrio	Naucalpan de Juárez	México
53650	Las Cruces	Barrio	Naucalpan de Juárez	México
53650	Salinas	Barrio	Naucalpan de Juárez	México
53650	Tres Piedras (La Loma)	Barrio	Naucalpan de Juárez	México
53650	Chimalpa Viejo	Barrio	Naucalpan de Juárez	México
53650	Batha	Barrio	Naucalpan de Juárez	México
53650	Las Mesas	Barrio	Naucalpan de Juárez	México
53650	Gora	Barrio	Naucalpan de Juárez	México
53650	De Dorani	Barrio	Naucalpan de Juárez	México
53650	Juando	Barrio	Naucalpan de Juárez	México
53650	Depeny	Barrio	Naucalpan de Juárez	México
53650	Shido	Barrio	Naucalpan de Juárez	México
53650	Dongu	Barrio	Naucalpan de Juárez	México
53650	Xoyu	Barrio	Naucalpan de Juárez	México
53650	Moni	Barrio	Naucalpan de Juárez	México
53650	Yongua Bosques	Barrio	Naucalpan de Juárez	México
53650	Boxisda	Barrio	Naucalpan de Juárez	México
53650	Panthe	Barrio	Naucalpan de Juárez	México
53650	Boito	Barrio	Naucalpan de Juárez	México
53650	Chivato	Barrio	Naucalpan de Juárez	México
53650	Shindo	Barrio	Naucalpan de Juárez	México
53650	Bandhi	Barrio	Naucalpan de Juárez	México
53650	Las Trenzonas	Barrio	Naucalpan de Juárez	México
53658	La Cebada (Barrio la Cebada)	Barrio	Naucalpan de Juárez	México
53658	Minas del Tecolote	Colonia	Naucalpan de Juárez	México
53658	Las Torres	Colonia	Naucalpan de Juárez	México
53658	Paraje las Rosas	Colonia	Naucalpan de Juárez	México
53658	La Palma (Pie de la Palma)	Colonia	Naucalpan de Juárez	México
53658	La Magnolia	Barrio	Naucalpan de Juárez	México
53658	El Castillo	Ejido	Naucalpan de Juárez	México
53658	Llano de las Flores (Barrio del Hueso)	Barrio	Naucalpan de Juárez	México
53658	La Viga (Cerro Loco)	Barrio	Naucalpan de Juárez	México
53659	Villa Alpina	Fraccionamiento	Naucalpan de Juárez	México
53659	San Miguel Dorami	Barrio	Naucalpan de Juárez	México
53659	La Magueyera	Colonia	Naucalpan de Juárez	México
53659	Luis Donaldo Colosio (Piedra de Alesna)	Colonia	Naucalpan de Juárez	México
53659	San José Tejamanil	Barrio	Naucalpan de Juárez	México
53659	El Guardita	Colonia	Naucalpan de Juárez	México
53659	Valle Tranquilo	Colonia	Naucalpan de Juárez	México
53660	San Rafael Chamapa	Pueblo	Naucalpan de Juárez	México
53660	La Presa Chamapa	Colonia	Naucalpan de Juárez	México
53664	San Rafael Chamapa (Tabiquera 5)	Colonia	Naucalpan de Juárez	México
53664	San Rafael Chamapa (Tabiquera 6)	Colonia	Naucalpan de Juárez	México
53664	San Rafael Chamapa (Tabiquera 7)	Colonia	Naucalpan de Juárez	México
53664	San Rafael Chamapa (Tabiquera 8)	Colonia	Naucalpan de Juárez	México
53664	San Rafael Chamapa II	Colonia	Naucalpan de Juárez	México
53664	San Rafael Chamapa (Tabiquera 2)	Colonia	Naucalpan de Juárez	México
53664	San Rafael Chamapa (Tabiquera 3)	Colonia	Naucalpan de Juárez	México
53664	San Rafael Chamapa (Tabiquera 4)	Colonia	Naucalpan de Juárez	México
53664	Cuartos Constitución (San Rafael Chamapa I)	Colonia	Naucalpan de Juárez	México
53664	San Rafael Chamapa I	Colonia	Naucalpan de Juárez	México
53670	Los Cuartos (San Rafael Chamapa I)	Colonia	Naucalpan de Juárez	México
53680	San Rafael Chamapa IV	Colonia	Naucalpan de Juárez	México
53680	San Rafael Chamapa (Tabiquera 9)	Colonia	Naucalpan de Juárez	México
53680	La Mora	Colonia	Naucalpan de Juárez	México
53687	San Rafael Chamapa (Tabiquera 1)	Colonia	Naucalpan de Juárez	México
53687	Poetas Mexiquenses ( Tabiquera 10 )	Colonia	Naucalpan de Juárez	México
53688	Las Colonias (Predio Las Colonias)	Colonia	Naucalpan de Juárez	México
53689	Izcalli Chamapa	Colonia	Naucalpan de Juárez	México
53689	Isidro Fabela (Tabiqueras 11 y 12)	Colonia	Naucalpan de Juárez	México
53690	Olimpiada 68 (San Rafael Chamapa III)	Colonia	Naucalpan de Juárez	México
53690	Olímpica (San Rafael Chamapa V)	Colonia	Naucalpan de Juárez	México
53690	Ampliación Olímpica (San Rafael Chamapa VII)	Colonia	Naucalpan de Juárez	México
53690	Valle Dorado (San Rafael Chamapa VI)	Colonia	Naucalpan de Juárez	México
53690	Lomas de Chamapa	Colonia	Naucalpan de Juárez	México
53694	Minas El Coyote	Colonia	Naucalpan de Juárez	México
53695	Minas San Martín	Colonia	Naucalpan de Juárez	México
53695	La Palma	Colonia	Naucalpan de Juárez	México
53696	Mina Palacios (Minas Palacio)	Colonia	Naucalpan de Juárez	México
53697	Minas El Tecolote	Colonia	Naucalpan de Juárez	México
53697	3 de Mayo	Colonia	Naucalpan de Juárez	México
53697	El Capulín	Colonia	Naucalpan de Juárez	México
53697	Jardines de San José	Colonia	Naucalpan de Juárez	México
53698	Olímpica Radio 2a Sección (El Caracol)	Colonia	Naucalpan de Juárez	México
53698	Olímpica Radio 1a Sección (San Rafael Chamapa)	Colonia	Naucalpan de Juárez	México
53698	San José Poza Honda	Colonia	Naucalpan de Juárez	México
53700	Altamira	Colonia	Naucalpan de Juárez	México
53700	Ampliación Altamira	Colonia	Naucalpan de Juárez	México
53700	Torres Zomeyucan (San Antonio Zomeyucan)	Colonia	Naucalpan de Juárez	México
53708	Balcones de Chamapa	Colonia	Naucalpan de Juárez	México
53708	Tierra y Libertad	Colonia	Naucalpan de Juárez	México
53710	Plan de Ayala	Colonia	Naucalpan de Juárez	México
53713	Vicente Guerrero	Colonia	Naucalpan de Juárez	México
53714	La Mancha III	Colonia	Naucalpan de Juárez	México
53716	Alfredo del Mazo Vélez	Colonia	Naucalpan de Juárez	México
53716	La Punta	Colonia	Naucalpan de Juárez	México
53717	La Mancha I	Colonia	Naucalpan de Juárez	México
53717	La Mancha II	Colonia	Naucalpan de Juárez	México
53718	Alfredo V. Bonfil	Colonia	Naucalpan de Juárez	México
53719	Lomas del Cadete	Colonia	Naucalpan de Juárez	México
53730	Capulín Soledad	Colonia	Naucalpan de Juárez	México
53730	Unidad y Progreso	Colonia	Naucalpan de Juárez	México
53760	San José de los Leones 3a Sección	Colonia	Naucalpan de Juárez	México
53760	San José de los Leones 2a Sección	Colonia	Naucalpan de Juárez	México
53760	San José de los Leones 1a Sección	Colonia	Naucalpan de Juárez	México
53770	El Chamizal	Colonia	Naucalpan de Juárez	México
53780	Mártires de Río Blanco	Colonia	Naucalpan de Juárez	México
53787	Ampliación Mártires de Río Blanco	Colonia	Naucalpan de Juárez	México
53788	La Tolva	Colonia	Naucalpan de Juárez	México
53790	Benito Juárez	Colonia	Naucalpan de Juárez	México
53798	La Radio Benito Juárez	Colonia	Naucalpan de Juárez	México
53799	Ampliación Benito Juárez	Colonia	Naucalpan de Juárez	México
53800	Buenavista	Colonia	Naucalpan de Juárez	México
53800	Lomas del Río	Fraccionamiento	Naucalpan de Juárez	México
53809	Miramar	Colonia	Naucalpan de Juárez	México
53810	San José Río Hondo (Río Hondo)	Pueblo	Naucalpan de Juárez	México
53819	Progreso	Colonia	Naucalpan de Juárez	México
53820	Ricardo Flores Magón	Colonia	Naucalpan de Juárez	México
53830	Independencia	Colonia	Naucalpan de Juárez	México
53830	La Guadalupana	Colonia	Naucalpan de Juárez	México
53839	Rincones del Bosque	Fraccionamiento	Naucalpan de Juárez	México
53840	Lomas del Huizachal	Fraccionamiento	Naucalpan de Juárez	México
53900	Lomas Hipódromo	Fraccionamiento	Naucalpan de Juárez	México
53909	Explanada de las Fuentes	Fraccionamiento	Naucalpan de Juárez	México
53910	Lomas Manuel Ávila Camacho	Fraccionamiento	Naucalpan de Juárez	México
53930	Country Club	Fraccionamiento	Naucalpan de Juárez	México
53940	Río Escondido	Fraccionamiento	Naucalpan de Juárez	México
53950	Lomas de Tecamachalco	Fraccionamiento	Naucalpan de Juárez	México
53960	Reforma Social (Lomas de San Isidro)	Colonia	Naucalpan de Juárez	México
53970	San Miguel Tecamachalco	Pueblo	Naucalpan de Juárez	México
54000	Tlalnepantla  Centro	Colonia	Tlalnepantla de Baz	México
54000	Alta Vista	Fraccionamiento	Tlalnepantla de Baz	México
54009	La Riviera	Fraccionamiento	Tlalnepantla de Baz	México
54010	La Azteca	Colonia	Tlalnepantla de Baz	México
54010	La Providencia	Colonia	Tlalnepantla de Baz	México
54010	San Pedro Barrientos	Colonia	Tlalnepantla de Baz	México
54010	Valle Hermoso	Fraccionamiento	Tlalnepantla de Baz	México
54010	21 de Marzo	Colonia	Tlalnepantla de Baz	México
54010	Barrientos Gustavo Baz	Unidad habitacional	Tlalnepantla de Baz	México
54015	Conjunto Urbano Terraze	Condominio	Tlalnepantla de Baz	México
54015	Barrientos	Zona industrial	Tlalnepantla de Baz	México
54016	José María Velasco	Unidad habitacional	Tlalnepantla de Baz	México
54017	Niños Héroes	Zona industrial	Tlalnepantla de Baz	México
54017	Comunidad Betania	Fraccionamiento	Tlalnepantla de Baz	México
54020	Benito Juárez (Tequex.)	Colonia	Tlalnepantla de Baz	México
54020	El Dorado	Fraccionamiento	Tlalnepantla de Baz	México
54020	La Joya Chica	Fraccionamiento	Tlalnepantla de Baz	México
54020	Lomas Boulevares	Fraccionamiento	Tlalnepantla de Baz	México
54020	Tequexquinahuac Parte Alta	Colonia	Tlalnepantla de Baz	México
54020	Valle Dorado	Fraccionamiento	Tlalnepantla de Baz	México
54020	Condominio Tequexquináhuac	Unidad habitacional	Tlalnepantla de Baz	México
54020	Tequexquináhuac	Pueblo	Tlalnepantla de Baz	México
54020	El Gran Dorado	Conjunto habitacional	Tlalnepantla de Baz	México
54021	Loma Azul	Colonia	Tlalnepantla de Baz	México
54022	Robles Patera	Colonia	Tlalnepantla de Baz	México
54023	Lomas de Valle Dorado	Fraccionamiento	Tlalnepantla de Baz	México
54023	Lomas de Atlaco	Colonia	Tlalnepantla de Baz	México
54023	Los Pirules Ampliación	Fraccionamiento	Tlalnepantla de Baz	México
54023	Lomas Tulpan	Colonia	Tlalnepantla de Baz	México
54025	Cumbres del Valle	Fraccionamiento	Tlalnepantla de Baz	México
54026	Las Arboledas	Fraccionamiento	Tlalnepantla de Baz	México
54028	Laderas de San Javier	Fraccionamiento	Tlalnepantla de Baz	México
54030	Centro Industrial Tlalnepantla	Zona industrial	Tlalnepantla de Baz	México
54030	Tlaxcopan	Zona industrial	Tlalnepantla de Baz	México
54030	La Romana	Fraccionamiento	Tlalnepantla de Baz	México
54030	La Nueva Ferrocarrilera	Colonia	Tlalnepantla de Baz	México
54030	San Nicolás	Zona industrial	Tlalnepantla de Baz	México
54030	San Javier	Fraccionamiento	Tlalnepantla de Baz	México
54030	IMSS Tlalnepantla	Unidad habitacional	Tlalnepantla de Baz	México
54030	Jesús Garcia Corona	Unidad habitacional	Tlalnepantla de Baz	México
54030	Ampliación San Javier	Colonia	Tlalnepantla de Baz	México
54033	San Lorenzo	Zona industrial	Tlalnepantla de Baz	México
54033	La Ferrocarrilera El Hoyo	Colonia	Tlalnepantla de Baz	México
54037	El Triángulo	Colonia	Tlalnepantla de Baz	México
54038	Rivera del Bosque	Fraccionamiento	Tlalnepantla de Baz	México
54040	Lomas de San Andrés Atenco	Colonia	Tlalnepantla de Baz	México
54040	Los Pirules	Fraccionamiento	Tlalnepantla de Baz	México
54040	Rincón del Valle	Fraccionamiento	Tlalnepantla de Baz	México
54040	San Andrés Atenco	Pueblo	Tlalnepantla de Baz	México
54040	Valle de los Pinos 1ra Sección	Fraccionamiento	Tlalnepantla de Baz	México
54040	Valle Verde	Fraccionamiento	Tlalnepantla de Baz	México
54040	Leandro Valle	Colonia	Tlalnepantla de Baz	México
54040	Lomas de San Andrés Atenco Ampliación	Colonia	Tlalnepantla de Baz	México
54040	San Andrés Atenco Ampliación	Colonia	Tlalnepantla de Baz	México
54049	Balcones del Valle	Colonia	Tlalnepantla de Baz	México
54050	Bosques de México	Fraccionamiento	Tlalnepantla de Baz	México
54050	Ex-Hacienda de Santa Mónica	Colonia	Tlalnepantla de Baz	México
54050	Jacarandas	Fraccionamiento	Tlalnepantla de Baz	México
54050	Jacarandas Ampliación	Fraccionamiento	Tlalnepantla de Baz	México
54050	Jardines de Santa Mónica	Fraccionamiento	Tlalnepantla de Baz	México
54050	Las Margaritas	Fraccionamiento	Tlalnepantla de Baz	México
54050	Magisterial Vista Bella	Fraccionamiento	Tlalnepantla de Baz	México
54050	Margaritas Ampliación	Fraccionamiento	Tlalnepantla de Baz	México
54054	Bellavista Satélite	Fraccionamiento	Tlalnepantla de Baz	México
54054	Jardines Bellavista	Fraccionamiento	Tlalnepantla de Baz	México
54054	Residencial Privanza	Fraccionamiento	Tlalnepantla de Baz	México
54054	Rincón de Bella Vista	Fraccionamiento	Tlalnepantla de Baz	México
54054	Club de Golf Bellavista	Fraccionamiento	Tlalnepantla de Baz	México
54055	San Lucas Tepetlacalco	Pueblo	Tlalnepantla de Baz	México
54055	San Lucas Tepetlacalco Ampliación	Colonia	Tlalnepantla de Baz	México
54057	Valle de Santa Mónica	Fraccionamiento	Tlalnepantla de Baz	México
54059	Francisco Villa	Colonia	Tlalnepantla de Baz	México
54060	Electra	Fraccionamiento	Tlalnepantla de Baz	México
54060	La Loma	Pueblo	Tlalnepantla de Baz	México
54060	Arcos Electra	Fraccionamiento	Tlalnepantla de Baz	México
54060	Miguel Hidalgo	Colonia	Tlalnepantla de Baz	México
54060	La Loma	Zona industrial	Tlalnepantla de Baz	México
54060	Valle del Paraíso	Fraccionamiento	Tlalnepantla de Baz	México
54060	Viveros del Río	Fraccionamiento	Tlalnepantla de Baz	México
54060	Viveros del Valle	Fraccionamiento	Tlalnepantla de Baz	México
54060	Valle de los Pinos 2da. Sección	Fraccionamiento	Tlalnepantla de Baz	México
54060	Valle Sol	Fraccionamiento	Tlalnepantla de Baz	México
54063	Rinconada del Paraíso	Fraccionamiento	Tlalnepantla de Baz	México
54067	Tlalcalli	Unidad habitacional	Tlalnepantla de Baz	México
54068	Benito Juárez Centro	Colonia	Tlalnepantla de Baz	México
54069	Las Rosas	Fraccionamiento	Tlalnepantla de Baz	México
54069	Plaza de las Rosas	Colonia	Tlalnepantla de Baz	México
54070	El Cortijo	Unidad habitacional	Tlalnepantla de Baz	México
54070	San José Puente de Vigas	Zona industrial	Tlalnepantla de Baz	México
54070	La Comunidad	Fraccionamiento	Tlalnepantla de Baz	México
54070	Adolfo López Mateos	Unidad habitacional	Tlalnepantla de Baz	México
54070	Rancho San Antonio	Fraccionamiento	Tlalnepantla de Baz	México
54070	Tlalnemex	Colonia	Tlalnepantla de Baz	México
54073	Los Reyes	Zona industrial	Tlalnepantla de Baz	México
54075	Los Reyes	Pueblo	Tlalnepantla de Baz	México
54075	Los Reyes Ixtacala 2da. Sección	Fraccionamiento	Tlalnepantla de Baz	México
54076	Los Tejavanes	Unidad habitacional	Tlalnepantla de Baz	México
54080	Bellavista Puente de Vigas	Colonia	Tlalnepantla de Baz	México
54080	El Mirador	Colonia	Tlalnepantla de Baz	México
54080	Las Armas	Zona industrial	Tlalnepantla de Baz	México
54080	Plazas de la Colina	Fraccionamiento	Tlalnepantla de Baz	México
54080	Residencias del Parque	Fraccionamiento	Tlalnepantla de Baz	México
54080	Vista Hermosa	Colonia	Tlalnepantla de Baz	México
54080	Ampliación Vista Hermosa	Fraccionamiento	Tlalnepantla de Baz	México
54080	Viveros de La Loma	Fraccionamiento	Tlalnepantla de Baz	México
54080	Xocoyahualco	Pueblo	Tlalnepantla de Baz	México
54080	Condominios Villas Satélite	Unidad habitacional	Tlalnepantla de Baz	México
54080	Conjunto Pintores	Fraccionamiento	Tlalnepantla de Baz	México
54080	Tepetlacalco A. C.	Unidad habitacional	Tlalnepantla de Baz	México
54080	Natura	Fraccionamiento	Tlalnepantla de Baz	México
54080	Real del Ocho	Fraccionamiento	Tlalnepantla de Baz	México
54090	Rosario 1 Sector CROC II	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario 1 Sector CROC III-A	Unidad habitacional	Tlalnepantla de Baz	México
54090	Hogares Ferrocarrileros	Unidad habitacional	Tlalnepantla de Baz	México
54090	La Escuela	Colonia	Tlalnepantla de Baz	México
54090	La Mora	Colonia	Tlalnepantla de Baz	México
54090	Los Reyes Ixtacala 1ra. Sección	Fraccionamiento	Tlalnepantla de Baz	México
54090	Puente de Vigas	Pueblo	Tlalnepantla de Baz	México
54090	San Jerónimo Tepetlacalco	Pueblo	Tlalnepantla de Baz	México
54090	San José Puente de Vigas	Pueblo	Tlalnepantla de Baz	México
54090	San Pablo Xalpa	Pueblo	Tlalnepantla de Baz	México
54090	SEDENA	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario 1 Sector CROC VII	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario 1 Sector II-CA	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario 1 Sector II-CB	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario 1 Sector II-CD	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario 1 Sector III-A	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario 1 Sector III-B	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario 1 Sector III-C	Unidad habitacional	Tlalnepantla de Baz	México
54090	San Jerónimo Tepetlacalco	Parque industrial	Tlalnepantla de Baz	México
54090	Los Cedros	Unidad habitacional	Tlalnepantla de Baz	México
54090	Puente de Vigas	Zona industrial	Tlalnepantla de Baz	México
54090	Rosario I Sector CROC III B	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario II Sector I	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario II Sector II	Unidad habitacional	Tlalnepantla de Baz	México
54090	Rosario II Sector III	Unidad habitacional	Tlalnepantla de Baz	México
54092	Rosario 1 Sector CROC V Bugambilias	Unidad habitacional	Tlalnepantla de Baz	México
54092	Rosario Ceylán	Fraccionamiento	Tlalnepantla de Baz	México
54093	Rosario II Gasera	Unidad habitacional	Tlalnepantla de Baz	México
54094	Rosario II Hipódromo Textil	Unidad habitacional	Tlalnepantla de Baz	México
56806	San Vicente Chimalhuacán	Pueblo	Ozumba	México
54098	Gustavo Baz Prada Los Reyes Ixtacala	Unidad habitacional	Tlalnepantla de Baz	México
54100	Las Palomas	Colonia	Tlalnepantla de Baz	México
54100	San Lucas Patoni	Pueblo	Tlalnepantla de Baz	México
54100	Unbidad CROC Solidaridad	Unidad habitacional	Tlalnepantla de Baz	México
54108	La Sideral	Colonia	Tlalnepantla de Baz	México
54108	Ampliación La Arboleda	Colonia	Tlalnepantla de Baz	México
54109	La Arboleda	Colonia	Tlalnepantla de Baz	México
54110	Unidad Barrientos	Unidad habitacional	Tlalnepantla de Baz	México
54110	El Olivo I	Colonia	Tlalnepantla de Baz	México
54110	Hogar Obrero	Colonia	Tlalnepantla de Baz	México
54110	Isidro Fabela	Colonia	Tlalnepantla de Baz	México
54110	La Blanca	Colonia	Tlalnepantla de Baz	México
54110	Reforma Urbana	Colonia	Tlalnepantla de Baz	México
54110	Santa María Tlayacampa	Pueblo	Tlalnepantla de Baz	México
54110	Franja Municipal	Colonia	Tlalnepantla de Baz	México
54110	Nuevo México	Fraccionamiento	Tlalnepantla de Baz	México
54110	Lomas del Calvario	Colonia	Tlalnepantla de Baz	México
54110	Cooperativa La Romana	Colonia	Tlalnepantla de Baz	México
54118	Franja Férrea	Colonia	Tlalnepantla de Baz	México
54119	El Olivo II Parte Alta Carlos Pichardo Cruz	Fraccionamiento	Tlalnepantla de Baz	México
54119	El Olivo II Parte Baja	Fraccionamiento	Tlalnepantla de Baz	México
54120	Gustavo Baz Prada	Colonia	Tlalnepantla de Baz	México
54120	Gustavo Baz Prada Ampliación	Colonia	Tlalnepantla de Baz	México
54120	Loma Bonita	Fraccionamiento	Tlalnepantla de Baz	México
54120	Los Parajes	Colonia	Tlalnepantla de Baz	México
54120	San Rafael	Pueblo	Tlalnepantla de Baz	México
54120	Tlayapa	Colonia	Tlalnepantla de Baz	México
54120	Rancho San Rafael Amates	Colonia	Tlalnepantla de Baz	México
54120	San Rafael	Fraccionamiento	Tlalnepantla de Baz	México
54120	La Cañada	Fraccionamiento	Tlalnepantla de Baz	México
54124	Cuauhtémoc	Colonia	Tlalnepantla de Baz	México
54126	Tabla Honda	Colonia	Tlalnepantla de Baz	México
54126	Tabla Honda	Zona industrial	Tlalnepantla de Baz	México
54126	Río San Javier	Colonia	Tlalnepantla de Baz	México
54127	Ferrocarrilera San Rafael	Colonia	Tlalnepantla de Baz	México
54128	Condominios San Rafael	Unidad habitacional	Tlalnepantla de Baz	México
54130	El Rosal	Colonia	Tlalnepantla de Baz	México
54130	Ex Ejido de Santa Cecilia	Colonia	Tlalnepantla de Baz	México
54130	Independencia	Colonia	Tlalnepantla de Baz	México
54130	Independencia Ampliación	Colonia	Tlalnepantla de Baz	México
54130	Izcalli del Río	Fraccionamiento	Tlalnepantla de Baz	México
54130	Los Ángeles	Colonia	Tlalnepantla de Baz	México
54130	Santa Cecilia	Fraccionamiento	Tlalnepantla de Baz	México
54130	Santa Cecilia Acatitlán	Pueblo	Tlalnepantla de Baz	México
54130	Valle de las Pirámides	Fraccionamiento	Tlalnepantla de Baz	México
54130	Jardines de la Cañada	Unidad habitacional	Tlalnepantla de Baz	México
54130	Media Luna	Colonia	Tlalnepantla de Baz	México
54130	Jardines Santa Cecilia INFONAVIT	Unidad habitacional	Tlalnepantla de Baz	México
54134	Jardines de Santa Cecilia	Fraccionamiento	Tlalnepantla de Baz	México
54135	San Buenaventura	Zona industrial	Tlalnepantla de Baz	México
54136	San Buenaventura	Unidad habitacional	Tlalnepantla de Baz	México
54140	El Puerto	Colonia	Tlalnepantla de Baz	México
54140	Izcalli Acatitlán	Fraccionamiento	Tlalnepantla de Baz	México
54140	Izcalli Pirámide	Fraccionamiento	Tlalnepantla de Baz	México
54140	Izcalli Pirámide II	Unidad habitacional	Tlalnepantla de Baz	México
54140	La Cantera	Colonia	Tlalnepantla de Baz	México
54140	Ex-Ejido de San Lucas Patoni	Colonia	Tlalnepantla de Baz	México
54140	San Miguel Chalma	Pueblo	Tlalnepantla de Baz	México
54140	El Tenayo Centro	Colonia	Tlalnepantla de Baz	México
54140	El Tenayo Norte	Colonia	Tlalnepantla de Baz	México
54140	FFCC Cecilia Mora Viuda de Gómez	Colonia	Tlalnepantla de Baz	México
54140	El Tenayo Sur	Colonia	Tlalnepantla de Baz	México
54142	Chalma La Unión	Fraccionamiento	Tlalnepantla de Baz	México
54143	Chalma La Barranca	Fraccionamiento	Tlalnepantla de Baz	México
54145	Tabla Honda	Unidad habitacional	Tlalnepantla de Baz	México
54146	La Cuchilla	Colonia	Tlalnepantla de Baz	México
54147	El Tenayo	Unidad habitacional	Tlalnepantla de Baz	México
54147	Valle del Tenayo	Unidad habitacional	Tlalnepantla de Baz	México
54149	Hugo Cervantes del Río	Fraccionamiento	Tlalnepantla de Baz	México
54150	Acueducto Tenayuca	Colonia	Tlalnepantla de Baz	México
54150	Ahuehuetes	Colonia	Tlalnepantla de Baz	México
54150	Arenal Tenayuca	Colonia	Tlalnepantla de Baz	México
54150	Loma Escondida	Unidad habitacional	Tlalnepantla de Baz	México
54150	San Bartolo Tenayuca	Pueblo	Tlalnepantla de Baz	México
54150	Valle Ceylán	Fraccionamiento	Tlalnepantla de Baz	México
54150	Ampliación Valle Ceylán	Fraccionamiento	Tlalnepantla de Baz	México
54152	La Purísima	Colonia	Tlalnepantla de Baz	México
54158	Poder de Dios	Colonia	Tlalnepantla de Baz	México
54160	Artemisa	Unidad habitacional	Tlalnepantla de Baz	México
54160	La Joya Ixtacala	Colonia	Tlalnepantla de Baz	México
54160	Miraflores	Fraccionamiento	Tlalnepantla de Baz	México
54160	Nueva Ixtacala	Fraccionamiento	Tlalnepantla de Baz	México
54160	P.I.P.S.A.	Unidad habitacional	Tlalnepantla de Baz	México
54160	Prado Ixtacala	Colonia	Tlalnepantla de Baz	México
54160	San Antonio Ixtacala	Colonia	Tlalnepantla de Baz	México
54160	San Felipe Ixtacala	Colonia	Tlalnepantla de Baz	México
54160	San Juan Ixtacala	Pueblo	Tlalnepantla de Baz	México
54160	El Tejocote	Unidad habitacional	Tlalnepantla de Baz	México
54162	Ceylán Ixtacala	Colonia	Tlalnepantla de Baz	México
54168	San Juan Ixtacala Ampliación Norte	Colonia	Tlalnepantla de Baz	México
54170	San Pablo Xalpa	Parque industrial	Tlalnepantla de Baz	México
54170	Prado Vallejo	Fraccionamiento	Tlalnepantla de Baz	México
54170	Prensa Nacional	Colonia	Tlalnepantla de Baz	México
54170	Venustiano Carranza	Colonia	Tlalnepantla de Baz	México
54170	Bosques de Ceylán	Colonia	Tlalnepantla de Baz	México
54172	Ex Hacienda de En Medio	Unidad habitacional	Tlalnepantla de Baz	México
54173	Maravillas Ceylán	Unidad habitacional	Tlalnepantla de Baz	México
54180	Lomas de San Juan Ixhuatepec	Colonia	Tlalnepantla de Baz	México
54180	San José Ixhuatepec	Colonia	Tlalnepantla de Baz	México
54180	San Juan Ixhuatepec	Pueblo	Tlalnepantla de Baz	México
54180	Atrás del Tequiquil	Colonia	Tlalnepantla de Baz	México
54187	La Presa	Zona industrial	Tlalnepantla de Baz	México
54187	Ecuestre Residencial San José	Colonia	Tlalnepantla de Baz	México
54187	Magisterial Siglo XXI	Unidad habitacional	Tlalnepantla de Baz	México
54189	Lázaro Cárdenas 1ra. Sección	Colonia	Tlalnepantla de Baz	México
54189	Lázaro Cárdenas 2da. Sección	Colonia	Tlalnepantla de Baz	México
54189	Lázaro Cárdenas 3ra. Sección	Colonia	Tlalnepantla de Baz	México
54190	FFCC Concepción Zepeda Viuda de Gómez Z.	Colonia	Tlalnepantla de Baz	México
54190	Constitución de 1917	Colonia	Tlalnepantla de Baz	México
54190	Constituyentes de 1857	Colonia	Tlalnepantla de Baz	México
54190	División del Norte	Colonia	Tlalnepantla de Baz	México
54190	Dr. Jorge Jiménez Cantú	Colonia	Tlalnepantla de Baz	México
54190	La Laguna	Colonia	Tlalnepantla de Baz	México
54190	Marina Nacional	Colonia	Tlalnepantla de Baz	México
54190	La Petrolera	Colonia	Tlalnepantla de Baz	México
54193	Ex-Ejido de Tepeolulco	Colonia	Tlalnepantla de Baz	México
54195	Colinas de San José	Fraccionamiento	Tlalnepantla de Baz	México
54196	Bahía del Copal	Unidad habitacional	Tlalnepantla de Baz	México
54196	Angeles San José	Conjunto habitacional	Tlalnepantla de Baz	México
54197	San Isidro Ixhuatepec	Colonia	Tlalnepantla de Baz	México
54198	Lomas de Lindavista El Copal	Fraccionamiento	Tlalnepantla de Baz	México
54198	Los Ángeles	Fraccionamiento	Tlalnepantla de Baz	México
54200	Polotitlán de la Ilustración	Pueblo	Polotitlán	México
54203	Loma Bonita	Colonia	Polotitlán	México
54204	El Álamo	Colonia	Polotitlán	México
54220	San Francisco Acazuchitlaltongo	Pueblo	Polotitlán	México
54223	Tildío	Ranchería	Polotitlán	México
54223	Ruano	Pueblo	Polotitlán	México
54223	La Loma del Pino (Pachuquilla)	Ranchería	Polotitlán	México
54224	Encinillas	Ejido	Polotitlán	México
54225	El Panal	Ranchería	Polotitlán	México
54225	Ranchito de Ruano	Ranchería	Polotitlán	México
54225	San Isidro	Ranchería	Polotitlán	México
54225	San Isidro el Chico	Ranchería	Polotitlán	México
54225	San Isidrito	Ranchería	Polotitlán	México
54226	San Antonio el Viejo	Pueblo	Polotitlán	México
54227	Estación Polotitlán (Casas Viejas)	Pueblo	Polotitlán	México
54227	Cerro Gordo	Pueblo	Polotitlán	México
54227	Satélite	Ranchería	Polotitlán	México
54233	El Gavillero de la Trinidad (La Curva)	Pueblo	Polotitlán	México
54233	La Magdalena	Ranchería	Polotitlán	México
54234	Lázaro Cárdenas (San Rafael)	Barrio	Polotitlán	México
54234	La Purísima (Buenavista)	Pueblo	Polotitlán	México
54235	San Nicolás de los Cerritos	Pueblo	Polotitlán	México
54235	San Antonio Polotitlán	Ranchería	Polotitlán	México
54236	San Antonio Escobedo	Pueblo	Polotitlán	México
54236	Taxhie	Pueblo	Polotitlán	México
54236	Pueblo Nuevo	Ranchería	Polotitlán	México
54237	Celayita (San José Celayita)	Colonia	Polotitlán	México
54237	San Agustín el Cuervo	Pueblo	Polotitlán	México
54237	El Tesoro	Pueblo	Polotitlán	México
54239	San Antonio Escobedo Norte	Ranchería	Polotitlán	México
54240	Jilotepec de Molina Enríquez	Pueblo	Jilotepec	México
54246	Vista Hermosa	Colonia	Jilotepec	México
54246	Magisterio Estatal	Unidad habitacional	Jilotepec	México
54250	Potrero Nuevo	Ranchería	Jilotepec	México
54250	San Pablo Huantepec	Pueblo	Jilotepec	México
54250	Ojo de Agua	Ranchería	Jilotepec	México
54253	Coscomate del Progreso	Pueblo	Jilotepec	México
54253	Dexcani Alto	Pueblo	Jilotepec	México
54253	Dexcani Bajo	Ranchería	Jilotepec	México
54253	La Merced	Colonia	Jilotepec	México
54253	La Manzanilla (Tercera Manzana de Dexcani Bajo)	Ranchería	Jilotepec	México
54253	El Huisache (Tercera Manzana de Dexcani Alto)	Ranchería	Jilotepec	México
54253	Ejido de Coscomate del Progreso	Ranchería	Jilotepec	México
54253	Denjhi	Ranchería	Jilotepec	México
54254	Doxhicho	Pueblo	Jilotepec	México
54254	Ejido de Jilotepec	Ranchería	Jilotepec	México
54254	Danxho	Ranchería	Jilotepec	México
54255	Las Manzanas	Pueblo	Jilotepec	México
54255	San Lorenzo Octeyuco	Pueblo	Jilotepec	México
54255	Xhimójay	Pueblo	Jilotepec	México
54255	El Durazno de Cuauhtémoc	Pueblo	Jilotepec	México
54255	Magueycitos	Ranchería	Jilotepec	México
54255	Octeyuco 2000	Ranchería	Jilotepec	México
54255	El Magueyal	Ranchería	Jilotepec	México
54255	Ejido de San Lorenzo Octeyuco	Ranchería	Jilotepec	México
54255	El Barrete	Ranchería	Jilotepec	México
54256	Xhixhata	Pueblo	Jilotepec	México
54256	Agua Escondida	Pueblo	Jilotepec	México
54256	Las Huertas	Pueblo	Jilotepec	México
54256	Santa Martha de la Cruz	Ranchería	Jilotepec	México
54257	Parque Industrial Jilotepec	Zona industrial	Jilotepec	México
54257	El Quichi	Colonia	Jilotepec	México
54257	Javier Barrios	Colonia	Jilotepec	México
54257	El Xhitey	Ranchería	Jilotepec	México
54257	La Cruz de Dendho	Ranchería	Jilotepec	México
54260	Bosque de Canalejas (Manzana Sexta Canalejas)	Colonia	Jilotepec	México
54260	Buenavista	Pueblo	Jilotepec	México
54260	Canalejas	Pueblo	Jilotepec	México
54263	Aldama	Pueblo	Jilotepec	México
54263	El Rincón	Ranchería	Jilotepec	México
54263	Teupan (Piedras Negras)	Ranchería	Jilotepec	México
54263	Llano Grande	Ranchería	Jilotepec	México
54263	La Huaracha	Ranchería	Jilotepec	México
54264	El Saltillo	Pueblo	Jilotepec	México
54265	El Saltillito (Calpulalpan Cuarta Manzana)	Ranchería	Jilotepec	México
54265	Las Jaras (Calpulalpan Segunda Manzana)	Ranchería	Jilotepec	México
54265	El Fresno	Ranchería	Jilotepec	México
54265	Calpulalpan (Primera Manzana Centro)	Pueblo	Jilotepec	México
54265	La Comunidad	Pueblo	Jilotepec	México
54265	San Vicente (Calpulalpan Tercera Manzana)	Ranchería	Jilotepec	México
54265	El Majuay	Pueblo	Jilotepec	México
54270	San Martín Tuchicuitlapilco	Pueblo	Jilotepec	México
54270	San Miguel de La Victoria	Pueblo	Jilotepec	México
54270	Tecolapan	Ranchería	Jilotepec	México
54273	El Rosal	Pueblo	Jilotepec	México
54273	San Lorenzo Nenamicoyan	Pueblo	Jilotepec	México
54273	Dedeni Dolores	Ranchería	Jilotepec	México
54273	Mataxhi	Ranchería	Jilotepec	México
54273	La Maqueda (Ejido de San Lorenzo Nenamicoyan)	Ranchería	Jilotepec	México
54273	San Ignacio de Loyola (San Ignacio)	Pueblo	Jilotepec	México
54274	San Juan Acazuchitlán (San Juanico)	Pueblo	Jilotepec	México
54275	Santiago Oxthoc	Pueblo	Jilotepec	México
54275	Emiliano Zapata	Pueblo	Jilotepec	México
54275	El Durazno de Guerrero	Pueblo	Jilotepec	México
54276	Ejido Acazuchitlán (Ejido San Juan Bautista)	Ranchería	Jilotepec	México
54280	El Progreso	Colonia	Soyaniquilpan de Juárez	México
54280	El Ventorillo	Colonia	Soyaniquilpan de Juárez	México
54280	La Providencia	Colonia	Soyaniquilpan de Juárez	México
54280	Rancho Jesús María	Colonia	Soyaniquilpan de Juárez	México
54280	San Francisco Soyaniquilpan	Pueblo	Soyaniquilpan de Juárez	México
54280	Loma del Perdón	Colonia	Soyaniquilpan de Juárez	México
54280	El Atoron	Colonia	Soyaniquilpan de Juárez	México
54280	El Chiquinte	Colonia	Soyaniquilpan de Juárez	México
54283	El Capulín	Pueblo	Soyaniquilpan de Juárez	México
54283	El Quinte	Colonia	Soyaniquilpan de Juárez	México
54284	San Agustín Buenavista	Pueblo	Soyaniquilpan de Juárez	México
54285	El Divisadero Fresno (El Divisadero)	Pueblo	Soyaniquilpan de Juárez	México
54285	El Divisadero de Zapata	Pueblo	Soyaniquilpan de Juárez	México
54285	San Juan del Cuervo (El Cuervo)	Pueblo	Soyaniquilpan de Juárez	México
54285	Gavillero de Santa Ana	Pueblo	Soyaniquilpan de Juárez	México
54285	San Isidro	Colonia	Soyaniquilpan de Juárez	México
54290	Ignacio Zaragoza (Zaragoza)	Pueblo	Soyaniquilpan de Juárez	México
54290	La Goleta	Pueblo	Soyaniquilpan de Juárez	México
54290	Santa Cruz (Ejido de Palos Altos)	Pueblo	Soyaniquilpan de Juárez	México
54293	Quinta Manzana de San José Deguedó	Ranchería	Soyaniquilpan de Juárez	México
54294	Vistahermosa (Vista Hermosa)	Pueblo	Soyaniquilpan de Juárez	México
54295	Palos Altos	Pueblo	Soyaniquilpan de Juárez	México
54296	San José Deguedó	Pueblo	Soyaniquilpan de Juárez	México
54297	San Juan Daxthi	Pueblo	Soyaniquilpan de Juárez	México
54300	Villa del Carbón	Pueblo	Villa del Carbón	México
54310	San Jeronimo Zacapexco	Pueblo	Villa del Carbón	México
54313	La Capilla	Pueblo	Villa del Carbón	México
54313	Palo Hueco (Kilómetro 5)	Ranchería	Villa del Carbón	México
54313	Loma de la Hacienda	Hacienda	Villa del Carbón	México
54313	Bocanegra	Pueblo	Villa del Carbón	México
54313	Los Domínguez	Barrio	Villa del Carbón	México
54313	El Plan Zacapexco	Barrio	Villa del Carbón	México
54314	Magisterial	Fraccionamiento	Villa del Carbón	México
54314	Los Gutiérrez	Barrio	Villa del Carbón	México
54314	La Bellota	Barrio	Villa del Carbón	México
54314	Club Campestre Villa del Actor	Fraccionamiento	Villa del Carbón	México
54315	Monte de Peña	Pueblo	Villa del Carbón	México
54315	El Plan Villa	Barrio	Villa del Carbón	México
54320	La Cañada	Pueblo	Villa del Carbón	México
54320	San Salvador de la Laguna	Pueblo	Villa del Carbón	México
54320	La Arrastradera	Fraccionamiento	Villa del Carbón	México
54324	La Cruz y Carrizal	Pueblo	Villa del Carbón	México
54324	Loma Alta Taxhimay	Pueblo	Villa del Carbón	México
54324	El Arenal	Ranchería	Villa del Carbón	México
54324	El Palomar	Pueblo	Villa del Carbón	México
54325	San Luis Taxhimay	Pueblo	Villa del Carbón	México
54326	San Luis Anáhuac (Toriles)	Pueblo	Villa del Carbón	México
54326	Las Moras	Pueblo	Villa del Carbón	México
54326	Los Oratorios	Pueblo	Villa del Carbón	México
54326	Xajay (Loma del Xajay)	Ranchería	Villa del Carbón	México
54326	La Escalera	Pueblo	Villa del Carbón	México
54326	Potrero Largo (Villa del Potrero)	Pueblo	Villa del Carbón	México
54327	Santa Catarina	Ranchería	Villa del Carbón	México
54327	Los Madroños	Rancho	Villa del Carbón	México
54327	Villa del Carbón	Fraccionamiento	Villa del Carbón	México
54330	El Ocotal	Pueblo	Villa del Carbón	México
54330	Llano de Zacapexco	Pueblo	Villa del Carbón	México
54330	San Lucas	Ranchería	Villa del Carbón	México
54333	Loma Alta	Pueblo	Villa del Carbón	México
54333	San Martín Cachihuapan	Pueblo	Villa del Carbón	México
54333	Loma de Don Juan	Pueblo	Villa del Carbón	México
54333	Loma de Trojes	Pueblo	Villa del Carbón	México
54333	Platitos	Pueblo	Villa del Carbón	México
54333	La Ciénega	Colonia	Villa del Carbón	México
54334	El Varal	Ranchería	Villa del Carbón	México
54334	La Cruz del Arenal	Ranchería	Villa del Carbón	México
54334	La Centinela	Pueblo	Villa del Carbón	México
54334	Molinitos (Comunidad de los Molinitos)	Pueblo	Villa del Carbón	México
54334	Piequexhimo	Pueblo	Villa del Carbón	México
54335	Temanacoya (Barrio de Temanacoya)	Ranchería	Villa del Carbón	México
54336	Santa María	Pueblo	Villa del Carbón	México
54337	Los Barbechos	Pueblo	Villa del Carbón	México
54337	San Isidro del Bosque	Pueblo	Villa del Carbón	México
54337	Las Vigas	Pueblo	Villa del Carbón	México
54337	Los Rueda	Pueblo	Villa del Carbón	México
54340	Pueblo Nuevo	Pueblo	Villa del Carbón	México
54345	Los Arana	Pueblo	Villa del Carbón	México
54346	La Esperanza	Pueblo	Villa del Carbón	México
54346	El Cerrito	Ranchería	Villa del Carbón	México
54346	El Águila	Pueblo	Villa del Carbón	México
54346	Llano Grande	Pueblo	Villa del Carbón	México
54350	Chapa de Mota	Pueblo	Chapa de Mota	México
54360	Macavaca (Santa Ana Macavaca)	Hacienda	Chapa de Mota	México
54360	Barajas (Hacienda Vieja)	Ejido	Chapa de Mota	México
54360	Ventey	Barrio	Chapa de Mota	México
54363	Barajas	Pueblo	Chapa de Mota	México
54363	Damate	Pueblo	Chapa de Mota	México
54363	La Soledad (El Mogote)	Barrio	Chapa de Mota	México
54364	San José Ampabi	Ranchería	Chapa de Mota	México
54364	San Francisco de las Tablas	Pueblo	Chapa de Mota	México
54364	Las Ánimas	Pueblo	Chapa de Mota	México
54364	El Chabacano	Barrio	Chapa de Mota	México
54365	Xhoñe	Barrio	Chapa de Mota	México
54365	Venú	Barrio	Chapa de Mota	México
54366	Mefi	Barrio	Chapa de Mota	México
54367	Santa María	Ranchería	Chapa de Mota	México
54367	Xhote	Ranchería	Chapa de Mota	México
54373	Tenjay	Ranchería	Chapa de Mota	México
54373	Los Limones	Ranchería	Chapa de Mota	México
54374	La Palma	Ranchería	Chapa de Mota	México
54374	La Concepción	Barrio	Chapa de Mota	México
54375	Cadenqui	Pueblo	Chapa de Mota	México
54375	El Salto	Barrio	Chapa de Mota	México
54375	La Alameda (Las Lajas)	Barrio	Chapa de Mota	México
54380	Dhalle (Ejido de Dongu)	Ranchería	Chapa de Mota	México
54380	Santa Elena	Pueblo	Chapa de Mota	México
54380	Danxho	Barrio	Chapa de Mota	México
54383	La Ladera	Barrio	Chapa de Mota	México
54384	La Esperanza	Pueblo	Chapa de Mota	México
54384	La Loma	Ranchería	Chapa de Mota	México
54385	Dongu	Pueblo	Chapa de Mota	México
54385	San Felipe Coamango	Pueblo	Chapa de Mota	México
54386	San Juan Tuxtepec	Pueblo	Chapa de Mota	México
54386	San Gabriel	Pueblo	Chapa de Mota	México
54386	El Puerto	Pueblo	Chapa de Mota	México
54387	El Quinte	Pueblo	Chapa de Mota	México
54387	San Felipe Coamango	Ejido	Chapa de Mota	México
54400	Benito Juárez 1a. Sección (Cabecera Municipal)	Colonia	Nicolás Romero	México
54402	Barrón	Pueblo	Nicolás Romero	México
54405	Benito Juárez	Colonia	Nicolás Romero	México
54407	Ampliación el Rosario	Colonia	Nicolás Romero	México
54407	Libertad 1a. Sección	Colonia	Nicolás Romero	México
54407	Libertad 2a Sección	Colonia	Nicolás Romero	México
54407	Aquiles Córdova Morán	Colonia	Nicolás Romero	México
54408	Jorge Jiménez Cantú	Colonia	Nicolás Romero	México
54409	Independencia 1a. Sección	Colonia	Nicolás Romero	México
54409	Independencia 2a. Sección	Colonia	Nicolás Romero	México
54409	San Marcos	Fraccionamiento	Nicolás Romero	México
54409	Torres Peregrina	Fraccionamiento	Nicolás Romero	México
54410	El Globo	Fraccionamiento	Nicolás Romero	México
54413	Cinco de Febrero	Colonia	Nicolás Romero	México
54413	Guadalupe San Ildefonso	Colonia	Nicolás Romero	México
54413	San Juan	Colonia	Nicolás Romero	México
54414	Buenavista	Colonia	Nicolás Romero	México
54414	Vista Hermosa 1a. Sección	Colonia	Nicolás Romero	México
54414	Vista Hermosa 2a. Sección	Colonia	Nicolás Romero	México
54414	Ampliación Vista Hermosa	Colonia	Nicolás Romero	México
54416	Rinconada Lago de Guadalupe	Fraccionamiento	Nicolás Romero	México
54416	Santa Anita la Bolsa	Colonia	Nicolás Romero	México
54416	Cantaros III	Fraccionamiento	Nicolás Romero	México
54416	Cumbres	Fraccionamiento	Nicolás Romero	México
54417	Azotlán Parte Alta	Colonia	Nicolás Romero	México
54417	Lomas de Guadalupe	Colonia	Nicolás Romero	México
54417	Azotlán Parte Baja	Colonia	Nicolás Romero	México
54420	Los Manantiales	Fraccionamiento	Nicolás Romero	México
54420	San Juan de las Tablas	Pueblo	Nicolás Romero	México
54424	San Miguel Hila	Pueblo	Nicolás Romero	México
54425	Vicente Guerrero 2a. Sección	Colonia	Nicolás Romero	México
54425	Vicente Guerrero 1a. Sección	Colonia	Nicolás Romero	México
54426	Vicente Guerrero Barrón	Colonia	Nicolás Romero	México
54430	San José los Barbechos (Los Barbechos)	Colonia	Nicolás Romero	México
54430	Quinto Barrio (Ejido Cahuacán)	Colonia	Nicolás Romero	México
54430	Miranda	Colonia	Nicolás Romero	México
54430	Puentecillas Cahuacán	Colonia	Nicolás Romero	México
54430	Santa María Magdalena Cahuacán	Pueblo	Nicolás Romero	México
54430	Loma de Chapultepec	Barrio	Nicolás Romero	México
54434	Hidalgo	Colonia	Nicolás Romero	México
54434	Ignacio Capetillo	Colonia	Nicolás Romero	México
54434	Santa Anita	Colonia	Nicolás Romero	México
54435	Llano Grande Atzacaputzaltongo	Colonia	Nicolás Romero	México
54435	El Trafico	Colonia	Nicolás Romero	México
54435	Himno Nacional	Colonia	Nicolás Romero	México
54435	Veintidós de Febrero	Colonia	Nicolás Romero	México
54435	Ciudad Campestre	Fraccionamiento	Nicolás Romero	México
54439	Transfiguración	Pueblo	Nicolás Romero	México
54439	La Estancia	Barrio	Nicolás Romero	México
54440	San José	Colonia	Nicolás Romero	México
54440	San Francisco Magú	Pueblo	Nicolás Romero	México
54448	Puerto Magú	Pueblo	Nicolás Romero	México
54448	De la Luz	Barrio	Nicolás Romero	México
54448	El Mirador	Colonia	Nicolás Romero	México
54448	El Esclavo	Colonia	Nicolás Romero	México
54448	Pueblo Nuevo	Barrio	Nicolás Romero	México
54449	Bosques de San Nicolás	Fraccionamiento	Nicolás Romero	México
54449	San José el Vidrio	Pueblo	Nicolás Romero	México
54449	San Miguel	Colonia	Nicolás Romero	México
54449	Loma de Guadalupe (La Biznaga)	Barrio	Nicolás Romero	México
54455	Morelos	Colonia	Nicolás Romero	México
54455	Loma de San José	Fraccionamiento	Nicolás Romero	México
54457	Ignacio Zaragoza	Colonia	Nicolás Romero	México
54459	El Gavillero	Colonia	Nicolás Romero	México
54459	Loma Larga	Colonia	Nicolás Romero	México
54460	Progreso Industrial	Pueblo	Nicolás Romero	México
54460	Caja de Agua	Colonia	Nicolás Romero	México
54460	"Y" Griega	Colonia	Nicolás Romero	México
54460	La Concepción	Colonia	Nicolás Romero	México
54460	Los Tubos	Colonia	Nicolás Romero	México
54460	Joya del Tejocote	Colonia	Nicolás Romero	México
54460	San Pablo de la Cruz	Colonia	Nicolás Romero	México
54460	Villas del Bosque	Fraccionamiento	Nicolás Romero	México
54463	Loma del Río	Fraccionamiento	Nicolás Romero	México
54463	Llano Grande (Nuevo Ejido)	Colonia	Nicolás Romero	México
54463	El Tanque	Barrio	Nicolás Romero	México
54464	La Concepción (El Escobal)	Ranchería	Nicolás Romero	México
54466	San Juan Tlihuaca	Colonia	Nicolás Romero	México
54466	Paseo de San Carlos	Fraccionamiento	Nicolás Romero	México
54466	San Carlos	Fraccionamiento	Nicolás Romero	México
54466	Cantaros I	Fraccionamiento	Nicolás Romero	México
54466	Cantaros II	Fraccionamiento	Nicolás Romero	México
54466	Fuentes de San José	Conjunto habitacional	Nicolás Romero	México
54466	Unidad Magisterial	Unidad habitacional	Nicolás Romero	México
54467	Elsa Córdova Morán	Colonia	Nicolás Romero	México
54467	Arcoiris	Fraccionamiento	Nicolás Romero	México
54467	Francisco I. Madero 1a. Sección	Colonia	Nicolás Romero	México
54467	Francisco I. Madero Sección 20	Colonia	Nicolás Romero	México
54467	Mirador del Conde	Unidad habitacional	Nicolás Romero	México
54469	Benito Juárez Barrón	Colonia	Nicolás Romero	México
54470	San Ildefonso	Pueblo	Nicolás Romero	México
54473	Campestre Liberación	Colonia	Nicolás Romero	México
54473	Francisco Sarabia 1a. Sección	Colonia	Nicolás Romero	México
54473	Bulevares del Lago	Fraccionamiento	Nicolás Romero	México
54473	Francisco Sarabia 2a. Sección	Colonia	Nicolás Romero	México
54474	Granjas de Guadalupe 1a. Sección	Colonia	Nicolás Romero	México
54474	Clara Córdova Morán	Colonia	Nicolás Romero	México
54474	Vista Verde	Fraccionamiento	Nicolás Romero	México
54474	Ampliación Granjas de Guadalupe	Colonia	Nicolás Romero	México
54475	La Colmena	Pueblo	Nicolás Romero	México
54475	Loma de la Cruz 1a. Sección	Colonia	Nicolás Romero	México
54476	Hacienda Santo Tomas	Fraccionamiento	Nicolás Romero	México
54476	Lomas del Lago	Colonia	Nicolás Romero	México
54476	Sitio 217	Unidad habitacional	Nicolás Romero	México
54476	Bosques de la Colmena	Colonia	Nicolás Romero	México
54476	Pueblo Viejo	Colonia	Nicolás Romero	México
54476	Ricardo Flores Magón	Colonia	Nicolás Romero	México
54476	Colonial del Lago	Fraccionamiento	Nicolás Romero	México
54477	San Isidro La Paz 1a. Sección	Colonia	Nicolás Romero	México
54477	San Isidro La Paz 2a. Sección	Colonia	Nicolás Romero	México
54477	San Isidro La Paz 3a. Sección	Colonia	Nicolás Romero	México
54480	Tlazala de Fabela	Pueblo	Isidro Fabela	México
54480	Tlazala	Colonia	Isidro Fabela	México
54483	Laureles	Colonia	Isidro Fabela	México
54484	Miraflores	Colonia	Isidro Fabela	México
54485	La Palma	Colonia	Isidro Fabela	México
54486	Aurora	Colonia	Isidro Fabela	México
54490	Miraflores	Ejido	Isidro Fabela	México
54493	Palma (Ejido San Francisco)	Ejido	Isidro Fabela	México
54494	Los Jarros	Ejido	Isidro Fabela	México
54495	Cañada de Onofres	Ejido	Isidro Fabela	México
54539	Guadalupe	Barrio	Nicolás Romero	México
54570	Espíritu Santo	Pueblo	Jilotzingo	México
54570	San Luis Ayucan	Pueblo	Jilotzingo	México
54570	Santa Ana Jilotzingo	Pueblo	Jilotzingo	México
54570	Santa María Mazatla	Pueblo	Jilotzingo	México
54570	Endonica	Barrio	Jilotzingo	México
54570	Ensido	Barrio	Jilotzingo	México
54570	Monfi	Barrio	Jilotzingo	México
54570	La Cuesta	Barrio	Jilotzingo	México
54571	San Miguel Tecpan	Pueblo	Jilotzingo	México
54573	Doditay	Ranchería	Jilotzingo	México
54573	Quishiguada	Ranchería	Jilotzingo	México
54574	San José de las Manzanas	Ranchería	Jilotzingo	México
54575	Dangú	Pueblo	Jilotzingo	México
54600	San Mateo Xoloc	Pueblo	Tepotzotlán	México
54600	Tepotzotlán Centro	Colonia	Tepotzotlán	México
54600	San Martín	Barrio	Tepotzotlán	México
54602	San José	Barrio	Tepotzotlán	México
54602	El Refugio	Barrio	Tepotzotlán	México
54602	Guadalupe	Barrio	Tepotzotlán	México
54602	La Palmita	Colonia	Tepotzotlán	México
54602	El Tejocote	Ranchería	Tepotzotlán	México
54603	Capula	Barrio	Tepotzotlán	México
54604	Ejido Santiago	Colonia	Tepotzotlán	México
54604	Santa Cruz	Pueblo	Tepotzotlán	México
54605	Texcacoa	Barrio	Tepotzotlán	México
54605	Tlacateco	Barrio	Tepotzotlán	México
54605	Villas del Convento	Fraccionamiento	Tepotzotlán	México
54605	Cedros	Parque industrial	Tepotzotlán	México
54607	Ricardo Flores Magón	Colonia	Tepotzotlán	México
54607	San José la Teja	Exhacienda	Tepotzotlán	México
54607	Loma Bonita	Colonia	Tepotzotlán	México
54607	Ampliación Los Potros (Tres Piedras)	Colonia	Tepotzotlán	México
54607	El Arroyo	Rancho	Tepotzotlán	México
54607	La Lumbrera	Colonia	Tepotzotlán	México
54608	Los Álamos	Fraccionamiento	Tepotzotlán	México
54608	Paseo los Virreyes	Fraccionamiento	Tepotzotlán	México
54610	Industrial el Trébol	Fraccionamiento	Tepotzotlán	México
54610	Puente Grande	Colonia	Tepotzotlán	México
54610	El Convento	Parque industrial	Tepotzotlán	México
54610	Reserva Ecológica Xochitla	Equipamiento	Tepotzotlán	México
54614	El Trébol	Unidad habitacional	Tepotzotlán	México
54615	La Tecla	Barrio	Tepotzotlán	México
54615	Lumbrera II	Colonia	Tepotzotlán	México
54615	Axotlán II	Colonia	Tepotzotlán	México
54615	San Sebastián	Colonia	Tepotzotlán	México
54616	Arboleda	Conjunto habitacional	Tepotzotlán	México
54616	Las Animas	Barrio	Tepotzotlán	México
54640	Los Dolores (Ex-hacienda los Dolores)	Colonia	Tepotzotlán	México
54640	El Gavillero	Colonia	Tepotzotlán	México
54645	Arcos del Sitio	Colonia	Tepotzotlán	México
54650	Santiago el Alto	Ejido	Tepotzotlán	México
54650	Cañada de Cisneros	Pueblo	Tepotzotlán	México
54650	Santiago Cuautlalpan	Pueblo	Tepotzotlán	México
54650	Club Virreyes	Fraccionamiento	Tepotzotlán	México
54650	El Mirador	Fraccionamiento	Tepotzotlán	México
54650	Granjas Hogar y Petrohuertos Delegación	Fraccionamiento	Tepotzotlán	México
54650	De la Luz	Barrio	Tepotzotlán	México
54650	San Vicente	Barrio	Tepotzotlán	México
54650	Santiago	Barrio	Tepotzotlán	México
54650	Hacienda la Concepción	Fraccionamiento	Tepotzotlán	México
54650	Titini	Barrio	Tepotzotlán	México
54650	La Luz	Barrio	Tepotzotlán	México
54650	San José	Barrio	Tepotzotlán	México
54650	Santa Rita	Barrio	Tepotzotlán	México
54650	San Bartolo	Barrio	Tepotzotlán	México
54650	Lanzarote	Exhacienda	Tepotzotlán	México
54650	Hacienda la Concepción (Ex-Rancho la Joya)	Fraccionamiento	Tepotzotlán	México
54650	Las Lechuguillas	Barrio	Tepotzotlán	México
54655	La Concepción	Barrio	Tepotzotlán	México
54655	El Jagüey	Colonia	Tepotzotlán	México
54655	La Pedrera (La Mina)	Colonia	Tepotzotlán	México
54655	El Puerto de los Huizaches	Colonia	Tepotzotlán	México
54656	San Miguel Cañadas	Pueblo	Tepotzotlán	México
54658	Las Cabañas	Fraccionamiento	Tepotzotlán	México
54660	Coyotepec	Pueblo	Coyotepec	México
54665	La Renda	Ranchería	Coyotepec	México
54665	La Planada	Barrio	Coyotepec	México
54665	Santa Bárbara	Barrio	Coyotepec	México
54665	Reyes	Barrio	Coyotepec	México
54665	Caltenco	Barrio	Coyotepec	México
54665	El Gavillero (Barrio Caltenco)	Ejido	Coyotepec	México
54666	Cimapan	Barrio	Coyotepec	México
54666	Ixtapacalco	Barrio	Coyotepec	México
54666	San Francisco	Barrio	Coyotepec	México
54667	Acoacalco	Barrio	Coyotepec	México
54667	Chautonco	Barrio	Coyotepec	México
54667	Santiago	Barrio	Coyotepec	México
54667	La Bolsa	Colonia	Coyotepec	México
54668	Lomas de Guadalupe	Colonia	Coyotepec	México
54668	Pueblo Nuevo	Barrio	Coyotepec	México
54668	San Juan	Barrio	Coyotepec	México
54680	Huehuetoca	Pueblo	Huehuetoca	México
54683	San Bartolo	Pueblo	Huehuetoca	México
54683	San Pedro Xalpa	Pueblo	Huehuetoca	México
54683	Ex-Hacienda de Xalpa	Fraccionamiento	Huehuetoca	México
54684	Puente Grande	Pueblo	Huehuetoca	México
54684	Jardines de Huehuetoca	Fraccionamiento	Huehuetoca	México
54684	Real de Huehuetoca	Fraccionamiento	Huehuetoca	México
54685	Paseos del Prado	Fraccionamiento	Huehuetoca	México
54685	Salitrillo	Pueblo	Huehuetoca	México
54685	La Cañada	Barrio	Huehuetoca	México
54685	Casa Nueva	Fraccionamiento	Huehuetoca	México
54685	Portal del Sol	Fraccionamiento	Huehuetoca	México
54685	Arboledas de Huehuetoca	Fraccionamiento	Huehuetoca	México
54685	Huehuetoca del Maurel	Fraccionamiento	Huehuetoca	México
54685	Galaxia Huehuetoca	Fraccionamiento	Huehuetoca	México
54687	Parque Industrial O Donnell Intermodal Huehuetoca	Zona industrial	Huehuetoca	México
54687	Santa María	Pueblo	Huehuetoca	México
54687	Barranca Prieta	Barrio	Huehuetoca	México
54687	Hacienda las Misiones	Conjunto habitacional	Huehuetoca	México
54690	El Sitio (Ejido de Jalpa)	Ejido	Huehuetoca	México
54693	San Miguel de los Jagüeyes	Pueblo	Huehuetoca	México
54693	URBI Villa del Rey	Conjunto habitacional	Huehuetoca	México
54693	Privadas del Valle	Fraccionamiento	Huehuetoca	México
54694	Santa Teresa	Conjunto habitacional	Huehuetoca	México
54694	La Guadalupana Bicentenario Huehuetoca	Colonia	Huehuetoca	México
54696	El Dorado Huehuetoca	Fraccionamiento	Huehuetoca	México
54696	CITARA	Fraccionamiento	Huehuetoca	México
54697	Loma Bonita	Barrio	Huehuetoca	México
54697	Jorobas	Barrio	Huehuetoca	México
54697	Campo Militar San Miguel Jagueyes	Zona federal	Huehuetoca	México
54697	Lumbrera 13	Barrio	Huehuetoca	México
54697	Lumbrera 14 A	Barrio	Huehuetoca	México
54700	Cuautitlán Izcalli Centro Urbano	Colonia	Cuautitlán Izcalli	México
54700	Elite Plaza	Unidad habitacional	Cuautitlán Izcalli	México
54710	El Cerrito	Colonia	Cuautitlán Izcalli	México
54710	Las Tinajas	Colonia	Cuautitlán Izcalli	México
54710	Bellavista	Colonia	Cuautitlán Izcalli	México
54710	San José Buenavista	Colonia	Cuautitlán Izcalli	México
54710	El Rosario	Pueblo	Cuautitlán Izcalli	México
54710	San José Huilango	Pueblo	Cuautitlán Izcalli	México
54710	San Pablo de los Gallos	Colonia	Cuautitlán Izcalli	México
54710	Santa María Tianguistengo	Pueblo	Cuautitlán Izcalli	México
54710	Lomas de los Angeles	Colonia	Cuautitlán Izcalli	México
54710	Ejido Santa María Tianguistengo	Colonia	Cuautitlán Izcalli	México
54710	La Era	Unidad habitacional	Cuautitlán Izcalli	México
54710	Ejido Santiago Cuautlalpan	Colonia	Cuautitlán Izcalli	México
54712	Bosques de Xhala	Colonia	Cuautitlán Izcalli	México
54712	San Mateo Ixtacalco Fracción la Capilla	Colonia	Cuautitlán Izcalli	México
54712	Las Animas	Colonia	Cuautitlán Izcalli	México
54713	San Lorenzo Río Tenco	Pueblo	Cuautitlán Izcalli	México
54713	San Mateo Ixtacalco	Pueblo	Cuautitlán Izcalli	México
54713	Santa Bárbara	Pueblo	Cuautitlán Izcalli	México
54713	El Sabino	Colonia	Cuautitlán Izcalli	México
54714	El Socorro	Colonia	Cuautitlán Izcalli	México
54714	San Sebastián Xhala	Pueblo	Cuautitlán Izcalli	México
54714	Parque industrial Xhala	Zona industrial	Cuautitlán Izcalli	México
54715	Adolfo López Mateos	Unidad habitacional	Cuautitlán Izcalli	México
54715	Bosques de la Hacienda 1a Sección	Fraccionamiento	Cuautitlán Izcalli	México
54715	Valle de la Hacienda	Fraccionamiento	Cuautitlán Izcalli	México
54715	Ex-Hacienda San Miguel	Fraccionamiento	Cuautitlán Izcalli	México
54715	Jardines de San Miguel	Fraccionamiento	Cuautitlán Izcalli	México
54715	Cofradía de San Miguel	Fraccionamiento	Cuautitlán Izcalli	México
54715	Cofradía II	Fraccionamiento	Cuautitlán Izcalli	México
54715	Arboledas de San Miguel	Fraccionamiento	Cuautitlán Izcalli	México
54715	Bosques de la Hacienda 3a Sección	Unidad habitacional	Cuautitlán Izcalli	México
54715	Bosques de la Hacienda 2a Sección	Fraccionamiento	Cuautitlán Izcalli	México
54715	Cofradía III	Fraccionamiento	Cuautitlán Izcalli	México
54715	Cofradía IV	Fraccionamiento	Cuautitlán Izcalli	México
54715	Rinconada Cuautitlán	Fraccionamiento	Cuautitlán Izcalli	México
54715	Jardines de San Miguel lll	Unidad habitacional	Cuautitlán Izcalli	México
54716	Residencial la Luz	Fraccionamiento	Cuautitlán Izcalli	México
54716	Parque industrial La Luz	Zona industrial	Cuautitlán Izcalli	México
54716	San Lorenzo Río Tenco	Ejido	Cuautitlán Izcalli	México
54719	Claustros de San Miguel	Fraccionamiento	Cuautitlán Izcalli	México
54719	Paseos de Izcalli	Fraccionamiento	Cuautitlán Izcalli	México
54719	Paseos del Encanto	Colonia	Cuautitlán Izcalli	México
54719	URBI Quinta Montecarlo	Fraccionamiento	Cuautitlán Izcalli	México
54719	Axotlán	Pueblo	Cuautitlán Izcalli	México
54720	INFONAVIT Norte	Unidad habitacional	Cuautitlán Izcalli	México
54720	Sección Parques	Fraccionamiento	Cuautitlán Izcalli	México
54720	Jardines de la Hacienda Sur	Fraccionamiento	Cuautitlán Izcalli	México
54720	La Piedad	Colonia	Cuautitlán Izcalli	México
54720	CTM NR1 Núcleos	Unidad habitacional	Cuautitlán Izcalli	México
54720	INFONAVIT Norte Consorcio	Unidad habitacional	Cuautitlán Izcalli	México
54720	Ferrocarrilera	Unidad habitacional	Cuautitlán Izcalli	México
54720	México	Unidad habitacional	Cuautitlán Izcalli	México
54720	La Piedad	Unidad habitacional	Cuautitlán Izcalli	México
54720	Lomas de San Francisco Tepojaco	Fraccionamiento	Cuautitlán Izcalli	México
54720	Viveros II	Unidad habitacional	Cuautitlán Izcalli	México
54720	Del Río	Unidad habitacional	Cuautitlán Izcalli	México
54720	San Marcos Cuamatla	Colonia	Cuautitlán Izcalli	México
54725	La Aurora	Colonia	Cuautitlán Izcalli	México
54725	Las Auroritas	Colonia	Cuautitlán Izcalli	México
54725	San Antonio	Unidad habitacional	Cuautitlán Izcalli	México
54725	Rinconada San Miguel	Fraccionamiento	Cuautitlán Izcalli	México
54729	Jardines de la Hacienda Norte	Fraccionamiento	Cuautitlán Izcalli	México
54729	San Juan Atlamica	Pueblo	Cuautitlán Izcalli	México
54730	San Isidro	Colonia	Cuautitlán Izcalli	México
54730	Arcos de la Hacienda	Fraccionamiento	Cuautitlán Izcalli	México
54730	Complejo Industrial Cuamatla	Zona industrial	Cuautitlán Izcalli	México
54730	Rincón Colonial	Fraccionamiento	Cuautitlán Izcalli	México
54730	Ejidos de San Isidro	Colonia	Cuautitlán Izcalli	México
54730	El Cerrito	Unidad habitacional	Cuautitlán Izcalli	México
54730	Parque industrial Cuamatla	Zona industrial	Cuautitlán Izcalli	México
54730	Parque industrial La Joya	Zona industrial	Cuautitlán Izcalli	México
54740	Atlanta	Fraccionamiento	Cuautitlán Izcalli	México
54740	Cumbria	Fraccionamiento	Cuautitlán Izcalli	México
54740	Ensueños	Fraccionamiento	Cuautitlán Izcalli	México
54740	La Perla	Colonia	Cuautitlán Izcalli	México
54740	Residencial los Lirios	Unidad habitacional	Cuautitlán Izcalli	México
54740	Santa Rosa de Lima	Colonia	Cuautitlán Izcalli	México
54740	Urbi Hacienda Balboa	Fraccionamiento	Cuautitlán Izcalli	México
54743	Fuentes del Tepeyac	Fraccionamiento	Cuautitlán Izcalli	México
54743	Colonial Taxco	Fraccionamiento	Cuautitlán Izcalli	México
54743	Tulipanes	Unidad habitacional	Cuautitlán Izcalli	México
54743	Fidel Velázquez	Unidad habitacional	Cuautitlán Izcalli	México
54743	Francisco Villa	Colonia	Cuautitlán Izcalli	México
54743	Plaza Dorada	Unidad habitacional	Cuautitlán Izcalli	México
54743	Santa María Guadalupe las Torres	Colonia	Cuautitlán Izcalli	México
54743	Valle de San Lucas	Colonia	Cuautitlán Izcalli	México
54743	Santiago Tepalcapa	Pueblo	Cuautitlán Izcalli	México
54743	INFONAVIT Centro	Unidad habitacional	Cuautitlán Izcalli	México
54743	INFONAVIT Tepalcapa	Unidad habitacional	Cuautitlán Izcalli	México
54743	Campo 1	Unidad habitacional	Cuautitlán Izcalli	México
54744	Colinas del Lago	Fraccionamiento	Cuautitlán Izcalli	México
54744	Nopaltepec	Unidad habitacional	Cuautitlán Izcalli	México
54744	Jorge Jiménez Cantú	Colonia	Cuautitlán Izcalli	México
54744	La Joyita	Colonia	Cuautitlán Izcalli	México
54744	Valle de las Flores	Colonia	Cuautitlán Izcalli	México
54745	Los Ailes	Colonia	Cuautitlán Izcalli	México
54745	Ejido de Guadalupe	Colonia	Cuautitlán Izcalli	México
54745	San Francisco Tepojaco	Pueblo	Cuautitlán Izcalli	México
54745	Los Pinos	Colonia	Cuautitlán Izcalli	México
54745	La Conasupo	Fraccionamiento	Cuautitlán Izcalli	México
54750	Arcos del Alba	Fraccionamiento	Cuautitlán Izcalli	México
54750	Jardines del Alba	Fraccionamiento	Cuautitlán Izcalli	México
54750	Las Conchitas	Colonia	Cuautitlán Izcalli	México
54750	Generalísimo José María Morelos y Pavón Sección Norte	Unidad habitacional	Cuautitlán Izcalli	México
54750	Generalísimo José María Morelos y Pavón Sección Sur	Unidad habitacional	Cuautitlán Izcalli	México
54753	Residencial Bosques del Alba	Unidad habitacional	Cuautitlán Izcalli	México
54753	Joyas del Alba	Fraccionamiento	Cuautitlán Izcalli	México
54753	Bosques del Alba I	Unidad habitacional	Cuautitlán Izcalli	México
54753	Luis Echeverría	Colonia	Cuautitlán Izcalli	México
54753	Fuentes del Bosque	Fraccionamiento	Cuautitlán Izcalli	México
54753	Bosques del Alba II	Unidad habitacional	Cuautitlán Izcalli	México
54759	Loma Bonita	Colonia	Cuautitlán Izcalli	México
54760	Bosques de Morelos	Colonia	Cuautitlán Izcalli	México
54760	Lago de Guadalupe	Fraccionamiento	Cuautitlán Izcalli	México
54760	Plan de Guadalupe	Colonia	Cuautitlán Izcalli	México
54760	Tres de Mayo	Colonia	Cuautitlán Izcalli	México
54760	Rincón del Bosque	Fraccionamiento	Cuautitlán Izcalli	México
54763	La Presita	Colonia	Cuautitlán Izcalli	México
54763	Ampliación Ejidal San Isidro	Colonia	Cuautitlán Izcalli	México
54763	INFONAVIT Sur "Niños Héroes"	Unidad habitacional	Cuautitlán Izcalli	México
54763	Ejidal San Isidro	Colonia	Cuautitlán Izcalli	México
54763	San Martín Tepetlixpa	Pueblo	Cuautitlán Izcalli	México
54763	Unidad Cívica Bacardi	Fraccionamiento	Cuautitlán Izcalli	México
54763	Los Pájaros	Unidad habitacional	Cuautitlán Izcalli	México
54763	Las Gaviotas	Unidad habitacional	Cuautitlán Izcalli	México
54763	Villas del Sol	Fraccionamiento	Cuautitlán Izcalli	México
54763	Residencial la Joya	Fraccionamiento	Cuautitlán Izcalli	México
54763	Las Mariposas	Unidad habitacional	Cuautitlán Izcalli	México
54763	Las Huertas	Unidad habitacional	Cuautitlán Izcalli	México
54763	San Martín Obispo o Tepetlixpan	Ejido	Cuautitlán Izcalli	México
54763	Tres Picos	Colonia	Cuautitlán Izcalli	México
54764	Santa María de Guadalupe la Quebrada	Colonia	Cuautitlán Izcalli	México
54765	Lomas del Bosque	Colonia	Cuautitlán Izcalli	México
54765	Mirador Santa Rosa	Colonia	Cuautitlán Izcalli	México
54765	El Tikal	Colonia	Cuautitlán Izcalli	México
54766	Bosques del Lago	Fraccionamiento	Cuautitlán Izcalli	México
54766	Campestre del Lago	Fraccionamiento	Cuautitlán Izcalli	México
54767	Granjas Lomas de Guadalupe	Colonia	Cuautitlán Izcalli	México
54769	Hacienda del Parque	Fraccionamiento	Cuautitlán Izcalli	México
54769	La Quebrada Centro	Fraccionamiento	Cuautitlán Izcalli	México
54769	La Quebrada Ampliación	Fraccionamiento	Cuautitlán Izcalli	México
54769	Valle Esmeralda	Unidad habitacional	Cuautitlán Izcalli	México
54769	Paseo de los Jardines	Unidad habitacional	Cuautitlán Izcalli	México
54769	Cumbre Norte	Unidad habitacional	Cuautitlán Izcalli	México
54769	Torres Algibe	Fraccionamiento	Cuautitlán Izcalli	México
54769	Villas del Perinorte	Unidad habitacional	Cuautitlán Izcalli	México
54769	Bosques del Perinorte	Unidad habitacional	Cuautitlán Izcalli	México
54769	San Martín Obispo	Parque industrial	Cuautitlán Izcalli	México
54770	Tlatilco	Barrio	Teoloyucan	México
54770	Tlatenco	Barrio	Teoloyucan	México
54770	Misiones Teoloyucan	Fraccionamiento	Teoloyucan	México
54770	Villas Teoloyucan	Fraccionamiento	Teoloyucan	México
54770	Hacienda Beatriz	Fraccionamiento	Teoloyucan	México
54783	Analco	Barrio	Teoloyucan	México
54783	San Juan	Barrio	Teoloyucan	México
54783	Santa María Caliacac	Barrio	Teoloyucan	México
54783	Santo Tomás	Barrio	Teoloyucan	México
54783	Tepanquiahuac	Barrio	Teoloyucan	México
54783	Fresno 2000	Fraccionamiento	Teoloyucan	México
54783	Santa Cruz	Barrio	Teoloyucan	México
54783	La Providencia	Fraccionamiento	Teoloyucan	México
54783	Santo Tomás	Colonia	Teoloyucan	México
54784	San Bartolo	Barrio	Teoloyucan	México
54784	Santiago	Barrio	Teoloyucan	México
54784	Atzacoalco	Barrio	Teoloyucan	México
54784	Sagitario	Fraccionamiento	Teoloyucan	México
54785	San José	Colonia	Teoloyucan	México
54785	Los Olivos	Fraccionamiento	Teoloyucan	México
54785	Ex-Hacienda San José Puente Grande	Colonia	Teoloyucan	México
54785	La Victoria	Colonia	Teoloyucan	México
54786	Cuaxoxoca	Barrio	Teoloyucan	México
54786	Santa Cruz del Monte	Colonia	Teoloyucan	México
54786	Zimapan	Barrio	Teoloyucan	México
54786	San Sebastián	Barrio	Teoloyucan	México
54786	Acolco	Barrio	Teoloyucan	México
54786	Axalpa	Barrio	Teoloyucan	México
54786	La Era	Colonia	Teoloyucan	México
54786	Guadalupe	Colonia	Teoloyucan	México
54800	Cuautitlán Centro	Colonia	Cuautitlán	México
54800	Los Morales 1a Sección	Fraccionamiento	Cuautitlán	México
54800	Paseo de Santa María	Fraccionamiento	Cuautitlán	México
54800	Romita	Colonia	Cuautitlán	México
54800	San Juan	Fraccionamiento	Cuautitlán	México
54800	El Nopalito	Barrio	Cuautitlán	México
54800	Misiones II	Fraccionamiento	Cuautitlán	México
54803	Hacienda de Cuautitlán	Fraccionamiento	Cuautitlán	México
54803	Joyas de Cuautitlán	Fraccionamiento	Cuautitlán	México
54803	La Alborada	Fraccionamiento	Cuautitlán	México
54804	Tecoac-Monales	Barrio	Cuautitlán	México
54805	Ejidos de Guadalupe	Colonia	Cuautitlán	México
54807	El Huerto	Barrio	Cuautitlán	México
54807	San Francisco Cascantitla	Fraccionamiento	Cuautitlán	México
54807	Paseos de Cuautitlán	Fraccionamiento	Cuautitlán	México
54830	La Arboleda	Fraccionamiento	Cuautitlán	México
54830	El Mirador	Ranchería	Cuautitlán	México
54830	El Machero	Ejido	Cuautitlán	México
54830	Parque San Mateo (Hacienda San Mateo)	Fraccionamiento	Cuautitlán	México
54831	Santa María Huecatitla	Pueblo	Cuautitlán	México
54831	Santa Bárbara	Ejido	Cuautitlán	México
54831	Macolo	Colonia	Cuautitlán	México
54834	San José Puente Grande	Colonia	Cuautitlán	México
54835	Venecia	Colonia	Cuautitlán	México
54835	Villa María	Ejido	Cuautitlán	México
54835	El Tejado	Ejido	Cuautitlán	México
54835	Canta Ranas	Rancho	Cuautitlán	México
54836	El Mecate	Rancho	Cuautitlán	México
54840	La Toscana	Fraccionamiento	Cuautitlán	México
54840	San Mateo Ixtacalco	Pueblo	Cuautitlán	México
54840	El Carmen	Barrio	Cuautitlán	México
54840	San Roque	Colonia	Cuautitlán	México
54840	Dos Ríos Segunda Sección	Colonia	Cuautitlán	México
54840	Juan Diego	Fraccionamiento	Cuautitlán	México
54840	Los Morales 2a Sección	Fraccionamiento	Cuautitlán	México
54840	La Laguna	Colonia	Cuautitlán	México
54840	La Guadalupana	Fraccionamiento	Cuautitlán	México
54840	Galaxia Cuautitlán	Fraccionamiento	Cuautitlán	México
54850	El Tejocote	Colonia	Cuautitlán	México
54850	Dos Ríos Primera Sección	Colonia	Cuautitlán	México
54850	Xaltipa (Jaltipa)	Ranchería	Cuautitlán	México
54850	La Trinidad	Pueblo	Cuautitlán	México
54850	Rancho Santa Elena	Fraccionamiento	Cuautitlán	México
54850	Paseos del Bosque	Fraccionamiento	Cuautitlán	México
54850	Real de San Fernando	Fraccionamiento	Cuautitlán	México
54855	Tizoc	Fraccionamiento	Cuautitlán	México
54857	Villas de Cuautitlán	Fraccionamiento	Cuautitlán	México
54857	Villas Olivo	Fraccionamiento	Cuautitlán	México
54858	Cebadales Primera Sección	Unidad habitacional	Cuautitlán	México
54860	San Mateo Ixtacalco Fracción Tlaxculpas	Ejido	Cuautitlán	México
54870	El Paraíso	Unidad habitacional	Cuautitlán	México
54870	Lázaro Cárdenas	Colonia	Cuautitlán	México
54870	San Blas I	Fraccionamiento	Cuautitlán	México
54870	San Blas II	Fraccionamiento	Cuautitlán	México
54870	San José Milla	Barrio	Cuautitlán	México
54870	Santa Ana Tlaltepan	Barrio	Cuautitlán	México
54870	Misiones I	Fraccionamiento	Cuautitlán	México
54870	Rancho San Blas	Fraccionamiento	Cuautitlán	México
54875	Foresta Residencial	Fraccionamiento	Cuautitlán	México
54875	Cristal	Fraccionamiento	Cuautitlán	México
54875	Mayorazgos	Fraccionamiento	Cuautitlán	México
54875	Las Patricias I y II	Fraccionamiento	Cuautitlán	México
54875	Los Olivos	Fraccionamiento	Cuautitlán	México
54877	El Paraíso FOVISSSTE	Unidad habitacional	Cuautitlán	México
54878	El Infiernillo	Colonia	Cuautitlán	México
54879	El Cerrito	Colonia	Cuautitlán	México
54879	El Partidor	Colonia	Cuautitlán	México
54879	La Palma	Colonia	Cuautitlán	México
54879	Loma Bonita	Colonia	Cuautitlán	México
54879	Nueva Españita	Colonia	Cuautitlán	México
54879	Villa Jardín	Fraccionamiento	Cuautitlán	México
54879	Puente Jabonero	Barrio	Cuautitlán	México
54879	Necapa	Colonia	Cuautitlán	México
54880	Rancho el Bañadero	Ranchería	Melchor Ocampo	México
54880	Melchor Ocampo Centro	Colonia	Melchor Ocampo	México
54882	San Francisco Tenopalco	Pueblo	Melchor Ocampo	México
54882	San Isidro	Pueblo	Melchor Ocampo	México
54882	El Mirador	Colonia	Melchor Ocampo	México
54883	Virgen de Guadalupe	Pueblo	Melchor Ocampo	México
54883	San Antonio	Pueblo	Melchor Ocampo	México
54883	Educación	Colonia	Melchor Ocampo	México
54884	De los Milagros	Pueblo	Melchor Ocampo	México
54884	Tepetongo	Colonia	Melchor Ocampo	México
54884	Xacopinca	Colonia	Melchor Ocampo	México
54890	Visitación	Pueblo	Melchor Ocampo	México
54890	Los Álamos	Fraccionamiento	Melchor Ocampo	México
54893	Revolución	Colonia	Melchor Ocampo	México
54893	Xoquimiquía	Colonia	Melchor Ocampo	México
54893	Bicentenario	Colonia	Melchor Ocampo	México
54893	2 de Septiembre	Colonia	Melchor Ocampo	México
54893	Cañaditas	Colonia	Melchor Ocampo	México
54893	Lomas de Tenapalco	Colonia	Melchor Ocampo	México
54893	La Cañada	Colonia	Melchor Ocampo	México
54894	La Florida	Colonia	Melchor Ocampo	México
54894	Los Álamos II	Fraccionamiento	Melchor Ocampo	México
54900	Belém	Barrio	Tultitlán	México
54900	La Concepción	Barrio	Tultitlán	México
54900	Los Reyes	Barrio	Tultitlán	México
54900	Nativitas	Barrio	Tultitlán	México
54900	San Bartolo	Barrio	Tultitlán	México
54900	San Juan	Barrio	Tultitlán	México
54900	Santiaguito	Barrio	Tultitlán	México
54900	Tultitlán de Mariano Escobedo Centro	Colonia	Tultitlán	México
54900	Residencial los Reyes	Condominio	Tultitlán	México
54910	Fuentes del Valle	Fraccionamiento	Tultitlán	México
54910	Villas de San José	Fraccionamiento	Tultitlán	México
54910	Villa Esmeralda	Colonia	Tultitlán	México
54910	Los Agaves Tultitlán	Condominio	Tultitlán	México
54910	Los Portales	Condominio	Tultitlán	México
54910	La Mariscala	Colonia	Tultitlán	México
54910	La Ponderosa	Fraccionamiento	Tultitlán	México
54910	Jardines de Tultitlán	Condominio	Tultitlán	México
54910	Central de Abastos	Zona comercial	Tultitlán	México
54913	COCEM	Fraccionamiento	Tultitlán	México
54913	Sol de Tultitlán (Zona Oriente)	Condominio	Tultitlán	México
54913	Recursos Hidráulicos	Colonia	Tultitlán	México
54913	Villas Jardín	Condominio	Tultitlán	México
54913	Bosques de Tultitlán	Condominio	Tultitlán	México
54913	Quinta el Ángel	Unidad habitacional	Tultitlán	México
54913	Ampliación COCEM	Condominio	Tultitlán	México
54913	Residencial del Sol	Fraccionamiento	Tultitlán	México
54914	Unidad Electricistas	Condominio	Tultitlán	México
54915	Independencia	Colonia	Tultitlán	México
54915	El Obelisco	Condominio	Tultitlán	México
54915	Independencia	Zona industrial	Tultitlán	México
54915	Los Reyes	Colonia	Tultitlán	México
54915	Porto Alegre	Condominio	Tultitlán	México
54915	Rincón Colonial	Fraccionamiento	Tultitlán	México
54916	Lázaro Cárdenas (Zona Hornos)	Colonia	Tultitlán	México
54918	Cartagena	Parque industrial	Tultitlán	México
54918	Tultitlán	Parque industrial	Tultitlán	México
54918	El Cueyamil	Colonia	Tultitlán	México
54920	Hogares de Castera	Condominio	Tultitlán	México
54920	Jardines de los Claustros III	Fraccionamiento	Tultitlán	México
54920	San Pablo Castera II	Fraccionamiento	Tultitlán	México
54920	Estrella de Tultitlán (Lote 55 Pte.)	Condominio	Tultitlán	México
54924	Llanuras	Fraccionamiento	Tultitlán	México
54924	El Kiosco	Condominio	Tultitlán	México
54924	Conjunto Cristal	Condominio	Tultitlán	México
54924	Lote 104 (Tehuantepec)	Condominio	Tultitlán	México
54925	Hacienda San Pablo	Fraccionamiento	Tultitlán	México
54925	Las Manzanas	Unidad habitacional	Tultitlán	México
54925	Prados B	Condominio	Tultitlán	México
54926	Estepas	Fraccionamiento	Tultitlán	México
54926	Lote 55 (Los Tejados)	Condominio	Tultitlán	México
54926	Sustitución Arista	Condominio	Tultitlán	México
54926	Los Agaves (Lote 71)	Condominio	Tultitlán	México
54926	Galaxias Tultitlán	Fraccionamiento	Tultitlán	México
54927	Las Tórtolas	Fraccionamiento	Tultitlán	México
54927	Mariano Escobedo (los Faroles)	Unidad habitacional	Tultitlán	México
54927	Hogares de Castera Lote 73	Colonia	Tultitlán	México
54927	Lote 41 (El Carmen)	Condominio	Tultitlán	México
54927	Emilio Chuayffet	Colonia	Tultitlán	México
54929	Alborada I	Fraccionamiento	Tultitlán	México
54929	La Alborada Vallas	Unidad habitacional	Tultitlán	México
54929	Nuevo INFONAVIT	Unidad habitacional	Tultitlán	México
54929	Unidad Morelos 3ra. Sección INFONAVIT	Fraccionamiento	Tultitlán	México
54929	Lote 12 (Crepúsculo)	Condominio	Tultitlán	México
54929	Villas Loreto	Condominio	Tultitlán	México
54929	Jardines de los Claustros VI	Fraccionamiento	Tultitlán	México
54930	Granjas San Pablo	Fraccionamiento	Tultitlán	México
54930	Izcalli Rinconada	Fraccionamiento	Tultitlán	México
54930	Jardines de los Claustros IV	Fraccionamiento	Tultitlán	México
54930	Jardines de los Claustros V	Fraccionamiento	Tultitlán	México
54930	La Granja	Unidad habitacional	Tultitlán	México
54930	Llanura Verde	Condominio	Tultitlán	México
54930	Pensamientos	Condominio	Tultitlán	México
54930	San Pablo de las Salinas	Unidad habitacional	Tultitlán	México
54930	San Pablo de las Salinas	Pueblo	Tultitlán	México
54930	Solidaridad Social (Lote 105)	Fraccionamiento	Tultitlán	México
54930	Unidad Morelos 2da. Sección	Fraccionamiento	Tultitlán	México
54930	Lote 92 (Las Rosas)	Condominio	Tultitlán	México
54930	Las Granjas	Condominio	Tultitlán	México
54930	Privada los Prados	Condominio	Tultitlán	México
54930	Solar San Pablo	Condominio	Tultitlán	México
54930	Quintas San Pablo	Condominio	Tultitlán	México
54930	Lomas de San Pablo	Colonia	Tultitlán	México
54932	Magnolias	Fraccionamiento	Tultitlán	México
54932	Conjunto Fortuna	Condominio	Tultitlán	México
54932	IMMEX II	Fraccionamiento	Tultitlán	México
54932	Isidro Fabela	Condominio	Tultitlán	México
54932	Magnolias 2000	Fraccionamiento	Tultitlán	México
54932	Lote 105 (Ébano)	Condominio	Tultitlán	México
54932	Villas de San Pablo	Condominio	Tultitlán	México
54932	Residencial Magnolias	Fraccionamiento	Tultitlán	México
54932	San Pablo III-B	Condominio	Tultitlán	México
54932	San Pablo III-A	Condominio	Tultitlán	México
54932	Residencial San Pablo II	Fraccionamiento	Tultitlán	México
54932	Villas San Pablo (Lote 117 Sur)	Condominio	Tultitlán	México
54933	Azul Cielo	Condominio	Tultitlán	México
54933	Coyoli Martínez	Condominio	Tultitlán	México
54933	Izcalli San Pablo	Fraccionamiento	Tultitlán	México
54933	Jardines de San Pablo	Condominio	Tultitlán	México
54933	Parque de San Pablo	Condominio	Tultitlán	México
54933	Verde Claro	Condominio	Tultitlán	México
54933	Lote 93 (Amalia)	Condominio	Tultitlán	México
54933	El Campanario	Condominio	Tultitlán	México
54933	Plaza Jardines	Fraccionamiento	Tultitlán	México
54933	Residencial La Esperanza	Condominio	Tultitlán	México
54934	El Rocío	Condominio	Tultitlán	México
54934	Gustavo Baz	Condominio	Tultitlán	México
54934	Prados A	Condominio	Tultitlán	México
54935	Casas Alfa	Unidad habitacional	Tultitlán	México
54935	Casitas San Pablo	Condominio	Tultitlán	México
54935	Jardines de los Claustros I	Fraccionamiento	Tultitlán	México
54935	Jardines de los Claustros II	Fraccionamiento	Tultitlán	México
54935	Alborada II	Fraccionamiento	Tultitlán	México
54935	La Isla	Condominio	Tultitlán	México
54935	Unidad Morelos 3ra. Sección	Fraccionamiento	Tultitlán	México
54935	Residencial Morelos	Condominio	Tultitlán	México
54935	Lote 84 (Las Adelas)	Condominio	Tultitlán	México
54935	Lote 82 (Guillermo González C.)	Condominio	Tultitlán	México
54935	El Faro (Lote 3 Pte.)	Condominio	Tultitlán	México
54935	Conjunto San Pablo	Condominio	Tultitlán	México
54935	Lote 52 (Torres Tultitlán)	Condominio	Tultitlán	México
54935	Las Calderas	Colonia	Tultitlán	México
54935	Portal San Pablo	Condominio	Tultitlán	México
54935	Portal San Pablo II	Condominio	Tultitlán	México
54935	Las Almenas	Condominio	Tultitlán	México
54935	Lava 46	Unidad habitacional	Tultitlán	México
54935	Las Fuentes	Condominio	Tultitlán	México
54935	Las Chinampas	Colonia	Tultitlán	México
54938	Ampliación San Pablo de las Salinas	Colonia	Tultitlán	México
54938	Lote 64 (Octavio Paz)	Fraccionamiento	Tultitlán	México
54938	Lote 47 (El Reloj Residencial)	Condominio	Tultitlán	México
54938	Lote 48 (El Reloj Cronos)	Condominio	Tultitlán	México
54938	Arboledas (lote 49)	Unidad habitacional	Tultitlán	México
54938	Lote 62 (Juan Rulfo)	Condominio	Tultitlán	México
54938	Arcos I	Condominio	Tultitlán	México
54938	Lote 50 B (Las Laderas)	Condominio	Tultitlán	México
54938	Lote 46 (El Reloj Villas)	Condominio	Tultitlán	México
54938	Lote 63 Conjunto Pilares	Condominio	Tultitlán	México
54938	Lote 50 A	Condominio	Tultitlán	México
54938	Lote 50 D	Condominio	Tultitlán	México
54938	Lote 50 C (Real De Tultitlán)	Condominio	Tultitlán	México
54938	Lote 59 (Torres del Reloj)	Condominio	Tultitlán	México
54938	Lote 76 (El Reloj)	Condominio	Tultitlán	México
54938	El Laurel	Condominio	Tultitlán	México
54938	Villas Tultitlán (Lote 65)	Condominio	Tultitlán	México
54938	Arcos V	Condominio	Tultitlán	México
54938	Arcos IV	Condominio	Tultitlán	México
54938	Arcos III	Condominio	Tultitlán	México
54938	Arcos II	Condominio	Tultitlán	México
54938	Villas Santa Teresita	Condominio	Tultitlán	México
54938	Bonito Tultitlán (lote 60)	Condominio	Tultitlán	México
54938	El Alcázar	Condominio	Tultitlán	México
54938	Arcos VI	Condominio	Tultitlán	México
54939	Paraje San Pablito	Colonia	Tultitlán	México
54940	Lechería	Colonia	Tultitlán	México
54940	Corredor Lechería-Cuautitlán	Zona industrial	Tultitlán	México
54942	Benito Juárez	Colonia	Tultitlán	México
54942	La Libertad	Colonia	Tultitlán	México
54942	Ampliación Las Torres Segunda Sección	Colonia	Tultitlán	México
54942	Las Torres I	Colonia	Tultitlán	México
54943	Ciudad Labor	Fraccionamiento	Tultitlán	México
54943	Ojo de Agua Primera Sección	Colonia	Tultitlán	México
54943	Ojo de Agua Segunda Sección	Colonia	Tultitlán	México
54944	San Francisco Chilpan	Pueblo	Tultitlán	México
54944	Buenavista Parte Alta	Colonia	Tultitlán	México
54944	El Fresno	Colonia	Tultitlán	México
54944	La Joya	Colonia	Tultitlán	México
54944	La Loma I	Condominio	Tultitlán	México
54944	Villas de San Francisco Chilpan	Fraccionamiento	Tultitlán	México
54944	Santa Clara	Colonia	Tultitlán	México
54944	Buenavista Parte Baja	Colonia	Tultitlán	México
54944	El Golfo	Condominio	Tultitlán	México
54944	Arbolada la Loma	Condominio	Tultitlán	México
54944	La Loma II	Condominio	Tultitlán	México
54944	La Loma III	Condominio	Tultitlán	México
54944	Plaza Arbolada la Loma	Condominio	Tultitlán	México
54944	Ampliación El Fresno	Colonia	Tultitlán	México
54944	Conjunto Urbano La Loma	Condominio	Tultitlán	México
54944	Villas de San Francisco II	Condominio	Tultitlán	México
54944	Ejido Buenavista	Colonia	Tultitlán	México
54945	Izcalli del Valle	Fraccionamiento	Tultitlán	México
54945	Valle de Tules	Colonia	Tultitlán	México
54945	Nueva Tultitlán	Colonia	Tultitlán	México
54945	Valle Verde	Colonia	Tultitlán	México
54945	Estado de México	Zona industrial	Tultitlán	México
54946	Ferrocarrilera	Colonia	Tultitlán	México
54946	Mariano Escobedo	Colonia	Tultitlán	México
54947	Ejido de San Antonio Tultitlán	Colonia	Tultitlán	México
54948	Bello Horizonte	Colonia	Tultitlán	México
54948	San Mateo Cuautepec	Pueblo	Tultitlán	México
54948	Solidaridad 1ra. Sección	Colonia	Tultitlán	México
54948	Real del Bosque	Condominio	Tultitlán	México
54948	Solidaridad 3ra. Sección	Colonia	Tultitlán	México
54948	Solidaridad 2da. Sección	Colonia	Tultitlán	México
54949	Las Terrazas	Fraccionamiento	Tultitlán	México
54949	Conjunto Brillante	Condominio	Tultitlán	México
54949	Santa María Cuautepec	Pueblo	Tultitlán	México
54949	Mayorazgo de Tultitlán	Condominio	Tultitlán	México
54949	Ejido Santa María Cuautepec	Colonia	Tultitlán	México
54949	Los Sauces	Condominio	Tultitlán	México
54950	La Sardaña	Colonia	Tultitlán	México
54954	Rinconada San Marcos	Colonia	Tultitlán	México
54954	Ampliación San Marcos	Colonia	Tultitlán	México
54955	Ampliación Buenavista	Colonia	Tultitlán	México
54955	Ampliación Buenavista 2da. Sección	Colonia	Tultitlán	México
54955	Ampliación Buenavista 1ra. Sección	Colonia	Tultitlán	México
54957	El Tesoro	Colonia	Tultitlán	México
54957	Ampliación El Tesoro	Colonia	Tultitlán	México
54957	Sierra de Guadalupe	Colonia	Tultitlán	México
54958	Jardines de la Cañada	Fraccionamiento	Tultitlán	México
54958	Lomas de Cartagena	Fraccionamiento	Tultitlán	México
54958	Lomas del Parque I	Fraccionamiento	Tultitlán	México
54958	Ampliación La Sardaña	Colonia	Tultitlán	México
54958	Los Tulipanes	Condominio	Tultitlán	México
54958	Lomas del Parque III	Fraccionamiento	Tultitlán	México
54958	Lomas del Parque II	Fraccionamiento	Tultitlán	México
54958	FIMESA II (Ampliación la Sardaña)	Colonia	Tultitlán	México
54959	El Paraje	Colonia	Tultitlán	México
54959	Corredor López Portillo	Zona industrial	Tultitlán	México
54959	FIMESA I (El Paraje)	Colonia	Tultitlán	México
54960	San Juan Xocotla	Barrio	Tultepec	México
54960	Tultepec Centro	Colonia	Tultepec	México
54960	San Rafael Ixtlahuaca	Barrio	Tultepec	México
54960	El Carmen	Barrio	Tultepec	México
54962	Xacopinca	Colonia	Tultepec	México
54962	Tlamelaca	Colonia	Tultepec	México
54962	San Pablo Otlica	Colonia	Tultepec	México
54962	Paraje Trigo Tenco	Colonia	Tultepec	México
54963	San Joaquín	Rancho	Tultepec	México
54963	San Martín El Calvario	Barrio	Tultepec	México
54963	San Antonio el Cuadro	Barrio	Tultepec	México
54963	Ejido del Quemado	Colonia	Tultepec	México
54963	Antigua	Colonia	Tultepec	México
54963	El Cuquío	Rancho	Tultepec	México
54963	Nodín	Rancho	Tultepec	México
54964	Santa Isabel Nepantla	Barrio	Tultepec	México
54964	San Miguel Otlica	Colonia	Tultepec	México
54964	La Cantera	Colonia	Tultepec	México
54964	Oxtoc	Colonia	Tultepec	México
54965	México	Colonia	Tultepec	México
54965	Jardines de Santa Cruz	Colonia	Tultepec	México
54965	La Morita	Colonia	Tultepec	México
54965	La Piedad	Barrio	Tultepec	México
54965	Tepetlixco	Colonia	Tultepec	México
54965	Santa Rita	Colonia	Tultepec	México
54965	Emiquía	Colonia	Tultepec	México
54965	La Cañada	Colonia	Tultepec	México
54965	Ampliación La Piedad	Colonia	Tultepec	México
54966	Guadalupe Tlazintla	Barrio	Tultepec	México
54967	El Mirador	Colonia	Tultepec	México
54967	La Palma	Colonia	Tultepec	México
54970	Vicente Suárez	Colonia	Tultepec	México
54970	Las Brisas	Colonia	Tultepec	México
54970	Lomas de Tultepec	Colonia	Tultepec	México
54970	San Marcos	Colonia	Tultepec	México
54970	Fresnos	Colonia	Tultepec	México
54972	La Aurora	Colonia	Tultepec	México
54972	El Progreso (Villa Esmeralda)	Colonia	Tultepec	México
54972	La Joya	Colonia	Tultepec	México
54972	Cajiga (Ejido de Tultepec)	Ejido	Tultepec	México
54974	Adoberas	Colonia	Tultepec	México
54974	La Rinconada	Colonia	Tultepec	México
54975	Amado Nervo	Colonia	Tultepec	México
54976	San Antonio Xahuento	Colonia	Tultepec	México
54977	La Saucera	Zona industrial	Tultepec	México
54980	La Manzana	Barrio	Tultepec	México
54980	Santiago Teyahualco	Pueblo	Tultepec	México
54980	Hacienda del Jardín	Fraccionamiento	Tultepec	México
54980	Villas de Loreto	Colonia	Tultepec	México
54983	San Pablito (Paraje San Pablito)	Ejido	Tultepec	México
54984	Paseos de Tultepec I	Fraccionamiento	Tultepec	México
54984	Paseos de Tultepec II	Fraccionamiento	Tultepec	México
54984	El Bosque Tultepec	Colonia	Tultepec	México
54984	El Tecompa	Ranchería	Tultepec	México
54984	La Mitra	Unidad habitacional	Tultepec	México
54984	El Dorado	Fraccionamiento	Tultepec	México
54985	INFONAVIT C.T.M. San Pablo Tultepec	Unidad habitacional	Tultepec	México
54986	Diez de Junio	Colonia	Tultepec	México
54987	Hacienda Real de Tultepec	Fraccionamiento	Tultepec	México
54987	Arcos Tultepec	Colonia	Tultepec	México
54990	Teyahualco	Ejido	Tultepec	México
55000	San Cristóbal Centro	Colonia	Ecatepec de Morelos	México
55000	Ecatepec Centro	Unidad habitacional	Ecatepec de Morelos	México
55000	La Cruz de San Cristóbal	Barrio	Ecatepec de Morelos	México
55010	Bonito Arboledas	Fraccionamiento	Ecatepec de Morelos	México
55010	Privada de Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55010	Los Lirios	Fraccionamiento	Ecatepec de Morelos	México
55010	Camino Nacional	Fraccionamiento	Ecatepec de Morelos	México
55010	Laureles Residencial	Fraccionamiento	Ecatepec de Morelos	México
55010	Guadalupe Victoria	Pueblo	Ecatepec de Morelos	México
55010	Ampliación Guadalupe Victoria	Colonia	Ecatepec de Morelos	México
55010	Villa Esmeralda	Conjunto habitacional	Ecatepec de Morelos	México
55010	Pozo de la Pila	Unidad habitacional	Ecatepec de Morelos	México
55010	El Progreso de Guadalupe Victoria	Colonia	Ecatepec de Morelos	México
55010	Rancho Victoria II	Unidad habitacional	Ecatepec de Morelos	México
55010	Barrio Nuevo Tultitlán	Fraccionamiento	Ecatepec de Morelos	México
55010	Rancho Victoria	Conjunto habitacional	Ecatepec de Morelos	México
55010	El Obraje (Diamante)	Colonia	Ecatepec de Morelos	México
55010	Mathzi II	Colonia	Ecatepec de Morelos	México
55010	Mathzi I	Colonia	Ecatepec de Morelos	México
55010	El Diamante	Colonia	Ecatepec de Morelos	México
55010	Las Piedras	Colonia	Ecatepec de Morelos	México
55010	El Manchon	Colonia	Ecatepec de Morelos	México
55010	Bonito las Flores	Conjunto habitacional	Ecatepec de Morelos	México
55010	Mathzi III	Colonia	Ecatepec de Morelos	México
55014	Parque Residencial Coacalco	Fraccionamiento	Ecatepec de Morelos	México
55016	La Joya	Colonia	Ecatepec de Morelos	México
55016	Tío Marin	Unidad habitacional	Ecatepec de Morelos	México
55016	Guadalupe Victoria	Unidad habitacional	Ecatepec de Morelos	México
55016	Tía Joaquina	Unidad habitacional	Ecatepec de Morelos	México
55016	Villas de la Joya	Unidad habitacional	Ecatepec de Morelos	México
55016	Torres de Altavista	Unidad habitacional	Ecatepec de Morelos	México
55016	Mesa de los Leones	Colonia	Ecatepec de Morelos	México
55017	El Tejocote	Colonia	Ecatepec de Morelos	México
55018	El Capulín	Fraccionamiento	Ecatepec de Morelos	México
55018	FOVISSSTE (José María Morelos y Pavón)	Unidad habitacional	Ecatepec de Morelos	México
55018	Granja el Rosal	Fraccionamiento	Ecatepec de Morelos	México
55018	Ecatepec 2000	Unidad habitacional	Ecatepec de Morelos	México
55018	San Carlos	Unidad habitacional	Ecatepec de Morelos	México
55020	La Monera	Colonia	Ecatepec de Morelos	México
55020	Misión de los 40	Unidad habitacional	Ecatepec de Morelos	México
55020	Panitzin	Colonia	Ecatepec de Morelos	México
55020	Sergio Méndez Arceo	Unidad habitacional	Ecatepec de Morelos	México
55020	Boulevares de San Cristóbal	Fraccionamiento	Ecatepec de Morelos	México
55020	El Calvario	Barrio	Ecatepec de Morelos	México
55020	Boulevares la Nacional	Fraccionamiento	Ecatepec de Morelos	México
55020	Tierra Blanca	Colonia	Ecatepec de Morelos	México
55020	Ex-Hacienda Jauregui	Colonia	Ecatepec de Morelos	México
55020	La Monera	Unidad habitacional	Ecatepec de Morelos	México
55020	Magisterial 2000	Unidad habitacional	Ecatepec de Morelos	México
55020	10 de Abril	Colonia	Ecatepec de Morelos	México
55020	Bosques de San Javier	Conjunto habitacional	Ecatepec de Morelos	México
55020	El Terremote	Fraccionamiento	Ecatepec de Morelos	México
55020	Martell	Fraccionamiento	Ecatepec de Morelos	México
55020	Bursaab	Fraccionamiento	Ecatepec de Morelos	México
55020	Plazas Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55020	Residencial San Cristóbal	Fraccionamiento	Ecatepec de Morelos	México
55020	Tierra Blanca Segunda Sección (Ejido Ecatepec)	Colonia	Ecatepec de Morelos	México
55023	Los Héroes Ecatepec Sección I	Fraccionamiento	Ecatepec de Morelos	México
55023	Los Héroes Ecatepec Sección III	Fraccionamiento	Ecatepec de Morelos	México
55023	Los Héroes Ecatepec Sección II	Fraccionamiento	Ecatepec de Morelos	México
55023	Los Héroes Ecatepec Sección IV	Fraccionamiento	Ecatepec de Morelos	México
55024	Ejidos de San Cristóbal	Colonia	Ecatepec de Morelos	México
55024	El Carmen	Colonia	Ecatepec de Morelos	México
55024	Ejidal Emiliano Zapata	Colonia	Ecatepec de Morelos	México
55025	San Benjamin	Fraccionamiento	Ecatepec de Morelos	México
55025	Santa Águeda	Fraccionamiento	Ecatepec de Morelos	México
55025	Los Sauces	Colonia	Ecatepec de Morelos	México
55025	Galaxia Ecatepec	Unidad habitacional	Ecatepec de Morelos	México
55025	Ampliación el Carmen	Colonia	Ecatepec de Morelos	México
55027	El Árbol	Colonia	Ecatepec de Morelos	México
55027	La Huerta	Colonia	Ecatepec de Morelos	México
55028	Vista Hermosa	Colonia	Ecatepec de Morelos	México
55029	Granjas Ecatepec 1a Sección	Colonia	Ecatepec de Morelos	México
55029	Granjas Ecatepec 2a Sección	Colonia	Ecatepec de Morelos	México
55029	Ehécatl (Paseos de Ecatepec)	Unidad habitacional	Ecatepec de Morelos	México
55029	Ejidos de San Andrés	Colonia	Ecatepec de Morelos	México
55029	San Francisco de Asís	Colonia	Ecatepec de Morelos	México
55029	Laguna del Rey	Colonia	Ecatepec de Morelos	México
55029	Luis Donaldo Colosio	Colonia	Ecatepec de Morelos	México
55029	Potrero de Rey	Colonia	Ecatepec de Morelos	México
55029	Abel Martínez Montañez	Fraccionamiento	Ecatepec de Morelos	México
55029	Playa Golondrinas	Colonia	Ecatepec de Morelos	México
55029	Golondrinas	Colonia	Ecatepec de Morelos	México
55029	Independencia	Colonia	Ecatepec de Morelos	México
55030	Colinas de Ecatepec	Conjunto habitacional	Ecatepec de Morelos	México
55030	Chula Vista	Colonia	Ecatepec de Morelos	México
55030	Doce de Diciembre	Barrio	Ecatepec de Morelos	México
55030	Tata Félix	Colonia	Ecatepec de Morelos	México
55030	Hogares Marla	Fraccionamiento	Ecatepec de Morelos	México
55030	Izcalli Ecatepec	Unidad habitacional	Ecatepec de Morelos	México
55030	Ampliación Izcalli Ecatepec Tata Félix	Fraccionamiento	Ecatepec de Morelos	México
55030	La Curiela	Barrio	Ecatepec de Morelos	México
55030	La Mora	Barrio	Ecatepec de Morelos	México
55036	La Panorámica	Colonia	Ecatepec de Morelos	México
55037	El Capulín	Barrio	Ecatepec de Morelos	México
55038	Floresta	Fraccionamiento	Ecatepec de Morelos	México
55039	La Palma II	Fraccionamiento	Ecatepec de Morelos	México
55039	La Palma I	Fraccionamiento	Ecatepec de Morelos	México
55040	Álamos de San Cristóbal	Fraccionamiento	Ecatepec de Morelos	México
55040	Boulevares Impala	Fraccionamiento	Ecatepec de Morelos	México
55040	Casas Coloniales Morelos	Fraccionamiento	Ecatepec de Morelos	México
55040	Fuentes de San Cristóbal	Fraccionamiento	Ecatepec de Morelos	México
55040	Hogares Mexicanos	Unidad habitacional	Ecatepec de Morelos	México
55040	Jardines de Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55040	La Propiedad	Fraccionamiento	Ecatepec de Morelos	México
55040	Renovación Jajalpa	Fraccionamiento	Ecatepec de Morelos	México
55040	San Juan Alcahuacan	Barrio	Ecatepec de Morelos	México
55050	El Salado	Colonia	Ecatepec de Morelos	México
55050	La Pradera	Fraccionamiento	Ecatepec de Morelos	México
55050	Vivienda del Taxista	Colonia	Ecatepec de Morelos	México
55050	Adolfo Ruiz Cortines	Colonia	Ecatepec de Morelos	México
55050	Aquiles Serdán	Colonia	Ecatepec de Morelos	México
55050	Bosques de Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55050	Residencial Fuentes de Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55050	Gustavo Baz Prada	Colonia	Ecatepec de Morelos	México
55050	Izcalli Jardines	Unidad habitacional	Ecatepec de Morelos	México
55050	Nuevo Diaz Ordaz	Colonia	Ecatepec de Morelos	México
55050	San Martín de Porres	Colonia	Ecatepec de Morelos	México
55050	Rinconada San Martín	Unidad habitacional	Ecatepec de Morelos	México
55050	Hacienda Santa María	Fraccionamiento	Ecatepec de Morelos	México
55050	Ex Rancho Jajalpa	Colonia	Ecatepec de Morelos	México
55050	Rancho Jajalpa	Colonia	Ecatepec de Morelos	México
55050	Pirules de Villancico 2a Sección	Unidad habitacional	Ecatepec de Morelos	México
55055	La Veleta	Unidad habitacional	Ecatepec de Morelos	México
55055	Jardines de los Báez 1a Sección	Fraccionamiento	Ecatepec de Morelos	México
55055	Jardines de los Báez 2a Sección	Fraccionamiento	Ecatepec de Morelos	México
55055	Jardines de los Báez 3a Sección	Fraccionamiento	Ecatepec de Morelos	México
55055	Llano de los Báez	Unidad habitacional	Ecatepec de Morelos	México
55055	Llano de los Báez	Colonia	Ecatepec de Morelos	México
55055	Ampliación Llano de los Báez Sección Izcalli	Colonia	Ecatepec de Morelos	México
55055	Jubilados y Pensionados	Colonia	Ecatepec de Morelos	México
55055	El Sol de Ecatepec	Colonia	Ecatepec de Morelos	México
55056	Villas de Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55059	Pirules de Villancico 1a Sección	Unidad habitacional	Ecatepec de Morelos	México
55060	Venta de Carpio	Fraccionamiento	Ecatepec de Morelos	México
55060	La Guadalupana	Fraccionamiento	Ecatepec de Morelos	México
55060	Los Héroes Ecatepec Sección V	Fraccionamiento	Ecatepec de Morelos	México
55060	Privadas de Ecatepec	Unidad habitacional	Ecatepec de Morelos	México
55063	Ciudad Cuauhtémoc Sección Chiconautla 3000	Colonia	Ecatepec de Morelos	México
55064	Ciudad Cuauhtémoc Sección Nopalera I y II	Colonia	Ecatepec de Morelos	México
55064	San Isidro Atlautenco	Pueblo	Ecatepec de Morelos	México
55064	Ampliación San Isidro Atlautenco	Colonia	Ecatepec de Morelos	México
55064	San Isidro Atlautenco	Fraccionamiento	Ecatepec de Morelos	México
55064	Vistas de Ecatepec (Sección B)	Fraccionamiento	Ecatepec de Morelos	México
55064	La Venta (La Guadalupana)	Fraccionamiento	Ecatepec de Morelos	México
55064	Vistas de Ecatepec (Sección A)	Fraccionamiento	Ecatepec de Morelos	México
55064	Joyas de Atlautenco	Unidad habitacional	Ecatepec de Morelos	México
55065	Santa Cruz Venta de Carpio	Barrio	Ecatepec de Morelos	México
55066	El Potrero	Fraccionamiento	Ecatepec de Morelos	México
55066	Terremote	Barrio	Ecatepec de Morelos	México
55066	Pirules de Bayisco	Colonia	Ecatepec de Morelos	México
55066	Casas Reales	Colonia	Ecatepec de Morelos	México
55066	Las Brisas	Colonia	Ecatepec de Morelos	México
55066	Santa María Chiconautla	Pueblo	Ecatepec de Morelos	México
55066	Santo Tomás Chiconautla	Pueblo	Ecatepec de Morelos	México
55066	Zopilocalco	Colonia	Ecatepec de Morelos	México
55066	Bosques de Santo Tomás	Fraccionamiento	Ecatepec de Morelos	México
55066	Portal Chiconautla	Unidad habitacional	Ecatepec de Morelos	México
55066	Campo Santo	Colonia	Ecatepec de Morelos	México
55066	Los Ídolos	Fraccionamiento	Ecatepec de Morelos	México
55066	Jaime Salvador	Colonia	Ecatepec de Morelos	México
55066	La Cerca	Colonia	Ecatepec de Morelos	México
55066	La Preciosa	Colonia	Ecatepec de Morelos	México
55066	México Nuevo	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Geo 2000	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Tepoztlaco	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Cuitlahuac	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Embajada	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Moctezuma	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Quetzalcoatl	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Tizoc	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Tonatiuh	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Xochiquetzal	Colonia	Ecatepec de Morelos	México
55067	Los Llanetes	Fraccionamiento	Ecatepec de Morelos	México
55067	Coyometla	Colonia	Ecatepec de Morelos	México
55067	Niños Héroes	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Tlaloc	Colonia	Ecatepec de Morelos	México
55067	La Fortaleza	Unidad habitacional	Ecatepec de Morelos	México
55067	Moneda de 100 Pesos	Fraccionamiento	Ecatepec de Morelos	México
55067	Tepetzingo el Chico	Colonia	Ecatepec de Morelos	México
55067	Ciudad Cuauhtémoc Sección Tepetzingo	Colonia	Ecatepec de Morelos	México
55067	C.T.M. Guadalupana	Fraccionamiento	Ecatepec de Morelos	México
55067	Tepopotla	Colonia	Ecatepec de Morelos	México
55067	El Hoyo del Tepetate	Colonia	Ecatepec de Morelos	México
55068	Santo Tomás Chiconautla	Ejido	Ecatepec de Morelos	México
55068	El Hoyo	Fraccionamiento	Ecatepec de Morelos	México
55068	Ignacio Pichardo Pagaza	Colonia	Ecatepec de Morelos	México
55068	El Mirador	Fraccionamiento	Ecatepec de Morelos	México
55069	La Preciosa	Colonia	Ecatepec de Morelos	México
55069	Los Pajaritos	Colonia	Ecatepec de Morelos	México
55069	La Garita	Colonia	Ecatepec de Morelos	México
55069	La Cerca	Colonia	Ecatepec de Morelos	México
55070	Carlos Salinas de Gortari	Colonia	Ecatepec de Morelos	México
55070	Colonial Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55070	19 de Septiembre	Colonia	Ecatepec de Morelos	México
55070	Ampliación 19 de Septiembre	Colonia	Ecatepec de Morelos	México
55070	Plan de Arroyo	Colonia	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Cerros	Fraccionamiento	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Elementos	Fraccionamiento	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Flores	Fraccionamiento	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Fuentes	Fraccionamiento	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Islas	Fraccionamiento	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Bosques	Fraccionamiento	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Lagos	Fraccionamiento	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Montes	Fraccionamiento	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Playas	Fraccionamiento	Ecatepec de Morelos	México
55070	Jardines de Morelos Sección Ríos	Fraccionamiento	Ecatepec de Morelos	México
55070	Llanos de Morelos I	Colonia	Ecatepec de Morelos	México
55070	Villas del Sol	Fraccionamiento	Ecatepec de Morelos	México
55070	Llanos de Morelos II	Colonia	Ecatepec de Morelos	México
55070	Sol II	Colonia	Ecatepec de Morelos	México
55070	Julia Marin	Fraccionamiento	Ecatepec de Morelos	México
55070	Profopec (Polígonos VII)	Fraccionamiento	Ecatepec de Morelos	México
55074	La Purísima	Colonia	Ecatepec de Morelos	México
55074	Mexicanos Unidos I	Colonia	Ecatepec de Morelos	México
55074	Playas de San Juan	Colonia	Ecatepec de Morelos	México
55074	Uprovi	Colonia	Ecatepec de Morelos	México
55074	Viento Nuevo	Colonia	Ecatepec de Morelos	México
55074	Los Alcatraces	Fraccionamiento	Ecatepec de Morelos	México
55074	Los Pinos	Colonia	Ecatepec de Morelos	México
55074	Ampliación 19 de Septiembre 1A Sección	Colonia	Ecatepec de Morelos	México
55074	Los Cordeles	Colonia	Ecatepec de Morelos	México
55074	Mexicanos Unidos II	Colonia	Ecatepec de Morelos	México
55074	Ejido de Atlautenco	Colonia	Ecatepec de Morelos	México
55075	Jardines de Morelos 5a Sección	Fraccionamiento	Ecatepec de Morelos	México
55076	Las Américas	Colonia	Ecatepec de Morelos	México
55080	Arboledas de San Carlos	Unidad habitacional	Ecatepec de Morelos	México
55080	Xochicuac I	Colonia	Ecatepec de Morelos	México
55080	El Bosque	Fraccionamiento	Ecatepec de Morelos	México
55080	Francisco Villa	Colonia	Ecatepec de Morelos	México
55080	Jesús Sánchez	Conjunto habitacional	Ecatepec de Morelos	México
55080	Nuevo Laredo	Fraccionamiento	Ecatepec de Morelos	México
55080	Xochicuac II	Colonia	Ecatepec de Morelos	México
55080	Lomas de Ecatepec	Unidad habitacional	Ecatepec de Morelos	México
55080	Lomas de Atzolco	Colonia	Ecatepec de Morelos	México
55080	San Carlos	Colonia	Ecatepec de Morelos	México
55084	El Ranchito	Colonia	Ecatepec de Morelos	México
55085	Viveros Tulpetlac	Colonia	Ecatepec de Morelos	México
55087	Lomas de San Carlos Zona Comunal	Colonia	Ecatepec de Morelos	México
55090	El Potrero	Fraccionamiento	Ecatepec de Morelos	México
55090	El Arbolito Jajalpa	Colonia	Ecatepec de Morelos	México
55090	El Jaguey	Fraccionamiento	Ecatepec de Morelos	México
55090	San José Jajalpa	Colonia	Ecatepec de Morelos	México
55090	Jajalpa	Unidad habitacional	Ecatepec de Morelos	México
55090	Las Palmas Ecatepec	Colonia	Ecatepec de Morelos	México
55090	Los Laureles	Fraccionamiento	Ecatepec de Morelos	México
55090	Obrera Jajalpa	Colonia	Ecatepec de Morelos	México
55090	Jajalpa Olímpica	Fraccionamiento	Ecatepec de Morelos	México
55090	Río Piedras	Fraccionamiento	Ecatepec de Morelos	México
55090	Bonito Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55090	El Pocito	Colonia	Ecatepec de Morelos	México
55090	Ecatepec 40 Casas	Unidad habitacional	Ecatepec de Morelos	México
55094	Villas Jajalpa	Fraccionamiento	Ecatepec de Morelos	México
55095	Jajalpa	Zona industrial	Ecatepec de Morelos	México
55100	Jardines de Cerro Gordo	Fraccionamiento	Ecatepec de Morelos	México
55100	Los Reyes Ecatepec	Colonia	Ecatepec de Morelos	México
55100	Río de Luz	Fraccionamiento	Ecatepec de Morelos	México
55100	Industrias Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55100	Tulpetlac	Conjunto habitacional	Ecatepec de Morelos	México
55100	Francisco I. Madero	Colonia	Ecatepec de Morelos	México
55100	Villas 1o de Agosto	Fraccionamiento	Ecatepec de Morelos	México
55100	Pro Revolución	Fraccionamiento	Ecatepec de Morelos	México
55100	Viviendas Venta de Carpio	Colonia	Ecatepec de Morelos	México
55100	Primero de Mayo	Fraccionamiento	Ecatepec de Morelos	México
55100	Patrimonio Social	Colonia	Ecatepec de Morelos	México
55100	Villa 1o de Mayo	Unidad habitacional	Ecatepec de Morelos	México
55104	Granjas Populares Guadalupe Tulpetlac	Colonia	Ecatepec de Morelos	México
55105	El Paraíso	Colonia	Ecatepec de Morelos	México
55105	Ignacio L. Vallarta	Colonia	Ecatepec de Morelos	México
55107	Industrias Tulpetlac	Fraccionamiento	Ecatepec de Morelos	México
55114	Tolotzin I	Colonia	Ecatepec de Morelos	México
55115	José María Morelos y Pavón Sagitario X	Colonia	Ecatepec de Morelos	México
55117	Josefa Ortiz de Domínguez Sagitario VII	Colonia	Ecatepec de Morelos	México
55118	Alfredo del Mazo	Colonia	Ecatepec de Morelos	México
55118	Progreso de la Unión	Colonia	Ecatepec de Morelos	México
55118	Joyas de Ecatepec	Colonia	Ecatepec de Morelos	México
55118	Colonos de México (Alfredo Torres Martínez)	Colonia	Ecatepec de Morelos	México
55118	Juan de la Barrera	Colonia	Ecatepec de Morelos	México
55118	Ampliación Joyas de Ecatepec	Colonia	Ecatepec de Morelos	México
55118	Sosa Ecatepec	Unidad habitacional	Ecatepec de Morelos	México
55118	Cuchilla de la Draga	Colonia	Ecatepec de Morelos	México
55119	El Dique	Colonia	Ecatepec de Morelos	México
55119	Potrero Chico	Colonia	Ecatepec de Morelos	México
55119	Valle de Ecatepec Estado de México CTM XIII	Fraccionamiento	Ecatepec de Morelos	México
55120	Ciudad Azteca Sección Poniente	Fraccionamiento	Ecatepec de Morelos	México
55120	Ciudad Azteca Sección Oriente	Fraccionamiento	Ecatepec de Morelos	México
55125	Aldeas de Aragón I	Unidad habitacional	Ecatepec de Morelos	México
55125	Aldeas de Aragón II	Unidad habitacional	Ecatepec de Morelos	México
55126	Profopec (Polígono I)	Fraccionamiento	Ecatepec de Morelos	México
55127	Profopec IV (Polígono IV El Cegor)	Fraccionamiento	Ecatepec de Morelos	México
55128	José Antonio Torres	Colonia	Ecatepec de Morelos	México
55129	La Florida (Ciudad Azteca)	Fraccionamiento	Ecatepec de Morelos	México
55129	Josefa Ortiz de Domínguez	Colonia	Ecatepec de Morelos	México
55130	Nuevo Paseo de San Agustín	Fraccionamiento	Ecatepec de Morelos	México
55130	Nuevo Paseo de San Agustín 2a Secc	Fraccionamiento	Ecatepec de Morelos	México
55130	Nuevo Paseo de San Agustín 3a Sección	Fraccionamiento	Ecatepec de Morelos	México
55130	Olímpica 68 I	Colonia	Ecatepec de Morelos	México
55130	Plaza de Santa Clara	Fraccionamiento	Ecatepec de Morelos	México
55130	Vicente Coss Ramírez	Colonia	Ecatepec de Morelos	México
55130	Ciudad y Puerto	Unidad habitacional	Ecatepec de Morelos	México
55130	Nuevo Paseo San Agustín 3a B	Fraccionamiento	Ecatepec de Morelos	México
55135	Laderas del Peñón	Unidad habitacional	Ecatepec de Morelos	México
55137	INDECO Santa Clara (Campiñas de Aragón)	Unidad habitacional	Ecatepec de Morelos	México
55138	Valle de Santiago	Fraccionamiento	Ecatepec de Morelos	México
55139	Campiñas de Aragón	Colonia	Ecatepec de Morelos	México
55140	Jardines de Aragón	Fraccionamiento	Ecatepec de Morelos	México
55140	Rinconada de Aragón	Fraccionamiento	Ecatepec de Morelos	México
55146	Tolotzin II	Colonia	Ecatepec de Morelos	México
55147	Los Álamos	Fraccionamiento	Ecatepec de Morelos	México
55148	Villas de Aragón	Colonia	Ecatepec de Morelos	México
55148	Alborada de Aragón	Unidad habitacional	Ecatepec de Morelos	México
55149	Ignacio Allende	Colonia	Ecatepec de Morelos	México
55158	Profopec (Polígono II)	Fraccionamiento	Ecatepec de Morelos	México
55170	Central Michoacana	Colonia	Ecatepec de Morelos	México
55170	16 de Septiembre	Colonia	Ecatepec de Morelos	México
55170	Sagitario IV	Colonia	Ecatepec de Morelos	México
55176	Profopec (Polígono V)	Fraccionamiento	Ecatepec de Morelos	México
55180	México Colonial II	Colonia	Ecatepec de Morelos	México
55187	Profopec (Polígono III)	Fraccionamiento	Ecatepec de Morelos	México
55188	México Colonial I	Colonia	Ecatepec de Morelos	México
55189	Novela Mexicana I	Colonia	Ecatepec de Morelos	México
55190	Lázaro Cárdenas V Zona	Colonia	Ecatepec de Morelos	México
55200	División del Norte	Colonia	Ecatepec de Morelos	México
55200	Emiliano Zapata 1a Sección	Colonia	Ecatepec de Morelos	México
55200	Gustavo Díaz Ordaz	Colonia	Ecatepec de Morelos	México
55200	Granjas Valle de Guadalupe Sección B	Colonia	Ecatepec de Morelos	México
55210	La Estrella	Colonia	Ecatepec de Morelos	México
55210	La Popular	Colonia	Ecatepec de Morelos	México
55210	Valle de Anáhuac Sección A	Fraccionamiento	Ecatepec de Morelos	México
55218	Cuchilla A. Rosales	Colonia	Ecatepec de Morelos	México
55220	Jardines de San Gabriel	Fraccionamiento	Ecatepec de Morelos	México
55220	Jardines del Tepeyac	Colonia	Ecatepec de Morelos	México
55220	Vicente Guerrero	Colonia	Ecatepec de Morelos	México
55220	Emiliano Zapata 1a Sección A	Colonia	Ecatepec de Morelos	México
55230	La Media Luna	Colonia	Ecatepec de Morelos	México
55234	La Glorieta	Colonia	Ecatepec de Morelos	México
55235	Unidad Obrero CTM XIV	Unidad habitacional	Ecatepec de Morelos	México
55236	Códice Mendocino II	Colonia	Ecatepec de Morelos	México
55236	Códice Mendocino I	Colonia	Ecatepec de Morelos	México
55236	Sagitario V	Colonia	Ecatepec de Morelos	México
55236	Ampliación Códice Mendocino	Colonia	Ecatepec de Morelos	México
55237	Estrella de Oriente	Fraccionamiento	Ecatepec de Morelos	México
55238	Ejercito del Trabajo II	Colonia	Ecatepec de Morelos	México
55238	Izcalli Santa Clara	Fraccionamiento	Ecatepec de Morelos	México
55238	Sagitario I	Colonia	Ecatepec de Morelos	México
55238	Felipe Ángeles (Antes Sagitario II)	Colonia	Ecatepec de Morelos	México
55238	Sagitario III	Colonia	Ecatepec de Morelos	México
55240	Alborada	Unidad habitacional	Ecatepec de Morelos	México
55240	La Florida	Colonia	Ecatepec de Morelos	México
55240	Melchor Muzquiz	Colonia	Ecatepec de Morelos	México
55242	Villas Cosmos	Colonia	Ecatepec de Morelos	México
55243	Haciendas de Aragón	Fraccionamiento	Ecatepec de Morelos	México
55244	Parques de Aragón	Colonia	Ecatepec de Morelos	México
55244	Paseos de Aragón	Colonia	Ecatepec de Morelos	México
55244	Castillos de Aragón	Colonia	Ecatepec de Morelos	México
55245	México Independiente	Colonia	Ecatepec de Morelos	México
55246	Petroquímica Ecatepec	Fraccionamiento	Ecatepec de Morelos	México
55247	Ciudad Oriente	Colonia	Ecatepec de Morelos	México
55247	CROC Aragón	Unidad habitacional	Ecatepec de Morelos	México
55248	Fuentes de Aragón	Fraccionamiento	Ecatepec de Morelos	México
55249	Ecatepec Federación (Mártires de Río Blanco)	Unidad habitacional	Ecatepec de Morelos	México
55249	Poesía Mexicana	Colonia	Ecatepec de Morelos	México
55260	Nueva Aragón	Colonia	Ecatepec de Morelos	México
55264	Prizo I	Unidad habitacional	Ecatepec de Morelos	México
55264	Prizo II	Unidad habitacional	Ecatepec de Morelos	México
55264	Fernando de Alba Nezahualpilli	Colonia	Ecatepec de Morelos	México
55264	Prizo III	Unidad habitacional	Ecatepec de Morelos	México
55266	México Insurgente	Colonia	Ecatepec de Morelos	México
55266	México Revolucionario	Colonia	Ecatepec de Morelos	México
55267	Ciudad Amanecer	Colonia	Ecatepec de Morelos	México
55267	Quinto Sol	Colonia	Ecatepec de Morelos	México
55267	Sauces V	Fraccionamiento	Ecatepec de Morelos	México
55267	Sauces II	Fraccionamiento	Ecatepec de Morelos	México
55268	Sauces VI	Unidad habitacional	Ecatepec de Morelos	México
55268	Sauces Coalición	Fraccionamiento	Ecatepec de Morelos	México
55268	Novela Mexicana II	Colonia	Ecatepec de Morelos	México
55269	Sauces I	Fraccionamiento	Ecatepec de Morelos	México
55269	México Prehispánico I	Colonia	Ecatepec de Morelos	México
55269	México Prehispánico II	Colonia	Ecatepec de Morelos	México
55269	Sauces P.R.I.	Fraccionamiento	Ecatepec de Morelos	México
55270	Emiliano Zapata 2a Secc	Colonia	Ecatepec de Morelos	México
55270	El Chamizal	Colonia	Ecatepec de Morelos	México
55270	Granjas Valle de Guadalupe Sección A	Colonia	Ecatepec de Morelos	México
55270	Granjas Valle de Guadalupe Sección C	Colonia	Ecatepec de Morelos	México
55280	Renacimiento de Aragón	Colonia	Ecatepec de Morelos	México
55280	Valle de Aragón 3ra Sección Oriente	Fraccionamiento	Ecatepec de Morelos	México
55280	Ampliación Valle de Aragón Sección A	Colonia	Ecatepec de Morelos	México
55280	Valle de Aragón 3ra Sección Poniente	Fraccionamiento	Ecatepec de Morelos	México
55280	Nuevo Valle de Aragón	Colonia	Ecatepec de Morelos	México
55284	Renacimiento Chico	Colonia	Ecatepec de Morelos	México
55287	Fernando Alba Ixtlaxóchitl	Colonia	Ecatepec de Morelos	México
55288	Nezahualpilli	Colonia	Ecatepec de Morelos	México
55289	Bugambilias de Aragón	Conjunto habitacional	Ecatepec de Morelos	México
55290	Arboledas de Aragón	Fraccionamiento	Ecatepec de Morelos	México
55290	Granjas Independencia	Colonia	Ecatepec de Morelos	México
55290	Granjas Independencia Sección A	Colonia	Ecatepec de Morelos	México
55290	Granjas Independencia Sección B	Colonia	Ecatepec de Morelos	México
55290	Granjas Independencia Sección C	Colonia	Ecatepec de Morelos	México
55290	Solidaridad 90 (Mártires de Río Blanco)	Colonia	Ecatepec de Morelos	México
55294	Av. Central CROC	Unidad habitacional	Ecatepec de Morelos	México
55295	Lic. Pedro Ojeda Paullada	Unidad habitacional	Ecatepec de Morelos	México
55295	Ampliación Pedro Ojeda Paullada	Colonia	Ecatepec de Morelos	México
55295	Ampliación Nicolás Bravo	Colonia	Ecatepec de Morelos	México
55295	Franja Valle de Guadalupe	Colonia	Ecatepec de Morelos	México
55296	Nicolás Bravo	Colonia	Ecatepec de Morelos	México
55296	A.S.A.	Unidad habitacional	Ecatepec de Morelos	México
55296	Las Flores de Aragón	Unidad habitacional	Ecatepec de Morelos	México
55297	Héroes de Granaditas	Colonia	Ecatepec de Morelos	México
55298	Ejercito del Trabajo III	Colonia	Ecatepec de Morelos	México
55299	Ejercito del Trabajo I	Colonia	Ecatepec de Morelos	México
55300	Piedra Grande	Colonia	Ecatepec de Morelos	México
55308	Benito Juárez Xalostoc Norte	Colonia	Ecatepec de Morelos	México
55308	Benito Juárez La Mesa	Colonia	Ecatepec de Morelos	México
55310	Cuauhtémoc Xalostoc	Colonia	Ecatepec de Morelos	México
55310	San Pedro Xalostoc	Pueblo	Ecatepec de Morelos	México
55316	Ampliación San Pedro Xalostoc	Colonia	Ecatepec de Morelos	México
55317	El Arbolito Xalostoc	Colonia	Ecatepec de Morelos	México
55320	El Cardonal Xalostoc	Colonia	Ecatepec de Morelos	México
55320	El Nardo	Colonia	Ecatepec de Morelos	México
55320	Esfuerzo Nacional	Zona industrial	Ecatepec de Morelos	México
55320	Santa María Xalostoc	Colonia	Ecatepec de Morelos	México
55330	Tolotzin V	Colonia	Ecatepec de Morelos	México
55330	5 de Septiembre	Colonia	Ecatepec de Morelos	México
55330	Jardines de Xalostoc	Colonia	Ecatepec de Morelos	México
55330	Las Vegas Xalostoc	Colonia	Ecatepec de Morelos	México
55330	San Francisco Xalostoc	Colonia	Ecatepec de Morelos	México
55330	Ampliación San Francisco Xalostoc	Colonia	Ecatepec de Morelos	México
55330	Prados de Xalostoc	Colonia	Ecatepec de Morelos	México
55330	La Laguna 21	Colonia	Ecatepec de Morelos	México
55338	Melchor Ocampo	Colonia	Ecatepec de Morelos	México
55339	Villas de Guadalupe Xalostoc	Fraccionamiento	Ecatepec de Morelos	México
55340	Benito Juárez Xalostoc	Colonia	Ecatepec de Morelos	México
55340	Rustica Xalostoc	Colonia	Ecatepec de Morelos	México
55340	Viveros de Xalostoc	Colonia	Ecatepec de Morelos	México
55347	Ampliación San José Xalostoc	Colonia	Ecatepec de Morelos	México
55348	Parque Industrial Xalostoc	Zona industrial	Ecatepec de Morelos	México
55349	Urbana Ixhuatepec	Colonia	Ecatepec de Morelos	México
55360	El Salado	Colonia	Ecatepec de Morelos	México
55360	San José Xalostoc	Colonia	Ecatepec de Morelos	México
55369	Ampliación San Miguel Xalostoc	Colonia	Ecatepec de Morelos	México
55390	Altavilla	Fraccionamiento	Ecatepec de Morelos	México
55390	San Miguel Xalostoc	Colonia	Ecatepec de Morelos	México
55400	Santa María Tulpetlac	Pueblo	Ecatepec de Morelos	México
55400	Aldeas I	Unidad habitacional	Ecatepec de Morelos	México
55400	Aldeas II	Unidad habitacional	Ecatepec de Morelos	México
55400	Nieves	Unidad habitacional	Ecatepec de Morelos	México
55400	ISSEMYM	Unidad habitacional	Ecatepec de Morelos	México
55404	Santa María Tulpetlac	Ejido	Ecatepec de Morelos	México
55404	Ecatepec las Fuentes	Unidad habitacional	Ecatepec de Morelos	México
55404	El Charco	Colonia	Ecatepec de Morelos	México
55404	El Chamizalito	Colonia	Ecatepec de Morelos	México
55404	El Charco II	Colonia	Ecatepec de Morelos	México
55405	La Purísima	Colonia	Ecatepec de Morelos	México
55407	Talleres Gráficos	Unidad habitacional	Ecatepec de Morelos	México
55407	Cuchilla Lázaro Cárdenas	Unidad habitacional	Ecatepec de Morelos	México
55410	Tecuescomac	Colonia	Ecatepec de Morelos	México
55410	Lomas de San Carlos Cantera	Colonia	Ecatepec de Morelos	México
55410	El Ostor	Colonia	Ecatepec de Morelos	México
55414	Xochitenco	Colonia	Ecatepec de Morelos	México
55414	El Parque	Colonia	Ecatepec de Morelos	México
55414	Nueva Rufino Tamayo	Colonia	Ecatepec de Morelos	México
55414	Tepetlac Texalpa	Colonia	Ecatepec de Morelos	México
55414	La Nopalera 2a. Sección Tulpetlac	Colonia	Ecatepec de Morelos	México
55414	Lomas Verdes Tlaljuyaca	Colonia	Ecatepec de Morelos	México
55414	Margarita Maza de Juárez	Colonia	Ecatepec de Morelos	México
55415	Buenos Aires	Colonia	Ecatepec de Morelos	México
55415	El Rosal	Colonia	Ecatepec de Morelos	México
55415	Mexihuiloya	Colonia	Ecatepec de Morelos	México
55415	El Almarcigo Norte	Colonia	Ecatepec de Morelos	México
55415	El Almarcigo Sur	Colonia	Ecatepec de Morelos	México
55415	Ampliación Almarcigo	Colonia	Ecatepec de Morelos	México
55416	Texalpa	Colonia	Ecatepec de Morelos	México
55416	Benito Juárez 1ra Sección	Unidad habitacional	Ecatepec de Morelos	México
55416	Benito Juárez 2da Sección	Unidad habitacional	Ecatepec de Morelos	México
55416	Benito Juárez 3ra Sección	Unidad habitacional	Ecatepec de Morelos	México
55416	La Virgen	Colonia	Ecatepec de Morelos	México
55416	Progreso Tlajoyuca	Colonia	Ecatepec de Morelos	México
55417	Guadalupe Coatzochico	Colonia	Ecatepec de Morelos	México
55418	Mexicalco I	Colonia	Ecatepec de Morelos	México
55418	Rufino Tamayo	Colonia	Ecatepec de Morelos	México
55418	Ampliación Santa María Tulpetlac	Colonia	Ecatepec de Morelos	México
55418	Cuauhtémoc	Colonia	Ecatepec de Morelos	México
55418	El Callejón	Colonia	Ecatepec de Morelos	México
55418	Progreso Chico Tulpetlac	Colonia	Ecatepec de Morelos	México
55418	Villas Tulpetlac	Fraccionamiento	Ecatepec de Morelos	México
55418	Mexicalco II y IV	Colonia	Ecatepec de Morelos	México
55418	Mexicalco III	Colonia	Ecatepec de Morelos	México
55419	Tlatempa	Colonia	Ecatepec de Morelos	México
55419	El Cortijo	Colonia	Ecatepec de Morelos	México
55420	Cerro Gordo	Zona industrial	Ecatepec de Morelos	México
55425	Cerro Gordo	Colonia	Ecatepec de Morelos	México
55429	Bellavista	Unidad habitacional	Ecatepec de Morelos	México
55429	Tepetzicasco	Colonia	Ecatepec de Morelos	México
55429	La Cuesta Santa Clara	Colonia	Ecatepec de Morelos	México
55430	José María Pino Suárez	Colonia	Ecatepec de Morelos	México
55430	Jardines de Casa Nueva	Fraccionamiento	Ecatepec de Morelos	México
55430	Conjunto Ejecutivo	Conjunto habitacional	Ecatepec de Morelos	México
55430	Junta de San Juan	Unidad habitacional	Ecatepec de Morelos	México
55450	Jardines de Santa Clara	Fraccionamiento	Ecatepec de Morelos	México
55450	Prados de Santa Clara	Fraccionamiento	Ecatepec de Morelos	México
55458	Conjunto Guanajuato	Conjunto habitacional	Ecatepec de Morelos	México
55459	América Santa Clara	Colonia	Ecatepec de Morelos	México
55490	Faja de Oro	Colonia	Ecatepec de Morelos	México
55490	Miguel Hidalgo	Colonia	Ecatepec de Morelos	México
55490	Finca San Miguel	Unidad habitacional	Ecatepec de Morelos	México
55498	Héroes de la Independencia	Colonia	Ecatepec de Morelos	México
55500	Conjunto Tepeyac Hidalgo	Conjunto habitacional	Ecatepec de Morelos	México
55506	Buenavista	Colonia	Ecatepec de Morelos	México
55507	La Palma	Colonia	Ecatepec de Morelos	México
55508	Ampliación Coanalco	Colonia	Ecatepec de Morelos	México
55508	Coanalco Buenavista	Colonia	Ecatepec de Morelos	México
55509	La Presa	Colonia	Ecatepec de Morelos	México
55509	Plan de Ayala	Colonia	Ecatepec de Morelos	México
55510	Tablas del Pozo	Colonia	Ecatepec de Morelos	México
55510	Tepeolulco	Colonia	Ecatepec de Morelos	México
55510	El Pozo	Colonia	Ecatepec de Morelos	México
55515	Los Bordos	Colonia	Ecatepec de Morelos	México
55515	La Teja	Colonia	Ecatepec de Morelos	México
55516	Boca Barranca	Colonia	Ecatepec de Morelos	México
55517	El Mirador	Colonia	Ecatepec de Morelos	México
55518	La Agüita	Colonia	Ecatepec de Morelos	México
55518	La Lomita	Colonia	Ecatepec de Morelos	México
55518	Arboledas de Xalostoc	Colonia	Ecatepec de Morelos	México
55519	San Andrés de la Cañada	Pueblo	Ecatepec de Morelos	México
55519	La Esperanza	Colonia	Ecatepec de Morelos	México
55520	Carlos Hank González	Colonia	Ecatepec de Morelos	México
55530	El Gallito	Colonia	Ecatepec de Morelos	México
55530	San Jaco (El Gallito)	Colonia	Ecatepec de Morelos	México
55530	Santa Clara	Unidad habitacional	Ecatepec de Morelos	México
55530	El Gallito	Unidad habitacional	Ecatepec de Morelos	México
55540	Santa Clara Coatitla	Pueblo	Ecatepec de Morelos	México
55540	Real de Santa Clara	Unidad habitacional	Ecatepec de Morelos	México
55540	Rinconada de Santa Clara	Unidad habitacional	Ecatepec de Morelos	México
55547	Santa Clara	Zona industrial	Ecatepec de Morelos	México
55548	Área Zapotecas	Colonia	Ecatepec de Morelos	México
55548	Cantera Guadalupana	Colonia	Ecatepec de Morelos	México
55548	Dos de Octubre	Colonia	Ecatepec de Morelos	México
55549	Área Santa Cruz	Colonia	Ecatepec de Morelos	México
55600	Paseos de la Laguna	Fraccionamiento	Zumpango	México
55600	Santiago 1a. Sección	Barrio	Zumpango	México
55600	San Sebastián	Pueblo	Zumpango	México
55600	Independencia	Colonia	Zumpango	México
55600	San Juan	Barrio	Zumpango	México
55600	Santa Rosa	Fraccionamiento	Zumpango	México
55600	Del Bosque	Fraccionamiento	Zumpango	México
55600	San Miguel	Barrio	Zumpango	México
55600	Magisterial	Colonia	Zumpango	México
55600	Santiago 2a. Sección	Barrio	Zumpango	México
55600	San Miguel (Camino a Bata)	Barrio	Zumpango	México
55604	San Lorenzo	Barrio	Zumpango	México
55604	Hombres Ilustres	Colonia	Zumpango	México
55604	Portales de San Juan	Fraccionamiento	Zumpango	México
55604	Unidad Familiar C.T.C. de Jaltenco	Fraccionamiento	Zumpango	México
55604	San Miguel (Camino a Valle Hermoso)	Barrio	Zumpango	México
55605	Santa María el Llano	Colonia	Zumpango	México
55605	San Antonio de las Arenas	Colonia	Zumpango	México
55605	CTC de Zumpango (Santa María)	Unidad habitacional	Zumpango	México
55606	Santa María	Barrio	Zumpango	México
55606	San Marcos	Barrio	Zumpango	México
55606	Aguirre	Fraccionamiento	Zumpango	México
55606	Pueblo Nuevo de San Pedro	Colonia	Zumpango	México
55606	San Marcos del Llano	Ejido	Zumpango	México
55607	Paseos del Lago II	Fraccionamiento	Zumpango	México
55607	Jardines del Lago	Fraccionamiento	Zumpango	México
55607	Primero de Mayo	Colonia	Zumpango	México
55607	Villas 2000	Fraccionamiento	Zumpango	México
55607	FOVISSSTE	Fraccionamiento	Zumpango	México
55607	Paseos del Lago	Fraccionamiento	Zumpango	México
55607	Nuevo Paseos de San Juan	Fraccionamiento	Zumpango	México
55609	San Pedro de la Laguna	Barrio	Zumpango	México
55610	Santa María Cuevas	Pueblo	Zumpango	México
55610	El Rincón	Barrio	Zumpango	México
55610	España (Cuevas)	Barrio	Zumpango	México
55613	Loma Larga (Barrio de Loma Larga)	Barrio	Zumpango	México
55614	Villas de Zumpango	Fraccionamiento	Zumpango	México
55614	Jardines de la Laguna	Fraccionamiento	Zumpango	México
55614	Solares	Fraccionamiento	Zumpango	México
55614	Jardines de Girasoles	Fraccionamiento	Zumpango	México
55614	Santa María	Fraccionamiento	Zumpango	México
55614	Villas de la Laguna	Fraccionamiento	Zumpango	México
55614	La Trinidad	Fraccionamiento	Zumpango	México
55614	El Nido	Fraccionamiento	Zumpango	México
55614	Los Romeros	Colonia	Zumpango	México
55619	San Miguel Bocanegra	Pueblo	Zumpango	México
55620	El Colorado	Colonia	Zumpango	México
55620	La Soledad	Ranchería	Zumpango	México
55620	San José de la Loma	Colonia	Zumpango	México
55627	El Potrero	Colonia	Zumpango	México
55628	Santa María de Guadalupe	Colonia	Zumpango	México
55628	San Pedro (Zitlaltepec)	Barrio	Zumpango	México
55628	San Miguel (Zitlaltepec)	Barrio	Zumpango	México
55628	Santa María (Zitlaltepec)	Barrio	Zumpango	México
55628	San Lorenzo (Zitlaltepec)	Barrio	Zumpango	México
55629	Lázaro Cárdenas	Colonia	Zumpango	México
55630	Jardines de Acacias	Fraccionamiento	Zumpango	México
55630	San Bartolo Cuautlalpan	Pueblo	Zumpango	México
55630	Los Alcanfores	Colonia	Zumpango	México
55630	San Juan de Guadalupe	Colonia	Zumpango	México
55630	La Esmeralda	Fraccionamiento	Zumpango	México
55630	Ex Hacienda de Guadalupe	Unidad habitacional	Zumpango	México
55630	Santa Fe	Fraccionamiento	Zumpango	México
55630	Olmos	Fraccionamiento	Zumpango	México
55630	El Solar	Colonia	Zumpango	México
55630	Ampliación Jardines de San Bartolo	Colonia	Zumpango	México
55630	Miltenco	Barrio	Zumpango	México
55634	Paseos de San Juan	Fraccionamiento	Zumpango	México
55634	Santa Lucía	Colonia	Zumpango	México
55635	Jardines de Magnolias	Fraccionamiento	Zumpango	México
55635	Jardines de Castalias	Fraccionamiento	Zumpango	México
55635	Buenavista	Ranchería	Zumpango	México
55635	Los Hornos	Colonia	Zumpango	México
55635	Arbolada los Sauces	Fraccionamiento	Zumpango	México
55635	Las Plazas	Fraccionamiento	Zumpango	México
55635	Hacienda los Encinos	Fraccionamiento	Zumpango	México
55635	Santa Isabel	Fraccionamiento	Zumpango	México
55635	Letigio	Colonia	Zumpango	México
55636	Los Rivero	Colonia	Zumpango	México
55636	Pueblo Nuevo de Morelos	Colonia	Zumpango	México
55637	La Noria	Fraccionamiento	Zumpango	México
55637	Santa Cecilia	Fraccionamiento	Zumpango	México
55640	Santa Lucia Base Aérea Militar	Zona federal	Zumpango	México
55650	Adolfo López Mateos	Colonia	Tequixquiac	México
55650	San Miguel	Barrio	Tequixquiac	México
55650	Tequixquiac Centro	Pueblo	Tequixquiac	México
55650	Ex-Hacienda San Sebastián	Ranchería	Tequixquiac	México
55653	Tlapanaloya	Pueblo	Tequixquiac	México
55653	La Rinconada	Barrio	Tequixquiac	México
55653	Monte Alto	Barrio	Tequixquiac	México
55653	La Esperanza	Colonia	Tequixquiac	México
55654	San José	Barrio	Tequixquiac	México
55654	El Crucero	Barrio	Tequixquiac	México
55654	La Heredad	Barrio	Tequixquiac	México
55655	El Refugio	Barrio	Tequixquiac	México
55655	Palo Grande	Barrio	Tequixquiac	México
55656	Ejidal General Wenceslao Labra	Colonia	Tequixquiac	México
55657	San Mateo	Barrio	Tequixquiac	México
55657	El Cenicero	Barrio	Tequixquiac	México
55660	Apaxco de Ocampo	Pueblo	Apaxco	México
55660	Arboledas	Colonia	Apaxco	México
55660	23 de Noviembre	Colonia	Apaxco	México
55660	Olímpica	Colonia	Apaxco	México
55663	Santa Cecilia	Colonia	Apaxco	México
55663	3 de Mayo	Colonia	Apaxco	México
55664	Coyotillos	Pueblo	Apaxco	México
55664	Juárez	Colonia	Apaxco	México
55664	San José Teña	Barrio	Apaxco	México
55665	Pérez de Galeana	Pueblo	Apaxco	México
55666	Tablón Chico (Tabloncito)	Ranchería	Apaxco	México
55666	Loma Bonita	Colonia	Apaxco	México
55666	Los Arbolitos	Colonia	Apaxco	México
55666	La Tarjea	Equipamiento	Apaxco	México
55666	Tablón Grande	Colonia	Apaxco	México
55667	Santa María Apaxco	Pueblo	Apaxco	México
55667	El Mirador	Pueblo	Apaxco	México
55667	El Pisquay	Colonia	Apaxco	México
55667	Ermita	Colonia	Apaxco	México
55667	Ejidos de Santa María	Colonia	Apaxco	México
55670	Roma	Colonia	Hueypoxtla	México
55670	Centenario	Colonia	Hueypoxtla	México
55670	España	Colonia	Hueypoxtla	México
55670	Huicalco	Colonia	Hueypoxtla	México
55670	Hueypoxtla	Pueblo	Hueypoxtla	México
55670	Juárez	Colonia	Hueypoxtla	México
55676	Casa Blanca (Ex-Hacienda Casa Blanca)	Pueblo	Hueypoxtla	México
55679	San Miguel Tepetates	Colonia	Hueypoxtla	México
55679	Santa María Ajoloapan	Pueblo	Hueypoxtla	México
55680	San Francisco Zacacalco	Pueblo	Hueypoxtla	México
55683	Tianguistongo	Pueblo	Hueypoxtla	México
55684	San Pedro la Gloria	Ranchería	Hueypoxtla	México
55685	Tezontlalpa de Zapata (Tezontlalpan)	Pueblo	Hueypoxtla	México
55689	Nopala (Guadalupe Nopala)	Pueblo	Hueypoxtla	México
55690	Jilotzingo	Pueblo	Hueypoxtla	México
55694	El Carmen	Pueblo	Hueypoxtla	México
55697	Emiliano Zapata (San José Bata)	Pueblo	Hueypoxtla	México
55700	Residencial Paraíso I	Condominio	Coacalco de Berriozábal	México
55700	Residencial Paraíso II	Condominio	Coacalco de Berriozábal	México
55700	El Vergel	Condominio	Coacalco de Berriozábal	México
55700	Residencial Sirapark	Condominio	Coacalco de Berriozábal	México
55700	Hacienda Cruztitla I	Conjunto habitacional	Coacalco de Berriozábal	México
55700	Fuentes de San Francisco	Condominio	Coacalco de Berriozábal	México
55700	Las Hiedras	Condominio	Coacalco de Berriozábal	México
55700	San Francisco Coacalco	Pueblo	Coacalco de Berriozábal	México
55700	Zacuautitla	Colonia	Coacalco de Berriozábal	México
55700	El Laurel (El Gigante)	Conjunto habitacional	Coacalco de Berriozábal	México
55700	Conjunto Salamanca	Condominio	Coacalco de Berriozábal	México
55700	Bonito Coacalco	Condominio	Coacalco de Berriozábal	México
55700	Residencial Hacienda Capultitla	Condominio	Coacalco de Berriozábal	México
55700	La Cualac	Condominio	Coacalco de Berriozábal	México
55700	Residencial Santander	Fraccionamiento	Coacalco de Berriozábal	México
55700	Rincón Colonial Coacalco	Condominio	Coacalco de Berriozábal	México
55700	Hacienda las Garzas	Conjunto habitacional	Coacalco de Berriozábal	México
55700	El Toloache	Condominio	Coacalco de Berriozábal	México
55700	Privadas Coacalco	Condominio	Coacalco de Berriozábal	México
55700	Bonito Coacalco I (La Cruz)	Condominio	Coacalco de Berriozábal	México
55700	Colonial Coacalco	Conjunto habitacional	Coacalco de Berriozábal	México
55700	Hacienda Cruztitla II	Conjunto habitacional	Coacalco de Berriozábal	México
55700	Parque Taxco Viejo	Condominio	Coacalco de Berriozábal	México
55700	Residencial Bonito la Loma II	Conjunto habitacional	Coacalco de Berriozábal	México
55700	Villa Florencia	Condominio	Coacalco de Berriozábal	México
55700	Chabacano	Fraccionamiento	Coacalco de Berriozábal	México
55700	Real de Coacalco	Condominio	Coacalco de Berriozábal	México
55705	República Mexicana	Colonia	Coacalco de Berriozábal	México
55707	El Obelisco	Conjunto habitacional	Coacalco de Berriozábal	México
55707	La Cima	Condominio	Coacalco de Berriozábal	México
55707	Ejidal Canuto Luna	Colonia	Coacalco de Berriozábal	México
55707	Calpulli del Valle	Conjunto habitacional	Coacalco de Berriozábal	México
55707	Ex-Rancho San Felipe	Colonia	Coacalco de Berriozábal	México
55707	Lomas San Felipe	Colonia	Coacalco de Berriozábal	México
55708	Hidalgo	Colonia	Coacalco de Berriozábal	México
55709	COOR Coacalco	Unidad habitacional	Coacalco de Berriozábal	México
55709	El Gigante	Colonia	Coacalco de Berriozábal	México
55709	Villas Gigante	Fraccionamiento	Coacalco de Berriozábal	México
55709	Conjunto San Diego	Condominio	Coacalco de Berriozábal	México
55710	Residencial Las Dalias I,II,III Y IV	Fraccionamiento	Coacalco de Berriozábal	México
55710	Villa de las Flores 1a Sección (Unidad Coacalco)	Fraccionamiento	Coacalco de Berriozábal	México
55710	Villa de las Flores 2a Sección (Unidad Coacalco)	Fraccionamiento	Coacalco de Berriozábal	México
55710	Rancho la Providencia	Conjunto habitacional	Coacalco de Berriozábal	México
55710	Arcos las Torres	Condominio	Coacalco de Berriozábal	México
55710	Las Rosas	Conjunto habitacional	Coacalco de Berriozábal	México
55710	Sección Jardín "Las Plazas" (Unidad Coacalco)	Fraccionamiento	Coacalco de Berriozábal	México
55712	San Francisco Coacalco (Sección Hacienda)	Conjunto habitacional	Coacalco de Berriozábal	México
55712	Los Héroes Coacalco	Fraccionamiento	Coacalco de Berriozábal	México
55712	Dalias	Conjunto habitacional	Coacalco de Berriozábal	México
55713	La Floresta	Condominio	Coacalco de Berriozábal	México
55713	Rincón de las Fuentes	Condominio	Coacalco de Berriozábal	México
55713	Rinconada Coacalco	Condominio	Coacalco de Berriozábal	México
55713	Villa de Reyes	Condominio	Coacalco de Berriozábal	México
55713	Ampliación Villa de Reyes	Colonia	Coacalco de Berriozábal	México
55714	Residencial Plaza Coacalco	Condominio	Coacalco de Berriozábal	México
55714	Rincón Coahuilense	Condominio	Coacalco de Berriozábal	México
55714	San Lorenzo Tetlixtac	Pueblo	Coacalco de Berriozábal	México
55714	Niños Héroes	Condominio	Coacalco de Berriozábal	México
55714	Los Almendros	Condominio	Coacalco de Berriozábal	México
55714	Hacienda San Pablo	Conjunto habitacional	Coacalco de Berriozábal	México
55714	Potrero II	Condominio	Coacalco de Berriozábal	México
55714	Los Olivos	Condominio	Coacalco de Berriozábal	México
55714	Tetlacolili	Condominio	Coacalco de Berriozábal	México
55715	Santa María Magdalena Huizachitla	Pueblo	Coacalco de Berriozábal	México
55715	Los Sabinos II	Fraccionamiento	Coacalco de Berriozábal	México
55716	Jardines de San José 1a Secc	Fraccionamiento	Coacalco de Berriozábal	México
55716	Jardines de San José 2a Secc	Fraccionamiento	Coacalco de Berriozábal	México
55716	Sección las Villas (Unidad Coacalco)	Fraccionamiento	Coacalco de Berriozábal	México
55717	Ex-Hacienda San Felipe 1a. Sección	Conjunto habitacional	Coacalco de Berriozábal	México
55717	Rancho la Palma 1a Sección	Conjunto habitacional	Coacalco de Berriozábal	México
55717	Bosques del Valle 1a Sección	Fraccionamiento	Coacalco de Berriozábal	México
55717	Bosques del Valle 2a Sección	Fraccionamiento	Coacalco de Berriozábal	México
55717	Periodistas Revolucionarios	Conjunto habitacional	Coacalco de Berriozábal	México
55717	El Laurel	Condominio	Coacalco de Berriozábal	México
55717	Los Portales Oriente	Unidad habitacional	Coacalco de Berriozábal	México
55717	Ex-Hacienda San Felipe 2a. Sección	Conjunto habitacional	Coacalco de Berriozábal	México
55717	Rancho la Palma 2a Sección	Conjunto habitacional	Coacalco de Berriozábal	México
55717	Rancho la Palma 3a Sección	Conjunto habitacional	Coacalco de Berriozábal	México
55717	El Chaparral	Condominio	Coacalco de Berriozábal	México
55717	Ex-Hacienda San Felipe 3a. Sección	Conjunto habitacional	Coacalco de Berriozábal	México
55717	Las Bugambilias	Conjunto habitacional	Coacalco de Berriozábal	México
55717	Los Portales Poniente	Unidad habitacional	Coacalco de Berriozábal	México
55717	Rancho la Palma 4a. Sección	Conjunto habitacional	Coacalco de Berriozábal	México
55718	Coacalco	Parque industrial	Coacalco de Berriozábal	México
55718	Potrero Popular I	Colonia	Coacalco de Berriozábal	México
55718	Potrero la Laguna 1a Sección	Unidad habitacional	Coacalco de Berriozábal	México
55718	Potrero la Laguna 2a Sección	Unidad habitacional	Coacalco de Berriozábal	México
55718	José María Morelos y Pavón	Unidad habitacional	Coacalco de Berriozábal	México
55718	Santa María II	Conjunto habitacional	Coacalco de Berriozábal	México
55718	Las Garzas	Fraccionamiento	Coacalco de Berriozábal	México
55718	Potrero I	Condominio	Coacalco de Berriozábal	México
55718	Joyas de Coacalco	Condominio	Coacalco de Berriozábal	México
55718	Los Cedros I y II	Fraccionamiento	Coacalco de Berriozábal	México
55718	La Guadalupana	Condominio	Coacalco de Berriozábal	México
55718	Privada las Garzas	Conjunto habitacional	Coacalco de Berriozábal	México
55718	Santa María III	Conjunto habitacional	Coacalco de Berriozábal	México
55718	Potrero Popular II	Colonia	Coacalco de Berriozábal	México
55719	El Pantano	Fraccionamiento	Coacalco de Berriozábal	México
55719	San Rafael Coacalco	Unidad habitacional	Coacalco de Berriozábal	México
55719	Rinconada San Felipe II	Conjunto habitacional	Coacalco de Berriozábal	México
55719	Santa María I	Conjunto habitacional	Coacalco de Berriozábal	México
55719	Rinconada San Felipe I	Conjunto habitacional	Coacalco de Berriozábal	México
55719	Plaza las Flores	Fraccionamiento	Coacalco de Berriozábal	México
55720	Parque Residencial Coacalco 1a Sección	Fraccionamiento	Coacalco de Berriozábal	México
55720	Parque Residencial Coacalco 2a Sección	Fraccionamiento	Coacalco de Berriozábal	México
55720	Parque Residencial Coacalco 3a Sección	Fraccionamiento	Coacalco de Berriozábal	México
55726	Villa Florida	Conjunto habitacional	Coacalco de Berriozábal	México
55726	Granjas San Cristóbal	Fraccionamiento	Coacalco de Berriozábal	México
55726	Hacienda del Teruel	Condominio	Coacalco de Berriozábal	México
55726	Star I	Condominio	Coacalco de Berriozábal	México
55726	Star II	Condominio	Coacalco de Berriozábal	México
55726	La Vista	Conjunto habitacional	Coacalco de Berriozábal	México
55726	Valle Florido	Fraccionamiento	Coacalco de Berriozábal	México
55728	Las Brisas	Condominio	Coacalco de Berriozábal	México
55728	El Granero	Colonia	Coacalco de Berriozábal	México
55728	COOR Granjas	Unidad habitacional	Coacalco de Berriozábal	México
55728	El Oasis	Conjunto habitacional	Coacalco de Berriozábal	México
55728	Camino Real (imevis)	Fraccionamiento	Coacalco de Berriozábal	México
55729	Los Sabinos I	Fraccionamiento	Coacalco de Berriozábal	México
55729	Sitatyr Arboledas	Condominio	Coacalco de Berriozábal	México
55730	Villa las Manzanas	Condominio	Coacalco de Berriozábal	México
55736	Lomas de Coacalco 1a. Sección	Fraccionamiento	Coacalco de Berriozábal	México
55736	Lomas de Coacalco 2a. Sección (Bosques)	Fraccionamiento	Coacalco de Berriozábal	México
55736	Basurero Municipal (La Aurora)	Equipamiento	Coacalco de Berriozábal	México
55737	Jalatlaco	Conjunto habitacional	Coacalco de Berriozábal	México
55737	Mediterraneo	Condominio	Coacalco de Berriozábal	México
55738	Arte y Publicidad Miguel Hidalgo	Conjunto habitacional	Coacalco de Berriozábal	México
55738	Loma Bonita	Colonia	Coacalco de Berriozábal	México
55738	Asociación de Comerciantes de Coacalco	Condominio	Coacalco de Berriozábal	México
55738	Xalatlaco (Imevis)	Colonia	Coacalco de Berriozábal	México
55738	Hacienda Taxco Viejo	Condominio	Coacalco de Berriozábal	México
55738	El Ranchito (imevis)	Colonia	Coacalco de Berriozábal	México
55739	Los Acuales	Colonia	Coacalco de Berriozábal	México
55740	Tecámac de Felipe Villanueva Centro	Pueblo	Tecámac	México
55740	El Calvario	Barrio	Tecámac	México
55740	Galaxias el Llano	Fraccionamiento	Tecámac	México
55743	Real Granada	Fraccionamiento	Tecámac	México
55743	Isidro Fabela	Colonia	Tecámac	México
55743	Rancho la Luz	Condominio	Tecámac	México
55743	La Palma	Colonia	Tecámac	México
55743	Hacienda del Bosque	Fraccionamiento	Tecámac	México
55743	San Nicolás la Redonda	Fraccionamiento	Tecámac	México
55744	San Pedro Potzohuacan	Pueblo	Tecámac	México
55745	Real Granada IV	Fraccionamiento	Tecámac	México
55745	San Jerónimo Xonacahuacan	Pueblo	Tecámac	México
55745	Ampliación San Jerónimo	Colonia	Tecámac	México
55745	Nuevo México	Colonia	Tecámac	México
55745	Jardines de Xonacahuacan	Colonia	Tecámac	México
55746	Ex Hacienda San Miguel Tenopala	Ranchería	Tecámac	México
55746	Rancho la Capilla	Fraccionamiento	Tecámac	México
55746	Real Belmonte	Fraccionamiento	Tecámac	México
55746	Club de Polo (Rancho Azul)	Rancho	Tecámac	México
55746	Santa Cruz Tecámac	Fraccionamiento	Tecámac	México
55747	San Pablo Tecalco	Pueblo	Tecámac	México
55747	San Isidro Citlalcóatl	Colonia	Tecámac	México
55748	Jema	Fraccionamiento	Tecámac	México
55748	San José	Colonia	Tecámac	México
55748	San Martín Azcatepec	Colonia	Tecámac	México
55748	San Mateo Tecalco	Colonia	Tecámac	México
55748	Ejido de Tecámac	Colonia	Tecámac	México
55748	Primero de Marzo	Colonia	Tecámac	México
55748	Los Olivos	Colonia	Tecámac	México
55748	Los Olivos	Fraccionamiento	Tecámac	México
55748	Ampliación Ejido de Tecámac	Colonia	Tecámac	México
55749	Montecarlo	Fraccionamiento	Tecámac	México
55749	5 de Mayo	Colonia	Tecámac	México
55749	Hueyotenco	Colonia	Tecámac	México
55749	Nueva Santa María	Colonia	Tecámac	México
55749	Villa del Real	Fraccionamiento	Tecámac	México
55749	Ampliación 5 de Mayo	Colonia	Tecámac	México
55749	La Nopalera	Colonia	Tecámac	México
55749	Electricistas	Colonia	Tecámac	México
55749	Sierra Hermosa	Fraccionamiento	Tecámac	México
55749	Texcaltitla	Colonia	Tecámac	México
55749	Ixotitla	Colonia	Tecámac	México
55749	Vista Hermosa	Colonia	Tecámac	México
55749	Del Catillo	Fraccionamiento	Tecámac	México
55749	Jardines de Tecámac	Fraccionamiento	Tecámac	México
55750	El Tanque	Colonia	Tecámac	México
55750	Santa María Ajoloapan	Pueblo	Tecámac	México
55752	San Juan Pueblo Nuevo	Pueblo	Tecámac	México
55754	Santo Domingo Ajoloapan	Pueblo	Tecámac	México
55754	Paseos de Tecámac	Fraccionamiento	Tecámac	México
55754	Loma de San Jerónimo (Ampliación Santo Domingo)	Colonia	Tecámac	México
55755	Los Reyes Acozac	Pueblo	Tecámac	México
55755	La Campiña	Colonia	Tecámac	México
55755	Buenavista	Colonia	Tecámac	México
55755	Guadalupe de Reyes Acozac	Barrio	Tecámac	México
55755	La Michapa	Colonia	Tecámac	México
55755	La Palma de Reyes	Colonia	Tecámac	México
55755	Progreso	Colonia	Tecámac	México
55755	El Calvario de Reyes Acozac	Barrio	Tecámac	México
55755	San Miguel	Colonia	Tecámac	México
55757	San Lucas Xolox	Pueblo	Tecámac	México
55757	Ejidal	Colonia	Tecámac	México
55758	Ampliación la Palma (Zona Industrial)	Zona industrial	Tecámac	México
55760	San Francisco Cuautliquixca	Pueblo	Tecámac	México
55760	Santa María Ozumbilla	Pueblo	Tecámac	México
55760	Norchuca	Colonia	Tecámac	México
55760	Mexicanos Unidos	Fraccionamiento	Tecámac	México
55760	Magisterial	Colonia	Tecámac	México
55760	Atlautenco	Colonia	Tecámac	México
55760	El Calvario de Ozumbilla	Barrio	Tecámac	México
55760	Portal Ojo de Agua	Fraccionamiento	Tecámac	México
55763	Vitalia	Fraccionamiento	Tecámac	México
55763	Los Héroes Tecámac	Unidad habitacional	Tecámac	México
55764	Margarito F. Ayala	Colonia	Tecámac	México
55764	Los Héroes Tecámac II	Unidad habitacional	Tecámac	México
55764	Los Héroes Ozumbilla	Unidad habitacional	Tecámac	México
55764	Nuevo Paraíso	Colonia	Tecámac	México
55765	Los Héroes San Pablo	Fraccionamiento	Tecámac	México
55765	Nueva Tlalnepantla	Colonia	Tecámac	México
55765	Esmeralda	Colonia	Tecámac	México
55765	Lomas de Tecámac	Fraccionamiento	Tecámac	México
55765	La Cañada	Colonia	Tecámac	México
55765	Jesús Romero Flores	Colonia	Tecámac	México
55765	Granjas Valle de Guadalupe	Colonia	Tecámac	México
55765	México Independiente	Colonia	Tecámac	México
55765	21 de Agosto	Colonia	Tecámac	México
55765	10 de Junio	Colonia	Tecámac	México
55765	Soto y Gama	Colonia	Tecámac	México
55766	Ampliación Ozumbilla	Colonia	Tecámac	México
55767	Conjunto urbano Real Verona	Fraccionamiento	Tecámac	México
55767	Real Toscana	Fraccionamiento	Tecámac	México
55767	Punta Palermo	Fraccionamiento	Tecámac	México
55767	Bosques de los Héroes	Fraccionamiento	Tecámac	México
55767	Paseos del Bosque	Fraccionamiento	Tecámac	México
55767	Real Carrara	Fraccionamiento	Tecámac	México
55767	Real Alcalá	Fraccionamiento	Tecámac	México
55767	Alcázar	Fraccionamiento	Tecámac	México
55767	Quinta Versalles	Fraccionamiento	Tecámac	México
55767	Real Vizcaya	Fraccionamiento	Tecámac	México
55767	Loma Bonita	Colonia	Tecámac	México
55767	Santa Cruz	Colonia	Tecámac	México
55767	Los Arcos	Colonia	Tecámac	México
55767	Real del Sol	Fraccionamiento	Tecámac	México
55767	Real del Cid	Fraccionamiento	Tecámac	México
55767	Real Castell	Fraccionamiento	Tecámac	México
55767	Real Firenze	Fraccionamiento	Tecámac	México
55767	Valle San Pedro Urbi Villa del Campo	Fraccionamiento	Tecámac	México
55768	Cuauhtémoc	Colonia	Tecámac	México
55768	Lomas de Ozumbilla	Colonia	Tecámac	México
55768	San Antonio (de San Francisco Cuautliquixca)	Colonia	Tecámac	México
55768	La Azteca	Colonia	Tecámac	México
55768	Vista Hermosa (De Ozumbilla)	Colonia	Tecámac	México
55768	Tezontla	Colonia	Tecámac	México
55770	San Pedro (El Terremoto)	Colonia	Tecámac	México
55770	Rinconada San Pedro	Fraccionamiento	Tecámac	México
55770	Ojo de Agua	Fraccionamiento	Tecámac	México
55770	San Pedro Atzompa	Pueblo	Tecámac	México
55773	Hacienda Provenzal	Conjunto habitacional	Tecámac	México
55776	Lomas de San Pedro Atzompa	Colonia	Tecámac	México
55778	Ampliación de la Concepción	Colonia	Tecámac	México
55780	San Andrés Jaltenco	Pueblo	Jaltenco	México
55780	San Martín	Barrio	Jaltenco	México
55783	Alborada Jaltenco CTM XI	Unidad habitacional	Jaltenco	México
55783	Pro Vivienda	Colonia	Jaltenco	México
55783	Bahías de Jaltenco	Colonia	Jaltenco	México
55783	Privadas del Sol	Fraccionamiento	Jaltenco	México
55784	La Lagunilla	Barrio	Jaltenco	México
55785	San Juan Zacazontla	Colonia	Tonanitla	México
55785	Las Chinampas	Colonia	Tonanitla	México
55785	Valle Verde	Colonia	Tonanitla	México
55785	Santa María Tonanitla	Pueblo	Tonanitla	México
55785	Villas de Santa María	Fraccionamiento	Tonanitla	México
55786	La Asunción	Colonia	Tonanitla	México
55787	Villas de Tonanitla	Fraccionamiento	Tonanitla	México
55790	Ejido de Santana	Colonia	Nextlalpan	México
55790	San Miguel Jaltocan	Pueblo	Nextlalpan	México
55790	Central	Barrio	Nextlalpan	México
55793	Las Malvinas	Colonia	Nextlalpan	México
55793	San Estebán Ecatitlan	Barrio	Nextlalpan	México
55793	San Francisco Molonco	Barrio	Nextlalpan	México
55793	San Pedro Miltenco	Barrio	Nextlalpan	México
55794	Macan	Ranchería	Nextlalpan	México
55794	Terrenos Comunales Xaltocan	Colonia	Nextlalpan	México
55795	Compuerta Oriente	Colonia	Nextlalpan	México
55795	Laguna	Granja	Nextlalpan	México
55795	Los Pastales	Ranchería	Nextlalpan	México
55796	Paseos del Valle	Fraccionamiento	Nextlalpan	México
55796	Villas de Nextlalpan	Fraccionamiento	Nextlalpan	México
55796	Ex-hacienda Santa Inés	Fraccionamiento	Nextlalpan	México
55796	Los Aguiluchos	Colonia	Nextlalpan	México
55796	Pozos y Vías (Fracción Diecisiete A)	Colonia	Nextlalpan	México
55796	Prados San Francisco	Colonia	Nextlalpan	México
55796	San Antonio (El Oasis)	Ranchería	Nextlalpan	México
55796	Tierra de Santa Inés	Ranchería	Nextlalpan	México
55797	Santiago Atocan	Pueblo	Nextlalpan	México
55797	San Juan Atenanco	Barrio	Nextlalpan	México
55799	San Mateo Acuitlapilco	Pueblo	Nextlalpan	México
55799	Cuatro Caballerías	Colonia	Nextlalpan	México
55800	Teotihuacan de Arista Centro	Pueblo	Teotihuacán	México
55803	Acatitla	Colonia	Teotihuacán	México
55803	Colatitla	Colonia	Teotihuacán	México
55803	Nueva San Pedro	Colonia	Teotihuacán	México
55803	Huepalco	Colonia	Teotihuacán	México
55803	El Tejocote	Colonia	Teotihuacán	México
55804	Purificación	Pueblo	Teotihuacán	México
55805	Puxtla	Pueblo	Teotihuacán	México
55806	Nueva Teotihuacan	Colonia	Teotihuacán	México
55806	Nueva Evangelista	Colonia	Teotihuacán	México
55807	El Mirador	Colonia	Teotihuacán	México
55807	Villas de Teotihuacan	Pueblo	Teotihuacán	México
55807	San Juan Teotihuacán (El Cuartel)	Equipamiento	Teotihuacán	México
55810	Santa María Cozotlán	Pueblo	Teotihuacán	México
55810	Oxtoyáhuatl (Barrio Purificación)	Ejido	Teotihuacán	México
55816	San Juan Evangelista	Pueblo	Teotihuacán	México
55816	El Portal	Fraccionamiento	Teotihuacán	México
55817	Loma del Cerro Colorado	Colonia	Teotihuacán	México
55820	San Francisco Mazapa	Pueblo	Teotihuacán	México
55823	Nueva Santa María	Colonia	Teotihuacán	México
55824	San Sebastián Xolalpa	Pueblo	Teotihuacán	México
55824	Metepec (Estación Metepec)	Ranchería	Teotihuacán	México
55825	Ampliación Ejidal Tlajinga	Colonia	Teotihuacán	México
55826	Ampliación San Francisco	Colonia	Teotihuacán	México
55829	San Juan Teotihuacan Zona Arqueológica	Equipamiento	Teotihuacán	México
55830	San Lorenzo Tlalmimilolpan	Pueblo	Teotihuacán	México
55830	De los Deportes	Colonia	Teotihuacán	México
55830	Del Valle	Colonia	Teotihuacán	México
55833	El Potrero	Colonia	Teotihuacán	México
55833	La Ventilla	Colonia	Teotihuacán	México
55834	Santiago Atlatongo	Pueblo	Teotihuacán	México
55835	Santa María Coatlán	Ejido	Teotihuacán	México
55835	Santa Catarina	Colonia	Teotihuacán	México
55836	San Sebastián	Ejido	Teotihuacán	México
55837	San Lorenzo	Ejido	Teotihuacán	México
55838	El Potrero (Ejido Purificación)	Ejido	Teotihuacán	México
55838	Atlatongo	Ejido	Teotihuacán	México
55840	Santa María Maquixco	Colonia	Teotihuacán	México
55840	Ampliación Ejidal Maquixco	Colonia	Teotihuacán	México
55843	San Agustín Actipac	Pueblo	Teotihuacán	México
55843	Ampliación Cadena Maquixco	Colonia	Teotihuacán	México
55843	El Cayahual	Colonia	Teotihuacán	México
55844	Hacienda Cadena	Unidad habitacional	Teotihuacán	México
55845	Palomar Maquixco	Colonia	Teotihuacán	México
55845	Palomar Atlatongo	Colonia	Teotihuacán	México
55846	Santiago Zacualuca	Pueblo	Teotihuacán	México
55846	Tercera Sección de Atlatongo (Cerro Ocuilán)	Ejido	Teotihuacán	México
55847	San Isidro del Progreso	Pueblo	Teotihuacán	México
55850	San Martín de las Pirámides Centro	Pueblo	San Martín de las Pirámides	México
55850	San Martín	Ejido	San Martín de las Pirámides	México
55852	Ixtlahuaca	Pueblo	San Martín de las Pirámides	México
55852	Santa María Tezompa	Pueblo	San Martín de las Pirámides	México
55852	Álvaro Obregón	Colonia	San Martín de las Pirámides	México
55852	El Saltito	Ranchería	San Martín de las Pirámides	México
55853	Cozotlán Norte	Colonia	San Martín de las Pirámides	México
55853	San Antonio de las Palmas	Barrio	San Martín de las Pirámides	México
55853	Tlachinolpa	Ranchería	San Martín de las Pirámides	México
55854	San Marcos Cerro Gordo	Colonia	San Martín de las Pirámides	México
55854	La Noria	Ranchería	San Martín de las Pirámides	México
55854	San José Cerro Gordo	Ranchería	San Martín de las Pirámides	México
55855	Chimalpa (Kilómetro 34 Carretera México-Tulancingo	Ranchería	San Martín de las Pirámides	México
55855	San Pablo Ixquitlán	Pueblo	San Martín de las Pirámides	México
55855	Predio Palma y Raya	Ranchería	San Martín de las Pirámides	México
55855	Tlacatecpan	Ranchería	San Martín de las Pirámides	México
55855	Club Campestre Teotihuacán	Fraccionamiento	San Martín de las Pirámides	México
55856	Santa María Palapa	Pueblo	San Martín de las Pirámides	México
55859	Santiago Tepetitlán	Pueblo	San Martín de las Pirámides	México
55870	Acolman de Nezahualcóyotl Centro	Colonia	Acolman	México
55870	Los Pinos	Unidad habitacional	Acolman	México
55870	La Virgen	Unidad habitacional	Acolman	México
55875	Tenango	Pueblo	Acolman	México
55875	Emiliano Zapata	Pueblo	Acolman	México
55875	Santa Catarina	Pueblo	Acolman	México
55875	Lomas de Santa Catarina	Colonia	Acolman	México
55875	La Gitana	Unidad habitacional	Acolman	México
55880	Santa María Acolman	Pueblo	Acolman	México
55880	San Juanico	Pueblo	Acolman	México
55880	San Bartolo	Pueblo	Acolman	México
55880	San Bartolo el Chico	Colonia	Acolman	México
55880	San José	Colonia	Acolman	México
55880	Los Reyes	Colonia	Acolman	México
55880	Santa María y Potreritos (La Represa)	Ejido	Acolman	México
55882	Ampliación Lázaro Cárdenas	Colonia	Acolman	México
55882	Lázaro Cárdenas	Colonia	Acolman	México
55882	Los Ángeles	Colonia	Acolman	México
55882	Radio Faro Totolcingo	Colonia	Acolman	México
55882	Paraje el Faro	Colonia	Acolman	México
55883	Geovillas de Terranova 1a Sección	Fraccionamiento	Acolman	México
55883	Real del Valle 1a Seccion	Fraccionamiento	Acolman	México
55883	Las Brisas	Colonia	Acolman	México
55883	Laguna de Chiconautla	Colonia	Acolman	México
55883	Geovillas de Terranova 2a Sección	Fraccionamiento	Acolman	México
55883	Real del Valle 2a Sección	Fraccionamiento	Acolman	México
55884	Anáhuac 1a Secc	Colonia	Acolman	México
55884	Anáhuac 2a Secc	Colonia	Acolman	México
55884	El Potrero	Colonia	Acolman	México
55884	San Miguel Totolcingo	Pueblo	Acolman	México
55884	Santa Cruz	Colonia	Acolman	México
55884	La Era	Colonia	Acolman	México
55884	Plan de Guadalupe	Colonia	Acolman	México
55884	El Olivo	Colonia	Acolman	México
55884	Las Cazuelas	Colonia	Acolman	México
55884	Totolzingo	Ejido	Acolman	México
55885	Privadas de Santa Catarina	Fraccionamiento	Acolman	México
55885	Granjas Familiares	Pueblo	Acolman	México
55885	Tepexpan	Pueblo	Acolman	México
55885	Chimalpa	Colonia	Acolman	México
55885	STUNAM	Fraccionamiento	Acolman	México
55885	La Lola	Unidad habitacional	Acolman	México
55885	La Lagunilla	Unidad habitacional	Acolman	México
55885	San Martín (STUNAM)	Unidad habitacional	Acolman	México
55885	Los Reyes	Barrio	Acolman	México
55885	Misión San Agustín	Conjunto habitacional	Acolman	México
55885	La Cazuela Tepexpan (Santa María Magdalena)	Ejido	Acolman	México
55885	Tepexpan (San Luis Grande)	Ejido	Acolman	México
55886	Benito Juárez	Colonia	Acolman	México
55886	Cuanalan	Pueblo	Acolman	México
55886	Tetexcala	Colonia	Acolman	México
55886	Santa María de Guadalupe	Colonia	Acolman	México
55886	Loma Bonita	Colonia	Acolman	México
55887	Nueva Colonia el Calvario	Colonia	Acolman	México
55887	El Pastal (San Damián)	Colonia	Acolman	México
55887	Ejido de San Marcos Nepantla	Colonia	Acolman	México
55887	San Marcos Nepantla	Pueblo	Acolman	México
55887	Besana de Santa Catarina y Tepango	Rancho	Acolman	México
55888	Pirules	Colonia	Acolman	México
55888	Guerrero	Colonia	Acolman	México
55888	Prados de San Juan	Colonia	Acolman	México
55890	San Marcos	Ejido	Acolman	México
55890	San Mateo Chipiltepec	Pueblo	Acolman	México
55890	Loma Linda	Colonia	Acolman	México
55890	Pilares	Colonia	Acolman	México
55890	Ahuaxtla	Colonia	Acolman	México
55893	San Mateo (Pasando la Vía)	Ejido	Acolman	México
55894	San Pedro Tepetitlán	Pueblo	Acolman	México
55894	El Ranchito	Colonia	Acolman	México
55895	San Lucas Tepango	Pueblo	Acolman	México
55895	San Miguel Xometla	Pueblo	Acolman	México
55895	La Concepción (Xometla)	Colonia	Acolman	México
55895	Quinta las Flores	Colonia	Acolman	México
55896	El Calvario Acolman	Ejido	Acolman	México
55899	San Francisco Zacango	Pueblo	Acolman	México
55900	Otumba de Gómez Farías	Pueblo	Otumba	México
55900	El Chabacano	Colonia	Otumba	México
55913	Xamimilolpa (Xolpa)	Barrio	Otumba	México
55913	El Ranchito	Colonia	Otumba	México
55913	Estado de México	Colonia	Otumba	México
55913	INFONAVIT San Esteban	Unidad habitacional	Otumba	México
55913	La Trinidad	Barrio	Otumba	México
55913	La Estación	Colonia	Otumba	México
55913	Adolfo López Mateos	Colonia	Otumba	México
55914	El Rosario	Colonia	Otumba	México
55914	Magisterial	Unidad habitacional	Otumba	México
55914	San Cosme	Barrio	Otumba	México
55914	Puentes Cuates	Barrio	Otumba	México
55914	San Ignacio	Colonia	Otumba	México
55914	La Conchita	Colonia	Otumba	México
55920	Santiago Tolman	Pueblo	Otumba	México
55920	La Cruz	Colonia	Otumba	México
55923	Coyotepec	Pueblo	Otumba	México
55923	San Miguel Xolco	Pueblo	Otumba	México
55924	Chacalco	Colonia	Otumba	México
55924	San Juan Tocuila (Tocuila)	Pueblo	Otumba	México
55924	San Lorenzo	Ranchería	Otumba	México
55924	Poyoxco	Pueblo	Otumba	México
55924	Tlalmimilolpa	Pueblo	Otumba	México
55924	Tlahuico	Colonia	Otumba	México
55924	Jacarandas	Colonia	Otumba	México
55924	Tepa Grande (Rancho Guadalupe Tepa)	Colonia	Otumba	México
55924	Centro de Readaptación Social Otumba	Equipamiento	Otumba	México
55925	San Francisco Tlaltica	Pueblo	Otumba	México
55925	Oxtotipac	Pueblo	Otumba	México
55926	Cuautlatcingo	Pueblo	Otumba	México
55926	Rancho el Mayorazgo	Ranchería	Otumba	México
55926	Nueva Colonia de Axalco	Colonia	Otumba	México
55926	San Miguel Axalco Chico	Colonia	Otumba	México
55926	El Potrero	Ejido	Otumba	México
55927	Belém	Pueblo	Otumba	México
55927	Altica	Ranchería	Otumba	México
55927	La Zumbona	Ranchería	Otumba	México
55927	Tecalco	Ranchería	Otumba	México
55927	ZR	Ranchería	Otumba	México
55930	San Martín Ahuatepec	Pueblo	Otumba	México
55930	Santa Brígida	Ranchería	Otumba	México
55930	Los Capulines	Colonia	Otumba	México
55930	Liberacos Uno	Granja	Otumba	México
55930	Los Conquianes	Granja	Otumba	México
55930	La Providencia (Florencio Juárez)	Rancho	Otumba	México
55930	Rancho la Puente	Ranchería	Otumba	México
55930	San Cosme	Granja	Otumba	México
55934	Xochihuacán	Ranchería	Otumba	México
55935	San Marcos (San Marcos Tlaxuchilco)	Pueblo	Otumba	México
55936	Buenavista	Pueblo	Otumba	México
55936	Las Papas (Rancho de Don Jorge Olvera)	Rancho	Otumba	México
55936	Rancho Colorado	Ranchería	Otumba	México
55937	Santa Bárbara	Pueblo	Otumba	México
55937	Santa Gertrudis	Ranchería	Otumba	México
55937	San Telmo	Ranchería	Otumba	México
55937	Coamilpa	Ranchería	Otumba	México
55937	San José de las Presas (Cuautenco)	Ranchería	Otumba	México
55937	San José Coamilpa (Ejido de Otumba)	Ejido	Otumba	México
55937	La Escondida	Ejido	Otumba	México
55940	Axapusco	Pueblo	Axapusco	México
55940	Tlamapa	Pueblo	Axapusco	México
55940	San Bartolo Alto	Barrio	Axapusco	México
55940	San Martín	Barrio	Axapusco	México
55940	Cuauhtémoc	Colonia	Axapusco	México
55940	San Antonio	Barrio	Axapusco	México
55943	Soapayuca	Hacienda	Axapusco	México
55943	Tezoncalli	Colonia	Axapusco	México
55950	La Cañada	Colonia	Axapusco	México
55950	Guadalupe Relinas	Pueblo	Axapusco	México
55950	San Felipe Zacatepec	Pueblo	Axapusco	México
55950	San Antonio Coayuca	Pueblo	Axapusco	México
55952	San Mateo	Barrio	Axapusco	México
55952	Santa María Actipac	Pueblo	Axapusco	México
55952	Zacatepec	Ranchería	Axapusco	México
55954	San Pablo Xuchitl	Pueblo	Axapusco	México
55955	Santo Domingo Aztacameca	Pueblo	Axapusco	México
55955	San Nicolás Tetepantla	Exhacienda	Axapusco	México
55956	Los Remedios	Colonia	Axapusco	México
55960	San Antonio Ometusco	Pueblo	Axapusco	México
55963	San Miguel Ometusco	Hacienda	Axapusco	México
55963	Xala	Pueblo	Axapusco	México
55963	Santa Ana	Ranchería	Axapusco	México
55965	Jaltepec	Pueblo	Axapusco	México
55966	Atla (Tecuautitlán Atla)	Pueblo	Axapusco	México
55970	Hidalgo A	Barrio	Nopaltepec	México
55970	Hidalgo B	Barrio	Nopaltepec	México
55970	Morelos A	Barrio	Nopaltepec	México
55970	Morelos B	Barrio	Nopaltepec	México
55970	Vicente Guerrero	Barrio	Nopaltepec	México
55973	La Puerta	Exhacienda	Nopaltepec	México
55975	San Felipe Teotitlán	Pueblo	Nopaltepec	México
55975	Huilotongo	Barrio	Nopaltepec	México
55975	Tlaxixilo	Barrio	Nopaltepec	México
55975	Roma	Colonia	Nopaltepec	México
55975	Ex-Hacienda de Tepatepec	Rancho	Nopaltepec	México
55976	Tepetzingo	Ranchería	Nopaltepec	México
55976	San Miguel Atepoxco	Ranchería	Nopaltepec	México
55976	San Felipe (Moratepec)	Ranchería	Nopaltepec	México
55977	Venta de Cruz	Ranchería	Nopaltepec	México
55978	Las Ambrises	Rancho	Nopaltepec	México
55978	Santa Inés Amiltepec	Exhacienda	Nopaltepec	México
55980	San Bartolomé Actopan	Pueblo	Temascalapa	México
55980	San Juan Teacalco	Pueblo	Temascalapa	México
55980	San Miguel	Barrio	Temascalapa	México
55980	San Antonio	Barrio	Temascalapa	México
55980	De la Cruz	Barrio	Temascalapa	México
55980	De Dolores	Barrio	Temascalapa	México
55980	San José	Barrio	Temascalapa	México
55983	El Abrojal o Barranquillas	Ranchería	Temascalapa	México
55983	El Chopo	Ranchería	Temascalapa	México
55984	Belén	Colonia	Temascalapa	México
55984	Ocotitlán	Ranchería	Temascalapa	México
55984	San Cipriano (Rancho el Piojo)	Ranchería	Temascalapa	México
55984	San Ignacio	Ranchería	Temascalapa	México
55985	Atempan	Ranchería	Temascalapa	México
55985	Tepehuixco	Ranchería	Temascalapa	México
55988	Las Pintas	Ranchería	Temascalapa	México
55989	Presa del Rey	Pueblo	Temascalapa	México
55990	Ixtlahuaca de Cuauhtémoc	Pueblo	Temascalapa	México
55993	San Mateo Teopancala	Pueblo	Temascalapa	México
55993	La Estrella	Ranchería	Temascalapa	México
55993	Ex Hacienda de Paula	Fraccionamiento	Temascalapa	México
55994	Santa Ana Tlachihualpa	Pueblo	Temascalapa	México
55994	Axalpa	Colonia	Temascalapa	México
55994	Tontiopa	Colonia	Temascalapa	México
55995	San Luis Tecuautitlán	Pueblo	Temascalapa	México
55995	San Luis	Colonia	Temascalapa	México
55995	Mihuacán	Ranchería	Temascalapa	México
55996	Santa María Maquixco (El Alto)	Ranchería	Temascalapa	México
55996	Álvaro Obregón	Colonia	Temascalapa	México
55996	La Presa	Ranchería	Temascalapa	México
55997	San Cristóbal Colhuacán	Ranchería	Temascalapa	México
55998	San Miguel Atlamajac	Pueblo	Temascalapa	México
55998	El Tejocote	Ejido	Temascalapa	México
56000	Tezoyuca	Pueblo	Tezoyuca	México
56003	Buenos Aires	Barrio	Tezoyuca	México
56004	Ejido el Rosario	Colonia	Tezoyuca	México
56004	Resurrección	Barrio	Tezoyuca	México
56005	La Ascensión	Barrio	Tezoyuca	México
56006	Santiago	Barrio	Tezoyuca	México
56006	El Oasis	Barrio	Tezoyuca	México
56007	Ejido de las Casas Viejas	Colonia	Tezoyuca	México
56007	El Ejido San Felipe (Calle de la Mina)	Colonia	Tezoyuca	México
56007	San Felipe	Barrio	Tezoyuca	México
56010	Ampliación Tezoyuca	Colonia	Tezoyuca	México
56020	Tequisistlán	Pueblo	Tezoyuca	México
56023	Guadalupano (Ejido Tequisistlán)	Barrio	Tezoyuca	México
56024	De Tequisistlán Primero	Ejido	Tezoyuca	México
56030	San Andrés Chiautla Centro	Colonia	Chiautla	México
56030	San Sebastián	Barrio	Chiautla	México
56030	San Juan	Barrio	Chiautla	México
56030	Pueblo Nuevo	Barrio	Chiautla	México
56030	San Francisco	Barrio	Chiautla	México
56030	Huitznahuac	Pueblo	Chiautla	México
56030	Santa Catarina	Barrio	Chiautla	México
56030	San Antonio	Condominio	Chiautla	México
56030	Residencial San Andrés	Fraccionamiento	Chiautla	México
56030	California	Fraccionamiento	Chiautla	México
56030	Residencial San Luis	Fraccionamiento	Chiautla	México
56033	Santiago Chimalpa (Chimalpa)	Pueblo	Chiautla	México
56033	Ixquitlán	Barrio	Chiautla	México
56034	San Bartolo	Barrio	Chiautla	México
56035	La Concepción	Colonia	Chiautla	México
56035	Ocopulco	Pueblo	Chiautla	México
56035	La Frontera	Colonia	Chiautla	México
56036	Atenguillo	Pueblo	Chiautla	México
56036	Amajac	Barrio	Chiautla	México
56036	Residencial Los Pirules	Fraccionamiento	Chiautla	México
56037	San Alberto	Fraccionamiento	Chiautla	México
56037	Nonoalco	Pueblo	Chiautla	México
56037	Arboledas	Fraccionamiento	Chiautla	México
56038	Chiautla (Colonia Guadalupe)	Ejido	Chiautla	México
56040	San Lucas Huitzilhuacán	Pueblo	Chiautla	México
56040	Tepetitlán	Pueblo	Chiautla	México
56040	Tlaltecahuacán	Pueblo	Chiautla	México
56050	Papalotla	Pueblo	Papalotla	México
56053	Belém	Barrio	Papalotla	México
56054	Chimalpa	Barrio	Papalotla	México
56055	Coxotla	Barrio	Papalotla	México
56056	Mazatla	Barrio	Papalotla	México
56057	Ixayoc	Barrio	Papalotla	México
56070	Huerta Padilla	Barrio	Tepetlaoxtoc	México
56070	Concepción Jolalpan Centro	Pueblo	Tepetlaoxtoc	México
56070	San Pablo Jolalpan	Pueblo	Tepetlaoxtoc	México
56070	Tepetlaoxtoc de Hidalgo	Pueblo	Tepetlaoxtoc	México
56070	Los Reyes Nopala	Pueblo	Tepetlaoxtoc	México
56070	San Francisco Jolalpan	Pueblo	Tepetlaoxtoc	México
56074	El Tepetloxto (Colonia Lomas de San Gabriel)	Colonia	Tepetlaoxtoc	México
56075	La Loma (La Loma San Isidro)	Colonia	Tepetlaoxtoc	México
56077	Santiago	Colonia	Tepetlaoxtoc	México
56078	Tulteca Teopan	Colonia	Tepetlaoxtoc	México
56080	La Venta (La Loma)	Colonia	Tepetlaoxtoc	México
56080	San Juan Totolapan	Pueblo	Tepetlaoxtoc	México
56080	Santo Tomás Apipilhuasco (Santo Tomás)	Pueblo	Tepetlaoxtoc	México
56085	San Bernardo Tlalmimilolpan	Pueblo	Tepetlaoxtoc	México
56086	San Andrés de las Peras	Pueblo	Tepetlaoxtoc	México
56087	San Pedro Chiautzingo	Pueblo	Tepetlaoxtoc	México
56087	La Trinidad	Pueblo	Tepetlaoxtoc	México
56100	Texcoco de Mora Centro	Colonia	Texcoco	México
56105	San Pedro	Barrio	Texcoco	México
56106	Las Salinas	Colonia	Texcoco	México
56110	Joyas de San Mateo	Colonia	Texcoco	México
56110	Zaragoza-San Pablo	Colonia	Texcoco	México
56120	INFONAVIT	Unidad habitacional	Texcoco	México
56120	San Juanito	Barrio	Texcoco	México
56120	El Retiro	Colonia	Texcoco	México
56120	Santa Cruz de Arriba	Colonia	Texcoco	México
56120	Valle de Santa Cruz	Colonia	Texcoco	México
56130	La Conchita	Colonia	Texcoco	México
56130	San Sebastián	Colonia	Texcoco	México
56130	La Paz	Colonia	Texcoco	México
56130	ISSEMYM	Unidad habitacional	Texcoco	México
56130	La Trinidad	Colonia	Texcoco	México
56130	Conjunto la Trinidad	Fraccionamiento	Texcoco	México
56130	Los Jilgueros	Unidad habitacional	Texcoco	México
56130	Condominios Maye	Unidad habitacional	Texcoco	México
56140	Ahuehuetes	Colonia	Texcoco	México
56140	San Lorenzo	Colonia	Texcoco	México
56140	San Martín	Colonia	Texcoco	México
56140	El Carmen	Colonia	Texcoco	México
56150	Las Vegas	Unidad habitacional	Texcoco	México
56150	Salitrería	Colonia	Texcoco	México
56150	Santa Úrsula	Barrio	Texcoco	México
56150	Embotelladores	Unidad habitacional	Texcoco	México
56150	San Antonio	Fraccionamiento	Texcoco	México
56160	Niños Héroes	Colonia	Texcoco	México
56160	San Pedro	Fraccionamiento	Texcoco	México
56160	Los Sauces	Condominio	Texcoco	México
56160	Tex Plus	Unidad habitacional	Texcoco	México
56170	San Mateo	Colonia	Texcoco	México
56170	Las Américas	Colonia	Texcoco	México
56170	Joyas de Santa Ana	Colonia	Texcoco	México
56170	El Xolache I	Fraccionamiento	Texcoco	México
56170	El Xolache II	Unidad habitacional	Texcoco	México
56200	Vicente Riva Palacio	Pueblo	Texcoco	México
56203	La Magdalena Panoaya	Pueblo	Texcoco	México
56204	Emiliano Zapata	Colonia	Texcoco	México
56205	San Felipe	Colonia	Texcoco	México
56205	Santa Cruz de Abajo	Colonia	Texcoco	México
56207	Lázaro Cárdenas	Colonia	Texcoco	México
56208	San Miguel Tocuila	Pueblo	Texcoco	México
56210	San Simón	Pueblo	Texcoco	México
56213	San José Texopa	Pueblo	Texcoco	México
56214	Los Reyes San Salvador	Pueblo	Texcoco	México
56215	Pentecostés	Pueblo	Texcoco	México
56216	La Resurrección	Pueblo	Texcoco	México
56217	Santiaguito	Pueblo	Texcoco	México
56217	Santa María Tulantongo	Pueblo	Texcoco	México
56217	Xala	Colonia	Texcoco	México
56220	San Luis Huexotla	Pueblo	Texcoco	México
56223	Bellavista	Colonia	Texcoco	México
56224	Buenavista	Rancho	Texcoco	México
56225	Lomas de Cristo	Fraccionamiento	Texcoco	México
56225	Villas de Tolimpa	Colonia	Texcoco	México
56225	Leyes de Reforma	Colonia	Texcoco	México
56225	Fray Servando Teresa de Mier	Colonia	Texcoco	México
56225	Ampliación Leyes de Reforma	Colonia	Texcoco	México
56226	San Mateo Huexotla	Pueblo	Texcoco	México
56226	Sector Popular	Colonia	Texcoco	México
56226	La Cabaña	Fraccionamiento	Texcoco	México
56227	El Capulín Sur	Colonia	Texcoco	México
56227	Cooperativo	Colonia	Texcoco	México
56227	Emiliano Zapata-ISSSTE	Unidad habitacional	Texcoco	México
56227	Universidad Autónoma de Chapingo	Equipamiento	Texcoco	México
56227	Profesores	Colonia	Texcoco	México
56227	San Nicolás Huexotla	Colonia	Texcoco	México
56227	Tulipanes	Colonia	Texcoco	México
56227	Las Bugambilias	Fraccionamiento	Texcoco	México
56230	San Diego	Pueblo	Texcoco	México
56233	SUTEYN	Unidad habitacional	Texcoco	México
56235	El Molino de Flores	Fraccionamiento	Texcoco	México
56236	Xocotlán	Pueblo	Texcoco	México
56237	El Batán	Colonia	Texcoco	México
56240	La Purificación Tepetitla	Pueblo	Texcoco	México
56243	Ejido San Juan Tezontla	Ranchería	Texcoco	México
56243	San Joaquín Coapango	Pueblo	Texcoco	México
56243	San Juan Tezontla	Pueblo	Texcoco	México
56243	Santa Inés	Pueblo	Texcoco	México
56243	Santa Cruz Mexicapa	Pueblo	Texcoco	México
56243	San Bartolo	Colonia	Texcoco	México
56243	Jardines de Santa Inés	Colonia	Texcoco	México
56244	San Agustín	Ranchería	Texcoco	México
56244	San Jerónimo Amanalco	Pueblo	Texcoco	México
56244	Santa María Tecuanulco	Pueblo	Texcoco	México
56245	San Pablo Ixayoc	Pueblo	Texcoco	México
56245	Santa Catarina del Monte	Pueblo	Texcoco	México
56245	Guadalupe Amanalco	Colonia	Texcoco	México
56246	Santa María Nativitas	Pueblo	Texcoco	México
56246	San Dieguito Xochimanca	Pueblo	Texcoco	México
56246	Tequexquináhuac	Pueblo	Texcoco	México
56247	San Nicolás Tlaminca	Pueblo	Texcoco	México
56247	San Miguel Tlaixpan	Pueblo	Texcoco	México
56250	San Miguel Coatlinchán	Pueblo	Texcoco	México
56250	Guadalupe	Colonia	Texcoco	México
56253	Valle de Tláloc	Colonia	Texcoco	México
56253	San Juan	Colonia	Texcoco	México
56253	Praderas de Tecuac	Colonia	Texcoco	México
56254	Tepetitlán	Pueblo	Texcoco	México
56254	San Juan Potreros	Colonia	Texcoco	México
56254	Paraíso 300	Unidad habitacional	Texcoco	México
56255	Quintas del Valle	Colonia	Texcoco	México
56255	Santiago Cuautlalpan	Pueblo	Texcoco	México
56255	El Trabajo	Colonia	Texcoco	México
56255	El Arenal	Colonia	Texcoco	México
56255	San José (El Paraíso)	Colonia	Texcoco	México
56255	Villas de Santiago	Unidad habitacional	Texcoco	México
56255	San Pedro Cuautlanpan	Colonia	Texcoco	México
56256	Santa Lucía	Colonia	Texcoco	México
56256	San Felipe de Jesús	Colonia	Texcoco	México
56257	Lomas de La Cruz	Colonia	Texcoco	México
56257	Lomas de San Esteban	Unidad habitacional	Texcoco	México
56257	Los Pinos	Pueblo	Texcoco	México
56257	Las Tijeras	Pueblo	Texcoco	México
56260	San Andrés (La Alcanforera)	Pueblo	Texcoco	México
56260	San Bernardino	Pueblo	Texcoco	México
56263	Santa Irene	Pueblo	Texcoco	México
56263	La Concepción	Pueblo	Texcoco	México
56263	Nezahualcóyotl (Boyeros)	Colonia	Texcoco	México
56263	San Olegario	Pueblo	Texcoco	México
56264	Ejidos de Beltrán Cuautlalpan	Colonia	Texcoco	México
56264	Montecillo	Colonia	Texcoco	México
56264	Wenceslao Victoria	Colonia	Texcoco	México
56264	Colegio de Postgraduados	Equipamiento	Texcoco	México
56265	El Tejocote	Fraccionamiento	Texcoco	México
56265	Lázaro Cárdenas	Colonia	Texcoco	México
56266	Santa Martha	Colonia	Texcoco	México
56267	Guadalupe Victoria	Colonia	Texcoco	México
56268	Bordo Poniente	Equipamiento	Texcoco	México
56270	San Miguel	Barrio	Chiconcuac	México
56270	San Diego	Barrio	Chiconcuac	México
56270	Emiliano Zapata	Colonia	Chiconcuac	México
56270	San Pedro	Barrio	Chiconcuac	México
56270	Santa María	Colonia	Chiconcuac	México
56272	San Pablito Calmimilolco	Pueblo	Chiconcuac	México
56273	Las Joyas	Colonia	Chiconcuac	México
56273	El Araujo	Colonia	Chiconcuac	México
56274	El Mamut	Colonia	Chiconcuac	México
56280	San Cristóbal	Ejido	Chiconcuac	México
56300	Ejidos de Cambray	Colonia	Atenco	México
56300	San Francisco Acuexcomac	Pueblo	Atenco	México
56300	San Salvador Atenco	Pueblo	Atenco	México
56300	Santa Gertrudis	Pueblo	Atenco	México
56303	La Noria	Pueblo	Atenco	México
56303	San Lazarito	Pueblo	Atenco	México
56303	Ejidal San Salvador	Pueblo	Atenco	México
56303	Hacienda la Grande Fracción Uno	Hacienda	Atenco	México
56304	Zapotlán	Pueblo	Atenco	México
56304	La Pastoría	Pueblo	Atenco	México
56305	Francisco I Madero	Pueblo	Atenco	México
56305	Ejido San Salvador Acuexcomac (Ejido la PurIsima)	Pueblo	Atenco	México
56305	El Amanal	Pueblo	Atenco	México
56305	Ejido la Magdalena Panoaya	Pueblo	Atenco	México
56306	Ejido de San Cristóbal Nexquipayac	Pueblo	Atenco	México
56310	Nueva Santa Rosa	Colonia	Atenco	México
56310	Granjas el Arenal	Colonia	Atenco	México
56310	El Salado	Colonia	Atenco	México
56314	Santa Isabel Ixtapan	Colonia	Atenco	México
56314	Nezahualcoyotl - Ixtapan	Colonia	Atenco	México
56314	Los Hornos (El Presidio)	Colonia	Atenco	México
56315	San Cristóbal Nexquipayac	Pueblo	Atenco	México
56315	Granjas la Purísima	Pueblo	Atenco	México
56315	Las Salinas	Pueblo	Atenco	México
56315	Benito Quezada	Pueblo	Atenco	México
56315	Chilileco	Pueblo	Atenco	México
56315	La Purisima-La Purisima Norte	Pueblo	Atenco	México
56330	Santa María Chimalhuacán	Pueblo	Chimalhuacán	México
56334	El Molino	Fraccionamiento	Chimalhuacán	México
56334	San Pablo	Barrio	Chimalhuacán	México
56334	San Pedro	Barrio	Chimalhuacán	México
56334	Artesanos	Barrio	Chimalhuacán	México
56334	Canasteros	Barrio	Chimalhuacán	México
56334	Herreros	Barrio	Chimalhuacán	México
56334	Mineros	Barrio	Chimalhuacán	México
56334	Carpinteros	Barrio	Chimalhuacán	México
56334	Fundidores	Barrio	Chimalhuacán	México
56334	Pescadores	Barrio	Chimalhuacán	México
56334	Luis Córdoba Reyes	Colonia	Chimalhuacán	México
56334	San Pablo Parte Baja	Barrio	Chimalhuacán	México
56334	San Pedro Parte Baja	Barrio	Chimalhuacán	México
56334	Tepalcate	Colonia	Chimalhuacán	México
56334	Nueva Tepalcates	Colonia	Chimalhuacán	México
56334	Melchor Ocampo	Colonia	Chimalhuacán	México
56334	Marco Antonio Sosa	Colonia	Chimalhuacán	México
56335	José María Luis Mora	Colonia	Chimalhuacán	México
56335	Guadalupe	Colonia	Chimalhuacán	México
56335	San Miguel	Colonia	Chimalhuacán	México
56335	Santa María Nativitas	Barrio	Chimalhuacán	México
56335	Rancho de las Nieves	Colonia	Chimalhuacán	México
56335	Acuitlapilco Primera Sección	Colonia	Chimalhuacán	México
56335	Ciudad Alegre	Colonia	Chimalhuacán	México
56335	Acuitlapilco Segunda Sección	Colonia	Chimalhuacán	México
56335	Acuitlapilco Tercera Sección	Colonia	Chimalhuacán	México
56335	Jardines de Acuitlapilco	Colonia	Chimalhuacán	México
56335	Luis Donaldo Colosio	Colonia	Chimalhuacán	México
56335	Primavera	Colonia	Chimalhuacán	México
56335	Arboledas	Colonia	Chimalhuacán	México
56335	Corte Portezuelos	Colonia	Chimalhuacán	México
56335	Lomas de Santa María	Colonia	Chimalhuacán	México
56335	El Llano de Santa María	Colonia	Chimalhuacán	México
56335	Apapasco	Colonia	Chimalhuacán	México
56335	Unión Antorchista	Colonia	Chimalhuacán	México
56335	Cuatro de Febrero	Colonia	Chimalhuacán	México
56335	Constructores	Barrio	Chimalhuacán	México
56337	Zapotla	Colonia	Chimalhuacán	México
56337	San Isidro	Barrio	Chimalhuacán	México
56337	Lomas de Totolco Tlatelco	Colonia	Chimalhuacán	México
56337	Copalera	Colonia	Chimalhuacán	México
56337	San Andrés	Barrio	Chimalhuacán	México
56337	San Juan Zapotla	Colonia	Chimalhuacán	México
56337	El Capulín	Colonia	Chimalhuacán	México
56337	Tepenepantla	Colonia	Chimalhuacán	México
56337	Tlaixco	Colonia	Chimalhuacán	México
56337	Olmedo	Colonia	Chimalhuacán	México
56337	Cornejal	Colonia	Chimalhuacán	México
56337	Lomas de Chimalhuacán	Colonia	Chimalhuacán	México
56337	Ladera	Colonia	Chimalhuacán	México
56337	Santo Domingo	Colonia	Chimalhuacán	México
56337	Apelsa	Fraccionamiento	Chimalhuacán	México
56337	El Pocito	Colonia	Chimalhuacán	México
56337	Arenitas	Colonia	Chimalhuacán	México
56337	La Mina	Colonia	Chimalhuacán	México
56338	Corte el Pocito	Colonia	Chimalhuacán	México
56338	Corte Escalerillas	Colonia	Chimalhuacán	México
56338	Corte la Joya	Colonia	Chimalhuacán	México
56338	Corte la Palma Segunda Sección	Colonia	Chimalhuacán	México
56338	Corte Santa Cruz	Colonia	Chimalhuacán	México
56338	Corte Xolhuango	Colonia	Chimalhuacán	México
56338	Corte Lomas de Buenavista	Colonia	Chimalhuacán	México
56338	Corte la Palma Primera Sección	Ejido	Chimalhuacán	México
56338	Lomas de Chocolín	Colonia	Chimalhuacán	México
56338	Corte San Isidro	Colonia	Chimalhuacán	México
56338	Ampliación Lomas de San Pablo	Colonia	Chimalhuacán	México
56338	Lomas de San Pablo	Colonia	Chimalhuacán	México
56338	Corte San Pablo	Colonia	Chimalhuacán	México
56338	Corte Huatongo	Colonia	Chimalhuacán	México
56340	Cerro de Las Palomas	Colonia	Chimalhuacán	México
56340	San Lorenzo	Fraccionamiento	Chimalhuacán	México
56340	Ampliación San Lorenzo (Parte Alta)	Colonia	Chimalhuacán	México
56340	San Lorenzo Chimalco	Colonia	Chimalhuacán	México
56340	San Lorenzo Parte Alta	Barrio	Chimalhuacán	México
56343	SUTAUR Oriente	Fraccionamiento	Chimalhuacán	México
56343	San José Buenavista	Fraccionamiento	Chimalhuacán	México
56343	Villa San Agustín Atlapulco	Colonia	Chimalhuacán	México
56343	Jardines de San Agustín (La Isla, Sancho Ganadero)	Colonia	Chimalhuacán	México
56343	Miramar	Colonia	Chimalhuacán	México
56343	Tequesquinahuac	Colonia	Chimalhuacán	México
56343	Tierra Santa (Maravillas)	Fraccionamiento	Chimalhuacán	México
56343	Balcones de San Agustín	Colonia	Chimalhuacán	México
56343	Ampliación San Agustín	Colonia	Chimalhuacán	México
56343	Ampliación San Agustín Zona Poniente	Colonia	Chimalhuacán	México
56343	Zona Comunal San Agustín	Colonia	Chimalhuacán	México
56343	Diecisiete de Marzo	Colonia	Chimalhuacán	México
56343	Israel	Colonia	Chimalhuacán	México
56343	Los Olivos	Fraccionamiento	Chimalhuacán	México
56343	Buenos Aires	Colonia	Chimalhuacán	México
56343	Adolfo López Mateos	Colonia	Chimalhuacán	México
56343	Ampliación San Agustín Zona Oriente	Colonia	Chimalhuacán	México
56344	Ejido San Agustín Atlapulco	Colonia	Chimalhuacán	México
56344	Villa los Colorines	Fraccionamiento	Chimalhuacán	México
56346	Filiberto Gómez	Colonia	Chimalhuacán	México
56346	Progreso de Oriente	Colonia	Chimalhuacán	México
56346	Xaltipac	Colonia	Chimalhuacán	México
56350	Xochiaca	Barrio	Chimalhuacán	México
56350	Xochitenco 3a Sección	Colonia	Chimalhuacán	México
56350	Diecisiete de Septiembre	Colonia	Chimalhuacán	México
56350	Xochiaca 2a Sección	Barrio	Chimalhuacán	México
56350	Ampliación Xochiaca parte Alta	Colonia	Chimalhuacán	México
56350	Santa Cecilia Xochiaca	Barrio	Chimalhuacán	México
56350	La Joyita	Colonia	Chimalhuacán	México
56350	Xochitenco Parte Alta	Colonia	Chimalhuacán	México
56353	Saraperos	Barrio	Chimalhuacán	México
56353	Tlatelco	Colonia	Chimalhuacán	México
56353	Orfebres	Barrio	Chimalhuacán	México
56353	Arturo Montiel	Colonia	Chimalhuacán	México
56356	Tejedores	Barrio	Chimalhuacán	México
56356	Jugueteros	Barrio	Chimalhuacán	México
56356	Canteros	Barrio	Chimalhuacán	México
56356	Talabarteros	Barrio	Chimalhuacán	México
56356	Plateros	Barrio	Chimalhuacán	México
56356	Vidrieros	Barrio	Chimalhuacán	México
56356	Santa Cruz	Colonia	Chimalhuacán	México
56360	Xochitenco 1a Sección	Colonia	Chimalhuacán	México
56360	Xochitenco 2a Sección	Colonia	Chimalhuacán	México
56360	San Juan Xochitenco	Colonia	Chimalhuacán	México
56363	Alfareros	Barrio	Chimalhuacán	México
56363	Ebanistas	Barrio	Chimalhuacán	México
56363	La Rosita	Barrio	Chimalhuacán	México
56363	Transportistas	Barrio	Chimalhuacán	México
56363	Nueva Margarita	Colonia	Chimalhuacán	México
56366	Curtidores	Barrio	Chimalhuacán	México
56366	Hojalateros	Barrio	Chimalhuacán	México
56366	Talladores	Barrio	Chimalhuacán	México
56366	Cesteros	Barrio	Chimalhuacán	México
56366	Labradores	Barrio	Chimalhuacán	México
56366	Tlatel Xochitenco	Colonia	Chimalhuacán	México
56370	San Vicente Chicoloapan de Juárez Centro	Colonia	Chicoloapan	México
56370	Santa Cecilia	Barrio	Chicoloapan	México
56373	El Encino	Fraccionamiento	Chicoloapan	México
56373	El Arenal	Barrio	Chicoloapan	México
56373	San Antonio	Barrio	Chicoloapan	México
56373	San Juan	Barrio	Chicoloapan	México
56373	Los Ángeles	Barrio	Chicoloapan	México
56373	Tejocote	Barrio	Chicoloapan	México
56373	Bonito San Vicente	Unidad habitacional	Chicoloapan	México
56373	Bonito El Manzano	Unidad habitacional	Chicoloapan	México
56373	Hacienda Vista Real	Conjunto habitacional	Chicoloapan	México
56375	Presidentes	Colonia	Chicoloapan	México
56375	El Vergel	Barrio	Chicoloapan	México
56375	Hacienda Piedras Negras	Unidad habitacional	Chicoloapan	México
56376	Santa Rosa	Colonia	Chicoloapan	México
56376	Auris II	Colonia	Chicoloapan	México
56376	Auris III	Colonia	Chicoloapan	México
56376	Ampliación Santa Rosa	Colonia	Chicoloapan	México
56377	San José	Colonia	Chicoloapan	México
56377	Venustiano Carranza	Colonia	Chicoloapan	México
56377	2 de Marzo	Colonia	Chicoloapan	México
56377	Ampliación Presidentes	Colonia	Chicoloapan	México
56377	Auris I	Colonia	Chicoloapan	México
56377	Tlatel	Barrio	Chicoloapan	México
56377	México 86	Barrio	Chicoloapan	México
56377	San Miguel	Barrio	Chicoloapan	México
56377	Arboledas	Unidad habitacional	Chicoloapan	México
56377	Navidad	Barrio	Chicoloapan	México
56380	Real de San Vicente I	Unidad habitacional	Chicoloapan	México
56380	Lomas Chicoloapan	Unidad habitacional	Chicoloapan	México
56383	Lomas de Chicoloapan III	Unidad habitacional	Chicoloapan	México
56383	Real de San Vicente II	Unidad habitacional	Chicoloapan	México
56383	Ciudad Galaxia los Reyes	Unidad habitacional	Chicoloapan	México
56383	Hacienda los Reyes	Unidad habitacional	Chicoloapan	México
56384	Loma San Pedro	Colonia	Chicoloapan	México
56384	La Venta Cuautlalpan	Ejido	Chicoloapan	México
56386	Rancho San Miguel	Unidad habitacional	Chicoloapan	México
56386	Hacienda de Costitlán	Unidad habitacional	Chicoloapan	México
56386	Real de Costitlán I	Unidad habitacional	Chicoloapan	México
56386	Real de Costitlán II	Unidad habitacional	Chicoloapan	México
56386	Geovillas de Costitlán	Unidad habitacional	Chicoloapan	México
56386	La Copalera	Ejido	Chicoloapan	México
56386	La Noria	Colonia	Chicoloapan	México
56386	San Patricio	Colonia	Chicoloapan	México
56386	Loma de Guadalupe	Colonia	Chicoloapan	México
56390	Emiliano Zapata	Colonia	Chicoloapan	México
56390	Ejército del Trabajo	Colonia	Chicoloapan	México
56390	Francisco Villa	Colonia	Chicoloapan	México
56390	Revolución	Colonia	Chicoloapan	México
56395	Mirador Tezaluca	Colonia	Chicoloapan	México
56396	Pozo Número Uno (La Trinidad)	Ranchería	Chicoloapan	México
56396	Pozo Número Cuatro (San Juan)	Ranchería	Chicoloapan	México
56396	Centro Turístico Ejidal	Ejido	Chicoloapan	México
56396	Pozo Número Dos (La Campana)	Ranchería	Chicoloapan	México
56396	Pozo Número Seis (La Longaniza)	Ranchería	Chicoloapan	México
56400	Los Reyes Acaquilpan Centro	Pueblo	La Paz	México
56400	Jardín de Los Reyes	Colonia	La Paz	México
56400	Ampliación Los Reyes	Colonia	La Paz	México
56410	Rincón de Los Reyes	Colonia	La Paz	México
56410	Ancón de los Reyes	Colonia	La Paz	México
56420	Floresta	Fraccionamiento	La Paz	México
56420	Valle de los Pinos	Colonia	La Paz	México
56428	Tepozanes	Unidad habitacional	La Paz	México
56429	Unidad Floresta	Unidad habitacional	La Paz	México
56430	Valle de los Reyes	Colonia	La Paz	México
56440	Coaxusco	Colonia	La Paz	México
56440	Magdalena de Los Reyes	Colonia	La Paz	México
56490	Las Torres III	Unidad habitacional	La Paz	México
56490	Emiliano Zapata	Colonia	La Paz	México
56495	Loma Encantada	Colonia	La Paz	México
56495	Villas del Sol	Unidad habitacional	La Paz	México
56500	San Salvador Tecamachalco	Pueblo	La Paz	México
56500	Ampliación Tecamachalco	Colonia	La Paz	México
56505	2 de Marzo	Fraccionamiento	La Paz	México
56507	El Pino	Colonia	La Paz	México
56508	La Joyita	Colonia	La Paz	México
56508	Bosques de la Magdalena	Colonia	La Paz	México
56509	Conjunto la Paz	Conjunto habitacional	La Paz	México
56509	Jalpa	Colonia	La Paz	México
56509	Las Cruces	Unidad habitacional	La Paz	México
56509	Villas de la Paz	Conjunto habitacional	La Paz	México
56509	Ferrocarril	Unidad habitacional	La Paz	México
56509	Parcelas	Colonia	La Paz	México
56510	Unidad Acaquilpan	Colonia	La Paz	México
56510	Profesor Carlos Hank González	Colonia	La Paz	México
56512	Los Pirules (El Potrero)	Colonia	La Paz	México
56512	San José las Palmas	Colonia	La Paz	México
56512	Lomas de San Sebastián	Colonia	La Paz	México
56512	Tepapatlalco	Colonia	La Paz	México
56513	Ampliación Dr. Jorge Jiménez Cantú	Colonia	La Paz	México
56514	Paso de Minas	Colonia	La Paz	México
56514	Techachaltitla	Colonia	La Paz	México
56514	Bosques de la Magdalena (U.P.R.E.Z.)	Unidad habitacional	La Paz	México
56514	Las Rosas	Colonia	La Paz	México
56514	Lomas de Altavista	Colonia	La Paz	México
56514	Tecontlapexco	Colonia	La Paz	México
56514	Ampliación Magdalena	Colonia	La Paz	México
56515	Dr. Jorge Jiménez Cantú	Colonia	La Paz	México
56516	Ríos de San Isidro	Colonia	La Paz	México
56516	Villas de San Isidro	Colonia	La Paz	México
56516	Ex Hacienda San Isidro	Fraccionamiento	La Paz	México
56516	Parque Industrial San Isidro	Zona industrial	La Paz	México
56516	Mariel	Colonia	La Paz	México
56516	San Isidro (Casas Verdes)	Unidad habitacional	La Paz	México
56516	Ampliación Mariel	Colonia	La Paz	México
56516	20 de Mayo	Colonia	La Paz	México
56516	Lomas de San Isidro El Pino	Colonia	La Paz	México
56516	Lomas de San Isidro 1ra Sección	Colonia	La Paz	México
56516	Lomas de San Isidro 2da Sección	Colonia	La Paz	México
56516	Primavera	Colonia	La Paz	México
56516	Libertad	Colonia	La Paz	México
56516	Tecomatlán	Colonia	La Paz	México
56516	Lomas de San Isidro 3ra Sección	Colonia	La Paz	México
56520	Salitrería	Colonia	La Paz	México
56520	Presidentes	Colonia	La Paz	México
56520	San Sebastián Chimalpa	Pueblo	La Paz	México
56520	Ampliación San Sebastián	Colonia	La Paz	México
56524	C.E.A.S.	Colonia	La Paz	México
56524	El Salado	Colonia	La Paz	México
56524	Ricardo Flores Magón	Colonia	La Paz	México
56524	Cuchilla de la Ancón	Colonia	La Paz	México
56525	Magisterial	Unidad habitacional	La Paz	México
56525	La Magdalena Atlicpac	Pueblo	La Paz	México
56526	Alamedas	Colonia	La Paz	México
56527	Anáhuac	Unidad habitacional	La Paz	México
56527	Arenal	Colonia	La Paz	México
56527	Ampliación Arenal	Colonia	La Paz	México
56528	Ahuaxtla	Colonia	La Paz	México
56528	Unidad Anáhuac Tepetates	Unidad habitacional	La Paz	México
56528	Adolfo López Mateos	Colonia	La Paz	México
56529	La Cerca	Colonia	La Paz	México
56529	Tlazala	Colonia	La Paz	México
56530	Capilla I	Unidad habitacional	Ixtapaluca	México
56530	Capilla III	Unidad habitacional	Ixtapaluca	México
56530	Ixtapaluca Centro	Colonia	Ixtapaluca	México
56530	Jacarandas I y II	Fraccionamiento	Ixtapaluca	México
56530	La Venta	Colonia	Ixtapaluca	México
56530	Zoquiapan	Colonia	Ixtapaluca	México
56530	La Era	Colonia	Ixtapaluca	México
56530	Geovillas San Jacinto	Fraccionamiento	Ixtapaluca	México
56530	Real del Campo	Fraccionamiento	Ixtapaluca	México
56535	El Jaral (El Capulín)	Colonia	Ixtapaluca	México
56535	Jardín Industrial Ixtapaluca	Zona industrial	Ixtapaluca	México
56535	Geovillas de Santa Bárbara	Fraccionamiento	Ixtapaluca	México
56535	El Capulín	Ejido	Ixtapaluca	México
56535	Hacienda las Palmas I y II	Conjunto habitacional	Ixtapaluca	México
56535	Las Palmas Tercera Etapa	Conjunto habitacional	Ixtapaluca	México
56536	San José de la Palma	Unidad habitacional	Ixtapaluca	México
56536	San Buenaventura	Fraccionamiento	Ixtapaluca	México
56537	Capilla II	Unidad habitacional	Ixtapaluca	México
56537	Capilla IV	Unidad habitacional	Ixtapaluca	México
56537	Acozac	Fraccionamiento	Ixtapaluca	México
56537	Tezontle-Zoquiapan	Colonia	Ixtapaluca	México
56538	Santa Bárbara	Colonia	Ixtapaluca	México
56539	La Magdalena	Colonia	Ixtapaluca	México
56539	La Huerta	Colonia	Ixtapaluca	México
56539	El Caracol	Colonia	Ixtapaluca	México
56540	Citlalmina	Colonia	Ixtapaluca	México
56540	Rancho el Carmen	Unidad habitacional	Ixtapaluca	México
56550	Emiliano Zapata	Colonia	Ixtapaluca	México
56550	Derramadero	Colonia	Ixtapaluca	México
56553	El Molino	Colonia	Ixtapaluca	México
56555	Residencial Ayotla	Fraccionamiento	Ixtapaluca	México
56556	José de la Mora	Fraccionamiento	Ixtapaluca	México
56556	Tlapacoya	Pueblo	Ixtapaluca	México
56558	Ampliación Emiliano Zapata	Colonia	Ixtapaluca	México
56560	Ayotla	Pueblo	Ixtapaluca	México
56560	El Calvario	Colonia	Ixtapaluca	México
56563	Loma Bonita	Colonia	Ixtapaluca	México
56564	El Mirador	Colonia	Ixtapaluca	México
56565	Linda Vista	Colonia	Ixtapaluca	México
56565	Santo Tomás	Colonia	Ixtapaluca	México
56565	Magisterial	Unidad habitacional	Ixtapaluca	México
56565	Lomas de Ayotla	Colonia	Ixtapaluca	México
56565	Lavaderos	Colonia	Ixtapaluca	México
56565	Ampliación Acozac	Colonia	Ixtapaluca	México
56565	Ampliación Santo Tomás	Colonia	Ixtapaluca	México
56566	Geovillas de Ayotla	Fraccionamiento	Ixtapaluca	México
56566	Izcalli	Fraccionamiento	Ixtapaluca	México
56566	Rancho Guadalupe	Fraccionamiento	Ixtapaluca	México
56566	Rigoberta Menchú	Colonia	Ixtapaluca	México
56566	Luis Donaldo Colosio	Colonia	Ixtapaluca	México
56566	La Retama	Colonia	Ixtapaluca	México
56566	Ilhuicamina	Colonia	Ixtapaluca	México
56566	Rancho San José	Unidad habitacional	Ixtapaluca	México
56566	Caserío	Unidad habitacional	Ixtapaluca	México
56566	Fermín Álvarez	Colonia	Ixtapaluca	México
56566	Vergel de Guadalupe	Colonia	Ixtapaluca	México
56566	Ampliación 6 de Junio	Colonia	Ixtapaluca	México
56566	6 de Junio	Colonia	Ixtapaluca	México
56566	Luis Córdoba Reyes	Colonia	Ixtapaluca	México
56567	Melchor Ocampo I, II, III, IV y V	Colonia	Ixtapaluca	México
56567	Cerro del Tejolote	Colonia	Ixtapaluca	México
56567	Escalerillas	Colonia	Ixtapaluca	México
56567	Ampliación Escalerillas	Colonia	Ixtapaluca	México
56567	Morelos	Colonia	Ixtapaluca	México
56567	Wenceslao Victoria Soto	Colonia	Ixtapaluca	México
56567	Guadalupana	Colonia	Ixtapaluca	México
56567	Ricardo Calva Reyes	Colonia	Ixtapaluca	México
56567	Lomas de Ixtapaluca	Fraccionamiento	Ixtapaluca	México
56567	Buena Vista	Colonia	Ixtapaluca	México
56567	Contadero	Colonia	Ixtapaluca	México
56567	Ampliación Morelos	Colonia	Ixtapaluca	México
56567	Humberto Gutiérrez	Colonia	Ixtapaluca	México
56568	Unión Antorchista	Colonia	Ixtapaluca	México
56568	El Capulín	Colonia	Ixtapaluca	México
56568	Nueva Antorchista	Colonia	Ixtapaluca	México
56569	Rincón del Bosque	Colonia	Ixtapaluca	México
56569	San Miguel	Colonia	Ixtapaluca	México
56569	El Nopalito	Colonia	Ixtapaluca	México
56569	1° de Mayo	Colonia	Ixtapaluca	México
56569	El Mirto	Colonia	Ixtapaluca	México
56570	Arbolada	Fraccionamiento	Ixtapaluca	México
56570	Geovillas Ixtapaluca 2000	Unidad habitacional	Ixtapaluca	México
56576	Estado de México	Colonia	Ixtapaluca	México
56576	San Juan Tlalpizahuac	Colonia	Ixtapaluca	México
56576	Tlalpizahuac	Pueblo	Ixtapaluca	México
56576	San Antonio	Colonia	Ixtapaluca	México
56576	San Antonio	Unidad habitacional	Ixtapaluca	México
56576	Tlacaelel	Colonia	Ixtapaluca	México
56576	Aquiles Córdoba	Colonia	Ixtapaluca	México
56576	18 de Agosto	Colonia	Ixtapaluca	México
56576	Residencial Park	Fraccionamiento	Ixtapaluca	México
56576	Rey Izcoatl	Colonia	Ixtapaluca	México
56577	Hornos Santa Bárbara	Colonia	Ixtapaluca	México
56577	Alfredo del Mazo	Colonia	Ixtapaluca	México
56577	Santa Cruz Tlalpizahuac	Colonia	Ixtapaluca	México
56577	Valle Verde	Colonia	Ixtapaluca	México
56577	Ampliación Santa Cruz Tlapacoya	Colonia	Ixtapaluca	México
56577	Santa Cruz Tlapacoya	Colonia	Ixtapaluca	México
56579	20 de Noviembre	Colonia	Ixtapaluca	México
56580	Paseos de Coatepec	Colonia	Ixtapaluca	México
56580	Coatepec	Pueblo	Ixtapaluca	México
56580	Rosa de Castilla	Colonia	Ixtapaluca	México
56580	San Juan	Colonia	Ixtapaluca	México
56580	Rancho Verde	Colonia	Ixtapaluca	México
56580	Independencia	Colonia	Ixtapaluca	México
56580	Lomas de Coatepec	Colonia	Ixtapaluca	México
56580	Tetitla	Colonia	Ixtapaluca	México
56584	Pueblo Nuevo (San Isidro Labrador)	Colonia	Ixtapaluca	México
56584	La Mesa	Colonia	Ixtapaluca	México
56584	La Pastoría	Rancho	Ixtapaluca	México
56585	Los Héroes	Unidad habitacional	Ixtapaluca	México
56585	Jesús María	Colonia	Ixtapaluca	México
56585	Plutarco Elias Calles	Colonia	Ixtapaluca	México
56585	La Esperanza	Colonia	Ixtapaluca	México
56585	El Rayo	Colonia	Ixtapaluca	México
56585	Ampliación Plutarco Elias Calles	Colonia	Ixtapaluca	México
56585	Rosa de San Francisco	Unidad habitacional	Ixtapaluca	México
56585	Elsa Córdova Morán	Colonia	Ixtapaluca	México
56586	Tlayehuale	Colonia	Ixtapaluca	México
56586	Geovillas Jesús María	Fraccionamiento	Ixtapaluca	México
56587	Santa Ana	Colonia	Ixtapaluca	México
56587	San Francisco Acuautla	Pueblo	Ixtapaluca	México
56587	Mirador de San Francisco	Colonia	Ixtapaluca	México
56587	Ampliación San Francisco	Colonia	Ixtapaluca	México
56587	San Francisco (Las Joyas)	Ejido	Ixtapaluca	México
56587	Los Hornos	Colonia	Ixtapaluca	México
56587	Francisco Santillán (Atzizintla Tres)	Ranchería	Ixtapaluca	México
56588	Tejalpa	Colonia	Ixtapaluca	México
56588	El Carmen	Colonia	Ixtapaluca	México
56588	Ejido la Virgen	Colonia	Ixtapaluca	México
56588	Juan Antonio Soberanes	Colonia	Ixtapaluca	México
56588	Ampliación Tejalpa	Colonia	Ixtapaluca	México
56588	Julio Chávez López (UPREZ)	Colonia	Ixtapaluca	México
56588	Xalpa (Camino de los Alcanfores)	Ejido	Ixtapaluca	México
56588	El Patronato del Maguey (Santa Rosa)	Ejido	Ixtapaluca	México
56588	El Pozo del Venado	Ejido	Ixtapaluca	México
56588	Linderos de Ixtapaluca (El Tablón)	Ejido	Ixtapaluca	México
56588	Puente del Tablón	Ejido	Ixtapaluca	México
56588	Puente el Mezquite	Ejido	Ixtapaluca	México
56589	Jorge Jiménez Cantú	Colonia	Ixtapaluca	México
56589	Cuatro Vientos	Fraccionamiento	Ixtapaluca	México
56589	La Cañada	Colonia	Ixtapaluca	México
56589	Hornos de Zoquiapan	Colonia	Ixtapaluca	México
56589	Margarita Moran	Colonia	Ixtapaluca	México
56589	San Jerónimo Cuatro Vientos	Colonia	Ixtapaluca	México
56589	Huertas de Canutillo	Pueblo	Ixtapaluca	México
56589	Zoquiapan	Colonia	Ixtapaluca	México
56589	Camino a Mina Milagro (El Potrero)	Colonia	Ixtapaluca	México
56589	Camino Mina Rosita	Colonia	Ixtapaluca	México
56589	Teponaxtle	Colonia	Ixtapaluca	México
56589	Bezana Canutillo	Colonia	Ixtapaluca	México
56590	Río Frío de Juárez	Pueblo	Ixtapaluca	México
56590	Llano Grande	Colonia	Ixtapaluca	México
56590	El Guarda	Rancho	Ixtapaluca	México
56599	Manuel Ávila Camacho	Pueblo	Ixtapaluca	México
56599	El Campamento (Las Cocinas)	Rancho	Ixtapaluca	México
56599	El Corazón	Colonia	Ixtapaluca	México
56599	El Cuarenta	Ranchería	Ixtapaluca	México
56599	El Treinta y Nueve (Dos Jagüeyes)	Ejido	Ixtapaluca	México
56599	El Treinta y Siete (Kilómetro 19)	Ranchería	Ixtapaluca	México
56599	Los Cedros	Ranchería	Ixtapaluca	México
56599	Loma Ancha	Rancho	Ixtapaluca	México
56599	San Isidro (La Lobera)	Ranchería	Ixtapaluca	México
56600	Bosques de Chalco I	Fraccionamiento	Chalco	México
56600	Tlatel	Barrio	Chalco	México
56600	Campestre Santa Cruz	Unidad habitacional	Chalco	México
56600	Casco de San Juan	Colonia	Chalco	México
56600	Chalco de Díaz Covarrubias Centro	Colonia	Chalco	México
56600	La Bomba	Colonia	Chalco	México
56600	La Conchita	Barrio	Chalco	México
56600	San Antonio	Barrio	Chalco	México
56600	San Sebastián	Barrio	Chalco	México
56600	Los Cipreses	Colonia	Chalco	México
56600	Granjas Chalco	Fraccionamiento	Chalco	México
56600	Industrial Chalco	Colonia	Chalco	México
56600	Marco Antonio Sosa	Colonia	Chalco	México
56600	Los Volcanes	Fraccionamiento	Chalco	México
56600	Villas de Chalco	Unidad habitacional	Chalco	México
56600	Portal de Chalco	Fraccionamiento	Chalco	México
56600	San Francisco	Barrio	Chalco	México
56600	Paseos de Chalco	Fraccionamiento	Chalco	México
56600	Bosques de Chalco II	Fraccionamiento	Chalco	México
56600	Los Volcanes 2da. Sección	Fraccionamiento	Chalco	México
56600	Las Huertas	Fraccionamiento	Chalco	México
56600	Punto Chalco	Fraccionamiento	Chalco	México
56600	El Naranjo	Colonia	Chalco	México
56600	Gonzalo López Cid	Colonia	Chalco	México
56600	Margarita Córdoba Morán	Colonia	Chalco	México
56600	Rancho Amigo	Unidad habitacional	Chalco	México
56604	Ejidal	Colonia	Chalco	México
56604	Tres Marías	Colonia	Chalco	México
56604	Jacalones I	Colonia	Chalco	México
56604	Jacalones II	Colonia	Chalco	México
56604	Nueva San Miguel	Colonia	Chalco	México
56605	Nueva San Isidro	Colonia	Chalco	México
56605	Nueva San Antonio	Colonia	Chalco	México
56605	Agrarista	Colonia	Chalco	México
56605	Agrarista Sector Alcanfores	Colonia	Chalco	México
56605	El Paraíso	Colonia	Chalco	México
56605	Fraternidad Antorchista	Colonia	Chalco	México
56605	Clara Córdoba Morán	Colonia	Chalco	México
56605	Humberto Vidal Mendoza	Colonia	Chalco	México
56606	Unión de Guadalupe	Colonia	Chalco	México
56607	Covadonga	Colonia	Chalco	México
56607	Culturas de México	Colonia	Chalco	México
56607	Jardines de Chalco	Colonia	Chalco	México
56607	21 de Marzo	Colonia	Chalco	México
56608	Emiliano Zapata	Colonia	Chalco	México
56608	Ampliación Emiliano Zapata	Colonia	Chalco	México
56608	San Cristóbal	Colonia	Chalco	México
56609	Santa Cruz Amalinalco	Colonia	Chalco	México
56610	Alfredo Baranda	Colonia	Valle de Chalco Solidaridad	México
56610	Américas	Colonia	Valle de Chalco Solidaridad	México
56610	Niños Héroes	Colonia	Valle de Chalco Solidaridad	México
56610	San Miguel las Tablas	Colonia	Valle de Chalco Solidaridad	México
56613	San Miguel Xico	Colonia	Valle de Chalco Solidaridad	México
56614	Poder Popular	Colonia	Valle de Chalco Solidaridad	México
56614	Cerro del Marques	Colonia	Valle de Chalco Solidaridad	México
56614	San Martín Xico La Laguna	Colonia	Valle de Chalco Solidaridad	México
56614	Real de San Martín	Unidad habitacional	Valle de Chalco Solidaridad	México
56614	Ex-hacienda Xico	Unidad habitacional	Valle de Chalco Solidaridad	México
56614	Central de Abasto	Equipamiento	Valle de Chalco Solidaridad	México
56614	Antorcha Valle de Chalco	Colonia	Valle de Chalco Solidaridad	México
56615	Concepción	Colonia	Valle de Chalco Solidaridad	México
56615	María Isabel	Colonia	Valle de Chalco Solidaridad	México
56615	Santiago	Colonia	Valle de Chalco Solidaridad	México
56615	El Agostadero	Colonia	Valle de Chalco Solidaridad	México
56616	Guadalupana	Colonia	Valle de Chalco Solidaridad	México
56616	Providencia	Colonia	Valle de Chalco Solidaridad	México
56617	El Triunfo	Colonia	Valle de Chalco Solidaridad	México
56617	Independencia	Colonia	Valle de Chalco Solidaridad	México
56617	Jardín	Colonia	Valle de Chalco Solidaridad	México
56617	San Isidro	Colonia	Valle de Chalco Solidaridad	México
56617	Santa Cruz	Colonia	Valle de Chalco Solidaridad	México
56618	Geovillas la Asunción	Unidad habitacional	Valle de Chalco Solidaridad	México
56618	Avándaro	Colonia	Valle de Chalco Solidaridad	México
56618	Darío Martínez II Sección	Colonia	Valle de Chalco Solidaridad	México
56618	Emiliano Zapata	Colonia	Valle de Chalco Solidaridad	México
56618	San Juan Tlalpizahuac	Colonia	Valle de Chalco Solidaridad	México
56618	Carlos Salinas de Gortari	Colonia	Valle de Chalco Solidaridad	México
56618	San Gregorio	Colonia	Valle de Chalco Solidaridad	México
56619	La Punta	Colonia	Valle de Chalco Solidaridad	México
56619	Alfredo del Mazo	Colonia	Valle de Chalco Solidaridad	México
56619	Darío Martínez I Sección	Colonia	Valle de Chalco Solidaridad	México
56619	Del Carmen	Colonia	Valle de Chalco Solidaridad	México
56619	Ampliación Santa Catarina	Colonia	Valle de Chalco Solidaridad	México
56619	Santa Catarina	Colonia	Valle de Chalco Solidaridad	México
56620	San José Axalco	Colonia	Chalco	México
56620	Los Arenales	Colonia	Chalco	México
56620	Capultitla	Barrio	Chalco	México
56620	Jazmín de las Flores	Colonia	Chalco	México
56620	Lomas de San Pablo	Barrio	Chalco	México
56620	San Pablo Atlazalpan	Pueblo	Chalco	México
56620	Michoacana	Colonia	Chalco	México
56620	El Recodo de San José Axalco	Colonia	Chalco	México
56620	San José	Colonia	Chalco	México
56620	Independencia	Colonia	Chalco	México
56623	Rancho San Miguel	Colonia	Chalco	México
56623	Rancho Nuevo	Colonia	Chalco	México
56623	Rancho Nuevo San Miguel	Colonia	Chalco	México
56623	Camino al Monte	Ranchería	Chalco	México
56623	Santa Catarina Ayotzingo	Pueblo	Chalco	México
56624	Pedregal Tezompa	Colonia	Chalco	México
56624	San Juan Tezompa	Pueblo	Chalco	México
56624	Caserío de Cortés	Colonia	Chalco	México
56624	Las Nieves	Colonia	Chalco	México
56625	Residencial Iztac	Fraccionamiento	Chalco	México
56625	Iztac II	Fraccionamiento	Chalco	México
56625	Independencia Chimalpa	Colonia	Chalco	México
56625	San Lorenzo Chimalpa	Pueblo	Chalco	México
56625	San Martín Xico Nuevo	Pueblo	Chalco	México
56625	San Mateo Huitzilzingo	Pueblo	Chalco	México
56625	Guadalupe	Barrio	Chalco	México
56640	San Gregorio Cuautzingo	Pueblo	Chalco	México
56640	Los Álamos	Fraccionamiento	Chalco	México
56640	Santa Ana (Predio San Juan)	Colonia	Chalco	México
56641	Benito Juárez	Colonia	Chalco	México
56641	La Candelaria Tlapala	Pueblo	Chalco	México
56641	Ex-hacienda de Guadalupe	Unidad habitacional	Chalco	México
56641	Llano del Moral	Colonia	Chalco	México
56642	San Lucas Amalinalco	Pueblo	Chalco	México
56642	Los Hornos	Colonia	Chalco	México
56643	Ejido San Marcos	Colonia	Chalco	México
56643	Caja de Agua	Colonia	Chalco	México
56643	San Marcos Huixtoco	Pueblo	Chalco	México
56643	San Buenaventura 7a Sección	Unidad habitacional	Chalco	México
56643	La Chimenea	Colonia	Chalco	México
56644	Los Héroes Chalco II	Fraccionamiento	Chalco	México
56644	Los Héroes Chalco III	Fraccionamiento	Chalco	México
56644	San Martín Cuautlalpan	Pueblo	Chalco	México
56644	Villas de San Martín	Fraccionamiento	Chalco	México
56644	Los Héroes Chalco	Fraccionamiento	Chalco	México
56644	Pueblo Nuevo	Unidad habitacional	Chalco	México
56644	Hacienda San Juan	Unidad habitacional	Chalco	México
56646	Guadalupe de los Tepetates	Colonia	Chalco	México
56646	Huixtomatitla (Tepalcates)	Colonia	Chalco	México
56646	La Longaniza	Ranchería	Chalco	México
56646	Santa María Huexoculco	Pueblo	Chalco	México
56647	San Mateo Tezoquipan Miraflores	Pueblo	Chalco	México
56647	Hacienda del Moral	Ranchería	Chalco	México
56650	Temamatla	Pueblo	Temamatla	México
56650	Xalpa	Barrio	Temamatla	México
56650	Cuautitla	Barrio	Temamatla	México
56650	Tepetitla	Barrio	Temamatla	México
56650	Predio de los Albertocos	Colonia	Temamatla	México
56650	Guadalupana	Colonia	Temamatla	México
56650	La Estación (La Caseta)	Colonia	Temamatla	México
56653	Santiago Zula	Pueblo	Temamatla	México
56654	El Tejocote (Colonia Jesús Estudillo L.)	Colonia	Temamatla	México
56654	El Tejocote	Ejido	Temamatla	México
56654	Ampliación Potrero	Colonia	Temamatla	México
56655	Los Reyes Acatlixhuayan	Pueblo	Temamatla	México
56656	Tepancal	Colonia	Temamatla	México
56656	San Judas Tadeo	Rancho	Temamatla	México
56657	Tenexcaltitla	Colonia	Temamatla	México
56657	El Cabi	Zona militar	Temamatla	México
56680	Techichilco	Barrio	Cocotitlán	México
56680	Oyotepec	Colonia	Cocotitlán	México
56680	20 de Noviembre	Colonia	Cocotitlán	México
56680	Tlapipinca	Colonia	Cocotitlán	México
56680	La Y (Atoyac)	Colonia	Cocotitlán	México
56680	La Vía	Colonia	Cocotitlán	México
56683	San Andrés Metla	Pueblo	Cocotitlán	México
56684	Atoyac	Ejido	Cocotitlán	México
56700	Tlalmanalco de Velázquez	Pueblo	Tlalmanalco	México
56700	Vista Bella	Colonia	Tlalmanalco	México
56700	San Diego	Colonia	Tlalmanalco	México
56700	Rumorosa	Colonia	Tlalmanalco	México
56700	Granjas San José	Colonia	Tlalmanalco	México
56700	Fernando de la Macorra	Rancho	Tlalmanalco	México
56700	Alfa y Omega	Rancho	Tlalmanalco	México
56700	Cerro de Cruz	Colonia	Tlalmanalco	México
56700	El Edén	Colonia	Tlalmanalco	México
56700	Magisterial	Unidad habitacional	Tlalmanalco	México
56700	El Centenario	Colonia	Tlalmanalco	México
56700	Jerusalén	Colonia	Tlalmanalco	México
56700	La esperanza	Colonia	Tlalmanalco	México
56700	De los Chincolos	Colonia	Tlalmanalco	México
56700	INFONAVIT Fidel Velazquez	Colonia	Tlalmanalco	México
56700	De Tula	Colonia	Tlalmanalco	México
56700	De la Comunidad	Colonia	Tlalmanalco	México
56700	San Pedro	Colonia	Tlalmanalco	México
56700	San Cristobal Tezopilo	Colonia	Tlalmanalco	México
56700	Cruz de Mayo 1	Colonia	Tlalmanalco	México
56700	Cruz de Mayo	Colonia	Tlalmanalco	México
56700	Hermanos Peña	Colonia	Tlalmanalco	México
56703	La Esperanza	Colonia	Tlalmanalco	México
56703	Vista Hermosa	Colonia	Tlalmanalco	México
56703	La Huerta	Rancho	Tlalmanalco	México
56703	Valle Plateado	Fraccionamiento	Tlalmanalco	México
56704	San Lorenzo Tlalmiminolpan	Pueblo	Tlalmanalco	México
56710	Lomas del Pedregal	Colonia	Tlalmanalco	México
56713	Santa Rita	Rancho	Tlalmanalco	México
56714	Villa Rincón de las Montañas	Fraccionamiento	Tlalmanalco	México
56714	Gavillero (Rancho el Gavillero)	Ranchería	Tlalmanalco	México
56714	La Mesa	Ranchería	Tlalmanalco	México
56714	La Escondida	Colonia	Tlalmanalco	México
56714	Cuautenampa (La Quebradora)	Ranchería	Tlalmanalco	México
56715	Salvador Angulo	Unidad habitacional	Tlalmanalco	México
56715	El Escribiente	Unidad habitacional	Tlalmanalco	México
56715	Chantico I	Unidad habitacional	Tlalmanalco	México
56715	Santa María	Fraccionamiento	Tlalmanalco	México
56715	La Encumbre	Rancho	Tlalmanalco	México
56715	Chantico II	Unidad habitacional	Tlalmanalco	México
56716	El Trapiche (Xacalco)	Colonia	Tlalmanalco	México
56716	Santiago [Kilómetro 58.5]	Colonia	Tlalmanalco	México
56716	El Magueyal Dos	Colonia	Tlalmanalco	México
56716	Vergel de la Sierra	Fraccionamiento	Tlalmanalco	México
56720	San Juan Atzacualoya	Pueblo	Tlalmanalco	México
56720	21 de Marzo	Colonia	Tlalmanalco	México
56720	Las Conchitas	Colonia	Tlalmanalco	México
56723	Pueblo Nuevo	Pueblo	Tlalmanalco	México
56726	Santa Cruz	Ranchería	Tlalmanalco	México
56730	Santo Tomás Atzingo	Pueblo	Tlalmanalco	México
56730	Las Palomas	Fraccionamiento	Tlalmanalco	México
56731	San José Zavaleta	Pueblo	Tlalmanalco	México
56735	San Antonio Tlaltecahuacán	Pueblo	Tlalmanalco	México
56740	San Rafael	Pueblo	Tlalmanalco	México
56740	La Ladrillera	Colonia	Tlalmanalco	México
56740	Ladrilleras las Margaritas	Colonia	Tlalmanalco	México
56743	Loma Linda	Colonia	Tlalmanalco	México
56743	Obrera	Colonia	Tlalmanalco	México
56743	Hidalgo	Colonia	Tlalmanalco	México
56744	Solidaridad	Colonia	Tlalmanalco	México
56744	El Faro	Colonia	Tlalmanalco	México
56744	De La Peña	Colonia	Tlalmanalco	México
56744	Los Cuartos	Colonia	Tlalmanalco	México
56744	El Encinal	Colonia	Tlalmanalco	México
56745	El Cedral	Colonia	Tlalmanalco	México
56745	La Cañada	Colonia	Tlalmanalco	México
56746	La Cuesta	Colonia	Tlalmanalco	México
56746	Anselmo Granados	Colonia	Tlalmanalco	México
56747	La Joya	Rancho	Tlalmanalco	México
56747	Tepopotal	Ranchería	Tlalmanalco	México
56760	La Capilla	Colonia	Ayapango	México
56760	La Soledad	Barrio	Ayapango	México
56760	Predio el Calvario	Colonia	Ayapango	México
56763	Tetepetla	Colonia	Ayapango	México
56763	San Miguel	Ranchería	Ayapango	México
56765	San Diego Chalcatepehuacán	Colonia	Ayapango	México
56765	San Diego	Colonia	Ayapango	México
56765	El Arenal (Camino al Arenal)	Colonia	Ayapango	México
56765	Las Casitas (Tepexpan)	Colonia	Ayapango	México
56766	La Colonia	Colonia	Ayapango	México
56766	Poxtla	Pueblo	Ayapango	México
56767	Tlamapa	Pueblo	Ayapango	México
56770	San José	Ranchería	Ayapango	México
56776	Mihuacán	Pueblo	Ayapango	México
56776	Pahuacán	Pueblo	Ayapango	México
56776	Cemoloc Grande	Colonia	Ayapango	México
56780	San Juan Coxtocan	Pueblo	Tenango del Aire	México
56780	San Mateo Tepopula	Pueblo	Tenango del Aire	México
56780	Santiago Tepopula	Pueblo	Tenango del Aire	México
56780	La Palma Tenango	Barrio	Tenango del Aire	México
56780	San Miguel	Barrio	Tenango del Aire	México
56780	Amilco	Barrio	Tenango del Aire	México
56783	El Pedregal (Teotoxtipan)	Colonia	Tenango del Aire	México
56783	Tecuatitla (Colonia Nueva Tecuatitla)	Colonia	Tenango del Aire	México
56783	San Luis Aculco	Colonia	Tenango del Aire	México
56783	Aculco (El Paraíso)	Ranchería	Tenango del Aire	México
56783	San Miguel (Las Espinas)	Ranchería	Tenango del Aire	México
56783	Saturnino (Tepalcapa)	Ranchería	Tenango del Aire	México
56783	San Isidro Labrador (El Piaje)	Ranchería	Tenango del Aire	México
56784	El Mirador	Colonia	Tenango del Aire	México
56784	Tres Platos	Colonia	Tenango del Aire	México
56785	Chavarría (Paraje Puerta)	Rancho	Tenango del Aire	México
56800	De San Bartolo	Barrio	Ozumba	México
56800	Ozumba de Alzate	Pueblo	Ozumba	México
56800	San Mateo Tecalco	Pueblo	Ozumba	México
56800	Santiago	Barrio	Ozumba	México
56800	Industrial	Colonia	Ozumba	México
56800	José Antonio Alzate	Colonia	Ozumba	México
56800	Del Coyote	Barrio	Ozumba	México
56800	San Francisco	Barrio	Ozumba	México
56800	San Martín	Barrio	Ozumba	México
56800	Del Cocol	Barrio	Ozumba	México
56800	Santa Cruz	Barrio	Ozumba	México
56800	San Juan	Barrio	Ozumba	México
56800	San Pedro	Barrio	Ozumba	México
56800	Huamantla de Tizapa	Colonia	Ozumba	México
56806	Loma Bonita	Ranchería	Ozumba	México
56810	San José Tlacotitlán	Ranchería	Ozumba	México
56810	Santiago Mamalhuazuca	Ranchería	Ozumba	México
56813	San Mateo Cuatepulco (Zona Cuatepulco)	Ranchería	Ozumba	México
56813	La Cantarilla	Ranchería	Ozumba	México
56813	Quinta Santa Cecilia	Ranchería	Ozumba	México
56814	San José (Rancho San José Tlacotitlán)	Ranchería	Ozumba	México
56815	San Sebastián	Ranchería	Ozumba	México
56815	Huejote (Rancho Huejote)	Ranchería	Ozumba	México
56816	Guadalupe Hidalgo	Colonia	Ozumba	México
56816	San Lorenzo Tlaltecoyac	Ranchería	Ozumba	México
56820	Actopan	Barrio	Ozumba	México
56860	La Loma	Colonia	Juchitepec	México
56860	La Garita	Barrio	Juchitepec	México
56860	Juchi	Barrio	Juchitepec	México
56860	Calayuco	Barrio	Juchitepec	México
56860	Cuautzozongo	Barrio	Juchitepec	México
56863	San Pedro	Colonia	Juchitepec	México
56864	El Tezontlal	Colonia	Juchitepec	México
56864	El Tititlal	Colonia	Juchitepec	México
56864	Camino a la Mina	Colonia	Juchitepec	México
56864	San Matías Cuijingo	Pueblo	Juchitepec	México
56864	La Rosita	Colonia	Juchitepec	México
56866	El Madroño	Ranchería	Juchitepec	México
56867	Santa Rosa de Lima	Barrio	Juchitepec	México
56870	Techachal	Colonia	Juchitepec	México
56880	Tepetlixpa	Pueblo	Tepetlixpa	México
56880	El Cerro	Colonia	Tepetlixpa	México
56880	Tlaximulco (Rancho de la Cruz)	Rancho	Tepetlixpa	México
56880	Corregidora (Texcalera)	Ranchería	Tepetlixpa	México
56880	Buenavista	Barrio	Tepetlixpa	México
56880	Xocotla	Barrio	Tepetlixpa	México
56880	Del Guapo	Barrio	Tepetlixpa	México
56880	Emiliano Zapata	Colonia	Tepetlixpa	México
56880	La Venta	Barrio	Tepetlixpa	México
56880	Del Rincón Brujo	Barrio	Tepetlixpa	México
56880	San Isidro	Barrio	Tepetlixpa	México
56880	Granera	Barrio	Tepetlixpa	México
56880	Texcalera	Barrio	Tepetlixpa	México
56884	Los Limones	Ranchería	Tepetlixpa	México
56884	2o. Agrupamiento de Seg. Púb. Est. Tepetlixpa	Equipamiento	Tepetlixpa	México
56884	Alborada	Granja	Tepetlixpa	México
56884	Chimalaca	Colonia	Tepetlixpa	México
56884	Sofía	Ranchería	Tepetlixpa	México
56884	Santa Cruz	Ranchería	Tepetlixpa	México
56885	San Esteban Cuecuecuautitla	Pueblo	Tepetlixpa	México
56890	Nepantla de Sor Juana Inés de la Cruz	Pueblo	Tepetlixpa	México
56890	Cuauhnextle	Colonia	Tepetlixpa	México
56890	Piñuelas (Guayabitos)	Colonia	Tepetlixpa	México
56890	Texcalama (El Montoncito Texcalama)	Colonia	Tepetlixpa	México
56893	Las Cruces	Ranchería	Tepetlixpa	México
56893	Casa Blanca (Kilómetro 76)	Rancho	Tepetlixpa	México
56893	Santa Rosa	Ranchería	Tepetlixpa	México
56893	Granja Nepantla	Ranchería	Tepetlixpa	México
56894	Alotepec	Ranchería	Tepetlixpa	México
56900	Sector Sacromonte	Barrio	Amecameca	México
56903	Izta-Popo	Unidad habitacional	Amecameca	México
56903	Sor Juana Inés de la Cruz	Fraccionamiento	Amecameca	México
56903	Los Volcanes	Fraccionamiento	Amecameca	México
56903	Sector Iztaccihuatl	Barrio	Amecameca	México
56903	Sector Caltenco	Barrio	Amecameca	México
56903	San Miguel	Barrio	Amecameca	México
56903	Sector Panohaya	Barrio	Amecameca	México
56904	Del Rosario	Barrio	Amecameca	México
56904	Sector Atenco	Barrio	Amecameca	México
56905	San Juan	Barrio	Amecameca	México
56905	Tepollo	Barrio	Amecameca	México
56905	Nestor Soriano	Colonia	Amecameca	México
56905	Magisterial Sacromonte	Unidad habitacional	Amecameca	México
56905	Sector Popocatepetl	Barrio	Amecameca	México
56905	El Torito	Barrio	Amecameca	México
56913	El Castillo	Fraccionamiento	Amecameca	México
56914	Xaltepic	Fraccionamiento	Amecameca	México
56920	Camino al Salto (Coapexco)	Colonia	Amecameca	México
56920	Atlancatzi	Ranchería	Amecameca	México
56920	Cuiloxotitla (San Nicolás)	Ranchería	Amecameca	México
56923	Tetecla	Ranchería	Amecameca	México
56923	Tepeyehual	Ranchería	Amecameca	México
56924	Santa María Tomacoco	Ranchería	Amecameca	México
56930	San Francisco Zentlalpan	Pueblo	Amecameca	México
56930	Las Cartoneras	Colonia	Amecameca	México
56933	Aldea de los Reyes	Pueblo	Amecameca	México
56933	Chupícuaro (Texquimeca)	Ranchería	Amecameca	México
56933	Los Tepalcates	Ranchería	Amecameca	México
56933	El Risco	Ranchería	Amecameca	México
56933	Don Martín	Ranchería	Amecameca	México
56935	Santa Isabel Chalma	Pueblo	Amecameca	México
56940	Santiago Cuauhtenco	Pueblo	Amecameca	México
56940	Agua Viva	Ranchería	Amecameca	México
56945	Coapexco	Fraccionamiento	Amecameca	México
56950	San Antonio Zoyatzingo	Pueblo	Amecameca	México
56953	San Diego Tlaxcatitla	Colonia	Amecameca	México
56954	Camino a Pahuacán (Colonia Néstor Soriano)	Colonia	Amecameca	México
56954	Las Palomas	Unidad habitacional	Amecameca	México
56954	San Rafael	Ranchería	Amecameca	México
56954	Vetania	Rancho	Amecameca	México
56954	El Arenal	Colonia	Amecameca	México
56955	San Diego Huehuecalco	Pueblo	Amecameca	México
56956	Ximoco	Ranchería	Amecameca	México
56956	Tenexcaltitla	Ranchería	Amecameca	México
56960	San Pedro Nexapa	Pueblo	Amecameca	México
56963	El Ocotal	Colonia	Amecameca	México
56965	San Juan Grande	Colonia	Amecameca	México
56965	Nexatenco	Ranchería	Amecameca	México
56965	El Tecorral	Ranchería	Amecameca	México
56970	San Jacinto	Barrio	Atlautla	México
56970	Santo Domingo	Barrio	Atlautla	México
56970	Santiago	Barrio	Atlautla	México
56970	San Bartolo	Barrio	Atlautla	México
56970	San Martín	Barrio	Atlautla	México
56970	San Francisco	Barrio	Atlautla	México
56970	San Lorenzo	Barrio	Atlautla	México
56970	San Pedro	Barrio	Atlautla	México
56970	La Natividad	Barrio	Atlautla	México
56975	Quinta Loma Verde (Paraje Tepichilco)	Ranchería	Atlautla	México
56975	San Juan	Barrio	Atlautla	México
56975	Ixtotempatl	Ranchería	Atlautla	México
56975	San Felipe	Barrio	Atlautla	México
56975	San Martín	Barrio	Atlautla	México
56975	Asunción	Barrio	Atlautla	México
56976	San Andrés Tlalamac	Pueblo	Atlautla	México
56980	San Juan Tehuixtitlán Centro	Colonia	Atlautla	México
56982	Las Delicias	Fraccionamiento	Atlautla	México
56983	Nexapa	Colonia	Atlautla	México
56983	Popo Park	Fraccionamiento	Atlautla	México
56983	Del Cornejal	Barrio	Atlautla	México
56984	Guadalupe	Barrio	Atlautla	México
56984	El Arenal	Barrio	Atlautla	México
56984	El mirador	Barrio	Atlautla	México
56990	Nexapa	Paraje	Ecatzingo	México
56990	San José	Barrio	Ecatzingo	México
56990	San Martín	Barrio	Ecatzingo	México
56990	Xolaltenco	Barrio	Ecatzingo	México
56990	Santa Catarina	Barrio	Ecatzingo	México
56990	Santa Gertrudis	Barrio	Ecatzingo	México
56993	San Marcos Tecomaxusco	Pueblo	Ecatzingo	México
56993	Tepicila	Colonia	Ecatzingo	México
56993	Oxpanco	Ranchería	Ecatzingo	México
56996	San Juan Tlacotompa (Tlacotompa)	Pueblo	Ecatzingo	México
56996	Huexotitla	Ranchería	Ecatzingo	México
56996	Ixtactepectípac (Rancho Ixtactepectípac)	Ranchería	Ecatzingo	México
57000	Benito Juárez (La Aurora)	Colonia	Nezahualcóyotl	México
57100	Valle de Aragón	Colonia	Nezahualcóyotl	México
57103	Polígono del Bordo de Xochiaca	Colonia	Nezahualcóyotl	México
57120	Campestre Guadalupana	Colonia	Nezahualcóyotl	México
57129	Ampliación Campestre Guadalupana	Colonia	Nezahualcóyotl	México
57130	Las Antenas o Claustro de Sor Juana Inés de la C.	Colonia	Nezahualcóyotl	México
57130	Impulsora Popular Avícola	Colonia	Nezahualcóyotl	México
57138	Emiliano Zapata	Unidad habitacional	Nezahualcóyotl	México
57138	Canal de Sales	Colonia	Nezahualcóyotl	México
57138	Bosques de Viena	Colonia	Nezahualcóyotl	México
57139	Plazas de Aragón	Colonia	Nezahualcóyotl	México
57140	Jardines de Guadalupe	Colonia	Nezahualcóyotl	México
57150	Vergel de Guadalupe	Colonia	Nezahualcóyotl	México
57158	Joyas de Aragón	Colonia	Nezahualcóyotl	México
57170	Bosques de Aragón	Colonia	Nezahualcóyotl	México
57171	Escuela Nacional de Estudios Profesionales Aragón	Equipamiento	Nezahualcóyotl	México
57178	Las Armas	Colonia	Nezahualcóyotl	México
57179	Prados de Aragón	Colonia	Nezahualcóyotl	México
57180	Ciudad Lago	Colonia	Nezahualcóyotl	México
57185	Ampliación Ciudad Lago	Colonia	Nezahualcóyotl	México
57185	Ampliación Ciudad Lago El Triangulo	Colonia	Nezahualcóyotl	México
57185	Cuchilla del Tesoro	Colonia	Nezahualcóyotl	México
57188	Ampliación Ciudad Lago Asa (Antonio Alzate)	Unidad habitacional	Nezahualcóyotl	México
57189	Ampliación Ciudad Lago Comunicaciones	Colonia	Nezahualcóyotl	México
57200	El Sol	Colonia	Nezahualcóyotl	México
57205	Ciudad Jardín	Colonia	Nezahualcóyotl	México
57210	Estado de México	Colonia	Nezahualcóyotl	México
57300	Tamaulipas	Colonia	Nezahualcóyotl	México
57300	Tamaulipas Sección Virgencitas	Colonia	Nezahualcóyotl	México
57310	Tamaulipas Sección Las Flores	Colonia	Nezahualcóyotl	México
57310	Tamaulipas Sección Palmar	Colonia	Nezahualcóyotl	México
57400	El Barco Primera Sección	Colonia	Nezahualcóyotl	México
57400	El Barco Segunda Sección	Colonia	Nezahualcóyotl	México
57400	El Barco Tercera Sección	Colonia	Nezahualcóyotl	México
57410	Maravillas	Colonia	Nezahualcóyotl	México
57420	Nezahualcóyotl Primera Sección	Colonia	Nezahualcóyotl	México
57420	Nezahualcóyotl Segunda Sección	Colonia	Nezahualcóyotl	México
57420	Nezahualcóyotl Tercera Sección	Colonia	Nezahualcóyotl	México
57430	Porvenir	Colonia	Nezahualcóyotl	México
57440	Las Palmas	Colonia	Nezahualcóyotl	México
57440	Martínez del Llano	Colonia	Nezahualcóyotl	México
57440	Xochitenco	Colonia	Nezahualcóyotl	México
57450	Volcanes	Colonia	Nezahualcóyotl	México
57460	Juárez Pantitlán	Colonia	Nezahualcóyotl	México
57500	Agua Azul Grupo C Súper 4 y Súper 23	Colonia	Nezahualcóyotl	México
57500	Agua Azul Grupo A Super 4	Colonia	Nezahualcóyotl	México
57500	Central	Colonia	Nezahualcóyotl	México
57500	Agua Azul Grupo B Super 4	Colonia	Nezahualcóyotl	México
57500	Agua Azul Grupo B Super 23	Colonia	Nezahualcóyotl	México
57510	Agua Azul Sección Pirules	Colonia	Nezahualcóyotl	México
57520	Porfirio Díaz	Colonia	Nezahualcóyotl	México
57530	Modelo	Colonia	Nezahualcóyotl	México
57600	Ampliación Romero Sección Las Fuentes	Colonia	Nezahualcóyotl	México
57610	Pavón Sección Silvia	Colonia	Nezahualcóyotl	México
57620	México Primera Sección	Colonia	Nezahualcóyotl	México
57620	México Segunda Sección	Colonia	Nezahualcóyotl	México
57630	Romero	Colonia	Nezahualcóyotl	México
57700	Evolución Súper 24	Colonia	Nezahualcóyotl	México
57700	Evolución Súper 22	Colonia	Nezahualcóyotl	México
57700	Evolución Súper 43	Colonia	Nezahualcóyotl	México
57700	Evolución	Colonia	Nezahualcóyotl	México
57708	Evolución Poniente	Colonia	Nezahualcóyotl	México
57709	Ampliación Evolución	Colonia	Nezahualcóyotl	México
57710	General José Vicente Villada	Colonia	Nezahualcóyotl	México
57718	Ampliación General José Vicente Villada Oriente	Colonia	Nezahualcóyotl	México
57718	Ampliación General José Vicente Villada Súper 44	Colonia	Nezahualcóyotl	México
57719	Ampliación General José Vicente Villada Poniente	Colonia	Nezahualcóyotl	México
57720	Atlacomulco	Colonia	Nezahualcóyotl	México
57730	Metropolitana Primera Sección	Colonia	Nezahualcóyotl	México
57739	San Lorenzo	Colonia	Nezahualcóyotl	México
57740	Metropolitana Segunda Sección	Colonia	Nezahualcóyotl	México
57750	Metropolitana Tercera Sección	Colonia	Nezahualcóyotl	México
57760	Ampliación General José Vicente Villada Súper 43	Colonia	Nezahualcóyotl	México
57800	Esperanza	Colonia	Nezahualcóyotl	México
57809	Rey Nezahualcóyotl	Fraccionamiento	Nezahualcóyotl	México
57810	Izcalli Nezahualcóyotl	Colonia	Nezahualcóyotl	México
57819	Parque Industrial Nezahualcóyotl	Fraccionamiento	Nezahualcóyotl	México
57820	La Perla	Colonia	Nezahualcóyotl	México
57830	Ampliación La Perla Reforma	Colonia	Nezahualcóyotl	México
57840	Reforma	Colonia	Nezahualcóyotl	México
57849	Reforma A Sección 1	Colonia	Nezahualcóyotl	México
57900	Las Águilas	Colonia	Nezahualcóyotl	México
57910	Constitución de 1857	Colonia	Nezahualcóyotl	México
57920	Santa Martha	Colonia	Nezahualcóyotl	México
57930	Manantiales	Colonia	Nezahualcóyotl	México
57940	Loma Bonita	Colonia	Nezahualcóyotl	México
57950	Ampliación Las Águilas	Colonia	Nezahualcóyotl	México
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
56	700.00
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

COPY public.sucursal (id_sucursal, nombre, id_estado, calle, asentamiento, municipio, calle_numero, codigo_postal, tipo_asentamiento) FROM stdin;
7	test	2	\N	\N	\N	\N	\N	\N
8	escom	2	\N	\N	\N	\N	\N	\N
2	La nota mala Chalco	1	Maple	Los Álamos	Chalco	3-10	56640	Fraccionamiento
1	La nota mala Roma	1	Mina	El Rosario	Azcapotzalco	65	2100	Colonia
11	La nota mala Gustavo A Madero	1	Borsalino	Tepeyac Insurgentes	Gustavo A. Madero	121	7020	Colonia
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
56	1	2024-01-07 04:31:49.07304	1	699.99	1	55
\.


--
-- Data for Name: venta_producto; Type: TABLE DATA; Schema: public; Owner: lansan69
--

COPY public.venta_producto (id_venta, id_producto, cantidad) FROM stdin;
55	12	2
55	13	1
55	65	2
56	105	1
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

SELECT pg_catalog.setval('public.sucursal_id_sucursal_seq', 11, true);


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

SELECT pg_catalog.setval('public.venta_id_venta_seq', 56, true);


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
-- Name: direccion direccion_pkey; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.direccion
    ADD CONSTRAINT direccion_pkey PRIMARY KEY (codigo_postal, municipio, asentamiento, tipo_asentamiento);


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
-- Name: sucursal unique_sucursal; Type: CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT unique_sucursal UNIQUE (nombre, codigo_postal, asentamiento, tipo_asentamiento, calle, calle_numero);


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
-- Name: sucursal direccion_sucursal; Type: FK CONSTRAINT; Schema: public; Owner: lansan69
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT direccion_sucursal FOREIGN KEY (codigo_postal, municipio, asentamiento, tipo_asentamiento) REFERENCES public.direccion(codigo_postal, municipio, asentamiento, tipo_asentamiento);


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

