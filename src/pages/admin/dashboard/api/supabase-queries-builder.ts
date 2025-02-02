import { PostStatus } from '@entities/posts/model';
import { ActivePost, ViewPostFilterType } from '@entities/posts/model/types';
import { supabaseClient } from '@shared/api/supabase-client';
import { supabaseDBTables } from '@shared/api/supabase-client/index';

export const buildSupabasePostsFilterQuery = (
  viewPostFilter: ViewPostFilterType,
) => {
  const baseQuery = supabaseClient
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
    .order('created_at', { ascending: false });
  return viewPostFilter === ActivePost.Active
    ? baseQuery.neq('status', PostStatus.Archived)
    : baseQuery.eq('status', viewPostFilter);
};
