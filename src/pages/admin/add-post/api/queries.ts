import { useQuery } from '@tanstack/react-query';

import { fetchLabels } from '@pages/admin/add-post/api/fetch-labels';
import { QueryKeys } from '@shared/api/query-client';

export const useFetchLabels = () => {
  return useQuery({
    queryKey: [QueryKeys.labels],
    queryFn: async () => {
      const data = await fetchLabels();
      return data;
    },
  });
};
