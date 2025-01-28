import { Box } from '@chakra-ui/react';

import { HomepageLayout } from '@shared/layout';
import { MainContentContainer } from '@widgets/main-content';
import { SidebarContainer } from '@widgets/sidebar';

export const HomePageContainer = () => {
  return (
    <Box as="main" minH="100vh" bg="white">
      <HomepageLayout sideBar={<SidebarContainer />}>
        <MainContentContainer />
      </HomepageLayout>
    </Box>
  );
};
