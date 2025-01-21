import { createContext, ReactNode, useEffect, useState } from 'react';

import { UserSessionType } from '@entities/users';
import { supabaseClient } from '@shared/api/supabase-client';

type AuthContextType = {
  session: UserSessionType | null;
  isLoading: boolean;
};

export const AuthContext = createContext<AuthContextType | null>(null);

export const AuthProvider = ({ children }: { children: ReactNode }) => {
  const [session, setSession] = useState<UserSessionType | null>(null);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    const { data: subscription } = supabaseClient.auth.onAuthStateChange(
      (_, session) => {
        setSession(session);
        setIsLoading(false);
      },
    );

    return () => subscription?.subscription.unsubscribe();
  }, []);

  return (
    <AuthContext.Provider value={{ session, isLoading }}>
      {children}
    </AuthContext.Provider>
  );
};
