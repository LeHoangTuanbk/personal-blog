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
	('00000000-0000-0000-0000-000000000000', 'a3cefe09-c039-4e4c-a5f7-d3cd4f663723', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-20 15:50:18.915423+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a1c7699-6efa-417e-a9b7-ace7b38214af', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 12:00:06.34288+00', ''),
	('00000000-0000-0000-0000-000000000000', '98fe29c8-0c74-4c47-bfbf-a217a3134d23', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-21 12:00:06.354242+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ead95e2a-7863-4ac8-82f0-f097efaaa63e', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:12:02.359396+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be8363a8-abf5-471d-8072-a6872ccef015', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:12:19.509302+00', ''),
	('00000000-0000-0000-0000-000000000000', '964e62af-7c62-45d5-96ca-9b38a321f93f', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:14:42.581646+00', ''),
	('00000000-0000-0000-0000-000000000000', 'db4fa96b-aad4-467d-8d0f-25e4a1eea829', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:15:26.863537+00', ''),
	('00000000-0000-0000-0000-000000000000', '716721bb-3c9c-412a-83aa-89dc2935fd18', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:15:58.002414+00', ''),
	('00000000-0000-0000-0000-000000000000', '457f7d1e-b2f5-43fd-8322-131ed2b7f45f', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:16:26.139606+00', ''),
	('00000000-0000-0000-0000-000000000000', '6a0876a5-0b8e-456c-ad8c-c3d01b7b423d', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:18:15.374968+00', ''),
	('00000000-0000-0000-0000-000000000000', '2fce9bb1-b0f0-40d3-b4f9-ee679e45b53e', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:21:58.432117+00', ''),
	('00000000-0000-0000-0000-000000000000', '49007a47-a73d-4409-b97e-02bbb7a2b33e', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:23:22.467677+00', ''),
	('00000000-0000-0000-0000-000000000000', '8faf7c2e-185e-46ef-a08c-139ae562bf4f', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:28:13.579493+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abaadcfb-bea3-4c0d-9f93-e2dee4c7eda0', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:35:01.903532+00', ''),
	('00000000-0000-0000-0000-000000000000', '3a298611-f202-476f-a89e-d6c183dee244', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:37:00.796767+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd933921b-3115-4d99-8e9b-a7611c57db24', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:38:49.488539+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b9a1b73-8a81-4b77-8749-30ff09ebe50f', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:44:47.714335+00', ''),
	('00000000-0000-0000-0000-000000000000', '3fb425d5-d2db-4837-a9b4-42f2e5e7b648', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:45:22.448826+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0aecb0f-3208-4fcb-a9ad-46169b2c63ab', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:46:20.35264+00', ''),
	('00000000-0000-0000-0000-000000000000', '596a3d4b-1763-440b-89c7-bb5c5334ffec', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:47:34.763641+00', ''),
	('00000000-0000-0000-0000-000000000000', '7859c1e6-a31e-489a-8898-cd049e847687', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:48:44.065839+00', ''),
	('00000000-0000-0000-0000-000000000000', '97db4438-e0c3-4974-8a3b-6746168829b6', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:50:58.510608+00', ''),
	('00000000-0000-0000-0000-000000000000', '691893a1-00d0-45c0-b457-0bbd8ee21cd8', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:53:37.747027+00', ''),
	('00000000-0000-0000-0000-000000000000', '8368fe61-142b-4048-8ae8-9a07ebdb4b80', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 12:54:22.231123+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dfcf408a-d6e2-4a3c-a250-8d938aaef54b', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:02:36.488105+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f7c986c9-d198-4c8a-a153-bc94a3859ac6', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:03:38.509444+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d60c074-0608-4dfe-a6e8-5e8a37b80325', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:07:10.685321+00', ''),
	('00000000-0000-0000-0000-000000000000', '592fab90-8cc3-4986-af83-7e16865218f7', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:07:58.820727+00', ''),
	('00000000-0000-0000-0000-000000000000', '1003435e-d5c6-4a71-8bc5-e3147572b719', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:08:52.742303+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1b9c94d-4698-4758-92e7-a201af28aab5', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:11:35.69469+00', ''),
	('00000000-0000-0000-0000-000000000000', '43b7e57e-d4a9-4159-aee1-547e6ef82788', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:13:05.037301+00', ''),
	('00000000-0000-0000-0000-000000000000', '5402fd93-14b9-4b77-a3a9-455cc64a7bd5', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:16:11.130989+00', ''),
	('00000000-0000-0000-0000-000000000000', '900f8848-eae9-497a-ac17-0550a9e9e746', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:21:48.346364+00', ''),
	('00000000-0000-0000-0000-000000000000', '811897fb-fc63-421d-a44f-9c797090ee16', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:23:17.320347+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4295f13-7036-40d9-bb98-a7074b1361bf', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:27:54.576835+00', ''),
	('00000000-0000-0000-0000-000000000000', '18675863-fbf4-4246-ae3f-4e0e0288ca46', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:33:06.43498+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3e78a91-b6f5-49a3-a5a5-679c27e10509', '{"action":"logout","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-01-21 13:41:24.404734+00', ''),
	('00000000-0000-0000-0000-000000000000', '676c5527-7369-4ee0-a0e5-b0411305e884', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:41:36.853779+00', ''),
	('00000000-0000-0000-0000-000000000000', '94d4d583-f25f-4493-b769-45e96668eaff', '{"action":"logout","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-01-21 13:41:38.401372+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1a75600-a645-46e7-aca1-37d49c653752', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:42:44.147912+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f42845a4-424c-4810-9591-b3a7f8386918', '{"action":"logout","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-01-21 13:42:46.393745+00', ''),
	('00000000-0000-0000-0000-000000000000', '11572c74-64c4-4a49-b88e-8159887b2193', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-21 13:46:26.628648+00', ''),
	('00000000-0000-0000-0000-000000000000', '7bf0405d-f77e-4e96-8231-e5e0f92886c6', '{"action":"logout","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-01-21 13:46:27.964093+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f1dcce94-348a-45b8-8d30-61461f6e431b', '{"action":"user_recovery_requested","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-01-21 14:06:20.223714+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b328e15c-960e-427b-bb25-b1a73b6484ee', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-22 11:11:53.992122+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b47c668-c1c1-44c4-a182-bd1aaacb0aa2', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 12:10:09.734775+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a75b691-d262-46ec-a9c2-151b0f6cd371', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 12:10:09.737048+00', ''),
	('00000000-0000-0000-0000-000000000000', '9edcc076-f888-4448-9d43-f1e73e577b1e', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 13:08:18.797328+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce372445-43ec-4e0f-95e6-63e9ff97b591', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-22 13:08:18.799639+00', ''),
	('00000000-0000-0000-0000-000000000000', '3eeb0df7-1f48-4d37-a7b5-a9031169e2b9', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-23 00:02:32.891511+00', ''),
	('00000000-0000-0000-0000-000000000000', '3756dcd3-18d6-44a5-bba3-e56a681777fa', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-23 00:02:32.90323+00', ''),
	('00000000-0000-0000-0000-000000000000', '666f5a6e-6fd0-4a2d-a0ba-ac861724445f', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-25 08:14:07.033425+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'c700af4b-1747-4b92-9de1-0e4948351928', 'authenticated', 'authenticated', 'lehoangtuanbk@gmail.com', '$2a$10$PgSuVC0Ocx67O0OdiEufUeeTDy8d7t45TFBHCbqhjsZOI.qqA0NBS', '2025-01-20 14:03:02.393131+00', NULL, '', NULL, '03bcdb506e11883681accd31cb95bfc00a833a6b831af2f211209cf6', '2025-01-21 14:06:20.225856+00', '', '', NULL, '2025-01-25 08:14:07.03682+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-01-20 14:03:02.38849+00', '2025-01-25 08:14:07.042834+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


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
	('7939065e-bc8b-4a53-9dd6-eca48c4a7c06', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-22 11:11:53.996887+00', '2025-01-23 00:02:32.933343+00', NULL, 'aal1', NULL, '2025-01-23 00:02:32.933289', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '192.168.112.1', NULL),
	('faf3f8aa-0739-4a9f-94f7-c8aa373aeb75', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-25 08:14:07.037067+00', '2025-01-25 08:14:07.037067+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '192.168.176.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('7939065e-bc8b-4a53-9dd6-eca48c4a7c06', '2025-01-22 11:11:54.010838+00', '2025-01-22 11:11:54.010838+00', 'password', 'faeb138b-5845-455f-8699-db9d205c754d'),
	('faf3f8aa-0739-4a9f-94f7-c8aa373aeb75', '2025-01-25 08:14:07.04393+00', '2025-01-25 08:14:07.04393+00', 'password', '6af7e4f7-5697-4bed-82b3-35cf588a9f42');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") VALUES
	('e34cb8db-3c4e-4c10-a880-1053c9f075ea', 'c700af4b-1747-4b92-9de1-0e4948351928', 'recovery_token', '03bcdb506e11883681accd31cb95bfc00a833a6b831af2f211209cf6', 'lehoangtuanbk@gmail.com', '2025-01-21 14:06:20.277984', '2025-01-21 14:06:20.277984');


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 75, 'Rcw-8uFZmwvlnbS8fIQEPw', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-22 11:11:54.004412+00', '2025-01-22 12:10:09.737404+00', NULL, '7939065e-bc8b-4a53-9dd6-eca48c4a7c06'),
	('00000000-0000-0000-0000-000000000000', 76, 'T0bK29obYQYtM6LCSmeBAA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-22 12:10:09.745976+00', '2025-01-22 13:08:18.800238+00', 'Rcw-8uFZmwvlnbS8fIQEPw', '7939065e-bc8b-4a53-9dd6-eca48c4a7c06'),
	('00000000-0000-0000-0000-000000000000', 77, 'JmCWYi9KG0oZWT3dtwobxg', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-22 13:08:18.802404+00', '2025-01-23 00:02:32.905841+00', 'T0bK29obYQYtM6LCSmeBAA', '7939065e-bc8b-4a53-9dd6-eca48c4a7c06'),
	('00000000-0000-0000-0000-000000000000', 78, 'r3yeZJA0FwcavwBxy0mBJA', 'c700af4b-1747-4b92-9de1-0e4948351928', false, '2025-01-23 00:02:32.922453+00', '2025-01-23 00:02:32.922453+00', 'JmCWYi9KG0oZWT3dtwobxg', '7939065e-bc8b-4a53-9dd6-eca48c4a7c06'),
	('00000000-0000-0000-0000-000000000000', 79, 'bERnlxfhn1b3eD4m01T9tg', 'c700af4b-1747-4b92-9de1-0e4948351928', false, '2025-01-25 08:14:07.039844+00', '2025-01-25 08:14:07.039844+00', NULL, 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75');


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
	('68be4a6c-b389-46cb-9aa5-283a268adfed', 'Programming', 'programing', '2025-01-20 12:38:43.921908+00', '2025-01-20 12:38:43.921908+00'),
	('bf6742ed-1815-484e-8115-7ca9ec63e974', 'Health', 'health', '2025-01-22 11:18:06.14672+00', '2025-01-22 11:18:06.14672+00'),
	('da5d8878-7005-42de-a9fa-a5a3e67c863f', 'Mathematics', 'mathematics', '2025-01-22 11:18:29.960489+00', '2025-01-22 11:18:29.960489+00'),
	('a6516ae1-14b4-43ca-8b51-3684c2228342', 'Life', 'life', '2025-01-22 11:18:51.183114+00', '2025-01-22 11:18:51.183114+00'),
	('25cab650-55ce-409c-afe9-62e36db2bc64', 'Books', 'books', '2025-01-25 08:39:54.071241+00', '2025-01-25 08:39:54.071241+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."users" ("id", "email_address", "role", "status", "created_at", "updated_at") VALUES
	('c700af4b-1747-4b92-9de1-0e4948351928', 'lehoangtuanbk@gmail.com', 'author', 'active', '2025-01-21 11:41:44.636634+00', '2025-01-21 11:41:44.636634+00');


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."posts" ("id", "user_id", "title", "content", "status", "slug", "created_at", "updated_at", "reading_time", "description") VALUES
	('530e7f5d-c1d6-4c8f-abe8-63b33a02e583', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Book review - Creativity Inc.', '<p>Mình vừa đọc xong một cuốn sách mà mình rất thích: “Creativity Inc.” — viết bởi Ed Catmull, đồng sáng lập và chủ tịch của Pixar từ năm 1979 đến 2018.</p>
<p>Từ khi còn nhỏ, ước mơ của ông là có thể tạo ra một bộ phim hoạt hình (animated feature film) hoàn toàn bằng máy tính. Ông bảo vệ luận án tiến sĩ ngành khoa học máy tính năm 1974 với thuật toán cho phép máy tính thể hiện đường cong. Năm 1995, Pixar sản xuất Toy Story, animated feature film đầu tiên sản xuất hoàn toàn bằng máy tính. Không chỉ lđặt cộc mốc lịch sử về kỹ thuật, Toy Story còn là một thành công thương mại với doanh thu $350 triệu.</p>
<p>Sau khi hoàn thành ước mơ của đời mình, Catmull cảm thấy hoang mang không biết làm gì tiếp theo. Ông quyết định dành thời gian còn lại xây dựng văn hoá Pixar để công ty trở thành cái nôi thúc đẩy sự sáng tạo. Và cuốn sách Creativity Inc. tổng hợp suy nghĩ của ông về văn hoá sáng tạo đó.</p>
<p>Theo ông, sáng tạo không phải là nghệ thuật hay tài năng, mà là một quy trình. Sáng tạo không phải là cao hứng lên làm cái gì đó điên rồ, mà là ép bản thân theo một quy trình cho phép sản phẩm mình tạo ra tốt lên từng ngày. Ai cũng có khả năng sáng tạo, nếu như họ dành thời gian xây dựng cho mình một quy trình và có đủ kỷ luật để theo quy trình đó.</p>
<p>Tất cả các bộ phim ở Pixar đều được xây dựng theo một quy trình nghiêm ngặt. Đội ngũ làm phim nghiên cứu và đưa ra ý tưởng, brain trust (một nhóm người có kinh nghiệm làm phim) phân tích ý tưởng đó và đưa ra gợi ý, đội ngũ làm phim dựa vào gợi ý đó tiếp tục phát triển bộ phim, brain trust góp ý tiếp theo. Chỉ để có câu chuyện cho một bộ phim thôi là quy trình kéo dài cả năm trời. Nhưng mỗi lần thay đổi, câu chuyện lại tốt hơn một chút, để cuối cùng trở thành bộ phim hàng triệu người mến mộ như Toy Story, Monster Inc., Up.</p>
<p>Cho dù đạo diễn có giỏi đến đâu, phiên bản ban đầu của tất cả các bộ phim Pixar đều vô cùng dở, thậm chí chẳng có liên quan gì đến phiên bản cuối cùng. Ví dụ, ý tưởng ban đầu cho bộ phim Up là một thành phố bay ở hành tinh xa lạ với hai hoàng tử tranh chấp để kế thừa vương quốc. Sau đó, cả thành phố được giảm xuống thành một ngôi nhà. Ngôi nhà bay bởi bóng bay thay vì ma thuật. Sau đó nữa, thay vì dùng nhân vật hai anh hoàng tử người xem không thể liên hệ được, họ dùng nhân vật một ông lão. Rồi ai đó giới thiệu nhân vật một cậu bé.</p>
<p>Một công ty chỉ có thể theo đuổi quy trình đó nếu văn hoá công ty cho phép hai điều. Thứ nhất, tất cả mọi người đều có thể nói lên ý kiến của mình mà không sợ “nói vượt cấp”. Nhân viên mới ra trường có thể bất đồng ý kiến với đạo diễn gạo cội. Đạo diễn gạo cội không thể bỏ qua ý kiến đóng góp của nhân viên mới ra trường chỉ vì người đó ít kinh nghiệm. Tại sao lại thuê người thông minh nếu như không cho phép họ sử dụng bộ não của mình?</p>
<p>Thứ hai, công ty phải tạo môi trường thân thiện với thất bại. Vì sản phẩm ban đầu nào cũng dở, nên nếu nhân viên sợ không dám trưng bày sản phẩm dở, sẽ không ai biết là nó dở như thế nào để mà cải thiện. Một trong những đạo diễn của Pixar, Andrew Santon, nổi tiếng với câu nói: “fail early and fail fast.” Nếu bạn có ý tưởng dở, thì cách tốt nhất là để mọi người biết đến nó càng sớm càng tốt trước khi bạn phí nhiều thời gian vào nó. Môi trường thân thiện với thất bại cũng cho phép nhân viên của Pixar thử sức với những phương thức khác thường để có thể mang lại kết quả khác thường.</p>
<p>Những ý tưởng mà Ed Catmull đưa ra không chỉ có ứng dụng trong văn hoá công ty, mà còn trong cuộc sống hàng ngày. Biết được rằng những đạo diễn tài năng nhất trên thế giới cũng có lúc đưa ra những ý tưởng dở tệ giúp mình đỡ nản chí khi sản phẩm mình không đạt được kết quả như mình mong muốn. Nó giúp mình kiên trì hơn theo đuổi mục tiêu của mình, bởi không gì xuất sắc mà lại có thể được tạo ra trong một sớm một chiều được.</p>
<p>Cuốn sách củng cố cách nhìn nhận của mình rằng: giá trị bản thân và ý kiến của mình là hai thứ hoàn toàn khác nhau. “Nếu bạn đánh đồng bản thân với những ý kiến bạn có, bạn sẽ cảm thấy bị tấn công khi ai đó phản đối ý kiến của bạn,” Catmull viết, và điều đó khiến bạn khó chấp nhận ý kiến đóng góp của người khác. Ai đó không đồng ý với ý kiến mình có không có nghĩa là họ ghét mình. Ngược lại, nếu mình thích ai đó, không có nghĩa là mình phải đồng ý với tất cả những gì họ nói.</p>', 'draft', 'book-review-creativity-inc-xj4j9m', '2025-01-25 08:33:24.512736+00', '2025-01-25 08:33:24.512736+00', 5, 'Mình vừa đọc xong một cuốn sách mà mình rất thích: “Creativity Inc.” — viết bởi Ed Catmull, đồng sáng lập và chủ tịch của Pixar từ năm 1979 đến 2018.
Từ khi còn nhỏ, ước mơ của ông là có thể tạo ra một bộ phim hoạt hình (animated feature film) hoàn toàn bằng máy tính. Ông bảo vệ luận án tiến sĩ ngàn'),
	('ea8525a6-1a8d-424d-ad39-0f9efe989d74', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Book review - When breath becomes air', '<p>Mấy hôm nay mình đọc “When breath becomes air” – cuốn hồi ký của chàng trai 36 tuổi Paul Kalanithi viết trong những ngày tháng cuối cùng của cuộc đời mình. 6 tháng trước khi hoàn thành chương trình tập huấn mười năm để trở thành bác sĩ phẫu thuật thần kinh, anh phát hiện ra mình bị bệnh ung thư phổi giai đoạn cuối.</p>
<p>&nbsp;</p>
<p>Cuốn hồi ký là nỗ lực của anh để tìm kiếm câu trả lời cho câu hỏi: “Điều gì làm cuộc đời đáng sống?” Dưới đây là một đoạn trích dẫn ngắn trong cuốn sách của Paul.&nbsp;</p>
<p>&nbsp;</p>
<p>Mặc dù anh viết về nghề y, câu chữ của anh khiến mình nghĩ về cuộc chiến của chính mình. Khi thời gian của mình đến, mình muốn ai nhớ đến mình, và nhớ về mình như thế nào?</p>', 'draft', 'book-review-when-breath-becomes-air-z0ofcd', '2025-01-25 08:37:59.66711+00', '2025-01-25 08:37:59.66711+00', 1, 'Mấy hôm nay mình đọc “When breath becomes air” – cuốn hồi ký của chàng trai 36 tuổi Paul Kalanithi viết trong những ngày tháng cuối cùng của cuộc đời mình. 6 tháng trước khi hoàn thành chương trình tập huấn mười năm để trở thành bác sĩ phẫu thuật thần kinh, anh phát hiện ra mình bị bệnh ung thư phổi');


--
-- Data for Name: posts_labels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."posts_labels" ("post_id", "label_id") VALUES
	('530e7f5d-c1d6-4c8f-abe8-63b33a02e583', 'a6516ae1-14b4-43ca-8b51-3684c2228342'),
	('ea8525a6-1a8d-424d-ad39-0f9efe989d74', 'a6516ae1-14b4-43ca-8b51-3684c2228342');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('file-archive', 'file-archive', NULL, '2025-01-25 08:44:58.64307+00', '2025-01-25 08:44:58.64307+00', true, false, NULL, NULL, NULL);


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 79, true);


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
