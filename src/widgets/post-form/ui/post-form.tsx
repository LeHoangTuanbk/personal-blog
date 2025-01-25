import {
  Button,
  VStack,
  FormControl,
  FormLabel,
  Input,
  Box,
  FormErrorMessage,
} from '@chakra-ui/react';
import {
  Select as ChakraSelect,
  MultiValue,
  Select,
} from 'chakra-react-select';
import { useNavigate } from 'react-router-dom';

import { PostStatus, PostStatusList } from '@entities/posts/model';
import { paths } from '@shared/config';
import { useFetchLabels, useSubmitPost } from '@widgets/post-form/api';
import { PostSchema } from '@widgets/post-form/api';
import { usePostForm } from '@widgets/post-form/api/use-post-form';
import { TinyMceRichEditor } from '@widgets/tiny-mce';

export const PostForm = () => {
  const { data: labels, isLoading, isError } = useFetchLabels();
  const {
    register,
    handleSubmit,
    formState: { errors },
    setValue,
    watch,
  } = usePostForm({
    defaultValues: {
      title: '',
      labels: [],
      status: PostStatus.Draft,
      content: '',
    },
  });
  const navigate = useNavigate();
  const { mutateAsync: submitPost } = useSubmitPost();
  const onSubmitPost = async (data: PostSchema) => {
    await submitPost(data);
    navigate(paths.admin.dashboard);
    return data;
  };

  const handleLabelChange = (
    selectedOptions: MultiValue<{
      value: string;
      label: string;
    }>,
  ) => {
    const selectedValues = selectedOptions.map((option) => option.value);
    setValue('labels', selectedValues);
  };

  const handleContentChange = (text: string) => {
    setValue('content', text);
  };

  const labelOptions = labels?.map((label) => ({
    value: label.id,
    label: label.content,
  }));

  if (isLoading) return <Box>Loading...</Box>;
  if (isError) return <Box>Error</Box>;
  return (
    <VStack
      as="form"
      spacing={8}
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
        <FormLabel>Labels</FormLabel>
        <ChakraSelect
          isMulti
          options={labelOptions}
          placeholder="Select labels..."
          {...register('labels')}
          onChange={handleLabelChange}
          menuPortalTarget={document.body}
          styles={{
            menuPortal: (base) => ({
              ...base,
              zIndex: 9999,
            }),
          }}
        />
        {errors.labels && (
          <FormErrorMessage>{errors.labels.message}</FormErrorMessage>
        )}
      </FormControl>
      <FormControl isInvalid={!!errors.status}>
        <FormLabel>Status</FormLabel>
        <Select
          options={PostStatusList.map((status) => ({
            value: status,
            label: status,
          }))}
          placeholder="Select status..."
          {...register('status')}
          value={PostStatusList.map((status) => ({
            value: status,
            label: status,
          })).find((option) => option.value === watch('status'))}
          onChange={(newValue) =>
            setValue('status', newValue?.value || PostStatus.Draft)
          }
          menuPortalTarget={document.body}
          styles={{
            menuPortal: (base) => ({
              ...base,
              zIndex: 9999,
            }),
          }}
        />
        {errors.status && (
          <FormErrorMessage>{errors.status.message}</FormErrorMessage>
        )}
      </FormControl>
      <FormControl isInvalid={!!errors.content}>
        <FormLabel>Content</FormLabel>
        <TinyMceRichEditor initialValue="" onChange={handleContentChange} />
        {errors.content && (
          <FormErrorMessage>{errors.content.message}</FormErrorMessage>
        )}
      </FormControl>
      <Button type="submit">Submit</Button>
    </VStack>
  );
};
