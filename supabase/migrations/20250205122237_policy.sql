alter table "public"."labels" enable row level security;

alter table "public"."posts" enable row level security;

alter table "public"."posts_labels" enable row level security;

alter table "public"."users" enable row level security;

create policy "Allow all for labels"
on "public"."labels"
as permissive
for all
to public
using (true)
with check (true);


create policy "Allow all for posts"
on "public"."posts"
as permissive
for all
to public
using (true)
with check (true);


create policy "Allow all for posts_labels"
on "public"."posts_labels"
as permissive
for all
to public
using (true)
with check (true);


create policy "Allow all for users"
on "public"."users"
as permissive
for all
to public
using (true)
with check (true);



