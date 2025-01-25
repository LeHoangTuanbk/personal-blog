alter table "public"."posts" alter column "id" set default gen_random_uuid();

alter table "public"."posts" alter column "user_id" set default auth.uid();


