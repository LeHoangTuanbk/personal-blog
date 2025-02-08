import { useMutation, useQuery } from '@tanstack/react-query';
import { useNavigate } from 'react-router-dom';
import { toast } from 'react-toastify';

import { EditPostDataType } from '@features/admin/edit-post-form/api/data.types';
import { editPost } from '@features/admin/edit-post-form/api/edit-post';
import { fetchPostDataForEdit } from '@features/admin/edit-post-form/api/fetch-post-data-for-edit';
import { QueryKeys } from '@shared/api/query-client';
import { paths } from '@shared/config/paths';
import { useToastHook } from '@shared/ui/components/toast-factory';

export const usePostDataForEdit = (slug: string) => {
  return useQuery({
    queryKey: [QueryKeys.postDataForEdit],
    queryFn: () => fetchPostDataForEdit(slug),
    enabled: !!slug,
  });
};

export const useEditPost = () => {
  const navigate = useNavigate();
  const { successToast } = useToastHook();
  return useMutation({
    mutationFn: (data: EditPostDataType) => editPost(data),
    onSuccess: () => {
      successToast('Post updated successfully');
      setTimeout(() => {
        navigate(paths.admin.dashboard);
      }, 2000);
    },
    onError: (error) => {
      toast.error(error.message);
    },
  });
};
