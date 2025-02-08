import { v4 as uuidv4 } from 'uuid';

import { supabaseClient } from '@shared/api/supabase-client';
import { config } from '@shared/config';

import { BlobInfo } from './data.types';
const richEditorImageFolder = 'rich-editor-images';

export const uploadImageToSupabaseStorage = async (blobInfo: BlobInfo) => {
  try {
    const blob = blobInfo.blob();
    const file = blob as File;

    const fileExt = file.name.split('.').pop();
    const fileName = `${uuidv4()}.${fileExt}`;
    const filePath = `${richEditorImageFolder}/${fileName}`;

    const { error } = await supabaseClient.storage
      .from(config.supabaseBucketName)
      .upload(filePath, file, { upsert: false });

    if (error) throw new Error('Failed to upload image');

    const { data: publicUrl } = await supabaseClient.storage
      .from(config.supabaseBucketName)
      .getPublicUrl(filePath);
    return publicUrl.publicUrl;
  } catch (error) {
    throw new Error('Failed to upload image');
  }
};

export const handleImageDelete = async (imageUrl: string) => {
  try {
    const fileName = imageUrl.split('/').pop();
    const filePath = `${richEditorImageFolder}/${fileName}`;

    const { error } = await supabaseClient.storage
      .from(config.supabaseBucketName)
      .remove([filePath]);

    if (error) throw new Error('Failed to delete image');
  } catch (error) {
    throw new Error('Failed to delete image');
  }
};
