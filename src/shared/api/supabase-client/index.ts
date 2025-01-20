import { createClient } from '@supabase/supabase-js';

import { config } from '@shared/config';

import { Database } from './database.types';

export const supabaseClient = createClient<Database>(
  config.supabaseUrl,
  config.supabaseAnonKey,
);

export const supabaseDBTables = {
  posts: 'posts',
  users: 'users',
  labels: 'labels',
} as const;
