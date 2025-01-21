SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'b5252e66-00df-43e7-9480-c81831de0485', '{"action":"user_invited","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"toan.rehoan@hapins.net","user_id":"3df2292c-2446-42d2-a11f-9e6d5f9be2e8"}}', '2025-01-20 13:59:25.091296+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b702aea-47da-44a3-9117-de3648a18633', '{"action":"user_recovery_requested","actor_id":"3df2292c-2446-42d2-a11f-9e6d5f9be2e8","actor_username":"toan.rehoan@hapins.net","actor_via_sso":false,"log_type":"user"}', '2025-01-20 14:00:38.324703+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff8291fa-c1f8-4e32-aa74-f6744c5c51d3', '{"action":"user_signedup","actor_id":"3df2292c-2446-42d2-a11f-9e6d5f9be2e8","actor_username":"toan.rehoan@hapins.net","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-01-20 14:00:44.615658+00', ''),
	('00000000-0000-0000-0000-000000000000', '4db49d8b-f19d-4b1f-b168-8a75127bf6a0', '{"action":"login","actor_id":"3df2292c-2446-42d2-a11f-9e6d5f9be2e8","actor_username":"toan.rehoan@hapins.net","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-20 14:00:44.620557+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b3690813-7f45-40be-92cf-d6d2f3affff1', '{"action":"user_recovery_requested","actor_id":"3df2292c-2446-42d2-a11f-9e6d5f9be2e8","actor_username":"toan.rehoan@hapins.net","actor_via_sso":false,"log_type":"user"}', '2025-01-20 14:00:44.640192+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acbae3ef-e83f-4b38-ad67-ff212f8b18a6', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lehoangtuanbk@gmail.com","user_id":"c700af4b-1747-4b92-9de1-0e4948351928","user_phone":""}}', '2025-01-20 14:03:02.392266+00', ''),
	('00000000-0000-0000-0000-000000000000', '0037d6e1-3774-49f2-be23-6e6d013e0dcf', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-20 14:34:41.389002+00', ''),
	('00000000-0000-0000-0000-000000000000', '633088d4-575a-4478-ae3f-99515a97ce3b', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-20 14:57:03.552606+00', ''),
	('00000000-0000-0000-0000-000000000000', '69e51679-1090-4a5e-bf78-51c4b218d738', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-20 15:14:04.39815+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3cefe09-c039-4e4c-a5f7-d3cd4f663723', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-20 15:50:18.915423+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'c700af4b-1747-4b92-9de1-0e4948351928', 'authenticated', 'authenticated', 'lehoangtuanbk@gmail.com', '$2a$10$PgSuVC0Ocx67O0OdiEufUeeTDy8d7t45TFBHCbqhjsZOI.qqA0NBS', '2025-01-20 14:03:02.393131+00', NULL, '', NULL, '', NULL, '', '', NULL, '2025-01-20 15:50:18.917172+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-01-20 14:03:02.38849+00', '2025-01-20 15:50:18.921735+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('c700af4b-1747-4b92-9de1-0e4948351928', 'c700af4b-1747-4b92-9de1-0e4948351928', '{"sub": "c700af4b-1747-4b92-9de1-0e4948351928", "email": "lehoangtuanbk@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-01-20 14:03:02.390842+00', '2025-01-20 14:03:02.390896+00', '2025-01-20 14:03:02.390896+00', 'f2d34d94-c1a2-4811-a9de-d506a1f2f037');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('a445ba88-bd88-457d-bbdd-87efa6d3b3d0', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-20 14:34:41.391285+00', '2025-01-20 14:34:41.391285+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '192.168.96.1', NULL),
	('3ae15e1f-5e44-447d-8117-07569cbe86a8', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-20 14:57:03.554323+00', '2025-01-20 14:57:03.554323+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '192.168.96.1', NULL),
	('c2a4aebd-c399-4d66-ac82-0052ecd5d0c9', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-20 15:14:04.402791+00', '2025-01-20 15:14:04.402791+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '192.168.96.1', NULL),
	('acf61e86-c680-4512-aee3-88385cf889a4', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-20 15:50:18.917304+00', '2025-01-20 15:50:18.917304+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '192.168.96.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('a445ba88-bd88-457d-bbdd-87efa6d3b3d0', '2025-01-20 14:34:41.398928+00', '2025-01-20 14:34:41.398928+00', 'password', '97b168f7-cc1f-45a8-bef8-72beb4fca9c2'),
	('3ae15e1f-5e44-447d-8117-07569cbe86a8', '2025-01-20 14:57:03.558927+00', '2025-01-20 14:57:03.558927+00', 'password', '98dbcdc6-5404-4871-aa5a-bdad0ffcd2c7'),
	('c2a4aebd-c399-4d66-ac82-0052ecd5d0c9', '2025-01-20 15:14:04.419696+00', '2025-01-20 15:14:04.419696+00', 'password', '28cdf23b-44f0-4e82-a816-3436281823ea'),
	('acf61e86-c680-4512-aee3-88385cf889a4', '2025-01-20 15:50:18.922328+00', '2025-01-20 15:50:18.922328+00', 'password', '980f1d2b-d581-42e1-ba16-4f54770c7f4d');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 2, '9RQ3eSa9i8bHPZB5f2p5lg', 'c700af4b-1747-4b92-9de1-0e4948351928', false, '2025-01-20 14:34:41.394562+00', '2025-01-20 14:34:41.394562+00', NULL, 'a445ba88-bd88-457d-bbdd-87efa6d3b3d0'),
	('00000000-0000-0000-0000-000000000000', 3, 'kgnwegMFZYfW5WxsFpbHxg', 'c700af4b-1747-4b92-9de1-0e4948351928', false, '2025-01-20 14:57:03.557032+00', '2025-01-20 14:57:03.557032+00', NULL, '3ae15e1f-5e44-447d-8117-07569cbe86a8'),
	('00000000-0000-0000-0000-000000000000', 4, 'KVG_ELBEFrda1fasw-9FQA', 'c700af4b-1747-4b92-9de1-0e4948351928', false, '2025-01-20 15:14:04.413086+00', '2025-01-20 15:14:04.413086+00', NULL, 'c2a4aebd-c399-4d66-ac82-0052ecd5d0c9'),
	('00000000-0000-0000-0000-000000000000', 5, '7FBY2SuNckJ3GAtooLfKBw', 'c700af4b-1747-4b92-9de1-0e4948351928', false, '2025-01-20 15:50:18.920208+00', '2025-01-20 15:50:18.920208+00', NULL, 'acf61e86-c680-4512-aee3-88385cf889a4');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: labels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."labels" ("id", "content", "slug", "created_at", "updated_at") VALUES
	('68be4a6c-b389-46cb-9aa5-283a268adfed', 'Technology', 'technology', '2025-01-20 12:38:43.921908+00', '2025-01-20 12:38:43.921908+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: posts_labels; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 5, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
