import React from 'react';
import { ChakraProvider } from '@chakra-ui/react';
import type { Preview } from '@storybook/react';

const preview: Preview = {
  parameters: {
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/i,
      },
    },
  },
  decorators: [
    Story => (
      <React.Fragment>
        <ChakraProvider>
          <Story />
        </ChakraProvider>
      </React.Fragment>
    ),
  ],
};

export default preview;
