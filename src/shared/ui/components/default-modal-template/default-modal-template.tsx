import {
  ModalBody,
  ModalCloseButton,
  ModalFooter,
  ModalHeader,
  Skeleton,
  Text,
} from '@chakra-ui/react';
import { ComponentProps, Ref, forwardRef } from 'react';

import { DefaultButtonProps } from '../default-button/types';
import { DefaultButtonGroup } from '../default-button-group';
import { ErrorStub } from '../error-stub';
import { ModalTemplate } from '../modal-template';

type ModalTemplateProps = ComponentProps<typeof ModalTemplate>;

type Props = {
  title: string;
  footerButtonGroup?: DefaultButtonProps[];
  isLoading?: boolean;
  error?: Error;
  refetch?: () => void;
} & ModalTemplateProps;

const DefaultModalTemplateWithRef = (
  {
    title,
    children,
    footerButtonGroup,
    isLoading,
    error,
    size = '2xl',
    refetch,
    ...modalTemplateProps
  }: Props,
  ref?: Ref<HTMLElement> | undefined,
) => {
  return (
    <ModalTemplate {...modalTemplateProps} size={size} ref={ref}>
      <ModalHeader>
        {isLoading ? (
          <Skeleton
            isLoaded={!isLoading}
            borderRadius={4}
            height="30px"
            margin="0 auto"
            width={400}
          />
        ) : (
          <Text textAlign="center" whiteSpace="pre-wrap">
            {title}
          </Text>
        )}
      </ModalHeader>
      <ModalCloseButton />
      <ModalBody>
        <Skeleton isLoaded={!isLoading} borderRadius={16}>
          {error ? <ErrorStub refetch={refetch} /> : children}
        </Skeleton>
      </ModalBody>
      {footerButtonGroup ? (
        <ModalFooter>
          <DefaultButtonGroup
            buttons={
              isLoading || error
                ? footerButtonGroup.map((b) => ({ ...b, isDisabled: true }))
                : footerButtonGroup
            }
          />
        </ModalFooter>
      ) : null}
    </ModalTemplate>
  );
};

export const DefaultModalTemplate = forwardRef(DefaultModalTemplateWithRef);
