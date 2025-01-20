import { Box, Button, Input, Text, VStack } from '@chakra-ui/react';

export const LoginForm = () => {
  return (
    <Box w="md" mx="auto">
      <Text>Login</Text>
      <VStack spacing={4} as="form">
        <Input placeholder="Email" />
        <Input placeholder="Password" />
        <Button w="full" colorScheme="blue" type="submit">
          Login
        </Button>
      </VStack>
    </Box>
  );
};
