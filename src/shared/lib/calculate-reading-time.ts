const adultReadingWordsPerMinute = 200;

const extractTextFromHTML = (html: string) => {
  const parser = new DOMParser();
  const doc = parser.parseFromString(html, 'text/html');
  return doc.body.textContent || '';
};

export const calculateReadingTime = (html: string) => {
  const rawText = extractTextFromHTML(html);
  const wordCount = rawText.split(/\s+/).length;
  return Math.ceil(wordCount / adultReadingWordsPerMinute);
};
