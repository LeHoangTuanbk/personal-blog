-- Insert dummy data into the labels table
INSERT INTO labels (id, content, slug, created_at, updated_at)
VALUES 
    (gen_random_uuid(), 'Technology', 'technology', NOW(), NOW()),
    (gen_random_uuid(), 'Blockchain', 'blockchain', NOW(), NOW());