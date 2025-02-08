import { extractTextFromHTML } from './extract-text-from-html';

const adultReadingWordsPerMinute = 400;

export const calculateReadingTime = (html: string) => {
  const rawText = extractTextFromHTML(html);
  const wordCount = rawText.split(/\s+/).length;
  return Math.ceil(wordCount / adultReadingWordsPerMinute);
};
