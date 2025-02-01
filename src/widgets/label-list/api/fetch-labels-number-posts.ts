import { supabaseDBTables } from '@shared/api/supabase-client';
import { supabaseClient } from '@shared/api/supabase-client';

export const fetchLabelsNumberPosts = async () => {
  const { data, error } = await supabaseClient
    .from(supabaseDBTables.labels)
    .select(
      `
        *,
        posts: posts_labels(
            posts!inner(id)
        )
    `,
    )
    .eq('posts_labels.posts.status', 'published')
    .order('content', { ascending: true });
  if (error) {
    throw new Error(error.message);
  }
  return data;
};
