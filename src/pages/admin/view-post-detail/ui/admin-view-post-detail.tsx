import { Button, HStack, VStack } from '@chakra-ui/react';
import { generatePath, useNavigate, useParams } from 'react-router-dom';

import { paths } from '@shared/config/paths';
import { PostDetailContainer } from '@widgets/post-detail/ui/post-detail-container';

export const AdminViewPostDetail = () => {
  const { slug } = useParams();
  const navigate = useNavigate();
  const handleBackToDashboard = () => {
    navigate(paths.admin.dashboard);
  };

  if (!slug) return null;

  const handleEditPost = () => {
    const adminEditPostPath = generatePath(paths.admin.editPost, { slug });
    window.open(adminEditPostPath, '_blank');
  };

  return (
    <VStack spacing={4} textAlign="left" alignItems="flex-start">
      <PostDetailContainer slug={slug} />
      <HStack spacing={4}>
        <Button onClick={handleEditPost} colorScheme="blue">
          Edit
        </Button>
        <Button onClick={handleBackToDashboard} colorScheme="gray">
          Back to dashboard
        </Button>
      </HStack>
    </VStack>
  );
};
