export const extractImageSources = (html: string): Set<string> => {
  const parser = new DOMParser();
  const doc = parser.parseFromString(html, 'text/html');
  const imgElements = doc.querySelectorAll('img');
  return new Set(Array.from(imgElements).map((img) => img.src));
};
