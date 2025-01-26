import { PostSchema } from '@features/admin/add-post-form/api';
import { supabaseDBTables } from '@shared/api/supabase-client';
import { supabaseClient } from '@shared/api/supabase-client';
import {
  calculateReadingTime,
  createDescription,
  createSlugUrl,
} from '@shared/libs';

export const submitPost = async (data: PostSchema) => {
  const { data: postData, error } = await supabaseClient
    .from(supabaseDBTables.posts)
    .insert({
      title: data.title,
      content: data.content,
      status: data.status,
      description: createDescription(data.content),
      slug: createSlugUrl(data.title),
      reading_time: calculateReadingTime(data.content),
    })
    .select();
  if (error) {
    throw new Error(error.message);
  }
  if (postData) {
    const { labels } = data;
    const postId = postData[0].id;
    const { error: postLabelsError } = await supabaseClient
      .from(supabaseDBTables.posts_labels)
      .insert(labels.map((label) => ({ post_id: postId, label_id: label })));
    if (postLabelsError) {
      throw new Error(postLabelsError.message);
    }
  }
  return;
};
