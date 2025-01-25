import { PostView } from '@entities/posts/model/types';

import { PostCard } from './post-card';

type PostCardContainerProps = {
  posts: PostView;
};

export const PostCardContainer = ({ posts }: PostCardContainerProps) => {
  return (
    <PostCard
      title={posts.title}
      description={posts.description}
      labels={posts.labels}
      date={posts.created_at}
      readTime={posts.reading_time.toString()}
    />
  );
};
