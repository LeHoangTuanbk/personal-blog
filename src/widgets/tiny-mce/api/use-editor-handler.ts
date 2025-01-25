import { useEffect, useState } from 'react';
import { Editor as TinyMCEEditor } from 'tinymce';

import { extractImageSources } from '@shared/lib';
import { useToastHook } from '@shared/ui/components/toast-factory';
import { setupTOCPlugin } from '@widgets/tiny-mce/api';
import { BlobInfo } from '@widgets/tiny-mce/api/data.types';
import {
  handleImageDelete,
  uploadImageToSupabaseStorage,
} from '@widgets/tiny-mce/api/image-handler';

const handleEditorInit = (editor: TinyMCEEditor) => {
  setupTOCPlugin(editor);
};

export const useEditorHandler = (
  initialValue: string,
  onChange: (text: string) => void,
) => {
  const { errorToast } = useToastHook();
  const [initialImageSources, setInitialImageSources] = useState<Set<string>>(
    new Set(),
  );

  useEffect(() => {
    const imgSrcs = extractImageSources(initialValue);
    setInitialImageSources(imgSrcs);
  }, [initialValue]);

  const handleEditorChange = async (content: string) => {
    const currentImageSources = extractImageSources(content);

    const deletedImages = [...initialImageSources].filter(
      (src) => !currentImageSources.has(src),
    );

    if (deletedImages.length > 0) {
      try {
        await Promise.all(deletedImages.map((src) => handleImageDelete(src)));
      } catch (error) {
        errorToast('Failed to delete image');
      }
    }
    setInitialImageSources(currentImageSources);
    onChange(content);
  };

  const handleImageUpload = async (blobInfo: BlobInfo) => {
    try {
      const url = await uploadImageToSupabaseStorage(blobInfo);
      return url;
    } catch (error) {
      errorToast('Failed to upload image');
      return '';
    }
  };

  return {
    handleEditorChange,
    handleImageUpload,
    handleEditorInit,
  };
};
