import { Tables } from '@shared/api/supabase-client/database.types';

export type Post = Tables<'posts'>;

const PostStatusConst = {
  Published: 'published',
  Draft: 'draft',
  Archived: 'archived',
} as const;

export const PostStatusList = Object.values(PostStatusConst);

export type PostStatusType = (typeof PostStatusList)[number];

type PostStatusKeys = keyof typeof PostStatusConst;

export const PostStatus: Record<PostStatusKeys, PostStatusType> = {
  Published: PostStatusConst.Published,
  Draft: PostStatusConst.Draft,
  Archived: PostStatusConst.Archived,
} as const;
