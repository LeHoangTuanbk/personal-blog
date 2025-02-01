import { Tag } from '@chakra-ui/react';

type LabelProps = {
  label: string;
  count: number;
  onClick: () => void;
};

export const Label = ({ label, count, onClick }: LabelProps) => {
  return (
    <Tag
      key={label}
      size="md"
      variant="outline"
      px={4}
      py={1}
      borderRadius="sm"
      cursor="pointer"
      onClick={onClick}
    >
      #{label} ({count})
    </Tag>
  );
};
