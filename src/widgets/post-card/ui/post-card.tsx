import { Box, Heading, Text, HStack, Tag } from '@chakra-ui/react';

type PostCardProps = {
  title: string;
  description: string;
  labels: string[];
  date: string;
  readTime: string;
};

export const PostCard = ({
  title,
  description,
  labels,
  date,
  readTime,
}: PostCardProps) => {
  return (
    <Box
      as="article"
      p={6}
      borderWidth="1px"
      borderRadius="lg"
      minWidth="3xl"
      _hover={{ shadow: 'md' }}
      transition="all 0.2s"
    >
      <Heading as="h2" size="lg" mb={2} color="navy.900">
        {title}
      </Heading>

      <Text color="gray.600" mb={4} noOfLines={2}>
        {description}
      </Text>

      <HStack spacing={2} mb={4}>
        {labels.map((label) => (
          <Tag key={label} size="md" variant="outline" colorScheme="gray">
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
