import { Text } from '@chakra-ui/react';
import { Navigate } from 'react-router-dom';

import { useAuth } from '@app/guards';

export const AuthorizedGuard = ({
  children,
}: {
  children: React.ReactNode;
}) => {
  const { session, isLoading } = useAuth();
  if (isLoading) return <Text>Loading...</Text>;
  if (!session) return <Navigate to="/login" />;

  return <>{children}</>;
};
