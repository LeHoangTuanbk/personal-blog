import { useMutation, useQuery } from '@tanstack/react-query';

import { PostSchema } from '@features/admin/add-post-form/api';
import { fetchLabels } from '@features/admin/add-post-form/api/fetch-labels';
import { submitPost } from '@features/admin/add-post-form/api/submit-post';
import { QueryKeys } from '@shared/api/query-client';
import { useToastHook } from '@shared/ui/components/toast-factory';
export const useFetchLabels = () => {
  return useQuery({
    queryKey: [QueryKeys.labels],
    queryFn: async () => {
      const data = await fetchLabels();
      return data;
    },
  });
};

export const useSubmitPost = () => {
  const { successToast, errorToast } = useToastHook();
  return useMutation({
    mutationFn: async (data: PostSchema) => {
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
