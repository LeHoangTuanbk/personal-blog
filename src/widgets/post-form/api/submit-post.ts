import { supabaseDBTables } from '@shared/api/supabase-client';
import { supabaseClient } from '@shared/api/supabase-client';
import { PostSchema } from '@widgets/post-form/api';

export const submitPost = async (data: PostSchema) => {
  const { data: postData, error } = await supabaseClient
    .from(supabaseDBTables.posts)
    .insert({
      title: data.title,
      content: data.content,
      status: data.status,
    });
  if (error) {
    throw new Error(error.message);
  }
  return postData;
};
