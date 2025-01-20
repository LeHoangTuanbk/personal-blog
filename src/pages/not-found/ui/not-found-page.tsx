import { ReactNode } from 'react';

type Props = {
  stubSlot: ReactNode;
};

export const NotFoundPage = ({ stubSlot }: Props) => {
  return stubSlot;
};
