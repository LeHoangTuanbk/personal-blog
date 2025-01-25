export const createSlugUrl = (title: string) => {
  // Remove diacritics from Vietnamese characters
  const normalized = title.normalize('NFD').replace(/[\u0300-\u036f]/g, '');

  // Convert to lowercase, replace special chars with hyphens
  const baseSlug = normalized
    .toLowerCase()
    .replace(/[^a-z0-9]/g, '-')
    .replace(/-+/g, '-') // Replace multiple consecutive hyphens with single hyphen
    .replace(/^-|-$/g, ''); // Remove leading/trailing hyphens

  // Generate random string (6 characters)
  const randomString = Math.random().toString(36).substring(2, 8);

  return `${baseSlug}-${randomString}`;
};
