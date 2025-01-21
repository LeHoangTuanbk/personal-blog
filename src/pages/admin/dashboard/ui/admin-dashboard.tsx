import { Box, Text, Button } from '@chakra-ui/react';
import { useNavigate } from 'react-router-dom';

import { supabaseClient } from '@shared/api/supabase-client';
import { useToast } from '@shared/ui/components/toast-factory';
export const AdminDashboard = () => {
  const navigate = useNavigate();
  const { successToast } = useToast();
  const handleLogout = async () => {
    await supabaseClient.auth.signOut();
    successToast('Logged out successfully');
    navigate('/login');
  };
  return (
    <Box>
      <Text>Admin Dashboard</Text>
      <Button onClick={handleLogout}>Logout</Button>
    </Box>
  );
};
