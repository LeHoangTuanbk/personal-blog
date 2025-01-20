import { createContext, useContext } from 'react';

import { useToastHook } from './use-toast-hook';

export const ToastContext = createContext<ReturnType<typeof useToastHook> | null>(
  null,
);

export const useToast = () => {
  const context = useContext(ToastContext);
  if (!context) {
    throw new Error('useToast must be used within a ToastProvider');
  }
  return context;
};
