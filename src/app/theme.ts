import { extendTheme } from '@chakra-ui/react';

export const theme = extendTheme({
  colors: {
    common: {
      primary: '#FFFFFF',
    },
    bg: {
      primary: '#F4F6F8',
      secondary: '#F7FAFC',
    },
    button: {
      primary: '#81D4FA',
      primaryHovered: '#4FA4D1',
      secondary: '#E2E8F0',
      secondaryHovered: '#CBD5E0',
      danger: '#F56565',
      dangerHovered: '#E53E3E',
      disabled: '#CBD5E0',
    },
    text: {
      primary: '#171923',
      secondary: '#81D4FA',
      tertiary: '#4A5568',
      additional: '#718096',
      danger: '#E53E3E',
    },
    border: {
      primary: '#E2E8F0',
    },
    icon: {
      primary: '#718096',
      secondary: '#81D4FA',
      red: '#E53E3E',
      yellow: '#ECC94B',
      blue: '#3182CE',
    },
  },
  shadow: {
    main: '0px 3px 20px 0px rgba(0, 0, 0, 0.05)',
    button: '0px 2px 2px 0px rgba(0, 0, 0, 0.2)',
  },
} as const);
