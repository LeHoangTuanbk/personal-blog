import { supabaseDBTables } from '@shared/api/supabase-client';
import { supabaseClient } from '@shared/api/supabase-client';

export const fetchLabelsNumberPosts = async () => {
  const { data, error } = await supabaseClient
    .from(supabaseDBTables.labels)
    .select(
      `
        *, 
        posts_count: posts_labels(count)
        `,
    )
    .order('content', { ascending: true });
  if (error) {
    throw new Error(error.message);
  }
  return data;
};
