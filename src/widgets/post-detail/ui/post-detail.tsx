import { ArrowUpIcon } from '@chakra-ui/icons';
import { Box, Text, VStack, HStack, Tag, IconButton } from '@chakra-ui/react';
import { useState, useEffect } from 'react';

import { useAdminContext } from '@shared/context/admin-context';
import { getStatusColor } from '@shared/libs';
import { type PostDetailType } from '@widgets/post-detail/api';

type PostDetailProps = {
  data: PostDetailType;
};

const scrollToTop = () => {
  window.scrollTo({ top: 0, behavior: 'smooth' });
};

export const PostDetail = ({ data }: PostDetailProps) => {
  const { adminPage: isAdminPage } = useAdminContext();
  const [showScrollTop, setShowScrollTop] = useState(false);

  useEffect(() => {
    const sentinel = document.createElement('div');
    sentinel.style.height = '1px';
    sentinel.style.visibility = 'hidden';

    document.querySelector('body')?.appendChild(sentinel);

    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          setShowScrollTop(entry.isIntersecting);
        });
      },
      { threshold: 0.1 },
    );

    observer.observe(sentinel);

    return () => {
      observer.disconnect();
      sentinel.remove();
    };
  }, []);

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
      <IconButton
        aria-label="Scroll to top"
        icon={<ArrowUpIcon />}
        onClick={scrollToTop}
        position="fixed"
        bottom="20px"
        right="20px"
        borderRadius="full"
        colorScheme="gray"
        size="lg"
        opacity="0.8"
        _hover={{ opacity: 1 }}
        display={showScrollTop ? { base: 'flex', md: 'flex' } : 'none'}
      />
    </VStack>
  );
};
