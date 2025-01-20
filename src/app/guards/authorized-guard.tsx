import { ReactNode } from 'react';
import { Navigate } from 'react-router-dom';

import { paths } from '@shared/config';

type Props = {
  children: ReactNode;
};

export const AuthorizedGuard = ({ children }: Props) => {
  const isLoggedIn = true; // TODO: update
  // const { isLoggedIn } = useSession()

  if (!isLoggedIn) {
    return <Navigate to={paths.auth} />;
  }

  return children;
};
