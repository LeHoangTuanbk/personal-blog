import {
  Button,
  VStack,
  FormControl,
  FormLabel,
  Input,
  Text,
  Select,
  Box,
} from '@chakra-ui/react';

import { useFetchLabels } from '@pages/admin/add-post/api/queries';
import { TinyMceRichEditor } from '@widgets/tiny-mce';

export const AddPost = () => {
  const { data: labels, isLoading, isError } = useFetchLabels();
  if (isLoading) return <Box>Loading...</Box>;
  if (isError) return <Box>Error</Box>;
  return (
    <VStack as="form" alignItems="flex-start" spacing={4}>
      <Text as="h1" fontSize="2xl" fontWeight="bold">
        Add Post
      </Text>
      <FormControl>
        <FormLabel>Title</FormLabel>
        <Input />
      </FormControl>
      <FormControl>
        <FormLabel>Label</FormLabel>
        <Select>
          {labels?.map((label) => (
            <option key={label.id} value={label.id}>
              {label.content}
            </option>
          ))}
        </Select>
      </FormControl>
      <FormControl>
        <FormLabel>Content</FormLabel>
        <TinyMceRichEditor />
      </FormControl>
      <Button type="submit">Submit</Button>
    </VStack>
  );
};
