import { useQuery } from '@tanstack/react-query';

import { fetchPostsData } from '@pages/admin/dashboard/api/fetch-posts-data';
import { QueryKeys } from '@shared/api/query-client/query-keys';

export const useFetchPostsData = () => {
  return useQuery({
    queryKey: [QueryKeys.getAllPosts],
    queryFn: fetchPostsData,
  });
};
