import { supabaseClient } from '@shared/api/supabase-client';
import { supabaseDBTables } from '@shared/api/supabase-client/index';

export const fetchPostsData = async () => {
  const { data, error } = await supabaseClient
    .from(supabaseDBTables.posts)
    .select(
      `
      id,
      title,
      content,
      description,
      created_at,
      reading_time,
      slug,
      status,
      posts_labels!inner (
        label_id,
        labels!inner (
          id,
          content,
          slug
        )
      )
    `,
    );
  if (error) {
    throw new Error(error.message);
  }
  const flatData = data.map((post) => {
    return {
      id: post.id,
      title: post.title,
      description: post.description,
      created_at: post.created_at,
      reading_time: post.reading_time,
      slug: post.slug,
      status: post.status,
      labels: post.posts_labels.map((label) => label.labels.content),
    };
  });
  return flatData;
};
