import {
  IconButton,
  Menu,
  MenuButton,
  MenuItem,
  MenuList,
  StyleProps,
} from '@chakra-ui/react';
import { BsThreeDots } from 'react-icons/bs';

import { DefaultOptionProps } from './types';

type Props = {
  options: DefaultOptionProps[];
  sx?: StyleProps;
};

export const DefaultOptionsMenu = ({ options, sx }: Props) => {
  const filteredOptions = options.filter(
    (option) => option.isVisible !== false,
  );

  const isMenuDisplayed = filteredOptions.length > 0;

  if (!isMenuDisplayed) return null;

  return (
    <Menu>
      <MenuButton
        {...sx}
        as={IconButton}
        aria-label="Options"
        icon={<BsThreeDots />}
        variant="ghost"
      />
      <MenuList>
        {filteredOptions.map((option) => (
          <MenuItem
            key={option.label}
            onClick={option.onClick}
            textColor={option.variant === 'DELETE' ? 'red' : undefined}
          >
            {option.label}
          </MenuItem>
        ))}
      </MenuList>
    </Menu>
  );
};
