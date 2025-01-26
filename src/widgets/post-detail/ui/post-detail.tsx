import { Box, Text, VStack, HStack, Tag } from '@chakra-ui/react';

import { getStatusColor } from '@shared/libs';
import { type PostDetailType } from '@widgets/post-detail/api';

type PostDetailProps = {
  data: PostDetailType;
};

export const PostDetail = ({ data }: PostDetailProps) => {
  return (
    <VStack spacing={4} textAlign="left" alignItems="flex-start">
      <VStack spacing={2} w="full">
        <Text as="h1" fontSize="2xl" fontWeight="bold">
          {data.title}
        </Text>
        <Text>{data.created_at}</Text>
      </VStack>
      <Tag
        size="md"
        variant="solid"
        colorScheme={getStatusColor(data.status)}
        px={3}
        py={1}
        borderRadius="full"
      >
        {data.status}
      </Tag>
      <Box dangerouslySetInnerHTML={{ __html: data.content }} />
      <HStack spacing={2} mb={4}>
        {data.labels_content.map((label) => (
          <Tag
            key={label}
            size="md"
            variant="outline"
            colorScheme="gray"
            px={4}
            py={1}
            borderRadius="sm"
          >
            #{label}
          </Tag>
        ))}
      </HStack>
    </VStack>
  );
};
