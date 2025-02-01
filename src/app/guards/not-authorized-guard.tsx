import { ReactNode } from 'react';
import { Navigate } from 'react-router-dom';

import { paths } from '@shared/config';

type Props = {
  children: ReactNode;
};

export const NotAuthorizedGuard = ({ children }: Props) => {
  const isLoggedIn = false; // TODO: update
  // const { isLoggedIn } = useSession()

  if (isLoggedIn) {
    return <Navigate to={paths.home.top} />;
  }

  return children;
};
