import { AbsoluteCenter, Box, Divider, HStack, Hide } from '@chakra-ui/react';
import {
  FaFacebook,
  FaGithub,
  FaLinkedin,
  FaRegEnvelope,
} from 'react-icons/fa';
import { Link } from 'react-router-dom';

export const ContactSession = () => {
  return (
    <Box marginTop="auto">
      <Hide below="xl">
        <Box position="relative" mb={6}>
          <Divider borderColor="black" borderWidth={1} />

          <AbsoluteCenter bg="white" px="4">
            Contact
          </AbsoluteCenter>
        </Box>
      </Hide>
      <HStack justify="center" gap={4} fontSize="3xl">
        <Link to="https://www.linkedin.com/in/le-hoang-tuan-bk" target="_blank">
          <FaLinkedin />
        </Link>
        <Link to="https://github.com/LeHoangTuanbk" target="_blank">
          <FaGithub />
        </Link>
        <Link to="https://www.facebook.com/lehoang.tuanbk" target="_blank">
          <FaFacebook />
        </Link>
        <Link to="mailto:lehoangtuanbk@gmail.com" target="_blank">
          <FaRegEnvelope />
        </Link>
      </HStack>
    </Box>
  );
};
