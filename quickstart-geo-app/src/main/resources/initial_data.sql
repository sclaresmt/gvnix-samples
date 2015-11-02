--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.4
-- Dumped by pg_dump version 9.4.4
-- Started on 2015-10-21 18:03:17 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 3342 (class 0 OID 354249)
-- Dependencies: 185
-- Data for Name: abstract_person; Type: TABLE DATA; Schema: public; Owner: gvnix
--

INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, employed_since, specialty, area, distance, location, owner) VALUES ('Owner', 2, 'Calle de Serrano 26', '1968-03-11 00:00:00', 'Madrid', 'juan@gmail.com', 'Juan', '', 'Tomas Vallez', '22222222222', 1, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', NULL, NULL, '0103000020110F00000100000007000000F6E1BC43451115C16A22571F3AEE52414B54822D34C117C16FE0791BC8F752410D70406D8A151CC1E2133DA20FE7524161E2055779C51EC12532413ECAA152418483408AE4DB16C17FCC8AD2A06F524181776C691E3B12C13B0D9834ADB95241F6E1BC43451115C16A22571F3AEE5241', '0102000020110F00000500000034FD56CC820314C1B7E2D37420FF5241FED96C90988919C13F08654F70BD52417444BD6ABF5F1CC1F78A4FB5EEFD52411BB03DD50A5A20C1AF24B17892F55241A29908307F6B24C19274C028FC1C5341', '0101000020110F00003D9B45496D0C19C1BD413F1849CC5241', NULL);
INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, employed_since, specialty, area, distance, location, owner) VALUES ('Owner', 3, 'Plaza Santo Domingo', '1985-10-13 00:00:00', 'Murcia', 'maria@gmail.com', 'Maria', '', 'Gonzalez Gil', '', 0, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', NULL, NULL, '0103000020110F0000010000000700000035D82E47AB54EDC047C352C3CC9E5141A16FF759566102C14C2264C193A351415721AED2B9930DC198FE8A59DC675141362923E2816D0DC1586D8676332051411125C4D083A608C192B6F0B83A1A51413F70F6B45371F3C077060069A441514135D82E47AB54EDC047C352C3CC9E5141', '0102000020110F0000060000008D44980EA40DF8C0772346F34C48514129369537608100C13FFE288116755141A7613D96468904C1E2BC334ED7545141AC6D11B70C2A09C147D3C2DAC9355141FFDFD6A0FBD90BC1351CB9B4B74451418759362B72FE11C1690612F9F7395141', '0101000020110F00008A73F06615C1FEC0201E8CD8B2755141', NULL);
INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, employed_since, specialty, area, distance, location, owner) VALUES ('Owner', 4, 'Carrer de Roger de Flor, 221', '1970-12-12 00:00:00', 'Barcelona', 'vicente@gmail.com', 'Vicente', '', 'Alfonso Perez', '1111111111', 0, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', NULL, NULL, '0103000020110F000001000000080000003B23C7BF8B761541F0251A8D20B4534102EB97DEDB56B5C029580D7202F753416FB09CE68E5F04C1776222C595295341F719355F3F8DD2400F1B70F526B252412C9A50AA8654FB40720311C7CE24534162D0D513BD2D124192FB9BB7064B53413B23C7BF8B761541DA4AC3963D9C53413B23C7BF8B761541F0251A8D20B45341', '0102000020110F000006000000FAE4F8422D66134100631E97D3E65341239871A7C16D12416CEF357FB2835341FE27252C874D0B41D664D6096C695341ED4E25663BDA0041C0897F138951534171D79580BE9BE9407B6B7B77CE965341E6B001D69CC6F240BE5B91583EE35341', '0101000020110F0000970BA049A55A0D41AE67506EA3565341', NULL);
INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, employed_since, specialty, area, distance, location, owner) VALUES ('Vet', 5, 'Carrer Miquel Romeu, 130', '1972-04-23 00:00:00', 'Barcelona', 'vet.lola@gmail.com', 'Lola', 'www.vet.lola.com', 'Asensio Cruz', '55555555555', 0, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', '2003-10-01 00:00:00', 1, NULL, NULL, NULL, 4);
INSERT INTO abstract_person (dtype, id, address, birth_day, city, email, first_name, home_page, last_name, telephone, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, employed_since, specialty, area, distance, location, owner) VALUES ('Vet', 1, 'Paseo de Recoletos 25', '1975-07-01 00:00:00', 'Madrid', 'vet.ejemplo@gmail.com', 'Ana', 'www.vet.ejemplo.com', 'Martinez Valenzuela', '123456789', 1, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', '2000-10-21 00:00:00', 0, NULL, NULL, NULL, 2);


--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 190
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: gvnix
--

SELECT pg_catalog.setval('hibernate_sequence', 5, true);


--
-- TOC entry 3343 (class 0 OID 354257)
-- Dependencies: 186
-- Data for Name: pet; Type: TABLE DATA; Schema: public; Owner: gvnix
--

INSERT INTO pet (id, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, name, send_reminders, type, weight, owner) VALUES (1, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', 'Rocky', false, 0, 15.00, 2);
INSERT INTO pet (id, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, name, send_reminders, type, weight, owner) VALUES (2, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', 'Kitty', false, 1, 4.00, 3);
INSERT INTO pet (id, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, name, send_reminders, type, weight, owner) VALUES (3, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', 'Donald', false, 2, 5.00, 4);
INSERT INTO pet (id, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, name, send_reminders, type, weight, owner) VALUES (4, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', 'Simba', false, 0, 2.00, 3);
INSERT INTO pet (id, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, name, send_reminders, type, weight, owner) VALUES (5, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', 'Misifu', true, 1, 6.00, 4);


--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 188
-- Name: pet_seq; Type: SEQUENCE SET; Schema: public; Owner: gvnix
--

SELECT pg_catalog.setval('pet_seq', 5, true);


--
-- TOC entry 3213 (class 0 OID 353176)
-- Dependencies: 173
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3344 (class 0 OID 354263)
-- Dependencies: 187
-- Data for Name: visit; Type: TABLE DATA; Schema: public; Owner: gvnix
--

INSERT INTO visit (id, description, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, visit_date, pet, vet) VALUES (1, 'vaccination', 0, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', '2015-10-08 00:00:00', 5, 5);
INSERT INTO visit (id, description, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, visit_date, pet, vet) VALUES (2, 'Infection', 0, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', '2013-05-06 00:00:00', 3, 5);
INSERT INTO visit (id, description, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, visit_date, pet, vet) VALUES (3, 'vaccination', 0, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', '2014-06-09 00:00:00', 5, 5);
INSERT INTO visit (id, description, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, visit_date, pet, vet) VALUES (4, 'Irregular hearth beating', 0, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', '2010-07-10 00:00:00', 1, 1);
INSERT INTO visit (id, description, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, visit_date, pet, vet) VALUES (5, 'Hearth surgery', 0, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', '2015-10-15 00:00:00', 1, 1);
INSERT INTO visit (id, description, version, audit_created_by, audit_creation, audit_last_update, audit_last_updated_by, visit_date, pet, vet) VALUES (6, 'Medical examination', 0, 'admin', '2015-10-30 13:11:38.32', '2015-10-30 13:11:38.32', 'admin', '2012-07-08 00:00:00', 1, 1);


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 189
-- Name: visit_seq; Type: SEQUENCE SET; Schema: public; Owner: gvnix
--

SELECT pg_catalog.setval('visit_seq', 6, true);


-- Completed on 2015-10-21 18:03:17 CEST

--
-- PostgreSQL database dump complete
--

