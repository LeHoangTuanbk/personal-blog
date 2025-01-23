alter table "public"."labels" alter column "id" set default gen_random_uuid();

alter table "public"."labels" alter column "slug" set not null;


