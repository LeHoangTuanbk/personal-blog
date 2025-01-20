import { Button } from '@chakra-ui/react';
import { useCallback, useState } from 'react';

import {
  mapButtonGroupVariant,
  mapButtonGroupVariantToColorScheme,
} from './constants';
import { DefaultButtonProps } from './types';

type Props = DefaultButtonProps;

export const DefaultButton = ({
  text,
  variant,
  size,
  isDisabled,
  isLoading,
  withoutSpinner,
  type,
  onClick,
}: Props) => {
  const [isAsyncLoading, setIsAsyncLoading] = useState(false);

  const isButtonLoading = isLoading || isAsyncLoading;

  const isButtonDisabled = isButtonLoading || isDisabled;

  const handleButtonClick = useCallback(() => {
    const returnValue = onClick();

    if (returnValue instanceof Promise) {
      setIsAsyncLoading(true);

      returnValue.finally(() => {
        setIsAsyncLoading(false);
      });
    }
  }, [onClick]);

  return (
    <Button
      key={text}
      type={type}
      colorScheme={mapButtonGroupVariantToColorScheme[variant]}
      variant={mapButtonGroupVariant[variant]}
      size={size}
      isDisabled={isButtonDisabled}
      isLoading={!withoutSpinner && isButtonLoading}
      onClick={handleButtonClick}
    >
      {text}
    </Button>
  );
};
