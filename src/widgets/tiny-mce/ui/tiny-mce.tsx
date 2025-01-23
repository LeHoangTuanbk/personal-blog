import { Editor } from '@tinymce/tinymce-react';
import { Editor as TinyMCEEditor } from 'tinymce';

type TinyMceRichEditorProps = {
  initialValue: string;
  editorRef: React.MutableRefObject<TinyMCEEditor | null>;
};

import { setupTOCPlugin } from '@widgets/tiny-mce/api';
import { initConfig } from '@widgets/tiny-mce/ui/config';

export const TinyMceRichEditor = ({
  initialValue,
  editorRef,
}: TinyMceRichEditorProps) => {
  return (
    <>
      <Editor
        tinymceScriptSrc="/tinymce/tinymce.min.js"
        initialValue={initialValue}
        onInit={(_, editor) => {
          editorRef.current = editor;
          setupTOCPlugin(editor);
        }}
        init={initConfig}
      />
    </>
  );
};
