import { Button, HStack, VStack } from '@chakra-ui/react';
import { useNavigate, useParams } from 'react-router-dom';

import { paths } from '@shared/config/paths';
import { PostDetailContainer } from '@widgets/post-detail/ui/post-detail-container';

export const AdminViewPostDetail = () => {
  const { slug } = useParams();
  const navigate = useNavigate();
  const handleBackToDashboard = () => {
    navigate(paths.admin.dashboard);
  };

  if (!slug) return null;

  return (
    <VStack spacing={4} textAlign="left" alignItems="flex-start">
      <PostDetailContainer slug={slug} />
      <HStack spacing={4}>
        <Button colorScheme="blue">Edit</Button>
        <Button onClick={handleBackToDashboard} colorScheme="gray">
          Back to dashboard
        </Button>
      </HStack>
    </VStack>
  );
};
