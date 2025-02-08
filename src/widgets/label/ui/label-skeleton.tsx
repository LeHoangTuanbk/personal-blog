import { Flex, Skeleton } from '@chakra-ui/react';

const LabelSkeletonWidthSize = [
  { base: '80px', sm: '100px' },
  { base: '100px', sm: '120px' },
  { base: '120px', sm: '140px' },
];

const LabelSkeleton = () => {
  const labelSkeletonWidthSize =
    LabelSkeletonWidthSize[
      Math.floor(Math.random() * LabelSkeletonWidthSize.length)
    ];

  return (
    <Skeleton
      height={8}
      width={labelSkeletonWidthSize}
      borderRadius="sm"
      px={4}
      py={1}
      display="inline-block"
      mr={2}
      mb={2}
    />
  );
};

type LabelListSkeletonProps = {
  count?: number;
};

export const LabelListSkeleton = ({ count = 6 }: LabelListSkeletonProps) => {
  return (
    <Flex wrap="wrap" justify="center" align="center" gap={3}>
      {Array.from({ length: count }).map((_, index) => (
        <LabelSkeleton key={index} />
      ))}
    </Flex>
  );
};
