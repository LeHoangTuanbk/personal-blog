import { Box, Text } from '@chakra-ui/react';

import { t } from '../../theme';
import { DefaultOptionsMenu } from '../default-options-menu';
import { DefaultOptionProps } from '../default-options-menu/types';

type Props = {
  title: string;
  options?: DefaultOptionProps[];
};

export const PageStub = ({ title, options }: Props) => {
  return (
    <Box
      display="flex"
      flexDirection="column"
      alignItems="center"
      justifyContent="center"
      height="100vh"
      backgroundColor={t.colors.bg.primary}
    >
      <Box
        display="flex"
        flexDirection="column"
        alignItems="center"
        justifyContent="center"
      >
        <Text fontSize="xxx-large">🙇</Text>
        <Text fontSize="x-large" fontWeight="bold" mb="8px">
          {title}
        </Text>
        <Text>このページは作成中でございます</Text>
      </Box>

      {options ? (
        <DefaultOptionsMenu
          options={options}
          sx={{ position: 'absolute', top: '16px', right: '16px' }}
        />
      ) : null}
    </Box>
  );
};
