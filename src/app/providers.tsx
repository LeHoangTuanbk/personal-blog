import { ChakraProvider } from '@chakra-ui/react';
import { QueryClientProvider } from '@tanstack/react-query';
import { createBrowserRouter, RouterProvider } from 'react-router-dom';

import { AuthProvider } from '@app/guards';
import { queryClient } from '@shared/api/query-client';
import { ToastProvider } from '@shared/ui/components/toast-factory';

import { routes } from './routes';
import { theme } from './theme';

const router = createBrowserRouter(routes);

export const Providers = () => {
  return (
    <QueryClientProvider client={queryClient}>
      <ChakraProvider theme={theme}>
        <ToastProvider>
          <AuthProvider>
            <RouterProvider router={router} />
          </AuthProvider>
        </ToastProvider>
      </ChakraProvider>
    </QueryClientProvider>
  );
};
