import { Editor } from '@tinymce/tinymce-react';

import { setupTOCPlugin } from '@widgets/tiny-mce/api';
import { useEditorHandler } from '@widgets/tiny-mce/api/use-editor-handler';
import { initConfig } from '@widgets/tiny-mce/ui/config';

type TinyMceRichEditorProps = {
  initialValue: string;
  onChange: (text: string) => void;
};

export const TinyMceRichEditor = ({
  initialValue,
  onChange,
}: TinyMceRichEditorProps) => {
  const { handleEditorChange, handleImageUpload } = useEditorHandler(
    initialValue,
    onChange,
  );
  return (
    <>
      <Editor
        tinymceScriptSrc="/tinymce/tinymce.min.js"
        initialValue={initialValue}
        licenseKey="gpl"
        onInit={(_, editor) => {
          setupTOCPlugin(editor);
        }}
        init={{ ...initConfig, images_upload_handler: handleImageUpload }}
        onEditorChange={(text) => {
          handleEditorChange(text);
        }}
      />
    </>
  );
};
