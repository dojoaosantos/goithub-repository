--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: dimension; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dimension (
    dimension_id integer NOT NULL,
    name character varying NOT NULL,
    has_life character varying,
    description text,
    is_spherical boolean,
    age integer,
    size_in_km integer,
    distance_from_earth numeric(4,2)
);


ALTER TABLE public.dimension OWNER TO freecodecamp;

--
-- Name: dimension_id_dimension_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dimension_id_dimension_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dimension_id_dimension_seq OWNER TO freecodecamp;

--
-- Name: dimension_id_dimension_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dimension_id_dimension_seq OWNED BY public.dimension.dimension_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    has_life character varying,
    description text,
    is_spherical boolean,
    age integer,
    size_in_km integer,
    distance_from_earth numeric(4,2),
    star_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_id_seq OWNED BY public.galaxy.star_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    has_life character varying,
    description text,
    is_spherical boolean,
    age integer,
    size_in_km integer,
    distance_from_earth numeric(4,2),
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    has_life character varying,
    description text,
    is_spherical boolean,
    age integer,
    size_in_km integer,
    distance_from_earth numeric(4,2),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_id_seq OWNED BY public.planet.galaxy_id;


--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    has_life character varying,
    description text,
    is_spherical boolean,
    age integer,
    size_in_km integer,
    distance_from_earth numeric(4,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: dimension dimension_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dimension ALTER COLUMN dimension_id SET DEFAULT nextval('public.dimension_id_dimension_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: galaxy star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN star_id SET DEFAULT nextval('public.galaxy_star_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: planet galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN galaxy_id SET DEFAULT nextval('public.planet_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: dimension; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dimension VALUES (1, 'Dimension01', 'no', 'Dimension01 description', false, 81, 802, 19.01);
INSERT INTO public.dimension VALUES (2, 'Dimension02', 'no', 'Dimension02 description', false, 82, 802, 19.02);
INSERT INTO public.dimension VALUES (4, 'Dimension03', 'no', 'Dimension03 description', false, 83, 803, 19.03);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'yes', 'andromeda galaxy', true, 30, 100, 10.10, 1);
INSERT INTO public.galaxy VALUES (2, 'cygnus', 'yes', 'cygnus galaxy', false, 40, 200, 10.02, 2);
INSERT INTO public.galaxy VALUES (3, 'alfa Centauri', 'yes', 'Alfa Centauri galaxy', true, 50, 300, 10.03, 3);
INSERT INTO public.galaxy VALUES (4, 'Dani', 'no', 'Dani galaxy', false, 60, 400, 10.04, 4);
INSERT INTO public.galaxy VALUES (5, 'Romeo', 'yes', 'Romeo galaxy', false, 70, 500, 10.05, 5);
INSERT INTO public.galaxy VALUES (6, 'Scorpio', 'yes', 'Scorpio galaxy', false, 80, 600, 10.06, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon01', 'no', 'Moon01 description', false, 30, 301, 12.01, 1);
INSERT INTO public.moon VALUES (2, 'Moon02', 'no', 'Moon02 description', false, 31, 302, 12.02, 2);
INSERT INTO public.moon VALUES (3, 'Moon03', 'no', 'Moon03 description', false, 32, 303, 12.03, 3);
INSERT INTO public.moon VALUES (4, 'Moon04', 'no', 'Moon04 description', false, 33, 304, 12.04, 4);
INSERT INTO public.moon VALUES (5, 'Moon05', 'no', 'Moon05 description', false, 34, 305, 12.05, 5);
INSERT INTO public.moon VALUES (6, 'Moon06', 'no', 'Moon06 description', false, 35, 306, 12.06, 6);
INSERT INTO public.moon VALUES (7, 'Moon07', 'no', 'Moon07 description', false, 36, 307, 12.07, 7);
INSERT INTO public.moon VALUES (8, 'Moon08', 'no', 'Moon08 description', false, 37, 308, 12.08, 8);
INSERT INTO public.moon VALUES (9, 'Moon09', 'yes', 'Moon09 description', true, 38, 309, 12.09, 9);
INSERT INTO public.moon VALUES (10, 'Moon10', 'no', 'Moon10 description', false, 39, 310, 12.10, 10);
INSERT INTO public.moon VALUES (11, 'Moon11', 'no', 'Moon11 description', false, 40, 311, 12.11, 11);
INSERT INTO public.moon VALUES (12, 'Moon12', 'no', 'Moon12 description', false, 41, 312, 12.12, 12);
INSERT INTO public.moon VALUES (13, 'Moon13', 'no', 'Moon13 description', false, 42, 313, 12.13, 13);
INSERT INTO public.moon VALUES (14, 'Moon14', 'yes', 'Moon14 description', true, 43, 314, 12.14, 14);
INSERT INTO public.moon VALUES (15, 'Moon15', 'no', 'Moon15 description', false, 44, 315, 12.15, 15);
INSERT INTO public.moon VALUES (16, 'Moon16', 'no', 'Moon16 description', false, 45, 316, 12.16, 16);
INSERT INTO public.moon VALUES (17, 'Moon17', 'no', 'Moon17 description', false, 46, 317, 12.17, 17);
INSERT INTO public.moon VALUES (18, 'Moon18', 'no', 'Moon18 description', false, 47, 318, 12.18, 18);
INSERT INTO public.moon VALUES (19, 'Moon19', 'no', 'Moon19 description', false, 48, 319, 12.19, 19);
INSERT INTO public.moon VALUES (20, 'Moon20', 'no', 'Moon20 description', false, 49, 320, 12.20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet01', 'no', 'Planet01 decription', false, 21, 102, 11.01, 1);
INSERT INTO public.planet VALUES (2, 'Planet02', 'no', 'Planet02 decription', false, 22, 202, 11.02, 2);
INSERT INTO public.planet VALUES (3, 'Planet03', 'no', 'Planet03 decription', false, 23, 302, 11.03, 3);
INSERT INTO public.planet VALUES (4, 'Planet04', 'no', 'Planet04 decription', false, 24, 402, 11.04, 4);
INSERT INTO public.planet VALUES (5, 'Planet05', 'yes', 'Planet05 decription', true, 25, 502, 11.05, 5);
INSERT INTO public.planet VALUES (6, 'Planet06', 'yes', 'Planet06 decription', true, 26, 602, 11.06, 6);
INSERT INTO public.planet VALUES (7, 'Planet07', 'no', 'Planet07 decription', false, 21, 702, 11.01, 7);
INSERT INTO public.planet VALUES (8, 'Planet08', 'no', 'Planet08 decription', false, 22, 802, 11.02, 8);
INSERT INTO public.planet VALUES (9, 'Planet09', 'no', 'Planet09 decription', false, 23, 902, 11.13, 9);
INSERT INTO public.planet VALUES (10, 'Planet10', 'no', 'Planet10 decription', false, 24, 412, 11.54, 10);
INSERT INTO public.planet VALUES (11, 'Planet11', 'yes', 'Planet11 decription', true, 25, 542, 11.15, 11);
INSERT INTO public.planet VALUES (12, 'Planet12', 'yes', 'Planet12 decription', true, 26, 622, 11.36, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'no', 'Sirius star', true, 11, 101, 11.01);
INSERT INTO public.star VALUES (2, 'Canopus', 'no', 'Canopus star', false, 12, 201, 11.02);
INSERT INTO public.star VALUES (3, 'Arcturus', 'yes', 'Arcturus star', true, 513, 301, 11.03);
INSERT INTO public.star VALUES (4, 'Vega', 'no', 'Vega star', false, 14, 401, 11.04);
INSERT INTO public.star VALUES (5, 'Rigel', 'yes', 'Rigel star', true, 15, 501, 11.05);
INSERT INTO public.star VALUES (6, 'Procyon', 'yes', 'Procyon star', true, 16, 601, 11.06);


--
-- Name: dimension_id_dimension_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dimension_id_dimension_seq', 4, true);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_id_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_id_seq', 12, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


--
-- Name: galaxy constraint_name_01; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_name_01 UNIQUE (star_id);


--
-- Name: planet constraint_name_02; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_name_02 UNIQUE (galaxy_id);


--
-- Name: moon constraint_name_03; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_name_03 UNIQUE (planet_id);


--
-- Name: dimension constraint_name_dimension; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dimension
    ADD CONSTRAINT constraint_name_dimension UNIQUE (name);


--
-- Name: galaxy constraint_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_name_galaxy UNIQUE (name);


--
-- Name: moon constraint_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_name_moon UNIQUE (name);


--
-- Name: planet constraint_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_name_planet UNIQUE (name);


--
-- Name: star constraint_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_name_star UNIQUE (name);


--
-- Name: dimension dimension_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dimension
    ADD CONSTRAINT dimension_pkey PRIMARY KEY (dimension_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.planet(galaxy_id);


--
-- Name: star star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.galaxy(star_id);


--
-- PostgreSQL database dump complete
--

