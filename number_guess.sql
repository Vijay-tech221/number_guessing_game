--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: game_record; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_record (
    user_id integer,
    guess_attempt integer
);


ALTER TABLE public.game_record OWNER TO freecodecamp;

--
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usernames (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.usernames OWNER TO freecodecamp;

--
-- Name: usernames_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usernames_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usernames_user_id_seq OWNER TO freecodecamp;

--
-- Name: usernames_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usernames_user_id_seq OWNED BY public.usernames.user_id;


--
-- Name: usernames user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames ALTER COLUMN user_id SET DEFAULT nextval('public.usernames_user_id_seq'::regclass);


--
-- Data for Name: game_record; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_record VALUES (1, 1);
INSERT INTO public.game_record VALUES (1, 2);
INSERT INTO public.game_record VALUES (1, 3);
INSERT INTO public.game_record VALUES (1, 4);
INSERT INTO public.game_record VALUES (1, 5);
INSERT INTO public.game_record VALUES (1, 2);
INSERT INTO public.game_record VALUES (30, 68);
INSERT INTO public.game_record VALUES (30, 280);
INSERT INTO public.game_record VALUES (31, 354);
INSERT INTO public.game_record VALUES (31, 365);
INSERT INTO public.game_record VALUES (30, 203);
INSERT INTO public.game_record VALUES (30, 480);
INSERT INTO public.game_record VALUES (30, 293);
INSERT INTO public.game_record VALUES (32, 566);
INSERT INTO public.game_record VALUES (32, 135);
INSERT INTO public.game_record VALUES (33, 927);
INSERT INTO public.game_record VALUES (33, 301);
INSERT INTO public.game_record VALUES (32, 645);
INSERT INTO public.game_record VALUES (32, 297);
INSERT INTO public.game_record VALUES (32, 988);
INSERT INTO public.game_record VALUES (34, 474);
INSERT INTO public.game_record VALUES (34, 518);
INSERT INTO public.game_record VALUES (35, 853);
INSERT INTO public.game_record VALUES (35, 638);
INSERT INTO public.game_record VALUES (34, 627);
INSERT INTO public.game_record VALUES (34, 227);
INSERT INTO public.game_record VALUES (34, 80);
INSERT INTO public.game_record VALUES (36, 133);
INSERT INTO public.game_record VALUES (36, 262);
INSERT INTO public.game_record VALUES (37, 931);
INSERT INTO public.game_record VALUES (37, 228);
INSERT INTO public.game_record VALUES (36, 39);
INSERT INTO public.game_record VALUES (36, 607);
INSERT INTO public.game_record VALUES (36, 150);
INSERT INTO public.game_record VALUES (38, 559);
INSERT INTO public.game_record VALUES (38, 80);
INSERT INTO public.game_record VALUES (39, 852);
INSERT INTO public.game_record VALUES (39, 882);
INSERT INTO public.game_record VALUES (38, 497);
INSERT INTO public.game_record VALUES (38, 364);
INSERT INTO public.game_record VALUES (38, 737);
INSERT INTO public.game_record VALUES (40, 3);
INSERT INTO public.game_record VALUES (40, 503);
INSERT INTO public.game_record VALUES (41, 198);
INSERT INTO public.game_record VALUES (41, 516);
INSERT INTO public.game_record VALUES (40, 520);
INSERT INTO public.game_record VALUES (40, 312);
INSERT INTO public.game_record VALUES (40, 86);
INSERT INTO public.game_record VALUES (42, 2);
INSERT INTO public.game_record VALUES (43, 411);
INSERT INTO public.game_record VALUES (43, 822);
INSERT INTO public.game_record VALUES (44, 636);
INSERT INTO public.game_record VALUES (44, 54);
INSERT INTO public.game_record VALUES (43, 762);
INSERT INTO public.game_record VALUES (43, 524);
INSERT INTO public.game_record VALUES (43, 423);
INSERT INTO public.game_record VALUES (45, 419);
INSERT INTO public.game_record VALUES (45, 391);
INSERT INTO public.game_record VALUES (46, 5);
INSERT INTO public.game_record VALUES (46, 579);
INSERT INTO public.game_record VALUES (45, 105);
INSERT INTO public.game_record VALUES (45, 957);
INSERT INTO public.game_record VALUES (45, 390);
INSERT INTO public.game_record VALUES (63, 385);
INSERT INTO public.game_record VALUES (63, 919);
INSERT INTO public.game_record VALUES (64, 860);
INSERT INTO public.game_record VALUES (64, 783);
INSERT INTO public.game_record VALUES (63, 616);
INSERT INTO public.game_record VALUES (63, 774);
INSERT INTO public.game_record VALUES (63, 517);
INSERT INTO public.game_record VALUES (65, 913);
INSERT INTO public.game_record VALUES (65, 508);
INSERT INTO public.game_record VALUES (66, 837);
INSERT INTO public.game_record VALUES (66, 363);
INSERT INTO public.game_record VALUES (65, 272);
INSERT INTO public.game_record VALUES (65, 296);
INSERT INTO public.game_record VALUES (65, 368);
INSERT INTO public.game_record VALUES (67, 466);
INSERT INTO public.game_record VALUES (67, 828);
INSERT INTO public.game_record VALUES (68, 194);
INSERT INTO public.game_record VALUES (68, 50);
INSERT INTO public.game_record VALUES (67, 107);
INSERT INTO public.game_record VALUES (67, 992);
INSERT INTO public.game_record VALUES (67, 467);
INSERT INTO public.game_record VALUES (69, 335);
INSERT INTO public.game_record VALUES (69, 580);
INSERT INTO public.game_record VALUES (70, 256);
INSERT INTO public.game_record VALUES (70, 308);
INSERT INTO public.game_record VALUES (69, 485);
INSERT INTO public.game_record VALUES (69, 626);
INSERT INTO public.game_record VALUES (69, 798);
INSERT INTO public.game_record VALUES (71, 6);
INSERT INTO public.game_record VALUES (71, 495);
INSERT INTO public.game_record VALUES (72, 646);
INSERT INTO public.game_record VALUES (72, 207);
INSERT INTO public.game_record VALUES (71, 225);
INSERT INTO public.game_record VALUES (71, 266);
INSERT INTO public.game_record VALUES (71, 662);
INSERT INTO public.game_record VALUES (73, 870);
INSERT INTO public.game_record VALUES (73, 732);
INSERT INTO public.game_record VALUES (74, 560);
INSERT INTO public.game_record VALUES (74, 33);
INSERT INTO public.game_record VALUES (73, 421);
INSERT INTO public.game_record VALUES (73, 769);
INSERT INTO public.game_record VALUES (73, 439);
INSERT INTO public.game_record VALUES (75, 259);
INSERT INTO public.game_record VALUES (75, 14);
INSERT INTO public.game_record VALUES (76, 433);
INSERT INTO public.game_record VALUES (76, 825);
INSERT INTO public.game_record VALUES (75, 836);
INSERT INTO public.game_record VALUES (75, 878);
INSERT INTO public.game_record VALUES (75, 896);
INSERT INTO public.game_record VALUES (77, 571);
INSERT INTO public.game_record VALUES (77, 139);
INSERT INTO public.game_record VALUES (78, 107);
INSERT INTO public.game_record VALUES (78, 660);
INSERT INTO public.game_record VALUES (77, 145);
INSERT INTO public.game_record VALUES (77, 220);
INSERT INTO public.game_record VALUES (77, 317);
INSERT INTO public.game_record VALUES (79, 267);
INSERT INTO public.game_record VALUES (79, 705);
INSERT INTO public.game_record VALUES (80, 466);
INSERT INTO public.game_record VALUES (80, 210);
INSERT INTO public.game_record VALUES (79, 59);
INSERT INTO public.game_record VALUES (79, 999);
INSERT INTO public.game_record VALUES (79, 563);
INSERT INTO public.game_record VALUES (81, 768);
INSERT INTO public.game_record VALUES (81, 504);
INSERT INTO public.game_record VALUES (82, 302);
INSERT INTO public.game_record VALUES (82, 506);
INSERT INTO public.game_record VALUES (81, 683);
INSERT INTO public.game_record VALUES (81, 376);
INSERT INTO public.game_record VALUES (81, 753);
INSERT INTO public.game_record VALUES (83, 1);
INSERT INTO public.game_record VALUES (83, 1);
INSERT INTO public.game_record VALUES (84, 1);
INSERT INTO public.game_record VALUES (84, 1);
INSERT INTO public.game_record VALUES (83, 1);
INSERT INTO public.game_record VALUES (83, 1);
INSERT INTO public.game_record VALUES (83, 1);


--
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usernames VALUES (1, 'Vijay');
INSERT INTO public.usernames VALUES (2, 'user_1762839553761');
INSERT INTO public.usernames VALUES (3, 'user_1762839553760');
INSERT INTO public.usernames VALUES (4, 'user_1762839602064');
INSERT INTO public.usernames VALUES (5, 'user_1762839602063');
INSERT INTO public.usernames VALUES (6, 'user_1762839609573');
INSERT INTO public.usernames VALUES (7, 'user_1762839609572');
INSERT INTO public.usernames VALUES (8, 'user_1762839984409');
INSERT INTO public.usernames VALUES (9, 'user_1762839984408');
INSERT INTO public.usernames VALUES (10, 'user_1762840073443');
INSERT INTO public.usernames VALUES (11, 'user_1762840073442');
INSERT INTO public.usernames VALUES (12, 'user_1762840187835');
INSERT INTO public.usernames VALUES (13, 'user_1762840187834');
INSERT INTO public.usernames VALUES (14, 'user_1762840250710');
INSERT INTO public.usernames VALUES (15, 'user_1762840250709');
INSERT INTO public.usernames VALUES (16, 'user_1762840626005');
INSERT INTO public.usernames VALUES (17, 'user_1762840626004');
INSERT INTO public.usernames VALUES (18, 'user_1762840634801');
INSERT INTO public.usernames VALUES (19, 'user_1762840634800');
INSERT INTO public.usernames VALUES (21, 'user_1762843688325');
INSERT INTO public.usernames VALUES (22, 'user_1762843688324');
INSERT INTO public.usernames VALUES (23, 'user_1762843703263');
INSERT INTO public.usernames VALUES (24, 'user_1762843703262');
INSERT INTO public.usernames VALUES (25, 'user_1762843761692');
INSERT INTO public.usernames VALUES (26, 'user_1762843761691');
INSERT INTO public.usernames VALUES (27, 'user_1762844150782');
INSERT INTO public.usernames VALUES (28, 'user_1762844150781');
INSERT INTO public.usernames VALUES (30, 'user_1762844650822');
INSERT INTO public.usernames VALUES (31, 'user_1762844650821');
INSERT INTO public.usernames VALUES (32, 'user_1762844788360');
INSERT INTO public.usernames VALUES (33, 'user_1762844788359');
INSERT INTO public.usernames VALUES (34, 'user_1762844835921');
INSERT INTO public.usernames VALUES (35, 'user_1762844835920');
INSERT INTO public.usernames VALUES (36, 'user_1762844838478');
INSERT INTO public.usernames VALUES (37, 'user_1762844838477');
INSERT INTO public.usernames VALUES (38, 'user_1762844923562');
INSERT INTO public.usernames VALUES (39, 'user_1762844923561');
INSERT INTO public.usernames VALUES (40, 'user_1762844958037');
INSERT INTO public.usernames VALUES (41, 'user_1762844958036');
INSERT INTO public.usernames VALUES (42, '1');
INSERT INTO public.usernames VALUES (43, 'user_1762845067426');
INSERT INTO public.usernames VALUES (44, 'user_1762845067425');
INSERT INTO public.usernames VALUES (45, 'user_1762845084633');
INSERT INTO public.usernames VALUES (46, 'user_1762845084632');
INSERT INTO public.usernames VALUES (47, 'user_1762845468124');
INSERT INTO public.usernames VALUES (48, 'user_1762845468123');
INSERT INTO public.usernames VALUES (49, 'user_1762845491557');
INSERT INTO public.usernames VALUES (50, 'user_1762845491556');
INSERT INTO public.usernames VALUES (51, 'user_1762845495669');
INSERT INTO public.usernames VALUES (52, 'user_1762845495668');
INSERT INTO public.usernames VALUES (53, 'user_1762847840100');
INSERT INTO public.usernames VALUES (54, 'user_1762847840099');
INSERT INTO public.usernames VALUES (55, 'user_1762848349799');
INSERT INTO public.usernames VALUES (56, 'user_1762848349798');
INSERT INTO public.usernames VALUES (57, 'user_1762848400759');
INSERT INTO public.usernames VALUES (58, 'user_1762848400758');
INSERT INTO public.usernames VALUES (59, 'user_1762848407875');
INSERT INTO public.usernames VALUES (60, 'user_1762848407874');
INSERT INTO public.usernames VALUES (61, 'user_1762848493787');
INSERT INTO public.usernames VALUES (62, 'user_1762848493786');
INSERT INTO public.usernames VALUES (63, 'user_1762848551454');
INSERT INTO public.usernames VALUES (64, 'user_1762848551453');
INSERT INTO public.usernames VALUES (65, 'user_1762848756587');
INSERT INTO public.usernames VALUES (66, 'user_1762848756586');
INSERT INTO public.usernames VALUES (67, 'user_1762848830247');
INSERT INTO public.usernames VALUES (68, 'user_1762848830246');
INSERT INTO public.usernames VALUES (69, 'user_1762848892441');
INSERT INTO public.usernames VALUES (70, 'user_1762848892440');
INSERT INTO public.usernames VALUES (71, 'user_1762848996139');
INSERT INTO public.usernames VALUES (72, 'user_1762848996138');
INSERT INTO public.usernames VALUES (73, 'user_1762849143228');
INSERT INTO public.usernames VALUES (74, 'user_1762849143227');
INSERT INTO public.usernames VALUES (75, 'user_1762849329598');
INSERT INTO public.usernames VALUES (76, 'user_1762849329597');
INSERT INTO public.usernames VALUES (77, 'user_1762849364078');
INSERT INTO public.usernames VALUES (78, 'user_1762849364077');
INSERT INTO public.usernames VALUES (79, 'user_1762849413221');
INSERT INTO public.usernames VALUES (80, 'user_1762849413220');
INSERT INTO public.usernames VALUES (81, 'user_1762849618801');
INSERT INTO public.usernames VALUES (82, 'user_1762849618800');
INSERT INTO public.usernames VALUES (83, 'user_1762850348067');
INSERT INTO public.usernames VALUES (84, 'user_1762850348066');


--
-- Name: usernames_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usernames_user_id_seq', 84, true);


--
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (user_id);


--
-- Name: usernames usernames_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

