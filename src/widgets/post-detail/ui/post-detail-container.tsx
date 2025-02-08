import { Box } from '@chakra-ui/react';

import { SpinnerCenter } from '@shared/ui/components/spinner-center';
import { usePostDetailQuery } from '@widgets/post-detail/api/queries';
import { PostDetail } from '@widgets/post-detail/ui/post-detail';
type PostDetailContainerProps = {
  slug: string;
};

export const PostDetailContainer = ({ slug }: PostDetailContainerProps) => {
  const { data, isLoading, error } = usePostDetailQuery(slug);

  if (isLoading) return <SpinnerCenter />;
  if (error) return <Box>Error: {error.message}</Box>;
  if (!data) return null;
  return <PostDetail data={data} />;
};
