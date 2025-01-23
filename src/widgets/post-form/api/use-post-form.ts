import { zodResolver } from '@hookform/resolvers/zod';
import { useForm } from 'react-hook-form';

import { PostSchema } from '@widgets/post-form/api/schema';

export const usePostForm = () => {
  return useForm<PostSchema>({
    resolver: zodResolver(PostSchema),
  });
};

export type UsePostForm = ReturnType<typeof usePostForm>;
