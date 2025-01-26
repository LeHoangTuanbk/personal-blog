import { Box } from '@chakra-ui/react';
import { MultiValue } from 'chakra-react-select';
import { useNavigate } from 'react-router-dom';

import { PostStatus } from '@entities/posts/model';
import { paths } from '@shared/config';
import { useFetchLabels, useSubmitPost } from '@widgets/post-form/api';
import { PostSchema } from '@widgets/post-form/api';
import { usePostForm } from '@widgets/post-form/api/use-post-form';
import { PostForm } from '@widgets/post-form/ui/post-form';

export const PostFormContainer = () => {
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
