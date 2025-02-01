import { Box } from '@chakra-ui/react';
import { useParams } from 'react-router-dom';

import { LabelPostsContainer } from '@widgets/label-posts';

export const HomeLabelPosts = () => {
  const { label } = useParams();
  if (!label) return <Box>Label not found</Box>;
  return <LabelPostsContainer label={label} />;
};
