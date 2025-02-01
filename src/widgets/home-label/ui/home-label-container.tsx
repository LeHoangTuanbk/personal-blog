import { Box, Button } from '@chakra-ui/react';
import { useLocation, useNavigate } from 'react-router-dom';

import { paths } from '@shared/config/paths';

export const HomeLabelContainer = () => {
  const location = useLocation();
  const navigate = useNavigate();
  const handleClick = () => {
    navigate(paths.home.top);
  };

  if (location.pathname === paths.home.top) return null;

  return (
    <Box display="flex" justifyContent="center" mt="auto " mx="auto">
      <Button onClick={handleClick}>Back to home</Button>
    </Box>
  );
};
