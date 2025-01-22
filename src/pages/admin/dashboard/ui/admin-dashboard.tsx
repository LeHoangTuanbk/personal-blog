import { Text, Button, VStack } from '@chakra-ui/react';
import { useNavigate } from 'react-router-dom';

import { supabaseClient } from '@shared/api/supabase-client';
import { paths } from '@shared/config/paths';
import { useToast } from '@shared/ui/components/toast-factory';
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
    navigate(paths.admin.posts);
  };
  return (
    <VStack alignItems="flex-start" spacing={4}>
      <Text>Admin Dashboard</Text>
      <Button onClick={handleAddPost}>Add posts</Button>
      <Button onClick={handleLogout}>Logout</Button>
    </VStack>
  );
};
