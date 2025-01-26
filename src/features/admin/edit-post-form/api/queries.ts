import { useQuery } from '@tanstack/react-query';

import { fetchPostDataForEdit } from '@features/admin/edit-post-form/api/fetch-post-data-for-edit';
import { QueryKeys } from '@shared/api/query-client';

export const usePostDataForEdit = (slug: string) => {
  return useQuery({
    queryKey: [QueryKeys.postDataForEdit],
    queryFn: () => fetchPostDataForEdit(slug),
    enabled: !!slug,
  });
};
