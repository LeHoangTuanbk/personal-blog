import { Box } from '@chakra-ui/react';

import { LabelListSkeleton } from '@widgets/label/ui/label-skeleton';
import { useFetchLabelsNumberPosts } from '@widgets/label-list/api';
import { LabelList } from '@widgets/label-list/ui/label-list';

export const LabelListContainer = () => {
  const { data, error, isLoading } = useFetchLabelsNumberPosts();
  if (isLoading) return <LabelListSkeleton />;

  if (error) return <Box>Error loading labels</Box>;
  if (!data) return <Box>No labels found</Box>;
  return (
    <Box mx="auto" mt="auto" w="100%" display="flex" justifyContent="center">
      <LabelList labels={data} />
    </Box>
  );
};
