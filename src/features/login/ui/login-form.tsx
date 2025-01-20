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
import {
  UseFormRegister,
  FieldErrors,
  UseFormHandleSubmit,
} from 'react-hook-form';

import { LoginSchema } from '@features/login/api/schema';

type LoginFormProps = {
  register: UseFormRegister<LoginSchema>;
  errors: FieldErrors<LoginSchema>;
  isLoading: boolean;
  showPassword: boolean;
  setShowPassword: (show: boolean) => void;
  handleSubmit: UseFormHandleSubmit<LoginSchema>;
  onSubmit: (data: LoginSchema) => Promise<void>;
};

export const LoginForm = ({
  register,
  errors,
  isLoading,
  showPassword,
  setShowPassword,
  handleSubmit,
  onSubmit,
}: LoginFormProps) => {
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
          <Input
            placeholder="Email"
            {...register('email')}
            type="email"
            autoComplete="email"
          />
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
