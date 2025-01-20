import { ReactNode } from 'react';
import { Navigate, useLocation } from 'react-router-dom';

import { paths } from '@shared/config';

type Props = {
  children: ReactNode;
};

export const NotFoundGuard = ({ children }: Props) => {
  const location = useLocation();

  if (location.pathname !== paths.notFound) {
    return <Navigate to={paths.notFound} />;
  }

  return children;
};
