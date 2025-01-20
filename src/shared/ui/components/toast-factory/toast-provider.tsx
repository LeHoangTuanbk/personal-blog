import { useToastHook } from '@shared/ui/components/toast-factory/use-toast-hook';

import { ToastContext } from './toast-context';

export const ToastProvider: React.FC<{ children: React.ReactNode }> = ({
  children,
}) => {
  const toast = useToastHook();
  return (
    <ToastContext.Provider value={toast}>{children}</ToastContext.Provider>
  );
};
