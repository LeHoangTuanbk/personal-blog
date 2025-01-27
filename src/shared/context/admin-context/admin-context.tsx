import { createContext } from 'react';

export type AdminContextType = {
  adminPage: boolean;
};

export const AdminContext = createContext<AdminContextType>({
  adminPage: false,
});

export const AdminProvider = ({ children }: { children: React.ReactNode }) => {
  const adminPage = true;

  return (
    <AdminContext.Provider value={{ adminPage }}>
      {children}
    </AdminContext.Provider>
  );
};
