import { useQuery } from '@tanstack/react-query';

import { QueryKeys } from '@shared/api/query-client';

import { fetchLabels } from './fetch-labels';

export const useFetchLabels = () => {
  return useQuery({
    queryKey: [QueryKeys.labels],
    queryFn: async () => {
      const data = await fetchLabels();
      return data;
    },
  });
};
