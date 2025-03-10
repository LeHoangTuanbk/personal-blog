import { VStack } from '@chakra-ui/react';

import { ContactSession, ProfileCard } from '@shared/ui/components';
import { HomeLabelContainer } from '@widgets/home-label/ui/home-label-container';
import { LabelListContainer } from '@widgets/label-list/ui/label-list-container';

export const Sidebar = () => {
  return (
    <VStack
      display="flex"
      position="sticky"
      top={0}
      flexDirection="column"
      gap={4}
      px={2}
      py={4}
      bg="bg.secondary"
      boxShadow="1px 0 10px rgba(0, 0, 0, 0.05)"
      align="stretch"
      h={{ base: 'auto', xl: '100vh' }}
      overflowY="auto"
      w="full"
    >
      <ProfileCard />
      <HomeLabelContainer />
      <LabelListContainer />
      <ContactSession />
    </VStack>
  );
};
