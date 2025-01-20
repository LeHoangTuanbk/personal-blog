import { PageStub } from './page-stub';

import type { Meta, StoryObj } from '@storybook/react';

const meta: Meta<typeof PageStub> = {
  title: 'shared/ui/pages',
  component: PageStub,
  args: {
    title: 'ホーム',
    options: [
      {
        label: '/home',
        onClick: () => null,
      },
      {
        label: '/auth',
        onClick: () => null,
      },
    ],
  },
  argTypes: {},
};

export default meta;

type Story = StoryObj<typeof PageStub>;

export const PageStubStory: Story = {
  name: 'page-stub',
  render: (args) => <PageStub {...args} />,
};
