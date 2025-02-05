import { Box, VStack } from '@chakra-ui/react';

import { SpinnerCenter } from '@shared/ui/components/spinner-center';
import { PostCardContainer } from '@widgets/post-card';
import { usePublishedPostsQuery } from '@widgets/post-list/api/queries';

export const PostList = () => {
  const { data, isLoading, isError } = usePublishedPostsQuery();
  if (isLoading) return <SpinnerCenter />;
  if (isError) return <Box>Error loading posts. Please try again later.</Box>;
  return (
    <VStack alignItems={{ base: 'center', xl: 'flex-start' }} spacing={4}>
      {data?.map((post) => <PostCardContainer key={post.id} posts={post} />)}
    </VStack>
  );
};
