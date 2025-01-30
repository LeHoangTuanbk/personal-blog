import { Box, Spinner } from '@chakra-ui/react';

import { usePostDetailQuery } from '@widgets/post-detail/api/queries';
import { PostDetail } from '@widgets/post-detail/ui/post-detail';
type PostDetailContainerProps = {
  slug: string;
};

export const PostDetailContainer = ({ slug }: PostDetailContainerProps) => {
  const { data, isLoading, error } = usePostDetailQuery(slug);

  if (isLoading) return <Spinner />;
  if (error) return <Box>Error: {error.message}</Box>;
  if (!data) return null;
  return <PostDetail data={data} />;
};
