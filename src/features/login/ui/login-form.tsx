import { ViewIcon, ViewOffIcon } from '@chakra-ui/icons';
import {
  Box,
  Button,
  FormControl,
  FormErrorMessage,
  IconButton,
  Input,
  InputGroup,
  InputRightElement,
  Text,
  VStack,
} from '@chakra-ui/react';
import { useState } from 'react';
import { useNavigate } from 'react-router-dom';

import { useLoginForm } from '@features/login/api';
import { LoginSchema } from '@features/login/api/schema';
import { supabaseClient } from '@shared/api/supabase-client';
import { paths } from '@shared/config/paths';
import { useToast } from '@shared/ui/components/toast-factory';
export const LoginForm = () => {
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
      return;
    }
    setIsLoading(false);
  };
  return (
    <Box
      w="md"
      mx="auto"
      h="100vh"
      display="flex"
      justifyContent="center"
      alignItems="center"
    >
      <VStack spacing={4} as="form" onSubmit={handleSubmit(onSubmit)} w="full">
        <Text as="h1" fontSize="3xl" fontWeight="bold">
          Admin login
        </Text>
        <FormControl isInvalid={!!errors.email}>
          <Input placeholder="Email" {...register('email')} />
          <FormErrorMessage>
            {errors.email && errors.email.message}
          </FormErrorMessage>
        </FormControl>
        <FormControl isInvalid={!!errors.password}>
          <InputGroup>
            <Input
              placeholder="Password"
              {...register('password')}
              type={showPassword ? 'text' : 'password'}
            />
            <InputRightElement>
              <IconButton
                aria-label={showPassword ? 'Hide password' : 'Show password'}
                icon={showPassword ? <ViewOffIcon /> : <ViewIcon />}
                variant="ghost"
                onClick={() => setShowPassword(!showPassword)}
                _hover={{
                  bg: 'transparent',
                }}
              />
            </InputRightElement>
          </InputGroup>
          <FormErrorMessage>
            {errors.password && errors.password.message}
          </FormErrorMessage>
        </FormControl>
        <Button w="full" colorScheme="blue" type="submit" isLoading={isLoading}>
          Login
        </Button>
      </VStack>
    </Box>
  );
};
