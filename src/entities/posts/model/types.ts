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

export const ActivePost = {
  Active: 'active',
} as const;

export const ActivePostList = [ActivePost.Active] as const;

export type ActivePostType = (typeof ActivePostList)[number];

export type ViewPostFilterType = PostStatusType | ActivePostType;

export type PostView = {
  id: string;
  title: string;
  description: string;
  created_at: string;
  reading_time: number;
  slug: string;
  status: PostStatusType;
  labels: string[];
};
