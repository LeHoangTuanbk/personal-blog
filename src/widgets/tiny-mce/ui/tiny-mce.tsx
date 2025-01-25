import { Editor } from '@tinymce/tinymce-react';
import { useEffect, useState } from 'react';

import { extractImageSources } from '@shared/lib';
import { useToastHook } from '@shared/ui/components/toast-factory';
import { setupTOCPlugin } from '@widgets/tiny-mce/api';
import { initConfig } from '@widgets/tiny-mce/ui/config';
import { BlobInfo } from '@widgets/tiny-mce/ui/data.types';
import {
  handleImageDelete,
  handleImageUpload,
} from '@widgets/tiny-mce/ui/image-handler';

type TinyMceRichEditorProps = {
  initialValue: string;
  onChange: (text: string) => void;
};

export const TinyMceRichEditor = ({
  initialValue,
  onChange,
}: TinyMceRichEditorProps) => {
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
  const imageUploadHandler = async (blobInfo: BlobInfo) => {
    try {
      const url = await handleImageUpload(blobInfo);
      return url;
    } catch (error) {
      errorToast('Failed to upload image');
      return '';
    }
  };
  return (
    <>
      <Editor
        tinymceScriptSrc="/tinymce/tinymce.min.js"
        initialValue={initialValue}
        licenseKey="gpl"
        onInit={(_, editor) => {
          setupTOCPlugin(editor);
        }}
        init={{ ...initConfig, images_upload_handler: imageUploadHandler }}
        onEditorChange={(text) => {
          handleEditorChange(text);
        }}
      />
    </>
  );
};
