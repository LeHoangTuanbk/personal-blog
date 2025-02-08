import { Box } from '@chakra-ui/react';
import React from 'react';

export const AllPageWrapper = ({ children }: { children: React.ReactNode }) => {
  return (
    <Box maxW="8xl" bg="bg.primary">
      {children}
    </Box>
  );
};
