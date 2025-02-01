import { VStack } from '@chakra-ui/react';

import { ContactSession, ProfileCard } from '@shared/ui/components';
import { LabelListContainer } from '@widgets/label-list/ui/label-list-container';

export const Sidebar = () => {
  return (
    <VStack
      display="flex"
      position="fixed"
      left={0}
      top={0}
      flexDirection="column"
      gap={4}
      px={2}
      py={2}
      bg="bg.secondary"
      boxShadow="1px 0 10px rgba(0, 0, 0, 0.05)"
      align="stretch"
      h="100vh"
      w="250px"
    >
      <ProfileCard />
      <LabelListContainer />
      <ContactSession />
    </VStack>
  );
};
