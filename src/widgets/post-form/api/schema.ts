import { z } from 'zod';

export const PostSchema = z.object({
  title: z.string().min(1, 'Title is required'),
  content: z.string().min(1, 'Content is required'),
  labels: z.array(z.string()).min(1, 'At least one label is required'),
});

export type PostSchema = z.infer<typeof PostSchema>;
