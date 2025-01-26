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
            slug,
            posts_labels(
                labels(
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

  const flatData = data.map((post) => {
    return {
      id: post.id,
      title: post.title,
      created_at: post.created_at,
      status: post.status,
      content: post.content,
      labels_content: post.posts_labels.map((label) => label.labels.content),
      labels_slug: post.posts_labels.map((label) => label.labels.slug),
    };
  });

  return flatData[0];
};
