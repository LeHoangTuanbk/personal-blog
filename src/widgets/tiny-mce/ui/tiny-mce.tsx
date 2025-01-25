import { Editor } from '@tinymce/tinymce-react';
import { Editor as TinyMCEEditor } from 'tinymce';

import { useEditorHandler } from '@widgets/tiny-mce/api/';
import { initConfig } from '@widgets/tiny-mce/ui/config';

type TinyMceRichEditorProps = {
  initialValue: string;
  onChange: (text: string) => void;
};

export const TinyMceRichEditor = ({
  initialValue,
  onChange,
}: TinyMceRichEditorProps) => {
  const { handleEditorChange, handleImageUpload, handleEditorInit } =
    useEditorHandler(initialValue, onChange);
  const onInitHandler = (_: unknown, editor: TinyMCEEditor) =>
    handleEditorInit(editor);

  return (
    <>
      <Editor
        tinymceScriptSrc="/tinymce/tinymce.min.js"
        initialValue={initialValue}
        licenseKey="gpl"
        onInit={onInitHandler}
        init={{ ...initConfig, images_upload_handler: handleImageUpload }}
        onEditorChange={handleEditorChange}
      />
    </>
  );
};
