import { generatePath, useNavigate } from 'react-router-dom';

import { paths } from '@shared/config/paths';
import { Label } from '@widgets/label/ui/label';
import { LabelWithPostCount } from '@widgets/label-list/api';

type LabelContainerProps = {
  label: LabelWithPostCount;
};

export const LabelContainer = ({ label }: LabelContainerProps) => {
  const navigate = useNavigate();
  const handleClick = () => {
    const url = generatePath(paths.home.label, { label: label.content });
    navigate(url);
  };

  return (
    <Label
      key={label.id}
      label={label.content}
      count={label.posts.length}
      onClick={handleClick}
    />
  );
};
