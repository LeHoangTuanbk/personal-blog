import { Text, VStack } from '@chakra-ui/react';
import { useParams } from 'react-router-dom';

import { EditPostFormContainer } from '@features/admin/edit-post-form';

export const AdminEditPost = () => {
  const { slug } = useParams();
  if (!slug) {
    return <Text>No slug found</Text>;
  }

  return (
    <VStack spacing={8} alignItems="flex-start">
      <Text fontSize="2xl" fontWeight="bold">
        Edit Post
      </Text>
      <EditPostFormContainer slug={slug} />
    </VStack>
  );
};
