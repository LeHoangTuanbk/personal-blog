import { ChakraProvider, theme } from '@chakra-ui/react';
import { QueryClientProvider } from '@tanstack/react-query';
import { createBrowserRouter, RouterProvider } from 'react-router-dom';

import { queryClient } from '@shared/api/query-client';
import { ToastProvider } from '@shared/ui/components/toast-factory';

import { routes } from './routes';
const router = createBrowserRouter(routes);

export const Providers = () => {
  return (
    <QueryClientProvider client={queryClient}>
      <ChakraProvider theme={theme}>
        <ToastProvider>
          <RouterProvider router={router} />
        </ToastProvider>
      </ChakraProvider>
    </QueryClientProvider>
  );
};
