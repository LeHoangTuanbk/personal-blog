import { generatePath, useLocation, useNavigate } from 'react-router-dom';

import { paths } from '@shared/config/paths';
import { Label } from '@widgets/label/ui/label';
import { LabelWithPostCount } from '@widgets/label-list/api';

type LabelContainerProps = {
  label: LabelWithPostCount;
};

export const LabelContainer = ({ label }: LabelContainerProps) => {
  const navigate = useNavigate();
  const handleClick = () => {
    const url = generatePath(paths.home.label, { label: label.slug });
    navigate(url);
  };

  const location = useLocation();
  const isActive = new RegExp(`/label-posts/${label.slug}(?:/|$)`).test(
    location.pathname,
  );

  return (
    <Label
      key={label.id}
      label={label.content}
      count={label.posts.length}
      onClick={handleClick}
      isActive={isActive}
    />
  );
};
