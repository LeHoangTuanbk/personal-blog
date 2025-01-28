import { Box } from '@chakra-ui/react';

import { HomepageLayout } from '@shared/layout';
import { SidebarContainer } from '@widgets/sidebar';

import { HomePage } from './home-page';
export const HomePageContainer = () => {
  return (
    <Box as="main" minH="100vh" bg="white">
      <HomepageLayout sideBar={<SidebarContainer />}>
        <HomePage />
      </HomepageLayout>
    </Box>
  );
};
