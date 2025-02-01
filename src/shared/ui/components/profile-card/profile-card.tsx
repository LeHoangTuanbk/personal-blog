import { Box, Hide, Image, Text, VStack } from '@chakra-ui/react';
import { LuDot } from 'react-icons/lu';

import { SharedImages } from '@shared/assets';

export const ProfileCard = () => {
  return (
    <VStack align="center" gap={4}>
      <Box
        borderRadius="full"
        overflow="hidden"
        width={{ base: '100px', lg: '150px' }}
        height={{ base: '100px', lg: '150px' }}
      >
        <Image
          src={SharedImages.avatar}
          alt="avatar"
          width="100%"
          height="100%"
          objectFit="cover"
          transform="scale(1.5)"
          transition="transform 0.3s ease"
          _hover={{
            transform: 'scale(1.7)',
          }}
        />
      </Box>
      <VStack align="center" gap={1}>
        <Text fontWeight="bold">Tuan Le Hoang</Text>
        <Hide below="lg">
          <LuDot />
        </Hide>
        <Text>Software Engineer</Text>
        <Hide below="lg">
          <LuDot />
        </Hide>
        <Text>Sức khoẻ. Trí tuệ. Bản lĩnh</Text>
      </VStack>
    </VStack>
  );
};
