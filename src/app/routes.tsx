import { Outlet, RouteObject } from 'react-router-dom';

import { AdminDashboardContainer } from '@pages/admin/dashboard';
import { HomePageContainer } from '@pages/home';
import { LoginPageContainer } from '@pages/login/';
import { NotFoundPageContainer } from '@pages/not-found';
import { paths } from '@shared/config';

import { AuthorizedGuard, NotAuthorizedGuard, NotFoundGuard } from './guards';

export const routes: RouteObject[] = [
  {
    ErrorBoundary: () => null,
    children: [
      {
        element: (
          <AuthorizedGuard>
            <Outlet />
          </AuthorizedGuard>
        ),
        children: [
          {
            element: <AdminDashboardContainer />,
            path: paths.admin.dashboard,
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
            element: <HomePageContainer />,
            path: paths.home,
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
