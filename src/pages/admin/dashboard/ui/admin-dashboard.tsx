import {
  Text,
  Button,
  VStack,
  Divider,
  HStack,
  Box,
  Tag,
} from '@chakra-ui/react';
import { useState } from 'react';
import { useNavigate } from 'react-router-dom';

import { PostStatusList } from '@entities/posts/model';
import { ActivePost, ViewPostFilterType } from '@entities/posts/model/types';
import { useFetchPostsData } from '@pages/admin/dashboard/api';
import { supabaseClient } from '@shared/api/supabase-client';
import { paths } from '@shared/config/paths';
import { useToast } from '@shared/ui/components/toast-factory';
import { PostCardContainer, PostCardListSkeleton } from '@widgets/post-card/ui';
export const AdminDashboard = () => {
  const navigate = useNavigate();
  const { successToast, errorToast } = useToast();
  const [viewPostFilter, setViewPostFilter] = useState<ViewPostFilterType>(
    ActivePost.Active,
  );
  const handleLogout = async () => {
    const { error } = await supabaseClient.auth.signOut();
    if (error) {
      errorToast(error.message);
      return;
    }
    successToast('Logged out successfully');
    navigate(paths.admin.login);
  };
  const handleAddPost = () => {
    try {
      window.open(paths.admin.addPost, '_blank');
    } catch (error) {
      errorToast('Failed to open new window to add post');
    }
  };
  const { data, isLoading, isError } = useFetchPostsData(viewPostFilter);

  const changeViewPostFilter = (filter: ViewPostFilterType) => {
    setViewPostFilter(filter);
  };

  return (
    <VStack alignItems="flex-start" spacing={4}>
      <Text fontSize="4xl" fontWeight="bold">
        Admin Dashboard
      </Text>
      <HStack>
        <Button onClick={handleAddPost}>Add post</Button>
        <Button onClick={handleLogout}>Logout</Button>
      </HStack>
      <Divider borderColor="gray" borderWidth={1} />
      <HStack mb={4}>
        <Tag
          key="active"
          colorScheme={viewPostFilter === ActivePost.Active ? 'orange' : 'gray'}
          cursor="pointer"
          onClick={() => changeViewPostFilter(ActivePost.Active)}
        >
          Active posts
        </Tag>
        {PostStatusList.map((status) => (
          <Tag
            key={status}
            colorScheme={viewPostFilter === status ? 'orange' : 'gray'}
            cursor="pointer"
            onClick={() => changeViewPostFilter(status)}
          >
            {status}
          </Tag>
        ))}
      </HStack>
      {isError && <Box>Error</Box>}

      <Box w={{ base: '90%', lg: '4xl' }} minH="xs">
        {isLoading && !isError ? (
          <PostCardListSkeleton count={4} />
        ) : (
          <VStack alignItems="flex-start" spacing={4}>
            {data?.map((post) => (
              <PostCardContainer key={post.id} posts={post} />
            ))}
          </VStack>
        )}
      </Box>
    </VStack>
  );
};
