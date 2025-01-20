import { Button } from '@chakra-ui/react';
import { ComponentProps } from 'react';

import { DefaultButtonProps } from './types';

export const mapButtonGroupVariantToColorScheme: Record<
  DefaultButtonProps['variant'],
  ComponentProps<typeof Button>['colorScheme']
> = {
  PRIMARY: 'blue',
  SECONDARY: 'gray',
  DELETE: 'red',
  TERTIARY: 'telegram',
};

export const mapButtonGroupVariant: Record<
  DefaultButtonProps['variant'],
  ComponentProps<typeof Button>['variant']
> = {
  PRIMARY: 'solid',
  SECONDARY: 'solid',
  DELETE: 'outline',
  TERTIARY: 'outline',
};
