import { extractTextFromHTML } from './extract-text-from-html';

export const createDescription = (html: string) => {
  const rawText = extractTextFromHTML(html);
  return rawText.slice(0, 150);
};
