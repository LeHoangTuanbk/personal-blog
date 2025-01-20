import { ErrorStub } from './error-stub';

import type { Meta, StoryFn } from '@storybook/react';

const meta: Meta<typeof ErrorStub> = {
  component: ErrorStub,
  args: {},
  argTypes: {
    refetch: { action: 'refetch' },
  },
};

export default meta;

type Story = StoryFn<typeof ErrorStub>;

export const Default: Story = (args) => {
  return <ErrorStub {...args} />;
};
