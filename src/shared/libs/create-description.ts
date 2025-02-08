import { extractTextFromHTML } from './extract-text-from-html';

export const createDescription = (html: string) => {
  const rawText = extractTextFromHTML(html);
  const words = rawText.trim().split(/\s+/);
  return `${words.slice(0, 30).join(' ')}...`;
};
