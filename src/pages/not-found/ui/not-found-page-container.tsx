import { PageStubContainer } from '@features/page-stub';

import { NotFoundPage } from './not-found-page';

export const NotFoundPageContainer = () => {
  return (
    <NotFoundPage stubSlot={<PageStubContainer title="404エラー画面2" />} />
  );
};
