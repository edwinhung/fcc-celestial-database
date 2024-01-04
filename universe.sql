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
-- Name: events; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.events (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20),
    events_id integer NOT NULL
);


ALTER TABLE public.events OWNER TO freecodecamp;

--
-- Name: events_event_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.events_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_event_id_seq OWNER TO freecodecamp;

--
-- Name: events_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.events_event_id_seq OWNED BY public.events.events_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(20),
    distance_ly integer,
    description text
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
    distance_from_earth integer,
    planet_id integer,
    is_spherical boolean
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
    age_in_millions_of_years integer,
    description text,
    has_life boolean,
    star_id integer,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    size numeric(6,2),
    galaxy_id integer,
    type character varying(20)
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
-- Name: events events_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.events ALTER COLUMN events_id SET DEFAULT nextval('public.events_event_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.events VALUES (1, 14, 'black_hole', 1);
INSERT INTO public.events VALUES (2, 16, 'eclipse', 2);
INSERT INTO public.events VALUES (4, 20, 'comet', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky_way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2500000, 'The nearest spiral galaxy to the Milky Way and on a collision course with it.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, 'A member of the Local Group and a companion of the Andromeda Galaxy.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 23000000, 'Famous for its spiral arms and is often studied in astronomy.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 29000000, 'Noted for its bright nucleus and large central bulge.');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Spiral', 21000000, 'Known for its well-defined spiral arms and is a star-forming galaxy.');
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 'Irregular', 163000, 'A satellite galaxy of the Milky Way and has a very visible presence in the southern hemisphere.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 238900, 1, NULL);
INSERT INTO public.moon VALUES (42, 'Moon A', 384400, 14, true);
INSERT INTO public.moon VALUES (43, 'Moon B', 400000, 14, true);
INSERT INTO public.moon VALUES (44, 'Moon C', 420000, 15, true);
INSERT INTO public.moon VALUES (45, 'Moon D', 450000, 15, true);
INSERT INTO public.moon VALUES (46, 'Moon E', 480000, 16, true);
INSERT INTO public.moon VALUES (47, 'Moon F', 510000, 16, true);
INSERT INTO public.moon VALUES (48, 'Moon G', 540000, 17, true);
INSERT INTO public.moon VALUES (49, 'Moon H', 570000, 17, true);
INSERT INTO public.moon VALUES (50, 'Moon I', 600000, 18, true);
INSERT INTO public.moon VALUES (51, 'Moon J', 630000, 18, true);
INSERT INTO public.moon VALUES (52, 'Moon K', 660000, 19, true);
INSERT INTO public.moon VALUES (53, 'Moon L', 690000, 19, true);
INSERT INTO public.moon VALUES (54, 'Moon M', 720000, 20, true);
INSERT INTO public.moon VALUES (55, 'Moon N', 750000, 20, true);
INSERT INTO public.moon VALUES (56, 'Moon O', 780000, 21, true);
INSERT INTO public.moon VALUES (57, 'Moon P', 810000, 21, true);
INSERT INTO public.moon VALUES (58, 'Moon Q', 840000, 22, true);
INSERT INTO public.moon VALUES (59, 'Moon R', 870000, 22, true);
INSERT INTO public.moon VALUES (60, 'Moon S', 900000, 23, true);
INSERT INTO public.moon VALUES (61, 'Moon T', 930000, 23, true);
INSERT INTO public.moon VALUES (62, 'Moon U', 960000, 24, true);
INSERT INTO public.moon VALUES (63, 'Moon V', 990000, 24, true);
INSERT INTO public.moon VALUES (64, 'Moon W', 1020000, 25, true);
INSERT INTO public.moon VALUES (65, 'Moon X', 1050000, 25, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 4543, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 1, false);
INSERT INTO public.planet VALUES (14, 'Planet A', 4500, 'A rocky planet with a thick atmosphere', false, 1, true);
INSERT INTO public.planet VALUES (15, 'Planet B', 2000, 'A gas giant with a large ring system', false, 2, true);
INSERT INTO public.planet VALUES (16, 'Planet C', 5600, 'A small, rocky planet with no atmosphere', false, 3, true);
INSERT INTO public.planet VALUES (17, 'Planet D', 7200, 'A hot, volcanic planet close to its star', false, 4, true);
INSERT INTO public.planet VALUES (18, 'Planet E', 3800, 'A water-rich planet with potential for life', true, 5, true);
INSERT INTO public.planet VALUES (19, 'Planet F', 900, 'A young, icy planet with a thin atmosphere', false, 6, true);
INSERT INTO public.planet VALUES (20, 'Planet G', 3000, 'A gas giant with extreme weather conditions', false, 7, true);
INSERT INTO public.planet VALUES (21, 'Planet H', 5000, 'A planet with a unique tilted axis', false, 1, true);
INSERT INTO public.planet VALUES (22, 'Planet I', 1200, 'A small planet in the habitable zone of its star', true, 2, true);
INSERT INTO public.planet VALUES (23, 'Planet J', 8000, 'An ancient planet with a dense iron core', false, 3, true);
INSERT INTO public.planet VALUES (24, 'Planet K', 4000, 'A planet with active geological features', false, 4, true);
INSERT INTO public.planet VALUES (25, 'Planet L', 2500, 'A cold, rocky planet far from its star', false, 5, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 864.00, 1, NULL);
INSERT INTO public.star VALUES (2, 'Star A', 10.00, 2, 'Red Giant');
INSERT INTO public.star VALUES (3, 'Star B', 2.00, 3, 'White Dwarf');
INSERT INTO public.star VALUES (4, 'Star C', 20.00, 4, 'Supergiant');
INSERT INTO public.star VALUES (5, 'Star D', 8.00, 5, 'Main Sequence');
INSERT INTO public.star VALUES (6, 'Star E', 3.00, 6, 'Neutron Star');
INSERT INTO public.star VALUES (7, 'Star F', 15.00, 7, 'Binary Star');


--
-- Name: events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.events_event_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 65, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (events_id);


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
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: events name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT name_unique UNIQUE (name);


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

