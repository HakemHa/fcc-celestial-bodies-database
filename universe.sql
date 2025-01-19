--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(32) NOT NULL,
    radius numeric,
    num_stars integer,
    age integer
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
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    lifeform_id integer NOT NULL,
    name character varying(32) NOT NULL,
    species text,
    planet_id integer
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeform_lifeform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeform_lifeform_id_seq OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeform_lifeform_id_seq OWNED BY public.lifeform.lifeform_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(32) NOT NULL,
    radius numeric,
    age integer,
    water boolean
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
    star_id integer,
    name character varying(32) NOT NULL,
    radius numeric,
    num_moons integer,
    age integer,
    habitable boolean
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(32) NOT NULL,
    radius numeric,
    num_planets integer,
    age integer
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
-- Name: lifeform lifeform_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform ALTER COLUMN lifeform_id SET DEFAULT nextval('public.lifeform_lifeform_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 0, 0, 0);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 0, 0, 0);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 0, 0, 0);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 0, 0, 0);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 0, 0, 0);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 0, 0, 0);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES (1, 'lifeform1', 'lifeform', 1);
INSERT INTO public.lifeform VALUES (2, 'lifeform2', 'lifeform', 1);
INSERT INTO public.lifeform VALUES (3, 'lifeform3', 'lifeform', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'moon1', 0, 0, true);
INSERT INTO public.moon VALUES (2, 1, 'moon2', 0, 0, true);
INSERT INTO public.moon VALUES (3, 1, 'moon3', 0, 0, true);
INSERT INTO public.moon VALUES (4, 1, 'moon4', 0, 0, true);
INSERT INTO public.moon VALUES (5, 1, 'moon5', 0, 0, true);
INSERT INTO public.moon VALUES (6, 1, 'moon6', 0, 0, true);
INSERT INTO public.moon VALUES (7, 1, 'moon7', 0, 0, true);
INSERT INTO public.moon VALUES (8, 1, 'moon8', 0, 0, true);
INSERT INTO public.moon VALUES (9, 1, 'moon9', 0, 0, true);
INSERT INTO public.moon VALUES (10, 1, 'moon10', 0, 0, true);
INSERT INTO public.moon VALUES (11, 1, 'moon11', 0, 0, true);
INSERT INTO public.moon VALUES (12, 1, 'moon12', 0, 0, true);
INSERT INTO public.moon VALUES (13, 1, 'moon13', 0, 0, true);
INSERT INTO public.moon VALUES (14, 1, 'moon14', 0, 0, true);
INSERT INTO public.moon VALUES (15, 1, 'moon15', 0, 0, true);
INSERT INTO public.moon VALUES (16, 1, 'moon16', 0, 0, true);
INSERT INTO public.moon VALUES (17, 1, 'moon17', 0, 0, true);
INSERT INTO public.moon VALUES (18, 1, 'moon18', 0, 0, true);
INSERT INTO public.moon VALUES (19, 1, 'moon19', 0, 0, true);
INSERT INTO public.moon VALUES (20, 1, 'moon20', 0, 0, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'planet1', 0, 0, 0, false);
INSERT INTO public.planet VALUES (2, 1, 'planet2', 0, 0, 0, false);
INSERT INTO public.planet VALUES (3, 1, 'planet3', 0, 0, 0, false);
INSERT INTO public.planet VALUES (4, 1, 'planet4', 0, 0, 0, false);
INSERT INTO public.planet VALUES (5, 1, 'planet5', 0, 0, 0, false);
INSERT INTO public.planet VALUES (6, 1, 'planet6', 0, 0, 0, false);
INSERT INTO public.planet VALUES (7, 1, 'planet7', 0, 0, 0, false);
INSERT INTO public.planet VALUES (8, 1, 'planet8', 0, 0, 0, false);
INSERT INTO public.planet VALUES (9, 1, 'planet9', 0, 0, 0, false);
INSERT INTO public.planet VALUES (10, 1, 'planet10', 0, 0, 0, false);
INSERT INTO public.planet VALUES (11, 1, 'planet11', 0, 0, 0, false);
INSERT INTO public.planet VALUES (12, 1, 'planet12', 0, 0, 0, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'star1', 0, 0, 0);
INSERT INTO public.star VALUES (2, 1, 'star2', 0, 0, 0);
INSERT INTO public.star VALUES (3, 1, 'star3', 0, 0, 0);
INSERT INTO public.star VALUES (4, 1, 'star4', 0, 0, 0);
INSERT INTO public.star VALUES (5, 1, 'star5', 0, 0, 0);
INSERT INTO public.star VALUES (6, 1, 'star6', 0, 0, 0);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeform_lifeform_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lifeform lifeform_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_name_key UNIQUE (name);


--
-- Name: lifeform lifeform_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_pkey PRIMARY KEY (lifeform_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: lifeform lifeform_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

