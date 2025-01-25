const extractTextFromHTML = (html: string) => {
  const parser = new DOMParser();
  const doc = parser.parseFromString(html, 'text/html');
  return doc.body.textContent || '';
};

export const calculateReadingTime = (html: string) => {
  const rawText = extractTextFromHTML(html);
  const wordsPerMinute = 200;
  const wordCount = rawText.split(/\s+/).length;
  return Math.ceil(wordCount / wordsPerMinute);
};
