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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 18, 1);
INSERT INTO public.games VALUES (2, 994, 2);
INSERT INTO public.games VALUES (3, 266, 2);
INSERT INTO public.games VALUES (4, 735, 3);
INSERT INTO public.games VALUES (5, 397, 3);
INSERT INTO public.games VALUES (6, 920, 2);
INSERT INTO public.games VALUES (7, 993, 2);
INSERT INTO public.games VALUES (8, 283, 2);
INSERT INTO public.games VALUES (9, 13, 1);
INSERT INTO public.games VALUES (10, 775, 4);
INSERT INTO public.games VALUES (11, 315, 4);
INSERT INTO public.games VALUES (12, 848, 5);
INSERT INTO public.games VALUES (13, 534, 5);
INSERT INTO public.games VALUES (14, 767, 4);
INSERT INTO public.games VALUES (15, 468, 4);
INSERT INTO public.games VALUES (16, 791, 4);
INSERT INTO public.games VALUES (17, 921, 6);
INSERT INTO public.games VALUES (18, 334, 6);
INSERT INTO public.games VALUES (19, 133, 7);
INSERT INTO public.games VALUES (20, 446, 7);
INSERT INTO public.games VALUES (21, 940, 6);
INSERT INTO public.games VALUES (22, 876, 6);
INSERT INTO public.games VALUES (23, 26, 6);
INSERT INTO public.games VALUES (24, 439, 8);
INSERT INTO public.games VALUES (25, 852, 8);
INSERT INTO public.games VALUES (26, 321, 9);
INSERT INTO public.games VALUES (27, 744, 9);
INSERT INTO public.games VALUES (28, 80, 8);
INSERT INTO public.games VALUES (29, 360, 8);
INSERT INTO public.games VALUES (30, 831, 8);
INSERT INTO public.games VALUES (31, 957, 10);
INSERT INTO public.games VALUES (32, 543, 10);
INSERT INTO public.games VALUES (33, 314, 11);
INSERT INTO public.games VALUES (34, 49, 11);
INSERT INTO public.games VALUES (35, 89, 10);
INSERT INTO public.games VALUES (36, 552, 10);
INSERT INTO public.games VALUES (37, 466, 10);
INSERT INTO public.games VALUES (38, 616, 12);
INSERT INTO public.games VALUES (39, 842, 12);
INSERT INTO public.games VALUES (40, 71, 13);
INSERT INTO public.games VALUES (41, 434, 13);
INSERT INTO public.games VALUES (42, 506, 12);
INSERT INTO public.games VALUES (43, 663, 12);
INSERT INTO public.games VALUES (44, 781, 12);
INSERT INTO public.games VALUES (45, 584, 14);
INSERT INTO public.games VALUES (46, 154, 14);
INSERT INTO public.games VALUES (47, 924, 15);
INSERT INTO public.games VALUES (48, 355, 15);
INSERT INTO public.games VALUES (49, 80, 14);
INSERT INTO public.games VALUES (50, 890, 14);
INSERT INTO public.games VALUES (51, 12, 14);
INSERT INTO public.games VALUES (52, 31, 16);
INSERT INTO public.games VALUES (53, 665, 16);
INSERT INTO public.games VALUES (54, 834, 17);
INSERT INTO public.games VALUES (55, 604, 17);
INSERT INTO public.games VALUES (56, 987, 16);
INSERT INTO public.games VALUES (57, 240, 16);
INSERT INTO public.games VALUES (58, 91, 16);
INSERT INTO public.games VALUES (59, 769, 18);
INSERT INTO public.games VALUES (60, 766, 18);
INSERT INTO public.games VALUES (61, 484, 19);
INSERT INTO public.games VALUES (62, 663, 19);
INSERT INTO public.games VALUES (63, 496, 18);
INSERT INTO public.games VALUES (64, 998, 18);
INSERT INTO public.games VALUES (65, 895, 18);
INSERT INTO public.games VALUES (66, 698, 20);
INSERT INTO public.games VALUES (67, 581, 20);
INSERT INTO public.games VALUES (68, 235, 21);
INSERT INTO public.games VALUES (69, 859, 21);
INSERT INTO public.games VALUES (70, 218, 20);
INSERT INTO public.games VALUES (71, 441, 20);
INSERT INTO public.games VALUES (72, 828, 20);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'owen');
INSERT INTO public.users VALUES (2, 'user_1712600519372');
INSERT INTO public.users VALUES (3, 'user_1712600519371');
INSERT INTO public.users VALUES (4, 'user_1712601152868');
INSERT INTO public.users VALUES (5, 'user_1712601152867');
INSERT INTO public.users VALUES (6, 'user_1712601271016');
INSERT INTO public.users VALUES (7, 'user_1712601271015');
INSERT INTO public.users VALUES (8, 'user_1712601285854');
INSERT INTO public.users VALUES (9, 'user_1712601285853');
INSERT INTO public.users VALUES (10, 'user_1712601393971');
INSERT INTO public.users VALUES (11, 'user_1712601393970');
INSERT INTO public.users VALUES (12, 'user_1712601532150');
INSERT INTO public.users VALUES (13, 'user_1712601532149');
INSERT INTO public.users VALUES (14, 'user_1712601571349');
INSERT INTO public.users VALUES (15, 'user_1712601571348');
INSERT INTO public.users VALUES (16, 'user_1712601648630');
INSERT INTO public.users VALUES (17, 'user_1712601648629');
INSERT INTO public.users VALUES (18, 'user_1712601744040');
INSERT INTO public.users VALUES (19, 'user_1712601744039');
INSERT INTO public.users VALUES (20, 'user_1712601773053');
INSERT INTO public.users VALUES (21, 'user_1712601773052');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 72, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

