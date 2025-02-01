export const paths = {
  home: {
    top: '/',
    label: '/label/:label',
    post: '/post/:slug',
  },
  admin: {
    login: '/login',
    dashboard: '/admin/dashboard',
    addPost: '/admin/add-post',
    editPost: '/admin/edit-post/:slug',
    viewPostDetail: '/admin/view-post-detail/:slug',
  },
  notFound: '/404',
  auth: '/auth',
  unauthorized: '/unauthorized',
};
