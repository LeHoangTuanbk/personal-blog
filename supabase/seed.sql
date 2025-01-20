-- Create ENUM types
CREATE TYPE user_role AS ENUM ('admin', 'author', 'reader');
CREATE TYPE user_status AS ENUM ('active', 'inactive');
CREATE TYPE post_status AS ENUM ('draft', 'published', 'archived');

-- Create the users table
CREATE TABLE users (
    id UUID PRIMARY KEY,
    email_address VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role user_role NOT NULL,
    status user_status NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Create the labels table
CREATE TABLE labels (
    id UUID PRIMARY KEY,
    content TEXT NOT NULL,
    slug TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Create the posts table
CREATE TABLE posts (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    title VARCHAR(255),
    content TEXT NOT NULL,
    status post_status NOT NULL,
    slug TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create the posts_labels table (junction table for many-to-many relationship)
CREATE TABLE posts_labels (
    post_id UUID NOT NULL,
    label_id UUID NOT NULL,
    PRIMARY KEY (post_id, label_id),
    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,
    FOREIGN KEY (label_id) REFERENCES labels(id) ON DELETE CASCADE
);