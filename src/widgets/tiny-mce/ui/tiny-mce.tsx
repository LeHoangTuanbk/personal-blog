import { Editor } from '@tinymce/tinymce-react';

type TinyMceRichEditorProps = {
  initialValue: string;
  onChange: (text: string) => void;
};

import { setupTOCPlugin } from '@widgets/tiny-mce/api';
import { initConfig } from '@widgets/tiny-mce/ui/config';

export const TinyMceRichEditor = ({
  initialValue,
  onChange,
}: TinyMceRichEditorProps) => {
  return (
    <>
      <Editor
        tinymceScriptSrc="/tinymce/tinymce.min.js"
        initialValue={initialValue}
        onInit={(_, editor) => {
          setupTOCPlugin(editor);
        }}
        init={initConfig}
        onEditorChange={(text) => {
          onChange(text);
        }}
      />
    </>
  );
};
