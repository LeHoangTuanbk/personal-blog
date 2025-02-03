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
	('00000000-0000-0000-0000-000000000000', '666f5a6e-6fd0-4a2d-a0ba-ac861724445f', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-25 08:14:07.033425+00', ''),
	('00000000-0000-0000-0000-000000000000', '245a8427-c567-43f8-a556-b3b4c20415b9', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 09:12:16.782387+00', ''),
	('00000000-0000-0000-0000-000000000000', '79b8f3c2-b0e9-4467-9bf5-5ae8f10b2cc5', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 09:12:16.794651+00', ''),
	('00000000-0000-0000-0000-000000000000', '30e89883-b9b1-407b-8f63-272844988dc4', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 10:31:11.800837+00', ''),
	('00000000-0000-0000-0000-000000000000', '79d6fd84-ab59-4a58-ba84-aac6efa867aa', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 10:31:11.806682+00', ''),
	('00000000-0000-0000-0000-000000000000', '942c46bd-1531-4854-8cbb-08bae2325318', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 12:06:44.38847+00', ''),
	('00000000-0000-0000-0000-000000000000', '53ea1e2b-0d46-446f-824e-4095967a0017', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 12:06:44.394512+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c76ed6ea-3622-4e2c-be8a-c51f4d53014d', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 15:00:28.632668+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd3e6e52e-53cb-431b-a9ef-11b3a1bf97de', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-25 15:00:28.637801+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dac1f764-7fac-4487-b511-c59d6bb72783', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 03:37:59.796231+00', ''),
	('00000000-0000-0000-0000-000000000000', '03c77a76-607f-4258-9296-496d33f5a458', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 03:37:59.802879+00', ''),
	('00000000-0000-0000-0000-000000000000', '2323bc14-1cb2-44fd-98bd-1bc10f95e827', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 04:36:26.866282+00', ''),
	('00000000-0000-0000-0000-000000000000', '06279a3b-947d-4022-90a3-3f320bb77c2a', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 04:36:26.869645+00', ''),
	('00000000-0000-0000-0000-000000000000', '44da37f5-606e-4ddd-83e9-1b9d1482ca1f', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 05:39:43.678676+00', ''),
	('00000000-0000-0000-0000-000000000000', '783ec58b-b726-4148-830f-f58beac9788b', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 05:39:43.681765+00', ''),
	('00000000-0000-0000-0000-000000000000', '85f5bc21-fc2c-4101-bcc5-a9bdbb130e05', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 06:37:57.501264+00', ''),
	('00000000-0000-0000-0000-000000000000', '37a4bd84-fb56-4cf2-b581-cd6e7a103e5c', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 06:37:57.511091+00', ''),
	('00000000-0000-0000-0000-000000000000', '654b53cd-a633-405f-a92f-268228be621d', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 10:01:43.232452+00', ''),
	('00000000-0000-0000-0000-000000000000', '21226bb4-dd44-4fe6-a53a-00d5d4406028', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 10:01:43.237267+00', ''),
	('00000000-0000-0000-0000-000000000000', '8849a01d-fd27-4bf0-aa6e-e9da1a970fe1', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 11:29:19.973112+00', ''),
	('00000000-0000-0000-0000-000000000000', '97d96b58-fc27-475b-8b4c-250b35fea177', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 11:29:19.977021+00', ''),
	('00000000-0000-0000-0000-000000000000', 'add040dc-a207-43ae-bbf2-d3f3fe84020c', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 12:34:13.812398+00', ''),
	('00000000-0000-0000-0000-000000000000', '555ce6f2-a2b0-4870-aab1-7fd58f40a250', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-26 12:34:13.820314+00', ''),
	('00000000-0000-0000-0000-000000000000', 'df855d88-3427-4ef1-8a45-40d2a63a2876', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 02:14:34.370387+00', ''),
	('00000000-0000-0000-0000-000000000000', '5455b9ff-4b46-4c23-9ede-737c9021a3f7', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 02:14:34.376953+00', ''),
	('00000000-0000-0000-0000-000000000000', '5765b69f-670b-4a8d-9248-8beb46e92144', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 12:14:16.168713+00', ''),
	('00000000-0000-0000-0000-000000000000', '819cab20-8858-4e2b-9a24-bd66bcdc2efe', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 12:14:16.184441+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acdefe34-b6d5-465e-9852-a32d6bc584ff', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 13:12:29.722845+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f81ff519-0e5d-4f23-8ff6-16fd769dbe4a', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 13:12:29.728351+00', ''),
	('00000000-0000-0000-0000-000000000000', '5d32b822-848f-455f-8f08-720ef88d5be1', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 14:10:33.672786+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca612344-c2a4-40a7-bb85-ecc026bac4a9', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 14:10:33.675707+00', ''),
	('00000000-0000-0000-0000-000000000000', '75487441-4a98-4f8e-8d6c-514b1f34c5a7', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-27 14:32:47.156836+00', ''),
	('00000000-0000-0000-0000-000000000000', '5de4ca92-b785-481c-bd4a-ff9b20a818d4', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 15:09:03.239768+00', ''),
	('00000000-0000-0000-0000-000000000000', '02bb8e96-ac9e-483d-bee0-9bd74f0d4223', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 15:09:03.242351+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f996e904-46f2-4f90-85da-7a67b2e169cb', '{"action":"login","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-01-27 15:12:31.241319+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a901c609-bcb7-45e0-9f8d-46ee940819b6', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 16:45:11.786834+00', ''),
	('00000000-0000-0000-0000-000000000000', '32e7b6fb-d9a9-418a-8620-74a21540204b', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-27 16:45:11.790201+00', ''),
	('00000000-0000-0000-0000-000000000000', '61ea3e10-1014-4f3d-a0fe-b4e402dd44b0', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-28 13:11:18.49955+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f03ebbbf-6f6a-4e95-8191-0d93b20f0689', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-28 13:11:18.505375+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac70fa5f-d56c-40d6-9dab-0f80c8fe00b9', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-28 23:06:15.161462+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d00d799-75ae-44ef-8b4e-df323b7ca684', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-28 23:06:15.169385+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c29cf709-fcc1-4142-b4db-5a8beb34562e', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 00:06:09.646411+00', ''),
	('00000000-0000-0000-0000-000000000000', 'acc2f7c3-ced3-4623-9d44-6ba3c2c39fce', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-29 00:06:09.648279+00', ''),
	('00000000-0000-0000-0000-000000000000', '2697da45-2af7-4795-ba4b-7fcb61aad0ce', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 11:33:21.913124+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e48f81c5-ffc9-4586-b7c5-af0ad6471ec0', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 11:33:21.927339+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ceb5da6e-9717-44e5-b04a-13de4a3f8907', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 12:31:39.494779+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee3e441c-10b7-4182-b117-97cf35317d99', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 12:31:39.498201+00', ''),
	('00000000-0000-0000-0000-000000000000', '017b6e37-9e63-4883-a6c9-8eb1655e1f66', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 13:29:48.819516+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e0d27ec0-0060-485a-9c26-a34f042ac503', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 13:29:48.825472+00', ''),
	('00000000-0000-0000-0000-000000000000', '706c8a0a-4142-41e0-9020-c324e5189242', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 14:47:56.615671+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b0a5a063-c93a-41a7-96b1-ddb11de41448', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-30 14:47:56.622837+00', ''),
	('00000000-0000-0000-0000-000000000000', '879ac20a-a4c8-40cc-9789-a22aaf840583', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 00:00:25.153832+00', ''),
	('00000000-0000-0000-0000-000000000000', 'db551fd0-8f5b-48bd-baa2-d4e98f4d6f99', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 00:00:25.160817+00', ''),
	('00000000-0000-0000-0000-000000000000', '7ba5c7d8-6b36-4e88-9ca5-11fb4f243c7c', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 14:36:07.334176+00', ''),
	('00000000-0000-0000-0000-000000000000', '028522b5-378a-4d23-831f-4dd2ee70b62b', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-01-31 14:36:07.343095+00', ''),
	('00000000-0000-0000-0000-000000000000', '888b771d-abe7-4a13-a3fa-42f08d5bc90f', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 02:47:28.57855+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a32b421-ef8c-4b2b-a34d-7b2f70b00bda', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 02:47:28.587897+00', ''),
	('00000000-0000-0000-0000-000000000000', '7f06c62f-37b1-42a3-9310-b77ba77ccbe9', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 04:06:49.162382+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd9bfc72e-70a6-4329-8f62-5488b30bfd36', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 04:06:49.171355+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cdb68d63-efdb-4705-afb7-818703db1bc8', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 05:05:12.078658+00', ''),
	('00000000-0000-0000-0000-000000000000', '86f5c447-64dd-4aa7-8b71-f789f2d555ce', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 05:05:12.082353+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e490ec0c-8282-43e6-9840-83a632ce42fb', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 06:05:22.301542+00', ''),
	('00000000-0000-0000-0000-000000000000', '30e84529-135b-481c-a533-d7c5ca3e105e', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 06:05:22.304822+00', ''),
	('00000000-0000-0000-0000-000000000000', '45e4358f-4d5d-4a9e-b1d4-521381d2d01a', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 07:03:37.944151+00', ''),
	('00000000-0000-0000-0000-000000000000', '781513f8-369a-49ed-b8df-2af31377cb89', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 07:03:37.94681+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1a1f481-db36-48cc-b51c-048f4c72b7c0', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 08:02:00.125124+00', ''),
	('00000000-0000-0000-0000-000000000000', '0d541b4e-33aa-419a-b338-a2ba901a93d6', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 08:02:00.128787+00', ''),
	('00000000-0000-0000-0000-000000000000', '37895569-f052-4473-b834-f5454fbabd61', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 09:00:27.081699+00', ''),
	('00000000-0000-0000-0000-000000000000', '449ef4fb-81b3-44dc-9cc1-2d4883c1421e', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 09:00:27.086086+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a98f9548-bca6-47f3-bbec-00159f8fde7d', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 11:09:37.656035+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e298c32-1fb5-4a05-81d0-bf7b9b76aef9', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-01 11:09:37.66129+00', ''),
	('00000000-0000-0000-0000-000000000000', 'deb27bfc-dc67-41ca-93cc-60021c7ba808', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 04:52:16.660203+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b4c2a65f-27f5-41b6-ad5a-2dab0f91b20c', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 04:52:16.666119+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a3d4162-a3ff-4c57-8d95-9806063c2c21', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 05:50:43.104709+00', ''),
	('00000000-0000-0000-0000-000000000000', '5bbae325-d2c2-492b-8125-c941255ee594', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 05:50:43.108863+00', ''),
	('00000000-0000-0000-0000-000000000000', '33f00b92-9594-4bf3-ad6d-70affdd5eb84', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 06:48:59.669244+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a872e275-f11e-45aa-97b5-9076894ad3d7', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 06:48:59.671221+00', ''),
	('00000000-0000-0000-0000-000000000000', '87f9d135-64a7-423b-8b3f-5d7e576f5f97', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 08:23:52.583727+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c47cd65d-2f9f-4ac9-974b-09a6367758be', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 08:23:52.589071+00', ''),
	('00000000-0000-0000-0000-000000000000', '5cbe9aeb-ab9c-44db-9eab-65e1ba51ed55', '{"action":"token_refreshed","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 10:14:12.957+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd70a6fdc-61d4-4daf-985b-2e7e46e36cf2', '{"action":"token_revoked","actor_id":"c700af4b-1747-4b92-9de1-0e4948351928","actor_username":"lehoangtuanbk@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-02-02 10:14:12.962053+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'c700af4b-1747-4b92-9de1-0e4948351928', 'authenticated', 'authenticated', 'lehoangtuanbk@gmail.com', '$2a$10$PgSuVC0Ocx67O0OdiEufUeeTDy8d7t45TFBHCbqhjsZOI.qqA0NBS', '2025-01-20 14:03:02.393131+00', NULL, '', NULL, '03bcdb506e11883681accd31cb95bfc00a833a6b831af2f211209cf6', '2025-01-21 14:06:20.225856+00', '', '', NULL, '2025-01-27 15:12:31.244268+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-01-20 14:03:02.38849+00', '2025-02-02 10:14:12.9915+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


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
	('3a0b6929-506c-400f-9bc1-f3de654b7929', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-27 15:12:31.244724+00', '2025-02-02 10:14:12.997163+00', NULL, 'aal1', NULL, '2025-02-02 10:14:12.99703', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '192.168.176.1', NULL),
	('35d3084c-408a-49e2-84ea-0f245c276168', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-27 14:32:47.159186+00', '2025-01-27 14:32:47.159186+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '192.168.176.1', NULL),
	('faf3f8aa-0739-4a9f-94f7-c8aa373aeb75', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-25 08:14:07.037067+00', '2025-01-31 00:00:25.180676+00', NULL, 'aal1', NULL, '2025-01-31 00:00:25.180609', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '192.168.176.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('7939065e-bc8b-4a53-9dd6-eca48c4a7c06', '2025-01-22 11:11:54.010838+00', '2025-01-22 11:11:54.010838+00', 'password', 'faeb138b-5845-455f-8699-db9d205c754d'),
	('faf3f8aa-0739-4a9f-94f7-c8aa373aeb75', '2025-01-25 08:14:07.04393+00', '2025-01-25 08:14:07.04393+00', 'password', '6af7e4f7-5697-4bed-82b3-35cf588a9f42'),
	('35d3084c-408a-49e2-84ea-0f245c276168', '2025-01-27 14:32:47.164822+00', '2025-01-27 14:32:47.164822+00', 'password', 'bc415ccf-7bb8-4555-8786-cb2304455fe2'),
	('3a0b6929-506c-400f-9bc1-f3de654b7929', '2025-01-27 15:12:31.251106+00', '2025-01-27 15:12:31.251106+00', 'password', 'a47f4b7f-e54c-41fc-88c4-aea6583d043e');


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
	('00000000-0000-0000-0000-000000000000', 79, 'bERnlxfhn1b3eD4m01T9tg', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-25 08:14:07.039844+00', '2025-01-25 09:12:16.796224+00', NULL, 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 80, 'Xnq7RYkyYr2vCjOTCAFhVQ', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-25 09:12:16.809625+00', '2025-01-25 10:31:11.807674+00', 'bERnlxfhn1b3eD4m01T9tg', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 81, 'p1LjZtBGFa7dP7oV6hhA0w', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-25 10:31:11.812237+00', '2025-01-25 12:06:44.39651+00', 'Xnq7RYkyYr2vCjOTCAFhVQ', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 82, 'ENHx6WhevpeKUP3ncHr2dQ', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-25 12:06:44.405018+00', '2025-01-25 15:00:28.638558+00', 'p1LjZtBGFa7dP7oV6hhA0w', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 83, 'zbhCVenvd_VDsJJc3_O3TQ', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-25 15:00:28.642242+00', '2025-01-26 03:37:59.809405+00', 'ENHx6WhevpeKUP3ncHr2dQ', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 84, 'zaczk4F8cFdHXBvIR3uwMw', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-26 03:37:59.815174+00', '2025-01-26 04:36:26.870028+00', 'zbhCVenvd_VDsJJc3_O3TQ', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 85, 'OhN8Ln0E7zYoh_585vHIKA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-26 04:36:26.87193+00', '2025-01-26 05:39:43.682303+00', 'zaczk4F8cFdHXBvIR3uwMw', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 86, 'IEqRrfjzKe4NYYyzqfPsPw', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-26 05:39:43.687945+00', '2025-01-26 06:37:57.513672+00', 'OhN8Ln0E7zYoh_585vHIKA', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 87, '2dx_oMF7tyso_mzfMtr1Ag', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-26 06:37:57.516203+00', '2025-01-26 10:01:43.238737+00', 'IEqRrfjzKe4NYYyzqfPsPw', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 88, 'FmqrBpdWoFYv3fT4YxLcwA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-26 10:01:43.242466+00', '2025-01-26 11:29:19.977357+00', '2dx_oMF7tyso_mzfMtr1Ag', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 89, 'crsRAgd_e4n4dPPgzwClmA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-26 11:29:19.979912+00', '2025-01-26 12:34:13.821305+00', 'FmqrBpdWoFYv3fT4YxLcwA', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 90, 'GaCEuP-DnKKZkDYZmpdAig', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-26 12:34:13.827018+00', '2025-01-27 02:14:34.378024+00', 'crsRAgd_e4n4dPPgzwClmA', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 91, 't-CPqdDliSMX0g1HDNEOSw', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-27 02:14:34.383658+00', '2025-01-27 12:14:16.185074+00', 'GaCEuP-DnKKZkDYZmpdAig', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 92, 'OKB7rjYFbRDde4FxBmk5gw', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-27 12:14:16.190162+00', '2025-01-27 13:12:29.729277+00', 't-CPqdDliSMX0g1HDNEOSw', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 93, '8zvwzyY_V16ifdGxzQHIgA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-27 13:12:29.731751+00', '2025-01-27 14:10:33.676207+00', 'OKB7rjYFbRDde4FxBmk5gw', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 95, '5bsbPqgXrmh7ZfIgFb7dGg', 'c700af4b-1747-4b92-9de1-0e4948351928', false, '2025-01-27 14:32:47.162304+00', '2025-01-27 14:32:47.162304+00', NULL, '35d3084c-408a-49e2-84ea-0f245c276168'),
	('00000000-0000-0000-0000-000000000000', 94, 'ZIiAlOfT4p6Lg-j5scAXBA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-27 14:10:33.678061+00', '2025-01-27 15:09:03.24298+00', '8zvwzyY_V16ifdGxzQHIgA', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 97, 'QO_zrFI8rUQA9hmtelNEPQ', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-27 15:12:31.247151+00', '2025-01-27 16:45:11.791048+00', NULL, '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 96, 'uZxO0yH3q2gVnuKKSf8Zzg', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-27 15:09:03.244741+00', '2025-01-28 13:11:18.506103+00', 'ZIiAlOfT4p6Lg-j5scAXBA', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 99, '9NtzgOojNpCkBoyre2qKYQ', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-28 13:11:18.510755+00', '2025-01-28 23:06:15.170512+00', 'uZxO0yH3q2gVnuKKSf8Zzg', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 100, 'TzSQrcVrKgfUluOrBEem_g', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-28 23:06:15.174738+00', '2025-01-29 00:06:09.648782+00', '9NtzgOojNpCkBoyre2qKYQ', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 101, 'jYR9l15xgyljvMcuiVXwvg', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-29 00:06:09.650738+00', '2025-01-30 11:33:21.928445+00', 'TzSQrcVrKgfUluOrBEem_g', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 102, 'Jpw4Z6F67yO5x0E643i_Pg', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-30 11:33:21.934956+00', '2025-01-30 12:31:39.49926+00', 'jYR9l15xgyljvMcuiVXwvg', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 103, 'vMUL1cyUeBx2dNbjqjIu6Q', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-30 12:31:39.501113+00', '2025-01-30 13:29:48.826015+00', 'Jpw4Z6F67yO5x0E643i_Pg', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 104, 'Ksh3ocS_ANF-rJCBnVlaZA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-30 13:29:48.828884+00', '2025-01-30 14:47:56.623486+00', 'vMUL1cyUeBx2dNbjqjIu6Q', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 105, 'vkLzsEkWyMXayB7WJOKeXA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-30 14:47:56.628275+00', '2025-01-31 00:00:25.16482+00', 'Ksh3ocS_ANF-rJCBnVlaZA', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 106, '0alxfjF55h0f9Wxbm4Ynqg', 'c700af4b-1747-4b92-9de1-0e4948351928', false, '2025-01-31 00:00:25.169899+00', '2025-01-31 00:00:25.169899+00', 'vkLzsEkWyMXayB7WJOKeXA', 'faf3f8aa-0739-4a9f-94f7-c8aa373aeb75'),
	('00000000-0000-0000-0000-000000000000', 98, 'SomYsN0JQlajR3pHgwkZKQ', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-27 16:45:11.794716+00', '2025-01-31 14:36:07.344045+00', 'QO_zrFI8rUQA9hmtelNEPQ', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 107, 'OhhFtGphOqz1ykLMBQKaWw', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-01-31 14:36:07.356999+00', '2025-02-01 02:47:28.590563+00', 'SomYsN0JQlajR3pHgwkZKQ', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 108, 'PHOS0mz9-9ZYsXbxsttNAQ', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-01 02:47:28.607399+00', '2025-02-01 04:06:49.172341+00', 'OhhFtGphOqz1ykLMBQKaWw', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 109, '333cyMXLT415b_Mz_OFeGA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-01 04:06:49.175192+00', '2025-02-01 05:05:12.0831+00', 'PHOS0mz9-9ZYsXbxsttNAQ', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 110, 'q6O9Q77kllv46Ryia3AddQ', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-01 05:05:12.085156+00', '2025-02-01 06:05:22.305746+00', '333cyMXLT415b_Mz_OFeGA', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 111, 'nmPv-LEELh1HUcr8WJ2gvg', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-01 06:05:22.308841+00', '2025-02-01 07:03:37.947304+00', 'q6O9Q77kllv46Ryia3AddQ', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 112, 'U63knfOJPUJLyhdnU1J7iQ', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-01 07:03:37.949054+00', '2025-02-01 08:02:00.129485+00', 'nmPv-LEELh1HUcr8WJ2gvg', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 113, 'q3kU6MONLyXMA-MdWvJk6w', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-01 08:02:00.132915+00', '2025-02-01 09:00:27.086962+00', 'U63knfOJPUJLyhdnU1J7iQ', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 114, 'xlyKPBfQlyW21e1GzAzLDw', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-01 09:00:27.089883+00', '2025-02-01 11:09:37.662248+00', 'q3kU6MONLyXMA-MdWvJk6w', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 115, 'z2y6CtTDJpU2tUc9hiRswg', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-01 11:09:37.671244+00', '2025-02-02 04:52:16.667167+00', 'xlyKPBfQlyW21e1GzAzLDw', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 116, 'txo8jFFv-lEp1s1WkUEG8Q', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-02 04:52:16.671212+00', '2025-02-02 05:50:43.10931+00', 'z2y6CtTDJpU2tUc9hiRswg', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 117, 'DSh8c6mOoxa4D-XZYRarQA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-02 05:50:43.113086+00', '2025-02-02 06:48:59.671578+00', 'txo8jFFv-lEp1s1WkUEG8Q', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 118, 'HTFtB6Jg4VdU10IaTQZMbg', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-02 06:48:59.674454+00', '2025-02-02 08:23:52.589898+00', 'DSh8c6mOoxa4D-XZYRarQA', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 119, '7XlMdmA7dVxMQxCJjbNxgA', 'c700af4b-1747-4b92-9de1-0e4948351928', true, '2025-02-02 08:23:52.594519+00', '2025-02-02 10:14:12.963104+00', 'HTFtB6Jg4VdU10IaTQZMbg', '3a0b6929-506c-400f-9bc1-f3de654b7929'),
	('00000000-0000-0000-0000-000000000000', 120, 'MPcwPHmC8M_mE6l3i_8W0g', 'c700af4b-1747-4b92-9de1-0e4948351928', false, '2025-02-02 10:14:12.972714+00', '2025-02-02 10:14:12.972714+00', '7XlMdmA7dVxMQxCJjbNxgA', '3a0b6929-506c-400f-9bc1-f3de654b7929');


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
	('25cab650-55ce-409c-afe9-62e36db2bc64', 'Books', 'books', '2025-01-25 08:39:54.071241+00', '2025-01-25 08:39:54.071241+00'),
	('15998deb-91d1-4e1a-ab10-dda80d5202f3', 'Love', 'love', '2025-02-03 11:13:42.180002+00', '2025-02-03 11:13:42.180002+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."users" ("id", "email_address", "role", "status", "created_at", "updated_at") VALUES
	('c700af4b-1747-4b92-9de1-0e4948351928', 'lehoangtuanbk@gmail.com', 'author', 'active', '2025-01-21 11:41:44.636634+00', '2025-01-21 11:41:44.636634+00');


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."posts" ("id", "user_id", "title", "content", "status", "slug", "created_at", "updated_at", "reading_time", "description", "views") VALUES
	('7bac902e-097a-489e-b8b7-61f91e714b4f', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Tiêu tiền như tỷ phú', '<p>Luke Nosek là đồng sáng lập Paypal nên được biết đến như một thành viên gạo cội của Paypal Mafia — nhóm người giàu có và quyền lực nhất ở thung lũng Silicon.</p>
<p>Một lần, Luke đi ăn tối với bạn và phải gọi Uber về nhà. Đầu tiên, ông chọn Uber Black để xem xe gần nhất ở đâu. Rồi ông chọn Uber ở mức thấp hơn. Ông biết rằng nhiều lái xe Uber hạng sang thường đăng ký để lái hạng thấp hơn. Nếu hai xe ở hai hạng mà ông chọn đó ở cùng địa điểm với nhau, ông chọn hạng thấp, lấy được xe hạng sang mà không phải trả tiền dịch vụ sang.</p>', 'published', 'tieu-tien-nhu-ty-phu-7pxh7p', '2025-01-26 06:55:03.149422+00', '2025-01-27 13:53:59.661657+00', 1, 'Luke Nosek là đồng sáng lập Paypal nên được biết đến như một thành viên gạo cội của Paypal Mafia — nhóm người giàu có và quyền lực nhất ở thung lũng Silicon.
Một lần, Luke đi ăn tối với bạn và phải gọi Uber về nhà. Đầu tiên, ông chọn Uber Black để xem xe gần nhất ở đâu. Rồi ông chọn Uber ở mức thấp ', 0),
	('ea8525a6-1a8d-424d-ad39-0f9efe989d74', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Book review - When breath becomes air', '<p>Mấy h&ocirc;m nay m&igrave;nh đọc &ldquo;When breath becomes air&rdquo; &ndash; cuốn hồi k&yacute; của ch&agrave;ng trai 36 tuổi Paul Kalanithi viết trong những ng&agrave;y th&aacute;ng cuối c&ugrave;ng của cuộc đời m&igrave;nh. 6 th&aacute;ng trước khi ho&agrave;n th&agrave;nh chương tr&igrave;nh tập huấn mười năm để trở th&agrave;nh b&aacute;c sĩ phẫu thuật thần kinh, anh ph&aacute;t hiện ra m&igrave;nh bị bệnh ung thư phổi giai đoạn cuối.</p>
<p>&nbsp;</p>
<p>Cuốn hồi k&yacute; l&agrave; nỗ lực của anh để t&igrave;m kiếm c&acirc;u trả lời cho c&acirc;u hỏi: &ldquo;Điều g&igrave; l&agrave;m cuộc đời đ&aacute;ng sống?&rdquo; Dưới đ&acirc;y l&agrave; một đoạn tr&iacute;ch dẫn ngắn trong cuốn s&aacute;ch của Paul.&nbsp;</p>
<p>&nbsp;</p>
<p>Mặc d&ugrave; anh viết về nghề y, c&acirc;u chữ của anh khiến m&igrave;nh nghĩ về cuộc chiến của ch&iacute;nh m&igrave;nh. Khi thời gian của m&igrave;nh đến, m&igrave;nh muốn ai nhớ đến m&igrave;nh, v&agrave; nhớ về m&igrave;nh như thế n&agrave;o?<img src="http://127.0.0.1:54321/storage/v1/object/public/file-archive/rich-editor-images/88a2ae6d-f845-4c23-b624-7cb5dd0a17ab.jpg" alt="" width="1662" height="1108"></p>', 'published', 'book-review-when-breath-becomes-air-z0ofcd', '2025-01-25 08:37:59.66711+00', '2025-01-27 15:01:13.619813+00', 1, 'Mấy hôm nay mình đọc “When breath becomes air” – cuốn hồi ký của chàng trai 36 tuổi Paul Kalanithi viết trong những ngày tháng cuối cùng của cuộc đời mình. 6 tháng trước khi hoàn thành chương trình tập huấn mười năm để trở thành bác sĩ phẫu thuật thần kinh, anh phát hiện ra mình bị bệnh ung thư phổi', 0),
	('530e7f5d-c1d6-4c8f-abe8-63b33a02e583', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Book review - Creativity Inc.', '<p>M&igrave;nh vừa đọc xong một cuốn s&aacute;ch m&agrave; m&igrave;nh rất th&iacute;ch: &ldquo;Creativity Inc.&rdquo; &mdash; viết bởi Ed Catmull, đồng s&aacute;ng lập v&agrave; chủ tịch của Pixar từ năm 1979 đến 2018.</p>
<p>Từ khi c&ograve;n nhỏ, ước mơ của &ocirc;ng l&agrave; c&oacute; thể tạo ra một bộ phim hoạt h&igrave;nh (animated feature film) ho&agrave;n to&agrave;n bằng m&aacute;y t&iacute;nh. &Ocirc;ng bảo vệ luận &aacute;n tiến sĩ ng&agrave;nh khoa học m&aacute;y t&iacute;nh năm 1974 với thuật to&aacute;n cho ph&eacute;p m&aacute;y t&iacute;nh thể hiện đường cong. Năm 1995, Pixar sản xuất Toy Story, animated feature film đầu ti&ecirc;n sản xuất ho&agrave;n to&agrave;n bằng m&aacute;y t&iacute;nh. Kh&ocirc;ng chỉ lđặt cộc mốc lịch sử về kỹ thuật, Toy Story c&ograve;n l&agrave; một th&agrave;nh c&ocirc;ng thương mại với doanh thu $350 triệu.</p>
<p>Sau khi ho&agrave;n th&agrave;nh ước mơ của đời m&igrave;nh, Catmull cảm thấy hoang mang kh&ocirc;ng biết l&agrave;m g&igrave; tiếp theo. &Ocirc;ng quyết định d&agrave;nh thời gian c&ograve;n lại x&acirc;y dựng văn ho&aacute; Pixar để c&ocirc;ng ty trở th&agrave;nh c&aacute;i n&ocirc;i th&uacute;c đẩy sự s&aacute;ng tạo. V&agrave; cuốn s&aacute;ch Creativity Inc. tổng hợp suy nghĩ của &ocirc;ng về văn ho&aacute; s&aacute;ng tạo đ&oacute;.</p>
<p>Theo &ocirc;ng, s&aacute;ng tạo kh&ocirc;ng phải l&agrave; nghệ thuật hay t&agrave;i năng, m&agrave; l&agrave; một quy tr&igrave;nh. S&aacute;ng tạo kh&ocirc;ng phải l&agrave; cao hứng l&ecirc;n l&agrave;m c&aacute;i g&igrave; đ&oacute; đi&ecirc;n rồ, m&agrave; l&agrave; &eacute;p bản th&acirc;n theo một quy tr&igrave;nh cho ph&eacute;p sản phẩm m&igrave;nh tạo ra tốt l&ecirc;n từng ng&agrave;y. Ai cũng c&oacute; khả năng s&aacute;ng tạo, nếu như họ d&agrave;nh thời gian x&acirc;y dựng cho m&igrave;nh một quy tr&igrave;nh v&agrave; c&oacute; đủ kỷ luật để theo quy tr&igrave;nh đ&oacute;.</p>
<p>Tất cả c&aacute;c bộ phim ở Pixar đều được x&acirc;y dựng theo một quy tr&igrave;nh nghi&ecirc;m ngặt. Đội ngũ l&agrave;m phim nghi&ecirc;n cứu v&agrave; đưa ra &yacute; tưởng, brain trust (một nh&oacute;m người c&oacute; kinh nghiệm l&agrave;m phim) ph&acirc;n t&iacute;ch &yacute; tưởng đ&oacute; v&agrave; đưa ra gợi &yacute;, đội ngũ l&agrave;m phim dựa v&agrave;o gợi &yacute; đ&oacute; tiếp tục ph&aacute;t triển bộ phim, brain trust g&oacute;p &yacute; tiếp theo. Chỉ để c&oacute; c&acirc;u chuyện cho một bộ phim th&ocirc;i l&agrave; quy tr&igrave;nh k&eacute;o d&agrave;i cả năm trời. Nhưng mỗi lần thay đổi, c&acirc;u chuyện lại tốt hơn một ch&uacute;t, để cuối c&ugrave;ng trở th&agrave;nh bộ phim h&agrave;ng triệu người mến mộ như Toy Story, Monster Inc., Up.</p>
<p>Cho d&ugrave; đạo diễn c&oacute; giỏi đến đ&acirc;u, phi&ecirc;n bản ban đầu của tất cả c&aacute;c bộ phim Pixar đều v&ocirc; c&ugrave;ng dở, thậm ch&iacute; chẳng c&oacute; li&ecirc;n quan g&igrave; đến phi&ecirc;n bản cuối c&ugrave;ng. V&iacute; dụ, &yacute; tưởng ban đầu cho bộ phim Up l&agrave; một th&agrave;nh phố bay ở h&agrave;nh tinh xa lạ với hai ho&agrave;ng tử tranh chấp để kế thừa vương quốc. Sau đ&oacute;, cả th&agrave;nh phố được giảm xuống th&agrave;nh một ng&ocirc;i nh&agrave;. Ng&ocirc;i nh&agrave; bay bởi b&oacute;ng bay thay v&igrave; ma thuật. Sau đ&oacute; nữa, thay v&igrave; d&ugrave;ng nh&acirc;n vật hai anh ho&agrave;ng tử người xem kh&ocirc;ng thể li&ecirc;n hệ được, họ d&ugrave;ng nh&acirc;n vật một &ocirc;ng l&atilde;o. Rồi ai đ&oacute; giới thiệu nh&acirc;n vật một cậu b&eacute;.</p>
<p>Một c&ocirc;ng ty chỉ c&oacute; thể theo đuổi quy tr&igrave;nh đ&oacute; nếu văn ho&aacute; c&ocirc;ng ty cho ph&eacute;p hai điều. Thứ nhất, tất cả mọi người đều c&oacute; thể n&oacute;i l&ecirc;n &yacute; kiến của m&igrave;nh m&agrave; kh&ocirc;ng sợ &ldquo;n&oacute;i vượt cấp&rdquo;. Nh&acirc;n vi&ecirc;n mới ra trường c&oacute; thể bất đồng &yacute; kiến với đạo diễn gạo cội. Đạo diễn gạo cội kh&ocirc;ng thể bỏ qua &yacute; kiến đ&oacute;ng g&oacute;p của nh&acirc;n vi&ecirc;n mới ra trường chỉ v&igrave; người đ&oacute; &iacute;t kinh nghiệm. Tại sao lại thu&ecirc; người th&ocirc;ng minh nếu như kh&ocirc;ng cho ph&eacute;p họ sử dụng bộ n&atilde;o của m&igrave;nh?</p>
<p>Thứ hai, c&ocirc;ng ty phải tạo m&ocirc;i trường th&acirc;n thiện với thất bại. V&igrave; sản phẩm ban đầu n&agrave;o cũng dở, n&ecirc;n nếu nh&acirc;n vi&ecirc;n sợ kh&ocirc;ng d&aacute;m trưng b&agrave;y sản phẩm dở, sẽ kh&ocirc;ng ai biết l&agrave; n&oacute; dở như thế n&agrave;o để m&agrave; cải thiện. Một trong những đạo diễn của Pixar, Andrew Santon, nổi tiếng với c&acirc;u n&oacute;i: &ldquo;fail early and fail fast.&rdquo; Nếu bạn c&oacute; &yacute; tưởng dở, th&igrave; c&aacute;ch tốt nhất l&agrave; để mọi người biết đến n&oacute; c&agrave;ng sớm c&agrave;ng tốt trước khi bạn ph&iacute; nhiều thời gian v&agrave;o n&oacute;. M&ocirc;i trường th&acirc;n thiện với thất bại cũng cho ph&eacute;p nh&acirc;n vi&ecirc;n của Pixar thử sức với những phương thức kh&aacute;c thường để c&oacute; thể mang lại kết quả kh&aacute;c thường.</p>
<p>Những &yacute; tưởng m&agrave; Ed Catmull đưa ra kh&ocirc;ng chỉ c&oacute; ứng dụng trong văn ho&aacute; c&ocirc;ng ty, m&agrave; c&ograve;n trong cuộc sống h&agrave;ng ng&agrave;y. Biết được rằng những đạo diễn t&agrave;i năng nhất tr&ecirc;n thế giới cũng c&oacute; l&uacute;c đưa ra những &yacute; tưởng dở tệ gi&uacute;p m&igrave;nh đỡ nản ch&iacute; khi sản phẩm m&igrave;nh kh&ocirc;ng đạt được kết quả như m&igrave;nh mong muốn. N&oacute; gi&uacute;p m&igrave;nh ki&ecirc;n tr&igrave; hơn theo đuổi mục ti&ecirc;u của m&igrave;nh, bởi kh&ocirc;ng g&igrave; xuất sắc m&agrave; lại c&oacute; thể được tạo ra trong một sớm một chiều được.</p>
<p>Cuốn s&aacute;ch củng cố c&aacute;ch nh&igrave;n nhận của m&igrave;nh rằng: gi&aacute; trị bản th&acirc;n v&agrave; &yacute; kiến của m&igrave;nh l&agrave; hai thứ ho&agrave;n to&agrave;n kh&aacute;c nhau. &ldquo;Nếu bạn đ&aacute;nh đồng bản th&acirc;n với những &yacute; kiến bạn c&oacute;, bạn sẽ cảm thấy bị tấn c&ocirc;ng khi ai đ&oacute; phản đối &yacute; kiến của bạn,&rdquo; Catmull viết, v&agrave; điều đ&oacute; khiến bạn kh&oacute; chấp nhận &yacute; kiến đ&oacute;ng g&oacute;p của người kh&aacute;c. Ai đ&oacute; kh&ocirc;ng đồng &yacute; với &yacute; kiến m&igrave;nh c&oacute; kh&ocirc;ng c&oacute; nghĩa l&agrave; họ gh&eacute;t m&igrave;nh. Ngược lại, nếu m&igrave;nh th&iacute;ch ai đ&oacute;, kh&ocirc;ng c&oacute; nghĩa l&agrave; m&igrave;nh phải đồng &yacute; với tất cả những g&igrave; họ n&oacute;i.</p>', 'draft', 'book-review-creativity-inc-xj4j9m', '2025-01-25 08:33:24.512736+00', '2025-01-27 15:06:58.891289+00', 5, 'Mình vừa đọc xong một cuốn sách mà mình rất thích: “Creativity Inc.” — viết bởi Ed Catmull, đồng sáng lập và chủ tịch của Pixar từ năm 1979 đến 2018.
Từ khi còn nhỏ, ước mơ của ông là có thể tạo ra một bộ phim hoạt hình (animated feature film) hoàn toàn bằng máy tính. Ông bảo vệ luận án tiến sĩ ngàn', 0),
	('60a0e934-6798-4554-8b52-995614c752c1', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Áp dụng xác suất vào trong cuộc sống', '<p>Gần đây, một người bạn hỏi nếu mình có thể quay ngược thời gian để có thể nói 3 từ với mình năm 15 tuổi, mình sẽ nói những gì. Mình bảo: “Học xác suất.”</p>
<p>Xác suất thống kê không chỉ quan trọng trong công việc (nó là nền tảng của ngành trí tuệ nhân tạo) mà còn là cần thiết để đưa ra những quyết định đúng đắn trong cuộc sống.</p>
<p>Khái niệm đầu tiên mình muốn nói đến là distribution (hàm phân phối xác suất). Distribution hiểu nôm na là hàm số cho phép bạn biết xác suất xảy ra của một sự kiện nào đó. Ví dụ, xổ số với 100 vé được bán ra và mỗi vé đều có khả năng được chọn giống hệt nhau. Việc mỗi vé được chọn là một sự kiện, vậy là có 100 sự kiện có thể xảy ra. Nếu bạn có 1 vé, xác suất vé của bạn được chọn là 1%.</p>
<p>Vì tất cả cả sự kiện này có xác suất xảy ra như nhau, xổ số được gọi là phân phối đều (uniform distribution). Ví dụ khác của uniform distribution là tung đồng xu (mỗi mặt có thể xảy ra là 50%), gieo xúc xắc, đẻ con trai hay con gái, chơi roulette.</p>
<p>&nbsp;</p>
<p><img src="http://127.0.0.1:54321/storage/v1/object/public/file-archive/rich-editor-images/1645fa08-429d-4452-b829-a3f505ba8be6.png" alt="" width="989" height="590"></p>
<p>Hầu hết các ví dụ đưa ra ở trên là do con người tạo ra, bởi uniform distribution trong tự nhiên rất hiếm. Một distribution phổ biến trong tự nhiên là phân phối chuẩn (normal distribution). Normal distribution nghĩa là nếu có một loạt giá trị, các giá trị nằm ở giữa có xác suất xảy ra cao nhất, và các giá trị nằm ở hai cực (quá nhỏ hay quá lớn) có xác suất xảy ra thấp. Một giá trị càng nằm ở cực (càng khác thường), xác suất nó xảy ra càng thấp.</p>', 'archived', 'ap-dung-xac-suat-vao-trong-cuoc-song-60vd6d', '2025-01-26 05:58:16.752061+00', '2025-01-27 13:53:42.700773+00', 1, 'Gần đây, một người bạn hỏi nếu mình có thể quay ngược thời gian để có thể nói 3 từ với mình năm 15 tuổi, mình sẽ nói những gì. Mình bảo: “Học xác suất.”
Xác suất thống kê không chỉ quan trọng trong công việc (nó là nền tảng của ngành trí tuệ nhân tạo) mà còn là cần thiết để đưa ra những quyết định đ', 0),
	('e5496c0d-97f9-4862-b850-0ef2676a6cfc', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Áp dụng xác suất vào trong cuộc sống 3', '<p>Người hiểu về xác suất sẽ không mong làm giàu từ đánh bạc, bởi vì sòng bạc được thiết kế để người chơi mất tiền. Ví dụ chơi trò roulette với 37 số từ 0 đến 36, mỗi số có xác suất được chọn như nhau (uniform distribution). Người chơi đánh cược vào một số từ 1 đến 36. Nếu số được chọn, người chơi thắng gấp 35 lần. Giả sử người chơi đánh cược 10 USD. Nếu thắng (xác suất 1/37), họ được 350 USD. Nếu thua (xác suất 36/37), họ mất 10 USD. Trung bình, số tiền người chơi nhận được là (350 * (1/37) - 10 * (36/37)) = -10/37. Người chơi có thể thắng một vài lần, nhưng nếu chơi lâu dài, người chơi luôn luôn thua.</p>
<p>&nbsp;</p>
<p><img src="http://127.0.0.1:54321/storage/v1/object/public/file-archive/rich-editor-images/15fede55-de01-49bf-9390-6d2d61fc64c8.jpg" alt="" width="828" height="1299">test</p>
<p>&nbsp;</p>
<p>test2</p>
<p>&nbsp;</p>
<p>tes3</p>
<p>&nbsp;</p>
<p>test4</p>', 'draft', 'ap-dung-xac-suat-vao-trong-cuoc-song-3-pkhwh6', '2025-01-26 11:47:07.071408+00', '2025-02-02 07:09:00.054657+00', 1, 'Người hiểu về xác suất sẽ không mong làm giàu từ đánh bạc, bởi vì sòng bạc được thiết kế để người chơi mất tiền. Ví dụ chơi trò roulette với 37 số từ 0 đến 36, mỗi số có xác suất được chọn như nhau (uniform distribution). Người chơi đánh cược vào một số từ 1 đến 36. Nếu số được chọn, người chơi thắn', 0),
	('a88b8220-48a4-4eb4-af52-52f6ace84a15', 'c700af4b-1747-4b92-9de1-0e4948351928', 'test', '<p>test</p>
<p>&nbsp;</p>
<p>tes1</p>
<p>&nbsp;</p>', 'archived', 'test-vxemo7', '2025-01-27 15:46:32.446299+00', '2025-02-02 05:25:46.100157+00', 1, 'test', 0),
	('2d85b55c-b5ba-436a-81b5-9442a239cc77', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Áp dụng xác suất vào trong cuộc sống 2', '<p>Nhiều cơ quan, tổ chức dùng con số trung bình này để che giấu thực trạng chênh lệch giàu nghèo. Công ty có thể khoe rằng họ tăng gấp đôi mức lương trung bình của nhân viên, nhưng thực ra tăng mức lương của lãnh đạo 10x nhưng chỉ tăng lương của nhân viên 1%. Ở Mỹ, lương của CEO tăng chóng mặt có khi lên đến hàng trăm triệu USD một năm, nhưng lương tối thiểu cho nhân viên thì vẫn tàng tàng 15,000 USD/năm. Nhà nước có thể khoe họ tăng thu nhập bình quân đầu người của người dân, nhưng thực ra chỉ tăng thu nhập cho một bộ phận rất nhỏ CÔCC.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>Khi một nhóm sự kiện với giá trị cao có xác xuất xảy ra nhỏ trong khi phần lớn sự kiện thường xuyên xảy ra lại có giá trị rất nhỏ, những giá trị này theo Pareto distribution hay long-tail distribution. Lượng bán ra của sách, phim, âm nhạc đều theo distribution này. Mỗi năm, chỉ có vài cuốn sách đạt doanh số lên đến triệu bản, nhưng sẽ có hàng ngàn cuốn sách chỉ bán được vài cuốn.</p>', 'published', 'ap-dung-xac-suat-vao-trong-cuoc-song-2-ud0qv3', '2025-01-26 11:30:44.256554+00', '2025-01-30 14:57:05.512509+00', 1, 'Nhiều cơ quan, tổ chức dùng con số trung bình này để che giấu thực trạng chênh lệch giàu nghèo...', 0),
	('ccd42be5-6f2f-40e4-b28a-8590df01d7b8', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Survivorship bias - Thiên kiến kẻ sống sót', '<p>Một thiên kiến nhận thức ảnh hưởng đến cuộc sống hàng ngày mà ít người biết đến là survivorship bias (thiên kiến người sống sót). Thiên kiến này hiểu nôm na là chúng ta hay nhìn vào những người hay vật đã vượt qua một quy trình chọn lọc nào đó, và tin rằng những gì họ làm có tác dụng giúp họ vượt qua quy trình chọn lọc đó.</p>
<p>Ví dụ, khi một tỷ phú là người bỏ học, chúng ta dễ dàng tin rằng: “À, bỏ học là tốt.” Sự thật là phần lớn những người bỏ học không trở thành tỷ phú nhưng họ không nổi tiếng nên chúng ta không biết đến họ. Hay một người sống đến 100 tuổi và nói rằng họ sống lâu vậy là bởi vì ngày nào họ cũng ăn trứng, chúng ra dễ dàng tin họ mà không nghĩ đến bao nhiêu người khác ngày nào cũng ăn trứng nhưng lại chết quá sớm nên chúng ta không biết.</p>
<p>Thiên kiến này rất phổ biến qua những bài báo như: “Thói quen của người thành đạt” hay “Sách tỷ phú khuyên đọc”. Các bài báo này nhầm lẫn rằng nếu người thành đạt có thói quen này nghĩa là thói quen đó giúp họ trở nên thành đạt, nhưng không biết đến bao nhiêu người khác cũng có thói quen đó mà không thành đạt.</p>', 'archived', 'survivorship-bias-thien-kien-ke-song-sot-as4m6s', '2025-02-01 11:41:51.98408+00', '2025-02-01 11:44:46.280083+00', 1, 'Một thiên kiến nhận thức ảnh hưởng đến cuộc sống hàng ngày mà ít người biết đến là survivorship bias', 0),
	('e769e7ef-1cbd-49c2-801d-bee7898ba97c', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Survivorship bias - Thiên kiến kẻ sống sót', '<p>Một thiên kiến nhận thức ảnh hưởng đến cuộc sống hàng ngày mà ít người biết đến là survivorship bias (thiên kiến người sống sót). Thiên kiến này hiểu nôm na là chúng ta hay nhìn vào những người hay vật đã vượt qua một quy trình chọn lọc nào đó, và tin rằng những gì họ làm có tác dụng giúp họ vượt qua quy trình chọn lọc đó.</p>
<p>Ví dụ, khi một tỷ phú là người bỏ học, chúng ta dễ dàng tin rằng: “À, bỏ học là tốt.” Sự thật là phần lớn những người bỏ học không trở thành tỷ phú nhưng họ không nổi tiếng nên chúng ta không biết đến họ. Hay một người sống đến 100 tuổi và nói rằng họ sống lâu vậy là bởi vì ngày nào họ cũng ăn trứng, chúng ra dễ dàng tin họ mà không nghĩ đến bao nhiêu người khác ngày nào cũng ăn trứng nhưng lại chết quá sớm nên chúng ta không biết.</p>', 'archived', 'survivorship-bias-thien-kien-ke-song-sot-qnofje', '2025-02-01 11:47:32.856482+00', '2025-02-02 05:08:23.095683+00', 1, 'Một thiên kiến nhận thức ảnh hưởng đến cuộc sống hàng ngày mà ít người biết đến là survivorship bias (thiên kiến người sống sót). Thiên...', 0),
	('d5fd2078-daad-468d-b50e-5472a4044bfe', 'c700af4b-1747-4b92-9de1-0e4948351928', 'Survivorship bias - Thiên kiến kẻ sống sót', '<p>Một thiên kiến nhận thức ảnh hưởng đến cuộc sống hàng ngày mà ít người biết đến là survivorship bias (thiên kiến người sống sót). Thiên kiến này hiểu nôm na là chúng ta hay nhìn vào những người hay vật đã vượt qua một quy trình chọn lọc nào đó, và tin rằng những gì họ làm có tác dụng giúp họ vượt qua quy trình chọn lọc đó.</p>
<p>Ví dụ, khi một tỷ phú là người bỏ học, chúng ta dễ dàng tin rằng: “À, bỏ học là tốt.” Sự thật là phần lớn những người bỏ học không trở thành tỷ phú nhưng họ không nổi tiếng nên chúng ta không biết đến họ. Hay một người sống đến 100 tuổi và nói rằng họ sống lâu vậy là bởi vì ngày nào họ cũng ăn trứng, chúng ra dễ dàng tin họ mà không nghĩ đến bao nhiêu người khác ngày nào cũng ăn trứng nhưng lại chết quá sớm nên chúng ta không biết.</p>
<p>Thiên kiến này rất phổ biến qua những bài báo như: “Thói quen của người thành đạt” hay “Sách tỷ phú khuyên đọc”. Các bài báo này nhầm lẫn rằng nếu người thành đạt có thói quen này nghĩa là thói quen đó giúp họ trở nên thành đạt, nhưng không biết đến bao nhiêu người khác cũng có thói quen đó mà không thành đạt.</p>', 'archived', 'survivorship-bias-thien-kien-ke-song-sot-162884', '2025-02-01 11:43:53.562347+00', '2025-02-01 11:49:20.904201+00', 1, 'Một thiên kiến nhận thức ảnh hưởng đến cuộc sống hàng ngày mà ít người biết đến là survivorship bias (thiên kiến người sống sót). Thiên kiến này hiểu nôm...', 0);


--
-- Data for Name: posts_labels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."posts_labels" ("post_id", "label_id") VALUES
	('530e7f5d-c1d6-4c8f-abe8-63b33a02e583', 'a6516ae1-14b4-43ca-8b51-3684c2228342'),
	('ea8525a6-1a8d-424d-ad39-0f9efe989d74', 'a6516ae1-14b4-43ca-8b51-3684c2228342'),
	('7bac902e-097a-489e-b8b7-61f91e714b4f', '68be4a6c-b389-46cb-9aa5-283a268adfed'),
	('2d85b55c-b5ba-436a-81b5-9442a239cc77', '68be4a6c-b389-46cb-9aa5-283a268adfed'),
	('530e7f5d-c1d6-4c8f-abe8-63b33a02e583', '68be4a6c-b389-46cb-9aa5-283a268adfed'),
	('530e7f5d-c1d6-4c8f-abe8-63b33a02e583', 'bf6742ed-1815-484e-8115-7ca9ec63e974'),
	('60a0e934-6798-4554-8b52-995614c752c1', 'a6516ae1-14b4-43ca-8b51-3684c2228342'),
	('60a0e934-6798-4554-8b52-995614c752c1', '68be4a6c-b389-46cb-9aa5-283a268adfed'),
	('ea8525a6-1a8d-424d-ad39-0f9efe989d74', '68be4a6c-b389-46cb-9aa5-283a268adfed'),
	('ea8525a6-1a8d-424d-ad39-0f9efe989d74', 'bf6742ed-1815-484e-8115-7ca9ec63e974'),
	('ea8525a6-1a8d-424d-ad39-0f9efe989d74', 'da5d8878-7005-42de-a9fa-a5a3e67c863f'),
	('e5496c0d-97f9-4862-b850-0ef2676a6cfc', '68be4a6c-b389-46cb-9aa5-283a268adfed'),
	('2d85b55c-b5ba-436a-81b5-9442a239cc77', 'bf6742ed-1815-484e-8115-7ca9ec63e974'),
	('a88b8220-48a4-4eb4-af52-52f6ace84a15', '68be4a6c-b389-46cb-9aa5-283a268adfed'),
	('e5496c0d-97f9-4862-b850-0ef2676a6cfc', 'bf6742ed-1815-484e-8115-7ca9ec63e974'),
	('ccd42be5-6f2f-40e4-b28a-8590df01d7b8', 'a6516ae1-14b4-43ca-8b51-3684c2228342'),
	('d5fd2078-daad-468d-b50e-5472a4044bfe', '68be4a6c-b389-46cb-9aa5-283a268adfed'),
	('d5fd2078-daad-468d-b50e-5472a4044bfe', 'a6516ae1-14b4-43ca-8b51-3684c2228342'),
	('e769e7ef-1cbd-49c2-801d-bee7898ba97c', '68be4a6c-b389-46cb-9aa5-283a268adfed');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('file-archive', 'file-archive', NULL, '2025-01-25 08:44:58.64307+00', '2025-01-25 08:44:58.64307+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('7f36e64b-fdf2-43ff-bb27-30c4fdef0dd6', 'file-archive', 'rich-editor-images/65f7b53b-57dd-405e-ad03-2fddc60ff544.JPG', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-27 14:57:19.697689+00', '2025-01-27 14:57:19.697689+00', '2025-01-27 14:57:19.697689+00', '{"eTag": "\"3f206f35e2d7ca611778d1eef1a96aad\"", "size": 2851500, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-27T14:57:19.638Z", "contentLength": 2851500, "httpStatusCode": 200}', '35fd8a64-58be-48d5-a5cb-a81a26878646', 'c700af4b-1747-4b92-9de1-0e4948351928', '{}'),
	('4a03e430-5359-4973-8ba0-633f486a7e69', 'file-archive', 'rich-editor-images/88a2ae6d-f845-4c23-b624-7cb5dd0a17ab.jpg', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-27 15:00:59.568523+00', '2025-01-27 15:00:59.568523+00', '2025-01-27 15:00:59.568523+00', '{"eTag": "\"7a2942d07ad9a007039c25f85f89a6b9\"", "size": 3083808, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-27T15:00:59.524Z", "contentLength": 3083808, "httpStatusCode": 200}', 'ea7ffdc6-c24d-4c2c-a5ad-bd97181d410e', 'c700af4b-1747-4b92-9de1-0e4948351928', '{}'),
	('bb0b990c-36d3-4474-8be4-79a9163b3055', 'file-archive', 'rich-editor-images/15fede55-de01-49bf-9390-6d2d61fc64c8.jpg', 'c700af4b-1747-4b92-9de1-0e4948351928', '2025-01-27 16:47:57.958379+00', '2025-01-27 16:47:57.958379+00', '2025-01-27 16:47:57.958379+00', '{"eTag": "\"a0ced9c2b94cb02e8ac3780ade716b03\"", "size": 48183, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-01-27T16:47:57.953Z", "contentLength": 48183, "httpStatusCode": 200}', 'fa410567-b17b-4960-8e20-8c2a3e554d21', 'c700af4b-1747-4b92-9de1-0e4948351928', '{}');


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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 120, true);


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
