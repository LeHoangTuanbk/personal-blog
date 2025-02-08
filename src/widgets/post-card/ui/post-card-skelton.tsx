import { Box, Skeleton, HStack, Text, VStack } from '@chakra-ui/react';

import { LabelListSkeleton } from '@widgets/label/ui/label-skeleton';

const PostCardSkeleton = () => {
  return (
    <Box
      as="article"
      p={6}
      borderWidth="1px"
      borderRadius="lg"
      w={{ base: '90%', lg: '4xl' }}
      bg="bg.secondary"
    >
      <Box display="flex" justifyContent="space-between">
        <Skeleton height="2.5rem" width="60%" mb={2} />
        <Skeleton height="2rem" width="60px" />
      </Box>

      <Skeleton height="3rem" mb={4} />

      <HStack spacing={2} mb={4}>
        <LabelListSkeleton count={3} />
      </HStack>

      <HStack spacing={2} justifyContent="space-between">
        <HStack>
          <Skeleton height="1rem" width="80px" />
          <Text>—</Text>
          <Skeleton height="1rem" width="100px" />
        </HStack>
      </HStack>
    </Box>
  );
};

type PostCardListSkeletonProps = {
  count?: number;
};
export const PostCardListSkeleton = ({
  count = 4,
}: PostCardListSkeletonProps) => {
  return (
    <VStack spacing={4} w="full">
      {[...Array(count)].map((_, i) => (
        <PostCardSkeleton key={i} />
      ))}
    </VStack>
  );
};
