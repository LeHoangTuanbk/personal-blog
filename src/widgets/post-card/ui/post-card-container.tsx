import { generatePath, useNavigate } from 'react-router-dom';

import { PostView } from '@entities/posts/model/types';
import { paths } from '@shared/config/paths';
import { useAdminContext } from '@shared/context/admin-context';

import { PostCard } from './post-card';

type PostCardContainerProps = {
  posts: PostView;
};

export const PostCardContainer = ({ posts }: PostCardContainerProps) => {
  const navigate = useNavigate();
  const { adminPage } = useAdminContext();
  const handleViewPostDetail = () => {
    if (adminPage) {
      const viewPostDetailPath = generatePath(paths.admin.viewPostDetail, {
        slug: posts.slug,
      });
      navigate(viewPostDetailPath);
    } else {
      const viewPostDetailPath = generatePath(paths.home.post, {
        slug: posts.slug,
      });
      navigate(viewPostDetailPath);
    }
  };

  const handleEditPost = (e: React.MouseEvent<HTMLButtonElement>) => {
    e.stopPropagation();
    const editPostPath = generatePath(paths.admin.editPost, {
      slug: posts.slug,
    });
    window.open(editPostPath, '_blank');
  };

  return (
    <PostCard
      title={posts.title}
      description={posts.description}
      labels={posts.labels}
      date={posts.created_at}
      readTime={posts.reading_time.toString()}
      onClick={handleViewPostDetail}
      onEdit={handleEditPost}
      isAdminPage={adminPage}
    />
  );
};
