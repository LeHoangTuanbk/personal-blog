import { Box, Button, Input, Text, VStack } from '@chakra-ui/react';

import { useLoginForm } from '@features/login/api';
import { LoginSchema } from '@features/login/api/schema';
import { supabaseClient } from '@shared/api/supabase-client';
import { useToast } from '@shared/ui/components/toast-factory';
export const LoginForm = () => {
  const { handleSubmit, register } = useLoginForm();
  const { errorToast, successToast } = useToast();
  const onSubmit = async (data: LoginSchema) => {
    const { data: signInData, error: signInError } =
      await supabaseClient.auth.signInWithPassword({
        email: data.email,
        password: data.password,
      });
    if (signInError) {
      errorToast(signInError.message);
      return;
    }
    if (signInData) {
      successToast('Login successful');
      return;
    }
  };
  return (
    <Box
      w="md"
      mx="auto"
      p={4}
      h="full"
      justifyContent="center"
      alignItems="center"
    >
      <VStack spacing={4} as="form" onSubmit={handleSubmit(onSubmit)}>
        <Text as="h1" fontSize="3xl" fontWeight="bold">
          Login
        </Text>
        <Input placeholder="Email" {...register('email')} />
        <Input placeholder="Password" {...register('password')} />
        <Button w="full" colorScheme="blue" type="submit">
          Login
        </Button>
      </VStack>
    </Box>
  );
};
