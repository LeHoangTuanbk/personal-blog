import { useQuery } from '@tanstack/react-query';

import { fetchPostDetail } from '@pages/admin/view-post-detail/api/fetch-post-detail';
import { QueryKeys } from '@shared/api/query-client/query-keys';

export const usePostDetailQuery = (slug: string) => {
  return useQuery({
    queryKey: [QueryKeys.postDetail, slug],
    queryFn: () => fetchPostDetail(slug),
    enabled: !!slug,
  });
};
