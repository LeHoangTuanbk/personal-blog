import {
  DefaultOptions,
  QueryClient,
  QueryCache,
  MutationCache,
} from '@tanstack/react-query';

const queryConfig: DefaultOptions = {
  queries: {
    refetchOnWindowFocus: false,
    retry: false,
  },
};

export const queryClient = new QueryClient({
  defaultOptions: queryConfig,
  queryCache: new QueryCache({
    onError: () => {},
  }),
  mutationCache: new MutationCache({
    onError: () => {},
  }),
});
