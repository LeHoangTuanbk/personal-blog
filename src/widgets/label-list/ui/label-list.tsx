import { Box, Flex } from '@chakra-ui/react';

import { LabelContainer } from '@widgets/label/ui/label-container';
import { LabelWithPostCount } from '@widgets/label-list/api';
export const LabelList = ({ labels }: { labels: LabelWithPostCount[] }) => {
  return (
    <Flex wrap="wrap" justify="center" align="center" gap={3}>
      {labels.map((label) => (
        <Box key={label.id}>
          <LabelContainer label={label} />
        </Box>
      ))}
    </Flex>
  );
};
