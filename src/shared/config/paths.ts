export const paths = {
  home: '/',
  post: '/post/:slug',
  notFound: '/404',
  auth: '/auth',
  login: '/login',
  admin: {
    dashboard: '/admin/dashboard',
    addPost: '/admin/add-post',
    editPost: '/admin/edit-post/:slug',
    viewPostDetail: '/admin/view-post-detail/:slug',
  },
  unauthorized: '/unauthorized',
};
