import { useNavigate } from 'react-router-dom';

import { PostView } from '@entities/posts/model/types';
import { paths } from '@shared/config/paths';

import { PostCard } from './post-card';

type PostCardContainerProps = {
  posts: PostView;
};

export const PostCardContainer = ({ posts }: PostCardContainerProps) => {
  const navigate = useNavigate();

  const handleViewPostDetail = () => {
    navigate(paths.admin.viewPostDetail);
  };

  return (
    <PostCard
      title={posts.title}
      description={posts.description}
      labels={posts.labels}
      date={posts.created_at}
      readTime={posts.reading_time.toString()}
      onClick={handleViewPostDetail}
    />
  );
};
