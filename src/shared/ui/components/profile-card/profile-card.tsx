import { Box, Image, Text } from '@chakra-ui/react';

import { SharedImages } from '@shared/assets';

export const ProfileCard = () => {
  return (
    <Box>
      <Box borderRadius="full" overflow="hidden" width="200px" height="200px">
        <Image
          src={SharedImages.avatar}
          alt="avatar"
          width="100%"
          height="100%"
          objectFit="cover"
        />
      </Box>
      <Text>Tuan Le Hoang</Text>
    </Box>
  );
};
