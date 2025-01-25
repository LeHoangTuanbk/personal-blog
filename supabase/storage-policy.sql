-- Need to put here to make sure that the bucket file-archive is created

CREATE POLICY "Allow public read on file-archive"
ON storage.objects
FOR SELECT
USING (bucket_id = 'file-archive');


CREATE POLICY "Allow public insert on file-archive"
ON storage.objects
FOR INSERT
USING (bucket_id = 'file-archive');

CREATE POLICY "Allow public update on file-archive"
ON storage.objects
FOR UPDATE
USING (bucket_id = 'file-archive');

CREATE POLICY "Allow public delete on file-archive"
ON storage.objects
FOR DELETE
USING (bucket_id = 'file-archive');