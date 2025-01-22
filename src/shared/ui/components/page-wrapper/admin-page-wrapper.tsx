import { Box } from '@chakra-ui/react';
import React from 'react';

export const AdminPageWrapper = ({
  children,
}: {
  children: React.ReactNode;
}) => {
  return <Box mx="auto">{children}</Box>;
};
