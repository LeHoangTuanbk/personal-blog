import { z } from 'zod';

import { PostStatusList } from '@entities/posts/model';

export const PostSchema = z.object({
  title: z.string().min(1, 'Title is required'),
  content: z.string().min(1, 'Content is required'),
  status: z.enum(PostStatusList),
  labels: z.array(z.string()).min(1, 'At least one label is required'),
});

export type PostSchema = z.infer<typeof PostSchema>;
