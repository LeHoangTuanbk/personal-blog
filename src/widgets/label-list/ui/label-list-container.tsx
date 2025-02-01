import { Box, Spinner } from '@chakra-ui/react';

import { useFetchLabelsNumberPosts } from '@widgets/label-list/api';
import { LabelList } from '@widgets/label-list/ui/label-list';

export const LabelListContainer = () => {
  const { data, isLoading, error } = useFetchLabelsNumberPosts();
  if (isLoading) return <Spinner />;
  if (error) return <Box>Error loading labels</Box>;
  if (!data) return <Box>No labels found</Box>;
  return <LabelList labels={data} />;
};
