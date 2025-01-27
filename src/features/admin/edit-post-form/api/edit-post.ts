import { supabaseClient } from '@shared/api/supabase-client';

import { EditPostDataType } from './data.types';

export const editPost = async ({
  id,
  data,
  addedLabels,
  removedLabels,
}: EditPostDataType) => {
  const { data: result, error } = await supabaseClient.rpc(
    'update_post_with_labels',
    {
      p_post_id: id,
      p_post_data: {
        title: data.title,
        content: data.content,
        status: data.status,
      },
      p_added_label_ids: addedLabels,
      p_removed_label_ids: removedLabels,
    },
  );

  if (error) {
    throw new Error(error.message);
  }

  return result;
};
