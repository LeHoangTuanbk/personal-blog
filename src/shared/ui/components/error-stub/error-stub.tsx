import { Heading, Text, VStack } from '@chakra-ui/react';
import { ComponentProps } from 'react';

import { DefaultButton } from '../default-button';

type Props = {
  isSmall?: boolean;
  backgroundColor?: string;
  textColor?: string;
  refetch?: () => void;
} & Partial<Pick<ComponentProps<typeof VStack>, 'height' | 'width'>>;

export const ErrorStub = ({
  isSmall,
  backgroundColor = 'gray.300',
  textColor = 'white',
  refetch,
}: Props) => {
  const handleRefetch = () => {
    // Apolloのrefetch用
    // https://github.com/apollographql/react-apollo/issues/3294
    refetch?.();
  };

  return (
    <VStack
      backgroundColor={backgroundColor}
      borderRadius={16}
      padding={8}
      gap="4px"
    >
      {!isSmall && <Heading>🥲</Heading>}
      <Heading color={textColor} size="md">
        エラー
      </Heading>
      {!isSmall && <Text color={textColor}>データの取得に失敗しました。</Text>}
      {refetch ? (
        <DefaultButton
          text="再取得"
          variant="TERTIARY"
          onClick={handleRefetch}
        />
      ) : null}
    </VStack>
  );
};
