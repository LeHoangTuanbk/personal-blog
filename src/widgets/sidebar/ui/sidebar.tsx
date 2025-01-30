import { VStack } from '@chakra-ui/react';

import { ContactSession, ProfileCard } from '@shared/ui/components';
import { LabelListContainer } from '@widgets/label-list/ui/label-list-container';

export const Sidebar = () => {
  return (
    <VStack
      display="flex"
      flexDirection="column"
      gap={4}
      alignItems="flex-start"
    >
      <ProfileCard />
      <LabelListContainer />
      <ContactSession />
    </VStack>
  );
};
