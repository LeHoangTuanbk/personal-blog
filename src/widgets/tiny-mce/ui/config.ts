export const initConfig = {
  min_height: 500,
  max_height: 500,
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
    'fullscreen',
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
    mathjax: '/tinymce/plugins/@dimakorotkov/tinymce-mathjax/plugin.min.js',
  },
  toolbar:
    'undo redo | blocks fontfamily fontsize | fullscreen | toc | ' +
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
    configUrl: '/tinymce/plugins/@dimakorotkov/tinymce-mathjax/config.js',
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
};
