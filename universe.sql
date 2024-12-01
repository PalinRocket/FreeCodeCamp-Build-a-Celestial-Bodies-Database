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
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    spectral_class character varying(1),
    age_in_millions_of_years numeric,
    size_in_lightyears numeric,
    is_inhabited boolean
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
    name character varying(100) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    size_in_km integer NOT NULL,
    special_features text
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
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    size_in_km integer NOT NULL,
    planet_type text
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(100) NOT NULL,
    limbs integer,
    is_friendly boolean,
    loves_ice_cream boolean
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_species_id_seq OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    temperature_in_kelvin integer NOT NULL,
    size_in_km integer NOT NULL
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
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andora Prime', 1, 'E', 4500, 12000, false);
INSERT INTO public.galaxy VALUES ('Zenith Nova', 2, 'S', 6000, 140000, true);
INSERT INTO public.galaxy VALUES ('Elysium Cluster', 3, 'I', 3200, 80000, false);
INSERT INTO public.galaxy VALUES ('Helios Arc', 4, 'S', 5200, 150000, true);
INSERT INTO public.galaxy VALUES ('Nebula Expanse', 5, 'S', 7000, 110000, false);
INSERT INTO public.galaxy VALUES ('Omega Horizon', 6, 'S', 4200, 100000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Lunarus Alpha', 1, 4, 3500, 'Gold');
INSERT INTO public.moon VALUES ('Cobalt Moon', 2, 4, 2900, 'Cobalt');
INSERT INTO public.moon VALUES ('Aqueous Minor', 3, 5, 4200, 'Silver');
INSERT INTO public.moon VALUES ('Emerald Halo', 4, 5, 2500, 'Emerald');
INSERT INTO public.moon VALUES ('Zephyrite Orb', 5, 6, 3300, 'Platinum');
INSERT INTO public.moon VALUES ('Argon Twilight', 6, 6, 3100, 'Titanium');
INSERT INTO public.moon VALUES ('Frostmark', 7, 7, 2800, 'Palladium');
INSERT INTO public.moon VALUES ('Icerock Beta', 8, 7, 2600, 'Nickel');
INSERT INTO public.moon VALUES ('Vulcanis Minor', 9, 8, 3900, 'Iridium');
INSERT INTO public.moon VALUES ('Magmus Shard', 10, 8, 3400, 'Rhodium');
INSERT INTO public.moon VALUES ('Poseidons Gem', 11, 9, 5000, 'Sapphire');
INSERT INTO public.moon VALUES ('Azure Crescent', 12, 9, 3100, 'Aquamarine');
INSERT INTO public.moon VALUES ('Etherium Glow', 13, 10, 3700, 'Tungsten');
INSERT INTO public.moon VALUES ('Helios Fragment', 14, 10, 3300, 'Osmium');
INSERT INTO public.moon VALUES ('Cryonova', 15, 11, 4200, 'Chromium');
INSERT INTO public.moon VALUES ('Glacial Crux', 16, 11, 3000, 'Zinc');
INSERT INTO public.moon VALUES ('Pyron Ember', 17, 12, 3600, 'Copper');
INSERT INTO public.moon VALUES ('Ignis Shard', 18, 12, 2700, 'Beryllium');
INSERT INTO public.moon VALUES ('Nepturian Orb', 19, 13, 4500, 'Amethyst');
INSERT INTO public.moon VALUES ('Frostveil', 20, 14, 3100, 'Lithium');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Ignis Prime', 4, 1, 7000, 'Fire');
INSERT INTO public.planet VALUES ('Aqua Terra', 5, 1, 12000, 'Water');
INSERT INTO public.planet VALUES ('Zephyrus', 6, 4, 9500, 'Gas');
INSERT INTO public.planet VALUES ('Vulcan', 7, 6, 10000, 'Fire');
INSERT INTO public.planet VALUES ('Poseidon', 8, 4, 15000, 'Water');
INSERT INTO public.planet VALUES ('Aetheria', 9, 4, 20000, 'Gas');
INSERT INTO public.planet VALUES ('Glacialis', 10, 4, 7500, 'Ice');
INSERT INTO public.planet VALUES ('Pyroxis', 11, 5, 14000, 'Fire');
INSERT INTO public.planet VALUES ('Neptune Omega', 12, 5, 18000, 'Water');
INSERT INTO public.planet VALUES ('Stratos', 13, 6, 22000, 'Gas');
INSERT INTO public.planet VALUES ('Frosthaven', 14, 6, 11000, 'Ice');
INSERT INTO public.planet VALUES ('Cryonis', 15, 8, 8500, 'Ice');


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Zorblaxian', 4, true, false);
INSERT INTO public.species VALUES (2, 'Cryothian', 6, true, true);
INSERT INTO public.species VALUES (3, 'Pyronid', 8, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Solaris', 1, 1, 5778, 1392000);
INSERT INTO public.star VALUES ('Nova Lumina', 4, 2, 4200, 1900000);
INSERT INTO public.star VALUES ('Helios Max', 5, 4, 6500, 1250000);
INSERT INTO public.star VALUES ('Epsilon Star', 6, 3, 3000, 800000);
INSERT INTO public.star VALUES ('Alpha Core', 7, 5, 12000, 2000000);
INSERT INTO public.star VALUES ('Omega Flare', 8, 6, 5200, 1600000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


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

