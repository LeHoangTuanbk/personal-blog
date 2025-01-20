type Variant = 'DEFAULT' | 'DELETE';

export type DefaultOptionProps = {
  label: string;
  isVisible?: boolean;
  variant?: Variant;
  onClick: () => void;
};
