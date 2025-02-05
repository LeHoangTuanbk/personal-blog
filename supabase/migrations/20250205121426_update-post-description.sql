set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.update_post_with_labels(p_post_id uuid, p_post_data jsonb, p_added_label_ids uuid[], p_removed_label_ids uuid[])
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
 SET search_path TO 'public'
AS $function$BEGIN
  -- 1. Cập nhật thông tin bài post
  UPDATE posts 
  SET 
    title = p_post_data->>'title',
    content = p_post_data->>'content',
    description = p_post_data->>'description',
    status = (p_post_data->>'status')::post_status,
    updated_at = NOW()
  WHERE id = p_post_id;

  -- 2. Thêm các labels mới
  IF array_length(p_added_label_ids, 1) > 0 THEN
    INSERT INTO posts_labels (post_id, label_id)
    SELECT p_post_id, unnest(p_added_label_ids);
  END IF;

  -- 3. Xóa các labels cũ
  IF array_length(p_removed_label_ids, 1) > 0 THEN
    DELETE FROM posts_labels pl
    WHERE pl.post_id = p_post_id 
      AND pl.label_id = ANY(p_removed_label_ids);
  END IF;
END;$function$
;


