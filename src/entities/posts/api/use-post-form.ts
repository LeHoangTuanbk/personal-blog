import { zodResolver } from '@hookform/resolvers/zod';
import { useForm } from 'react-hook-form';

import { PostSchema } from '@entities/posts/model/schema';

export const usePostForm = ({
  defaultValues,
}: {
  defaultValues: PostSchema;
}) => {
  return useForm<PostSchema>({
    resolver: zodResolver(PostSchema),
    defaultValues,
  });
};

export type UsePostForm = ReturnType<typeof usePostForm>;
