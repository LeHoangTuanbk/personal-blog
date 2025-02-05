import { Editor } from '@tinymce/tinymce-react';
import React, { useCallback } from 'react';
import { Editor as TinyMCEEditor } from 'tinymce';

import { useEditorHandler } from '@widgets/tiny-mce/api/';
import { initConfig } from '@widgets/tiny-mce/ui/config';

type TinyMceRichEditorProps = {
  initialValue: string;
  onChange: (text: string) => void;
};

export const TinyMceRichEditor = React.memo(
  ({ initialValue, onChange }: TinyMceRichEditorProps) => {
    const { handleEditorChange, handleImageUpload, handleEditorInit } =
      useEditorHandler(initialValue, onChange);

    const onInitHandler = useCallback(
      (_: unknown, editor: TinyMCEEditor) => {
        const waitForMathJax = () => {
          const doc = editor.getDoc();
          if (doc?.defaultView?.MathJax?.typesetPromise) {
            handleEditorInit(editor);
          } else {
            setTimeout(waitForMathJax, 500);
          }
        };
        waitForMathJax();
      },
      [handleEditorInit],
    );

    return (
      <Editor
        tinymceScriptSrc="/tinymce/tinymce.min.js"
        initialValue={initialValue}
        licenseKey="gpl"
        onInit={onInitHandler}
        init={{
          ...initConfig,
          images_upload_handler: handleImageUpload,
          setup: (editor: TinyMCEEditor) => {
            editor.on('paste', () => {
              setTimeout(() => {
                const doc = editor.getDoc();
                if (doc.defaultView?.MathJax?.typesetPromise) {
                  doc.defaultView.MathJax.typesetPromise();
                }
              }, 100);
            });
          },
        }}
        onEditorChange={handleEditorChange}
      />
    );
  },
);
