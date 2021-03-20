/*
 * Reorder the columns in the following SQL table so that the resulting table minimizes disk usage.
 * You do not need to compute the total disk usage per row.
 */

CREATE TABLE project (
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ,
    author_id BIGINT NOT NULL
    id SERIAL PRIMARY KEY,
    project_id INTEGER NOT NULL UNIQUE,
    target_id INTEGER NOT NULL,
    target_type VARCHAR(2) NOT NULL,
    action SMALLINT NOT NULL,
    title VARCHAR(256),
    data TEXT,
);
