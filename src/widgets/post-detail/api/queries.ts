import { useQuery } from '@tanstack/react-query';

import { QueryKeys } from '@shared/api/query-client/query-keys';
import { fetchPostDetail } from '@widgets/post-detail/api/fetch-post-detail';

export const usePostDetailQuery = (slug: string) => {
  return useQuery({
    queryKey: [QueryKeys.postDetail, slug],
    queryFn: () => fetchPostDetail(slug),
    enabled: !!slug,
  });
};
