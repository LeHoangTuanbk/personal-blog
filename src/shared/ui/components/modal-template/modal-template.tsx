import { Modal, ModalContent, ModalOverlay } from '@chakra-ui/react';
import { ComponentProps, ReactNode, Ref, forwardRef } from 'react';

type Props = {
  isOpen: boolean;
  children: ReactNode | ReactNode[];
  size?: ComponentProps<typeof Modal>['size'];
  contentSx?: ComponentProps<typeof ModalContent>;
  onClose: () => void;
};

const ModalTemplateWithRef = (
  { isOpen, children, size, contentSx, onClose }: Props,
  ref?: Ref<HTMLElement>,
) => {
  return (
    <Modal
      isOpen={isOpen}
      size={size ?? '2xl'}
      isCentered
      allowPinchZoom
      // モーダルを閉じる際、画面が上部にスクロールされないようにフィックス
      // https://github.com/chakra-ui/chakra-ui/issues/3266
      autoFocus={false}
      returnFocusOnClose={false}
      // tinymceのモーダルを使うに必須
      trapFocus={false}
      scrollBehavior="inside"
      onClose={onClose}
    >
      <ModalOverlay
        // スマホ対応にはweightとheightを100%にしている
        w="100%"
        height="100%"
        onClick={onClose}
      />
      <ModalContent
        ref={ref}
        overflowY="auto"
        containerProps={{ w: '100%' }}
        {...contentSx}
      >
        {children}
      </ModalContent>
    </Modal>
  );
};

export const ModalTemplate = forwardRef(ModalTemplateWithRef);
