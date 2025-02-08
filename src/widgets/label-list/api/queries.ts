import { useQuery } from '@tanstack/react-query';

import { QueryKeys } from '@shared/api/query-client/query-keys';
import { fetchLabelsNumberPosts } from '@widgets/label-list/api/fetch-labels-number-posts';

export const useFetchLabelsNumberPosts = () => {
  return useQuery({
    queryKey: [QueryKeys.labelsNumberPosts],
    queryFn: fetchLabelsNumberPosts,
  });
};
