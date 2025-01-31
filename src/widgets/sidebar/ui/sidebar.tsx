import { VStack } from '@chakra-ui/react';

import { ContactSession, ProfileCard } from '@shared/ui/components';
import { LabelListContainer } from '@widgets/label-list/ui/label-list-container';

export const Sidebar = () => {
  return (
    <VStack
      display="flex"
      flexDirection="column"
      gap={4}
      height="100%"
      px={2}
      py={2}
      bg="bg.secondary"
      boxShadow="1px 0 10px rgba(0, 0, 0, 0.05)"
      align="stretch"
      width="100%"
      h="100vh"
    >
      <ProfileCard />
      <LabelListContainer />
      <ContactSession />
    </VStack>
  );
};
