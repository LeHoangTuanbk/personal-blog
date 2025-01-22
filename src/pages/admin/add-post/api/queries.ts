import { useQuery } from '@tanstack/react-query';

import { fetchLabels } from '@pages/admin/add-post/api/fetch-labels';
import { queryKeys } from '@shared/api/query-client';

export const useFetchLabels = () => {
  return useQuery({
    queryKey: [queryKeys.labels],
    queryFn: async () => {
      const data = await fetchLabels();
      return data;
    },
  });
};
