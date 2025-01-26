import { Text, VStack } from '@chakra-ui/react';

import { PostForm } from '@widgets/post-form/ui/post-form';

export const AdminEditPost = () => {
  return (
    <VStack spacing={8} alignItems="flex-start">
      <Text fontSize="2xl" fontWeight="bold">
        Edit Post
      </Text>
      <PostForm />
    </VStack>
  );
};
