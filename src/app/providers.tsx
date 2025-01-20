import { ChakraProvider, theme } from '@chakra-ui/react';
import { createBrowserRouter, RouterProvider } from 'react-router-dom';

import { QueryClientProvider } from '@tanstack/react-query';
import { routes } from './routes';
import { queryClient } from '@shared/api/query-client';

const router = createBrowserRouter(routes);

export const Providers = () => {
  return (
    <QueryClientProvider client={queryClient}>
      <ChakraProvider theme={theme}>
        <RouterProvider router={router} />
      </ChakraProvider>
    </QueryClientProvider>
  );
};
