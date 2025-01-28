import { Box } from '@chakra-ui/react';

import { ProfileCard } from '@shared/ui/components';
import { LabelListContainer } from '@widgets/label-list/ui/label-list-container';

export const Sidebar = () => {
  return (
    <Box>
      <ProfileCard />
      <LabelListContainer />
    </Box>
  );
};
