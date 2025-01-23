import {
  Button,
  VStack,
  FormControl,
  FormLabel,
  Input,
  Select,
  Box,
  FormErrorMessage,
} from '@chakra-ui/react';
import { useRef } from 'react';
import { Editor as TinyMCEEditor } from 'tinymce';

import { useFetchLabels } from '@widgets/post-form/api';
import { PostSchema } from '@widgets/post-form/api';
import { usePostForm } from '@widgets/post-form/api/use-post-form';
import { TinyMceRichEditor } from '@widgets/tiny-mce';

const onSubmitPost = (data: PostSchema) => {
  // Send post data to supbabase, in a different function
  return data;
};
export const PostForm = () => {
  const { data: labels, isLoading, isError } = useFetchLabels();
  const editorRef = useRef<TinyMCEEditor | null>(null);
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = usePostForm();

  if (isLoading) return <Box>Loading...</Box>;
  if (isError) return <Box>Error</Box>;
  return (
    <VStack
      as="form"
      spacing={4}
      alignItems="flex-start"
      onSubmit={handleSubmit(onSubmitPost)}
    >
      <FormControl isInvalid={!!errors.title}>
        <FormLabel>Title</FormLabel>
        <Input {...register('title')} />
        {errors.title && (
          <FormErrorMessage>{errors.title.message}</FormErrorMessage>
        )}
      </FormControl>
      <FormControl isInvalid={!!errors.labels}>
        <FormLabel>Label</FormLabel>
        <Select {...register('labels')}>
          {labels?.map((label) => (
            <option key={label.id} value={label.id}>
              {label.content}
            </option>
          ))}
        </Select>
        {errors.labels && (
          <FormErrorMessage>{errors.labels.message}</FormErrorMessage>
        )}
      </FormControl>
      <FormControl isInvalid={!!errors.content}>
        <FormLabel>Content</FormLabel>
        <TinyMceRichEditor
          initialValue=""
          editorRef={editorRef}
          {...register('content')}
        />
        {errors.content && (
          <FormErrorMessage>{errors.content.message}</FormErrorMessage>
        )}
      </FormControl>
      <Button type="submit">Submit</Button>
    </VStack>
  );
};
