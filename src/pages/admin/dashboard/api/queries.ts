import { useQuery } from '@tanstack/react-query';

import { ViewPostFilterType } from '@entities/posts/model/types';
import { fetchPostsData } from '@pages/admin/dashboard/api/fetch-posts-data';
import { QueryKeys } from '@shared/api/query-client/query-keys';

export const useFetchPostsData = (viewPostFilter: ViewPostFilterType) => {
  return useQuery({
    queryKey: [QueryKeys.getAllPosts, viewPostFilter],
    queryFn: () => fetchPostsData(viewPostFilter),
    enabled: !!viewPostFilter,
  });
};
