import { Box, Heading, Text, HStack, Tag, Button } from '@chakra-ui/react';

type PostCardProps = {
  title: string;
  description: string;
  labels: string[];
  date: string;
  readTime: string;
  onClick: () => void;
  onEdit: (e: React.MouseEvent<HTMLButtonElement>) => void;
  isAdminPage: boolean;
};

export const PostCard = ({
  title,
  description,
  labels,
  date,
  readTime,
  onClick,
  onEdit,
  isAdminPage,
}: PostCardProps) => {
  return (
    <Box
      as="article"
      p={6}
      borderWidth="1px"
      borderRadius="lg"
      w="4xl"
      _hover={{ shadow: 'md' }}
      transition="all 0.2s"
      onClick={onClick}
      cursor="pointer"
      bg="bg.secondary"
    >
      <Box display="flex" justifyContent="space-between">
        <Heading as="h2" size="lg" mb={2} color="navy.900">
          {title}
        </Heading>
        {isAdminPage && (
          <Button colorScheme="blue" size="sm" onClick={onEdit}>
            Edit
          </Button>
        )}
      </Box>

      <Text
        color="gray.600"
        mb={4}
        sx={{
          display: '-webkit-box',
          WebkitLineClamp: '2',
          WebkitBoxOrient: 'vertical',
          overflow: 'hidden',
          textAlignLast: 'left',
          position: 'relative',
          '&::after': {
            content: '"... see more"',
            position: 'absolute',
            bottom: 0,
            right: 0,
            backgroundColor: 'white',
            paddingLeft: 0,
            color: 'blue.500',
            cursor: 'pointer',
          },
        }}
      >
        {description}
      </Text>

      <HStack spacing={2} mb={4}>
        {labels.map((label) => (
          <Tag
            key={label}
            size="md"
            variant="outline"
            colorScheme="gray"
            px={4}
            py={1}
            borderRadius="sm"
          >
            #{label}
          </Tag>
        ))}
      </HStack>

      <HStack spacing={2} color="gray.500" fontSize="sm">
        <Text>{date}</Text>
        <Text>—</Text>
        <Text>{readTime} minute read</Text>
      </HStack>
    </Box>
  );
};
