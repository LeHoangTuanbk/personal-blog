import { Tag } from '@chakra-ui/react';

type LabelProps = {
  label: string;
  count: number;
  isActive: boolean;
  onClick: () => void;
};

export const Label = ({ label, count, isActive, onClick }: LabelProps) => {
  return (
    <Tag
      key={label}
      size="md"
      variant="outline"
      px={4}
      py={1}
      borderRadius="sm"
      cursor="pointer"
      bg={isActive ? 'blue.50' : 'transparent'}
      borderColor={isActive ? 'gray.400' : 'transparent'}
      onClick={onClick}
    >
      #{label} ({count})
    </Tag>
  );
};
