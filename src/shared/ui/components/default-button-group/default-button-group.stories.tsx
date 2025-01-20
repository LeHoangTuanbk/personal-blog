import { DefaultButtonGroup } from './default-button-group';

import type { Meta, StoryFn } from '@storybook/react';

const meta: Meta<typeof DefaultButtonGroup> = {
  component: DefaultButtonGroup,
  args: {
    buttons: [
      {
        text: 'キャンセル',
        variant: 'SECONDARY',
        isDisabled: false,
        onClick: () => null,
      },
      {
        text: '保存',
        variant: 'PRIMARY',
        isDisabled: false,
        onClick: () => null,
      },
    ],
  },
  argTypes: {},
};

export default meta;

type Story = StoryFn<typeof DefaultButtonGroup>;

export const Default: Story = (args) => {
  return <DefaultButtonGroup {...args} />;
};
