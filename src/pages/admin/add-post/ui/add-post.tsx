import {
  Button,
  VStack,
  FormControl,
  FormLabel,
  Input,
  Text,
} from '@chakra-ui/react';

import { TinyMceRichEditor } from '@widgets/tiny-mce';

export const AddPost = () => {
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
        <Input />
      </FormControl>
      <FormControl>
        <FormLabel>Content</FormLabel>
        <TinyMceRichEditor />
      </FormControl>
      <Button type="submit">Submit</Button>
    </VStack>
  );
};
