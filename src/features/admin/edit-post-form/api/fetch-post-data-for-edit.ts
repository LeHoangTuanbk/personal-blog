import { supabaseClient } from '@shared/api/supabase-client';
import { supabaseDBTables } from '@shared/api/supabase-client';

export const fetchPostDataForEdit = async (slug: string) => {
  const { data, error } = await supabaseClient
    .from(supabaseDBTables.posts)
    .select(
      `
            id,
            title,
            status,
            content,
            slug,
            posts_labels(
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

  const flatData = data.map((post) => {
    return {
      id: post.id,
      title: post.title,
      status: post.status,
      content: post.content,
      labels: post.posts_labels.map((label) => label.labels),
      labels_content: post.posts_labels.map((label) => label.labels.content),
      labels_slug: post.posts_labels.map((label) => label.labels.slug),
    };
  });

  return flatData[0];
};
