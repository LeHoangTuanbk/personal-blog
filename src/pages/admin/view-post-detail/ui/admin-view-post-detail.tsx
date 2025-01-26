import { useParams } from 'react-router-dom';

import { PostDetailContainer } from '@widgets/post-detail/ui/post-detail-container';

export const AdminViewPostDetail = () => {
  const { slug } = useParams();

  if (!slug) return null;

  return <PostDetailContainer slug={slug} />;
};
