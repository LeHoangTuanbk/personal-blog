import { Box } from '@chakra-ui/react';
import { MultiValue } from 'chakra-react-select';
import { useNavigate } from 'react-router-dom';

import { usePostForm } from '@entities/posts/api/use-post-form';
import { PostStatus } from '@entities/posts/model';
import { PostSchema } from '@entities/posts/model';
import {
  useFetchLabels,
  useSubmitPost,
} from '@features/admin/add-post-form/api';
import { paths } from '@shared/config';
import { PostForm } from '@widgets/post-form';

export const AddPostFormContainer = () => {
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
    <PostForm
      register={register}
      handleSubmit={handleSubmit}
      onSubmitPost={onSubmitPost}
      errors={errors}
      labelOptions={labelOptions}
      handleLabelChange={handleLabelChange}
      handleContentChange={handleContentChange}
      watch={watch}
      setValue={setValue}
    />
  );
};
