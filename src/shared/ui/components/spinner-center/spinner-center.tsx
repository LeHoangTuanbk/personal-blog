import { Box, Spinner } from '@chakra-ui/react';

export const SpinnerCenter = () => {
  return (
    <Box display="flex" justifyContent="center" alignItems="center" h="100vh">
      <Spinner />
    </Box>
  );
};
