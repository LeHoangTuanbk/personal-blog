import { useContext } from 'react';

import { AdminContext } from './admin-context';

export const useAdminContext = () => {
  const context = useContext(AdminContext);
  return context;
};
