import { Box, Input } from '@chakra-ui/react';
import { useState } from 'react';

import { User } from '@entities/user';
import { DefaultButton, DefaultOptionsMenu } from '@shared/ui';
import { DefaultOptionProps } from '@shared/ui/components/default-options-menu/types';

type Props = {
  user?: User;
  onLoginButtonClick: (userName: string) => void;
  onLogoutButtonClick: () => void;
  options?: DefaultOptionProps[];
};

export const AuthPage = ({
  user,
  options,
  onLoginButtonClick,
  onLogoutButtonClick,
}: Props) => {
  const [username, setUsername] = useState('');

  const handleSubmit = () => {
    onLoginButtonClick(username);
    setUsername('');
  };

  if (user) {
    return (
      <Box
        display="flex"
        flexDirection="column"
        alignItems="center"
        justifyContent="center"
        height="100vh"
      >
        <div>
          <h2>プロフィール</h2>
          <h3>名前: {user.name}</h3>
          <h3>ID: {user.id}</h3>
          <DefaultButton
            text="ログアウト"
            variant="DELETE"
            onClick={onLogoutButtonClick}
          />
        </div>
        {options ? (
          <DefaultOptionsMenu
            options={options}
            sx={{ position: 'absolute', top: '16px', right: '16px' }}
          />
        ) : null}
      </Box>
    );
  }

  return (
    <Box
      display="flex"
      flexDirection="column"
      alignItems="center"
      justifyContent="center"
      height="100vh"
    >
      <Box as="form" display="flex" flexDirection="row" gap={4}>
        <Input
          type="text"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
          placeholder="ユーザー名"
          required
          border="1px solid #000"
        />
        <DefaultButton
          text="ログイン"
          variant="TERTIARY"
          onClick={handleSubmit}
          type="submit"
        />
      </Box>
      {options ? (
        <DefaultOptionsMenu
          options={options}
          sx={{ position: 'absolute', top: '16px', right: '16px' }}
        />
      ) : null}
    </Box>
  );
};
