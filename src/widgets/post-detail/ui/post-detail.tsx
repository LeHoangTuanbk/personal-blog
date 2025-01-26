import { Box, Text } from '@chakra-ui/react';

import { type PostDetailType } from '@widgets/post-detail/api';

type PostDetailProps = {
  data: PostDetailType;
};

export const PostDetail = ({ data }: PostDetailProps) => {
  return (
    <Box>
      <Text fontSize="2xl" fontWeight="bold">
        {data.title}
      </Text>
      <Text>{data.created_at}</Text>
      <Text>{data.status}</Text>
      <Box dangerouslySetInnerHTML={{ __html: data.content }} />
      <Text>{data.labels_content}</Text>
    </Box>
  );
};
