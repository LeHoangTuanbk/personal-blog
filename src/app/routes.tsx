import { Outlet, RouteObject } from 'react-router-dom';

import { AuthPageContainer } from '@pages/auth';
import { HomePageContainer } from '@pages/home';
import { NotFoundPageContainer } from '@pages/not-found';
import { paths } from '@shared/config';

import { AuthorizedGuard, NotAuthorizedGuard, NotFoundGuard } from './guards';

export const routes: RouteObject[] = [
  {
    ErrorBoundary: () => null, // TODO: update
    children: [
      {
        element: (
          <AuthorizedGuard>
            <Outlet />
          </AuthorizedGuard>
        ),
        children: [
          {
            element: <HomePageContainer />,
            path: paths.home,
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
            element: <AuthPageContainer />,
            path: paths.auth,
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
