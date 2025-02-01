import { Box, Spinner, VStack } from '@chakra-ui/react';

import { PostCardContainer } from '@widgets/post-card';
import { usePublishedPostsQuery } from '@widgets/post-list/api/queries';

export const PostList = () => {
  const { data, isLoading, isError } = usePublishedPostsQuery();
  if (isLoading) return <Spinner />;
  if (isError) return <Box>Error loading posts. Please try again later.</Box>;
  return (
    <VStack alignItems="flex-start" spacing={4}>
      {data?.map((post) => <PostCardContainer key={post.id} posts={post} />)}
    </VStack>
  );
};
