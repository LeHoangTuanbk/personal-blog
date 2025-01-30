import { Box } from '@chakra-ui/react';

import { MainContentContainer } from '@widgets/main-content';

export const HomePageContainer = () => {
  return (
    <Box as="main" minH="100vh" bg="white">
      <MainContentContainer />
    </Box>
  );
};
