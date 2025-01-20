import { useState } from 'react';
import { useNavigate } from 'react-router-dom';

import { useLoginForm } from '@features/login/api';
import { LoginSchema } from '@features/login/api/schema';
import { supabaseClient } from '@shared/api/supabase-client';
import { paths } from '@shared/config/paths';
import { useToast } from '@shared/ui/components/toast-factory';

import { LoginForm } from './login-form';

export const LoginFormContainer = () => {
  const {
    handleSubmit,
    register,
    formState: { errors },
  } = useLoginForm();
  const { errorToast, successToast } = useToast();
  const [isLoading, setIsLoading] = useState(false);
  const [showPassword, setShowPassword] = useState(false);
  const navigate = useNavigate();

  const onSubmit = async (data: LoginSchema) => {
    setIsLoading(true);
    const { data: signInData, error: signInError } =
      await supabaseClient.auth.signInWithPassword({
        email: data.email,
        password: data.password,
      });

    if (signInError) {
      errorToast(signInError.message);
      setIsLoading(false);
      return;
    }

    if (signInData) {
      successToast('Login successful');
      navigate(paths.admin.home);
    }
    setIsLoading(false);
  };
  return (
    <LoginForm
      register={register}
      errors={errors}
      isLoading={isLoading}
      showPassword={showPassword}
      setShowPassword={setShowPassword}
      handleSubmit={handleSubmit}
      onSubmit={onSubmit}
    />
  );
};
