import { Text } from '@chakra-ui/react';

import { DefaultModalTemplate } from './default-modal-template';

import type { Meta, StoryFn } from '@storybook/react';

const meta: Meta<typeof DefaultModalTemplate> = {
  component: DefaultModalTemplate,
  args: {
    title: 'タイトル',
    size: '2xl',
    isOpen: true,
    isLoading: false,
    footerButtonGroup: [
      {
        text: '登録',
        variant: 'PRIMARY',
        onClick: () => null,
      },
      {
        text: 'キャンセル',
        variant: 'SECONDARY',
        onClick: () => null,
      },
    ],
  },
  argTypes: {
    size: {
      control: 'select',
      options: [
        'sm',
        'md',
        'lg',
        'xl',
        '2xl',
        'xs',
        '3xl',
        '4xl',
        '5xl',
        '6xl',
        'full',
      ],
    },
    onClose: {
      action: 'onPress',
      table: { disable: true },
    },
    children: {
      table: { disable: true },
    },
  },
};

export default meta;

type Story = StoryFn<typeof DefaultModalTemplate>;

export const Default: Story = (args) => (
  <DefaultModalTemplate {...args}>
    <Text>
      Lorem Ipsum is simply dummy text of the printing and typesetting industry.
      Lorem Ipsum has been the industry standard dummy text ever since the
      1500s, when an unknown printer took a galley of type and scrambled it to
      make a type specimen book. It has survived not only five centuries, but
      also the leap into electronic typesetting, remaining essentially
      unchanged. It was popularised in the 1960s with the release of Letraset
      sheets containing Lorem Ipsum passages, and more recently with desktop
      publishing software like Aldus PageMaker including versions of Lorem Ipsum
    </Text>
  </DefaultModalTemplate>
);
