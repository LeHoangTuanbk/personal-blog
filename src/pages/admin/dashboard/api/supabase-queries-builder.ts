import { PostStatus } from '@entities/posts/model';
import { ActivePost, ViewPostFilterType } from '@entities/posts/model/types';
import { supabaseClient } from '@shared/api/supabase-client';
import { supabaseDBTables } from '@shared/api/supabase-client/index';

export const buildSupabaseQuery = (viewPostFilter: ViewPostFilterType) => {
  let query;
  if (viewPostFilter === ActivePost.Active) {
    query = supabaseClient
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
      .neq('status', PostStatus.Archived)
      .order('created_at', { ascending: false });
  } else {
    query = supabaseClient
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
      .eq('status', viewPostFilter)
      .order('created_at', { ascending: false });
  }

  return query;
};
