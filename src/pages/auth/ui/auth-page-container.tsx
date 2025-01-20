import { useAtom } from 'jotai/react';
import { useNavigate } from 'react-router-dom';

import { userAtom } from '@entities/user';
import { paths } from '@shared/config';

import { AuthPage } from './auth-page';

export const AuthPageContainer = () => {
  const [user, setUser] = useAtom(userAtom);

  const navigate = useNavigate();

  const options = Object.values(paths).map((path) => ({
    label: path,
    onClick: () => navigate(path),
  }));

  const handleLoginButtonClick = (userName: string) => {
    setUser({ name: userName, id: Math.random().toString() });
  };

  const handleLogoutButtonClick = () => {
    setUser(null);
  };

  return (
    <AuthPage
      user={user ?? undefined}
      options={options}
      onLoginButtonClick={handleLoginButtonClick}
      onLogoutButtonClick={handleLogoutButtonClick}
    />
  );
};
