import { Session } from '@supabase/supabase-js';

import { Tables } from '@shared/api/supabase-client/database.types';

export type UserInfo = Tables<'users'>;
export type UserSessionType = Session;
