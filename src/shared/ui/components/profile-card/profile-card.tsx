import { Box, Image, Text, VStack } from '@chakra-ui/react';
import { LuDot } from 'react-icons/lu';

import { SharedImages } from '@shared/assets';

export const ProfileCard = () => {
  return (
    <VStack align="center" gap={4}>
      <Box borderRadius="full" overflow="hidden" width="150px" height="150px">
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
        <LuDot />
        <Text>Software Engineer</Text>
        <LuDot />
        <Text>Sức khoẻ. Trí tuệ. Bản lĩnh</Text>
      </VStack>
    </VStack>
  );
};
