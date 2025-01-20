import { Button, ButtonProps } from '@chakra-ui/react';
import { ComponentProps } from 'react';

type Variant = 'PRIMARY' | 'SECONDARY' | 'TERTIARY' | 'DELETE';

export type DefaultButtonProps = {
  text: string;
  variant: Variant;
  type?: ButtonProps['type'];
  size?: ComponentProps<typeof Button>['size'];
  isDisabled?: boolean;
  isLoading?: boolean;
  isHidden?: boolean;
  withoutSpinner?: boolean;
  onClick: (() => void) | (() => Promise<void>);
};
