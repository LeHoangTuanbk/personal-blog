import { Outlet, RouteObject } from 'react-router-dom';

import { AddPostContainer } from '@pages/admin/add-post';
import { AdminDashboardContainer } from '@pages/admin/dashboard';
import { AdminEditPostContainer } from '@pages/admin/edit-post';
import { AdminViewPostDetailContainer } from '@pages/admin/view-post-detail';
import { HomePageContainer } from '@pages/home';
import { HomePostDetailContainer } from '@pages/home-post-detail';
import { LoginPageContainer } from '@pages/login/';
import { NotFoundPageContainer } from '@pages/not-found';
import { paths } from '@shared/config';
import { AdminProvider } from '@shared/context/admin-context';
import { HomepageLayout } from '@shared/layout';
import { AdminPageWrapper } from '@shared/ui/components';
import { SidebarContainer } from '@widgets/sidebar';

import { AuthorizedGuard, NotAuthorizedGuard, NotFoundGuard } from './guards';

export const routes: RouteObject[] = [
  {
    ErrorBoundary: () => null,
    children: [
      {
        element: (
          <AuthorizedGuard>
            <AdminPageWrapper>
              <AdminProvider>
                <Outlet />
              </AdminProvider>
            </AdminPageWrapper>
          </AuthorizedGuard>
        ),
        children: [
          {
            element: <AdminDashboardContainer />,
            path: paths.admin.dashboard,
          },
          {
            element: <AddPostContainer />,
            path: paths.admin.addPost,
          },
          {
            element: <AdminViewPostDetailContainer />,
            path: paths.admin.viewPostDetail,
          },
          {
            element: <AdminEditPostContainer />,
            path: paths.admin.editPost,
          },
        ],
      },
      {
        element: (
          <NotAuthorizedGuard>
            <Outlet />
          </NotAuthorizedGuard>
        ),
        children: [
          {
            element: (
              <HomepageLayout sideBar={<SidebarContainer />}>
                <Outlet />
              </HomepageLayout>
            ),
            path: paths.home,
            children: [
              {
                element: <HomePageContainer />,
                path: paths.home,
              },
              {
                element: <HomePostDetailContainer />,
                path: paths.post,
              },
            ],
          },
          {
            element: <LoginPageContainer />,
            path: paths.login,
          },
        ],
      },
      {
        element: (
          <NotFoundGuard>
            <Outlet />
          </NotFoundGuard>
        ),
        children: [
          {
            element: <NotFoundPageContainer />,
            path: '*',
          },
        ],
      },
    ],
  },
];
