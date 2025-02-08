import { Box } from '@chakra-ui/react';

import { ScrollToTop } from '@shared/ui/components/scroll-to-top';
import { PostListContainer } from '@widgets/post-list';
export const MainContent = () => {
  return (
    <Box>
      <PostListContainer />
      <ScrollToTop />
    </Box>
  );
};
