import { Wrap, WrapItem } from '@chakra-ui/react';

import { LabelContainer } from '@widgets/label/ui/label-container';
import { LabelWithPostCount } from '@widgets/label-list/api';

export const LabelList = ({ labels }: { labels: LabelWithPostCount[] }) => {
  return (
    <Wrap spacing={3} justify="center" align="center">
      {labels.map((label) => (
        <WrapItem key={label.id}>
          <LabelContainer key={label.id} label={label} />
        </WrapItem>
      ))}
    </Wrap>
  );
};
