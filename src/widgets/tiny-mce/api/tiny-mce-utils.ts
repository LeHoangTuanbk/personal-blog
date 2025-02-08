import { Editor as TinyMCEEditor } from 'tinymce';

export const generateTOC = (editor: TinyMCEEditor) => {
  const headings = editor.dom.select('h1,h2,h3,h4,h5,h6');
  let toc = '<div class="toc"><ul>';

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

export const setupTOCPlugin = (editor: TinyMCEEditor) => {
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
