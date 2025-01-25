import {
  Text,
  Button,
  VStack,
  Divider,
  HStack,
  Box,
  Tag,
} from '@chakra-ui/react';
import { useNavigate } from 'react-router-dom';

import { PostStatusList } from '@entities/posts/model';
import { useFetchPostsData } from '@pages/admin/dashboard/api';
import { supabaseClient } from '@shared/api/supabase-client';
import { paths } from '@shared/config/paths';
import { useToast } from '@shared/ui/components/toast-factory';
import { PostCardContainer } from '@widgets/post-card/ui';
export const AdminDashboard = () => {
  const navigate = useNavigate();
  const { successToast, errorToast } = useToast();
  const handleLogout = async () => {
    const { error } = await supabaseClient.auth.signOut();
    if (error) {
      errorToast(error.message);
      return;
    }
    successToast('Logged out successfully');
    navigate('/login');
  };
  const handleAddPost = () => {
    navigate(paths.admin.addPost);
  };
  const { data, isLoading, isError } = useFetchPostsData();

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
      {isError && <Box>Error</Box>}
      {isLoading && !isError ? (
        <Box>Loading...</Box>
      ) : (
        <VStack alignItems="flex-start" spacing={4}>
          <HStack mb={4}>
            <Tag key="total">Total</Tag>
            {PostStatusList.map((status) => (
              <Tag key={status}>{status}</Tag>
            ))}
          </HStack>

          {data?.map((post) => (
            <PostCardContainer key={post.id} posts={post} />
          ))}
        </VStack>
      )}
    </VStack>
  );
};
