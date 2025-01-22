import { Editor } from '@tinymce/tinymce-react';
import { useRef } from 'react';
import { Editor as TinyMCEEditor } from 'tinymce';
export const TinyMceRichEditor = () => {
  const editorRef = useRef<TinyMCEEditor | null>(null);

  const generateTOC = (editor: TinyMCEEditor) => {
    const headings = editor.dom.select('h1,h2,h3,h4,h5,h6');
    let toc = '<div class="toc"><h2>Table of Contents</h2><ul>';

    headings.forEach((heading) => {
      const level = heading.nodeName.toLowerCase();
      const text = heading.textContent || '';
      const baseId = text.toLowerCase().replace(/[^a-z0-9]/g, '-');

      const randomStr = Math.random().toString(36).substring(2, 8);

      const id = `toc-${baseId}-${randomStr}`;

      heading.id = id;
      toc += `<li class="toc-${level}"><a href="#${id}">${text}</a></li>`;
    });

    toc += '</ul></div>';
    return toc;
  };

  const setupTOCPlugin = (editor: TinyMCEEditor) => {
    let updateTimeout: NodeJS.Timeout;

    const hasTOC = () => {
      return editor.dom.select('.toc').length > 0;
    };

    const removeTOC = () => {
      const tocElements = editor.dom.select('.toc');
      tocElements.forEach((toc) => {
        editor.dom.remove(toc);
      });
    };

    editor.ui.registry.addButton('toc', {
      text: 'TOC',
      tooltip: 'Toggle Table of Contents (Insert/Remove)',
      onAction: (api) => {
        const isActive = hasTOC();
        if (isActive) {
          removeTOC();
          api.setText('Insert TOC');
        } else {
          const toc = generateTOC(editor);
          editor.selection.setCursorLocation();
          editor.insertContent(toc);
          editor.insertContent('<p></p>');
          api.setText('Remove TOC');
        }
      },
      onSetup: (api) => {
        api.setText(hasTOC() ? 'Remove TOC' : 'Insert TOC');
        return () => {};
      },
    });

    editor.on('NodeChange', () => {
      if (updateTimeout) {
        clearTimeout(updateTimeout);
      }

      updateTimeout = setTimeout(() => {
        const tocElements = editor.dom.select('.toc');

        if (tocElements.length > 0) {
          const newToc = generateTOC(editor);

          tocElements.forEach((tocElement) => {
            tocElement.outerHTML = newToc;
          });
        }
      }, 500);
    });
  };

  const initialValue = '<p>This is the initial content of the editor.</p>';

  return (
    <>
      <Editor
        tinymceScriptSrc="/tinymce/tinymce.min.js"
        initialValue={initialValue}
        onInit={(_, editor) => {
          editorRef.current = editor;
          setupTOCPlugin(editor);
        }}
        init={{
          height: 1000,
          menubar: true,
          promotion: false,
          branding: false,
          plugins: [
            'accordion',
            'advlist',
            'anchor',
            'autolink',
            'autoresize',
            'autosave',
            'charmap',
            'code',
            'codesample',
            'directionality',
            'emoticons',
            'help',
            'image',
            'importcss',
            'insertdatetime',
            'link',
            'lists',
            'media',
            'nonbreaking',
            'pagebreak',
            'preview',
            'quickbars',
            'save',
            'searchreplace',
            'table',
            'visualblocks',
            'visualchars',
            'wordcount',
          ],
          external_plugins: {
            mathjax:
              '/tinymce/plugins/@dimakorotkov/tinymce-mathjax/plugin.min.js',
          },
          toolbar:
            'undo redo | blocks fontfamily fontsize | toc | ' +
            'bold italic underline strikethrough | link image media table | ' +
            'align | numlist bullist | emoticons charmap | code codesample | ' +
            'preview save | searchreplace | help | ' +
            'insertdatetime nonbreaking pagebreak | mathjax',

          mathjax: {
            lib: 'https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js',
            symbols: {
              start: '\\(',
              end: '\\)',
            },
            className: 'math-tex',
            configUrl:
              '/tinymce/plugins/@dimakorotkov/tinymce-mathjax/config.js',
          },
          content_style: `
            body { font-family:Helvetica,Arial,sans-serif; font-size:14px }
            .toc { background: #f9f9f9; padding: 20px; margin: 20px 0; }
            .toc ul { list-style-type: none; padding-left: 20px; }
            .toc-h1 { margin-left: 0px; }
            .toc-h2 { margin-left: 20px; }
            .toc-h3 { margin-left: 40px; }
            .toc-h4 { margin-left: 60px; }
            .toc-h5 { margin-left: 80px; }
            .toc-h6 { margin-left: 100px; }
          `,
          style_formats_merge: true,
          style_formats: [],
          ui_css: `
            .tox .tox-tbtn[aria-label="Toggle Table of Contents (Insert/Remove)"] {
              width: auto !important;
              padding: 0 10px !important;
            }
            .tox .tox-tbtn--select {
              min-width: fit-content !important;
            }
          `,
        }}
      />
    </>
  );
};
