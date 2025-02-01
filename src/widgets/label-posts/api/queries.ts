import { useQuery } from '@tanstack/react-query';

import { QueryKeys } from '@shared/api/query-client/query-keys';
import { fetchLabelPosts } from '@widgets/label-posts/api/fetch-label-posts';

export const useLabelPostsQuery = (label: string) => {
  return useQuery({
    queryKey: [QueryKeys.labelPosts, label],
    queryFn: () => fetchLabelPosts(label),
  });
};
