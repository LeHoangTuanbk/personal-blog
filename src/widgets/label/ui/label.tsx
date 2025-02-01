import { Tag } from '@chakra-ui/react';

type LabelProps = {
  label: string;
  onClick: () => void;
};

export const Label = ({ label, onClick }: LabelProps) => {
  return (
    <Tag
      key={label}
      size="md"
      variant="outline"
      colorScheme="gray"
      px={4}
      py={1}
      borderRadius="sm"
      onClick={onClick}
    >
      #{label}
    </Tag>
  );
};
