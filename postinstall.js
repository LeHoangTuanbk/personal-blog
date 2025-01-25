import path from 'path';
import { fileURLToPath } from 'url';

import fse from 'fs-extra';

const topDir = path.dirname(fileURLToPath(import.meta.url));

// Empty and copy TinyMCE
fse.emptyDirSync(path.join(topDir, 'public', 'tinymce'));
fse.copySync(
  path.join(topDir, 'node_modules', 'tinymce'),
  path.join(topDir, 'public', 'tinymce'),
  { overwrite: true },
);

// Copy MathJax plugin
const mathjaxPluginSrc = path.join(
  topDir,
  'node_modules',
  '@dimakorotkov',
  'tinymce-mathjax',
);
const mathjaxPluginDest = path.join(
  topDir,
  'public',
  'tinymce',
  'plugins',
  '@dimakorotkov',
  'tinymce-mathjax',
);

fse.ensureDirSync(mathjaxPluginDest);
fse.copySync(mathjaxPluginSrc, mathjaxPluginDest, { overwrite: true });

const mathjaxSrc = path.join(topDir, 'node_modules', 'mathjax');
const mathjaxDest = path.join(topDir, 'public', 'mathjax');

if (fse.existsSync(mathjaxSrc)) {
  fse.ensureDirSync(mathjaxDest);
  fse.copySync(mathjaxSrc, mathjaxDest, { overwrite: true });
}
