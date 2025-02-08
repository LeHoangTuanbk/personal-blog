import { Box, Text, VStack, HStack, Tag } from '@chakra-ui/react';

import { useAdminContext } from '@shared/context/admin-context';
import { getStatusColor } from '@shared/libs';
import { ScrollToTop } from '@shared/ui/components/scroll-to-top';
import { type PostDetailType } from '@widgets/post-detail/api';

type PostDetailProps = {
  data: PostDetailType;
};

export const PostDetail = ({ data }: PostDetailProps) => {
  const { adminPage: isAdminPage } = useAdminContext();

  return (
    <VStack
      spacing={4}
      textAlign="left"
      alignItems="flex-start"
      my={{ base: 2, xl: 4 }}
      mx={4}
      position="relative"
    >
      <VStack spacing={2} w="full">
        <Text as="h1" fontSize="2xl" fontWeight="bold">
          {data.title}
        </Text>
        <Text>
          {data.created_at} - {data.reading_time} minute read
        </Text>
      </VStack>
      {isAdminPage && (
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
      )}
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
      <ScrollToTop />
    </VStack>
  );
};
