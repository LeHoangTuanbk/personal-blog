import { supabaseClient } from '@shared/api/supabase-client';
import { supabaseDBTables } from '@shared/api/supabase-client/index';
import { getDate } from '@shared/libs';

export const fetchLabelPosts = async (label: string) => {
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
    )
    .eq('status', 'published')
    .eq('posts_labels.labels.slug', label)
    .order('created_at', { ascending: false });
  if (error) {
    throw new Error(error.message);
  }
  const flatData = data.map((post) => {
    return {
      id: post.id,
      title: post.title,
      description: post.description,
      created_at: getDate(post.created_at),
      reading_time: post.reading_time,
      slug: post.slug,
      status: post.status,
      labels: post.posts_labels.map((label) => label.labels.content),
    };
  });
  return flatData;
};
