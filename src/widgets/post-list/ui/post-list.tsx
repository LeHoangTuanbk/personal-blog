import { Box, VStack } from '@chakra-ui/react';

import { PostCardContainer } from '@widgets/post-card';
import { usePublishedPostsQuery } from '@widgets/post-list/api/queries';

export const PostList = () => {
  const { data, isLoading, isError } = usePublishedPostsQuery();
  if (isLoading) return <Box>Loading...</Box>;
  if (isError) return <Box>Loading error</Box>;
  return (
    <VStack alignItems="flex-start" spacing={4}>
      {data?.map((post) => <PostCardContainer key={post.id} posts={post} />)}
    </VStack>
  );
};
