import { keepPreviousData, useQuery } from '@tanstack/react-query';

import { QueryKeys } from '@shared/api/query-client/query-keys';
import { fetchPublishedPostsData } from '@widgets/post-list/api/fetch-published-posts-data';

export const usePublishedPostsQuery = () => {
  return useQuery({
    queryKey: [QueryKeys.publishedPosts],
    queryFn: fetchPublishedPostsData,
    placeholderData: keepPreviousData,
  });
};
