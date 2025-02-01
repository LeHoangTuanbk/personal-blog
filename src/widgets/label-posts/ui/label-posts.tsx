import { Box, VStack } from '@chakra-ui/react';

import { PostView } from '@entities/posts/model/types';
import { PostCardContainer } from '@widgets/post-card';

type LabelPostsProps = {
  posts: PostView[];
};

export const LabelPosts = ({ posts }: LabelPostsProps) => {
  return (
    <Box mt={10}>
      <VStack alignItems={{ base: 'center', xl: 'flex-start' }} spacing={4}>
        {posts?.map((post) => <PostCardContainer key={post.id} posts={post} />)}
      </VStack>
    </Box>
  );
};
