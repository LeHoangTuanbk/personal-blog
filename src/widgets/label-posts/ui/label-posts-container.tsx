import { Box, Text } from '@chakra-ui/react';

import { useLabelPostsQuery } from '@widgets/label-posts/api/queries';
import { LabelPosts } from '@widgets/label-posts/ui/label-posts';
import { PostCardListSkeleton } from '@widgets/post-card/';
type LabelPostsContainerProps = {
  label: string;
};
export const LabelPostsContainer = ({ label }: LabelPostsContainerProps) => {
  const { data, isLoading, isError } = useLabelPostsQuery(label);
  if (isLoading) return <PostCardListSkeleton />;
  if (isError) return <Box>Error loading posts</Box>;
  if (!data?.length)
    return (
      <Text textAlign="center" mt={4}>
        No posts found
      </Text>
    );
  return <LabelPosts posts={data} />;
};
