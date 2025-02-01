import { useParams } from 'react-router-dom';

import { PostDetailContainer } from '@widgets/post-detail';

export const HomePostDetailContainer = () => {
  const { slug } = useParams();
  if (!slug) return null;
  return <PostDetailContainer slug={slug} />;
};
