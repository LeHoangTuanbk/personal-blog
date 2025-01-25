import { supabaseDBTables } from '@shared/api/supabase-client';
import { supabaseClient } from '@shared/api/supabase-client';
import { createSlugUrl } from '@shared/lib';
import { PostSchema } from '@widgets/post-form/api';

export const submitPost = async (data: PostSchema) => {
  const { data: postData, error } = await supabaseClient
    .from(supabaseDBTables.posts)
    .insert({
      title: data.title,
      content: data.content,
      status: data.status,
      slug: createSlugUrl(data.title),
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
