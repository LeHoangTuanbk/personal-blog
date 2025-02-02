import { ViewPostFilterType } from '@entities/posts/model/types';
import { buildSupabaseQuery } from '@pages/admin/dashboard/api/supabase-queries-builder';
import { getDate } from '@shared/libs';

export const fetchPostsData = async (viewPostFilter: ViewPostFilterType) => {
  const query = buildSupabaseQuery(viewPostFilter);
  const { data, error } = await query;
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
