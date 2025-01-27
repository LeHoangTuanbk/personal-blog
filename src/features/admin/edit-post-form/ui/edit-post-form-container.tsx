import { Box } from '@chakra-ui/react';
import { MultiValue } from 'chakra-react-select';
import { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';

import { useFetchLabels } from '@entities/labels';
import { usePostForm } from '@entities/posts/api/use-post-form';
import { PostSchema } from '@entities/posts/model/schema';
import { PostStatus } from '@entities/posts/model/types';
import { useSubmitPost } from '@features/admin/add-post-form/api/queries';
import { usePostDataForEdit } from '@features/admin/edit-post-form/api/queries';
import { paths } from '@shared/config/paths';
import { PostForm } from '@widgets/post-form/ui/post-form';

type EditPostFormContainerProps = {
  slug: string;
};

export const EditPostFormContainer = ({ slug }: EditPostFormContainerProps) => {
  const { data, isLoading, isError } = usePostDataForEdit(slug);
  const {
    register,
    handleSubmit,
    formState: { errors },
    setValue,
    watch,
    reset,
  } = usePostForm({
    defaultValues: {
      title: '',
      labels: [],
      status: PostStatus.Draft,
      content: '',
    },
  });

  useEffect(() => {
    if (data) {
      reset({
        title: data.title,
        labels: data.labels_slug,
        status: data.status,
        content: data.content,
      });
    }
  }, [data, reset]);

  const navigate = useNavigate();
  const { mutateAsync: submitPost } = useSubmitPost();
  const { data: labels } = useFetchLabels();
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

  const selectedLabelOptions = data?.labels?.map((label) => ({
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
      initialContentValues={data?.content}
      selectedLabelOptions={selectedLabelOptions}
    />
  );
};
