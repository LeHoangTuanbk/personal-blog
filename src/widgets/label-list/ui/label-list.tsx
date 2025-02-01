import { Box } from '@chakra-ui/react';

import { LabelContainer } from '@widgets/label/ui/label-container';
import { LabelWithPostCount } from '@widgets/label-list/api';
export const LabelList = ({ labels }: { labels: LabelWithPostCount[] }) => {
  return (
    <Box>
      {labels.map((label) => (
        <LabelContainer key={label.id} label={label.content} />
      ))}
    </Box>
  );
};
