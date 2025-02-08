import { PostStatus } from '@entities/posts/model/types';

export const getStatusColor = (status: string) => {
  if (status === PostStatus.Published) return 'green';
  if (status === PostStatus.Draft) return 'orange';
  return 'gray';
};
