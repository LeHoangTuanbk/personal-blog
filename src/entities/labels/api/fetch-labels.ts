import { supabaseClient } from '@shared/api/supabase-client';
import { supabaseDBTables } from '@shared/api/supabase-client';

export const fetchLabels = async () => {
  const { data, error } = await supabaseClient
    .from(supabaseDBTables.labels)
    .select('*');
  if (error) {
    throw new Error(error.message);
  }
  return data;
};
