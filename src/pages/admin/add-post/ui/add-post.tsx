import { VStack, Text } from '@chakra-ui/react';

import { PostFormContainer } from '@widgets/post-form';

export const AddPost = () => {
  return (
    <VStack alignItems="flex-start" spacing={4}>
      <Text as="h1" fontSize="2xl" fontWeight="bold">
        Add Post
      </Text>
      <PostFormContainer />
    </VStack>
  );
};
