import { Box, StyleProps } from '@chakra-ui/react';

import { DefaultButton } from '../default-button';
import { DefaultButtonProps } from '../default-button/types';

type Props = {
  buttons: DefaultButtonProps[];
  sx?: StyleProps;
};

export const DefaultButtonGroup = ({ buttons, sx }: Props) => {
  return (
    <Box display="flex" flexDirection="row" gap={2} {...sx}>
      {buttons
        .filter((b) => !b.isHidden)
        .map((button) => (
          <DefaultButton key={button.text} {...button} />
        ))}
    </Box>
  );
};
