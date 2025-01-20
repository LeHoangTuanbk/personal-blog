import { DefaultButton } from './default-button';

import type { Meta, StoryFn } from '@storybook/react';

const handleButtonClick = () => {
  return new Promise((resolve) => setTimeout(resolve, 2000));
};

const meta: Meta<typeof DefaultButton> = {
  component: DefaultButton,
  args: {
    text: '保存',
    variant: 'PRIMARY',
    isDisabled: false,
  },
  argTypes: {},
};

export default meta;

type Story = StoryFn<typeof DefaultButton>;

export const Default: Story = (args) => {
  return <DefaultButton {...args} onClick={handleButtonClick} />;
};
