import { Tables } from '@shared/api/supabase-client/database.types';

export type Post = Tables<'posts'>;

export const PostStatus = {
  Published: 'published',
  Draft: 'draft',
  Archived: 'archived',
} as const;

export const PostStatusList = [
  PostStatus.Published,
  PostStatus.Draft,
  PostStatus.Archived,
] as const;

export type PostStatusType = (typeof PostStatusList)[number];
