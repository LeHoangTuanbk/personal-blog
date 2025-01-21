import { atom } from 'jotai';

import { UserInfo } from './types';

export const userInfoAtom = atom<UserInfo | null>(null);
