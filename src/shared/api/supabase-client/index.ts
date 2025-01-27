import { createClient } from '@supabase/supabase-js';

import { config } from '@shared/config';

import { Database } from './database.types';

export const supabaseClient = createClient<Database>(
  config.supabaseUrl,
  config.supabaseAnonKey,
  {
    auth: {
      autoRefreshToken: true,
      persistSession: true,
      detectSessionInUrl: true,
    },
  },
);

export const supabaseDBTables = {
  posts: 'posts',
  users: 'users',
  labels: 'labels',
  posts_labels: 'posts_labels',
} as const;

export const supabaseDBFunctions = {
  updatePostWithLabels: 'update_post_with_labels',
} as const;
