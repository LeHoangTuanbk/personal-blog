import {
  Button,
  VStack,
  FormControl,
  FormLabel,
  Input,
  FormErrorMessage,
} from '@chakra-ui/react';
import {
  Select as ChakraSelect,
  MultiValue,
  Select,
} from 'chakra-react-select';
import {
  UseFormHandleSubmit,
  UseFormSetValue,
  UseFormWatch,
} from 'react-hook-form';
import { UseFormRegister } from 'react-hook-form';
import { FieldErrors } from 'react-hook-form';

import { PostSchema } from '@entities/posts';
import { PostStatus, PostStatusList } from '@entities/posts/model';
import { TinyMceRichEditor } from '@widgets/tiny-mce';

type PostFormProps = {
  register: UseFormRegister<PostSchema>;
  handleSubmit: UseFormHandleSubmit<PostSchema>;
  onSubmitPost: (data: PostSchema) => Promise<PostSchema>;
  errors: FieldErrors<PostSchema>;
  labelOptions: { value: string; label: string }[] | undefined;
  handleLabelChange: (
    selectedOptions: MultiValue<{ value: string; label: string }>,
  ) => void;
  handleContentChange: (text: string) => void;
  watch: UseFormWatch<PostSchema>;
  setValue: UseFormSetValue<PostSchema>;
  initialContentValues?: string;
};

export const PostForm = ({
  register,
  handleSubmit,
  onSubmitPost,
  errors,
  labelOptions,
  handleLabelChange,
  handleContentChange,
  watch,
  setValue,
  initialContentValues = '',
}: PostFormProps) => {
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
        <TinyMceRichEditor
          initialValue={initialContentValues}
          onChange={handleContentChange}
        />
        {errors.content && (
          <FormErrorMessage>{errors.content.message}</FormErrorMessage>
        )}
      </FormControl>
      <Button type="submit">Submit</Button>
    </VStack>
  );
};
