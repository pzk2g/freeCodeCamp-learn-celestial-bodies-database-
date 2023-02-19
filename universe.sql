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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_year integer,
    time_left_in_millions_of_year integer,
    keeper character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    temperatue_in_degree_celcius numeric(4,2),
    keeper character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth_km numeric(6,2),
    is_there_life boolean,
    keeper character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    date_launched date,
    color character varying(30),
    keeper character varying(30)
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_lighting boolean,
    shooting boolean,
    keeper character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 78941, 78942, 'Me');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 78941, 78942, 'You');
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 78941, 78942, 'he');
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 78941, 78942, 'she');
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 78941, 78942, 'us');
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 78941, 78942, 'we');
INSERT INTO public.galaxy VALUES (8, 'g', 1, 1, 'a');
INSERT INTO public.galaxy VALUES (9, 'g', 1, 1, 'b');
INSERT INTO public.galaxy VALUES (10, 'g', 1, 1, 'c');
INSERT INTO public.galaxy VALUES (11, 'g', 1, 1, 'd');
INSERT INTO public.galaxy VALUES (12, 'g', 1, 1, 'e');
INSERT INTO public.galaxy VALUES (13, 'g', 1, 1, 'f');
INSERT INTO public.galaxy VALUES (14, 'g', 1, 1, 'g');
INSERT INTO public.galaxy VALUES (15, 'g', 1, 1, 'h');
INSERT INTO public.galaxy VALUES (16, 'g', 1, 1, 'i');
INSERT INTO public.galaxy VALUES (17, 'g', 1, 1, 'j');
INSERT INTO public.galaxy VALUES (18, 'g', 1, 1, 'k');
INSERT INTO public.galaxy VALUES (19, 'g', 1, 1, 'l');
INSERT INTO public.galaxy VALUES (20, 'g', 1, 1, 'm');
INSERT INTO public.galaxy VALUES (21, 'g', 1, 1, 'n');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M', 'I Sit By Myself...', 27.00, 'Me');
INSERT INTO public.moon VALUES (2, 'M', 'Talking To The Moooooooon', 27.00, 'You');
INSERT INTO public.moon VALUES (3, 'M', 'Talking To The Moooooooon', 27.00, 'he');
INSERT INTO public.moon VALUES (4, 'M', 'Talking To The Moooooooon', 27.00, 'she');
INSERT INTO public.moon VALUES (5, 'M', 'Talking To The Moooooooon', 27.00, 'us');
INSERT INTO public.moon VALUES (6, 'M', 'Talking To The Moooooooon', 27.00, 'we');
INSERT INTO public.moon VALUES (7, 'M', 'Talking To The Moooooooon', 27.00, 'a');
INSERT INTO public.moon VALUES (8, 'M', 'Talking To The Moooooooon', 27.00, 'b');
INSERT INTO public.moon VALUES (9, 'M', 'Talking To The Moooooooon', 27.00, 'c');
INSERT INTO public.moon VALUES (10, 'M', 'Talking To The Moooooooon', 27.00, 'd');
INSERT INTO public.moon VALUES (11, 'M', 'Talking To The Moooooooon', 27.00, 'e');
INSERT INTO public.moon VALUES (12, 'M', 'Talking To The Moooooooon', 27.00, 'f');
INSERT INTO public.moon VALUES (13, 'M', 'Talking To The Moooooooon', 27.00, 'g');
INSERT INTO public.moon VALUES (14, 'M', 'Talking To The Moooooooon', 27.00, 'h');
INSERT INTO public.moon VALUES (15, 'M', 'Talking To The Moooooooon', 27.00, 'i');
INSERT INTO public.moon VALUES (16, 'M', 'Talking To The Moooooooon', 27.00, 'j');
INSERT INTO public.moon VALUES (17, 'M', 'Talking To The Moooooooon', 27.00, 'k');
INSERT INTO public.moon VALUES (18, 'M', 'Talking To The Moooooooon', 27.00, 'l');
INSERT INTO public.moon VALUES (19, 'M', 'Talking To The Moooooooon', 27.00, 'm');
INSERT INTO public.moon VALUES (20, 'M', 'Talking To The Moooooooon', 27.00, 'n');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0.00, true, 'us');
INSERT INTO public.planet VALUES (2, 'Venus', 9999.99, false, 'Me');
INSERT INTO public.planet VALUES (3, 'Venus', 9999.99, false, 'You');
INSERT INTO public.planet VALUES (5, 'Earth', 0.00, true, 'he');
INSERT INTO public.planet VALUES (6, 'Earth', 0.00, true, 'she');
INSERT INTO public.planet VALUES (7, 'Earth', 0.00, true, 'we');
INSERT INTO public.planet VALUES (8, 'Earth', 0.00, true, 'a');
INSERT INTO public.planet VALUES (9, 'Earth', 0.00, true, 'b');
INSERT INTO public.planet VALUES (10, 'Earth', 0.00, true, 'c');
INSERT INTO public.planet VALUES (11, 'Earth', 0.00, true, 'd');
INSERT INTO public.planet VALUES (12, 'Earth', 0.00, true, 'e');
INSERT INTO public.planet VALUES (13, 'Earth', 0.00, true, 'f');
INSERT INTO public.planet VALUES (14, 'Earth', 0.00, true, 'g');
INSERT INTO public.planet VALUES (15, 'Earth', 0.00, true, 'h');
INSERT INTO public.planet VALUES (16, 'Earth', 0.00, true, 'i');
INSERT INTO public.planet VALUES (17, 'Earth', 0.00, true, 'j');
INSERT INTO public.planet VALUES (18, 'Earth', 0.00, true, 'k');
INSERT INTO public.planet VALUES (19, 'Earth', 0.00, true, 'l');
INSERT INTO public.planet VALUES (20, 'Earth', 0.00, true, 'm');
INSERT INTO public.planet VALUES (21, 'Earth', 0.00, true, 'n');


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Kappe', '2023-02-19', 'green', 'Me');
INSERT INTO public.satellite VALUES (2, 'Kappe', '2023-02-19', 'green', 'pz');
INSERT INTO public.satellite VALUES (3, 'Kappe', '2023-02-19', 'green', 'amd');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Estelle', true, true, 'Me');
INSERT INTO public.star VALUES (5, 'Five', true, true, 'You');
INSERT INTO public.star VALUES (6, 'Five', true, true, 'us');
INSERT INTO public.star VALUES (7, 'Five', true, true, 'he');
INSERT INTO public.star VALUES (8, 'Five', true, true, 'she');
INSERT INTO public.star VALUES (9, 'Five', true, true, 'we');
INSERT INTO public.star VALUES (10, 'Estelle', true, true, 'a');
INSERT INTO public.star VALUES (11, 'Estelle', true, true, 'b');
INSERT INTO public.star VALUES (12, 'Estelle', true, true, 'c');
INSERT INTO public.star VALUES (13, 's', true, true, 'd');
INSERT INTO public.star VALUES (14, 's', true, true, 'e');
INSERT INTO public.star VALUES (15, 's', true, true, 'f');
INSERT INTO public.star VALUES (16, 's', true, true, 'g');
INSERT INTO public.star VALUES (17, 's', true, true, 'h');
INSERT INTO public.star VALUES (18, 's', true, true, 'i');
INSERT INTO public.star VALUES (19, 's', true, true, 'j');
INSERT INTO public.star VALUES (20, 's', true, true, 'k');
INSERT INTO public.star VALUES (21, 's', true, true, 'l');
INSERT INTO public.star VALUES (22, 's', true, true, 'm');
INSERT INTO public.star VALUES (23, 's', true, true, 'n');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 23, true);


--
-- Name: galaxy galaxy_keeper_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_keeper_key UNIQUE (keeper);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_keeper_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_keeper_key UNIQUE (keeper);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_keeper_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_keeper_key UNIQUE (keeper);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_keeper_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_keeper_key UNIQUE (keeper);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_keeper_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_keeper_key UNIQUE (keeper);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_keeper_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_keeper_fkey FOREIGN KEY (keeper) REFERENCES public.galaxy(keeper);


--
-- PostgreSQL database dump complete
--

