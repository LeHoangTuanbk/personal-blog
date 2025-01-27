import { useMutation } from '@tanstack/react-query';

import { PostSchemaType } from '@entities/posts/model';
import { submitPost } from '@features/admin/add-post-form/api/submit-post';
import { useToastHook } from '@shared/ui/components/toast-factory';

export const useSubmitPost = () => {
  const { successToast, errorToast } = useToastHook();
  return useMutation({
    mutationFn: async (data: PostSchemaType) => {
      const response = await submitPost(data);
      return response;
    },
    onSuccess: () => {
      successToast('Post submitted successfully');
    },
    onError: (error) => {
      errorToast('Error submitting post:', error.message);
    },
  });
};
