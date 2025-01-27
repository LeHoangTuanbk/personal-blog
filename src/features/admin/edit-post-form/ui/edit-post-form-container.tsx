import { Box } from '@chakra-ui/react';
import { MultiValue } from 'chakra-react-select';
import { useEffect } from 'react';

import { useFetchLabels } from '@entities/labels';
import { usePostForm } from '@entities/posts/api/use-post-form';
import { PostSchema } from '@entities/posts/model/schema';
import { PostStatus } from '@entities/posts/model/types';
import {
  useEditPost,
  usePostDataForEdit,
} from '@features/admin/edit-post-form/api/queries';
import { PostForm } from '@widgets/post-form/ui/post-form';

type EditPostFormContainerProps = {
  slug: string;
};

export const EditPostFormContainer = ({ slug }: EditPostFormContainerProps) => {
  const { data: initialData, isLoading, isError } = usePostDataForEdit(slug);
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
    if (initialData) {
      reset({
        title: initialData.title,
        labels: initialData.labels.map((label) => label.id),
        status: initialData.status,
        content: initialData.content,
      });
      setValue(
        'labels',
        initialData.labels.map((label) => label.id),
      );
    }
  }, [initialData, reset, setValue]);

  const { mutateAsync: editPost } = useEditPost();
  const { data: labels } = useFetchLabels();
  const selectedLabelOptions = initialData?.labels?.map((label) => ({
    value: label.id,
    label: label.content,
  }));
  const onSubmitPost = async (data: PostSchema) => {
    const currentLabelIds = data.labels;
    const originalLabelIds =
      selectedLabelOptions?.map((label) => label.value) || [];

    const addedLabels = currentLabelIds.filter(
      (labelId) => !originalLabelIds.includes(labelId),
    );

    const removedLabels = originalLabelIds.filter(
      (labelId) => !currentLabelIds.includes(labelId),
    );
    await editPost({
      id: initialData?.id || '',
      data,
      addedLabels,
      removedLabels,
    });

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
      initialContentValues={initialData?.content}
      selectedLabelOptions={selectedLabelOptions}
    />
  );
};
