import { supabaseClient } from '@shared/api/supabase-client';

export const fetchPostDetail = async (slug: string) => {
  const { data, error } = await supabaseClient
    .from('posts')
    .select(
      `
            id,
            title,
            created_at,
            status,
            content,
            posts_labels(
                label_id,
                labels(
                    id,
                    content,
                    slug
                )
            )
        `,
    )
    .eq('slug', slug);

  if (error) {
    throw new Error(error.message);
  }

  return data;
};
