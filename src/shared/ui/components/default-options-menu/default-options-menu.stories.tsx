import { BrowserRouter } from 'react-router-dom';

import { DefaultOptionsMenu } from './default-options-menu';

import type { Meta, StoryObj } from '@storybook/react';

const meta: Meta<typeof DefaultOptionsMenu> = {
  component: DefaultOptionsMenu,
  args: {
    options: [
      {
        label: '出欠簿',
        onClick: () => null,
      },
      {
        label: '予定を編集',
        onClick: () => null,
      },
      {
        label: 'お知らせを作成',
        onClick: () => null,
      },
    ],
  },
};

export default meta;

type Story = StoryObj<typeof DefaultOptionsMenu>;

export const DefaultOptionsMenuStory: Story = {
  name: 'default-options-menu',
  render: (args) => (
    <BrowserRouter>
      <DefaultOptionsMenu {...args} />
    </BrowserRouter>
  ),
};
