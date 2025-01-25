alter table "public"."posts" alter column "title" set not null;

alter table "public"."posts" alter column "title" set data type text using "title"::text;


