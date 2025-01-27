import { PostSchema } from '@entities/posts/model/schema';

export type EditPostDataType = {
  id: string;
  data: PostSchema;
  addedLabels: string[];
  removedLabels: string[];
};
