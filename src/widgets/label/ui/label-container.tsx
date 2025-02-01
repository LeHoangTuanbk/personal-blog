import { generatePath, useNavigate } from 'react-router-dom';

import { paths } from '@shared/config/paths';
import { Label } from '@widgets/label/ui/label';

type LabelContainerProps = {
  label: string;
};

export const LabelContainer = ({ label }: LabelContainerProps) => {
  const navigate = useNavigate();
  const handleClick = () => {
    const url = generatePath(paths.home.label, { label });
    navigate(url);
  };

  return <Label key={label} label={label} onClick={handleClick} />;
};
