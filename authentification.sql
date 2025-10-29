CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);

CREATE TABLE password_reset(
    id SERIAL PRIMARY KEY,
    user_id int,
    reset_password VARCHAR(100) NOT NULL UNIQUE,
    CONSTRAINT password_reset_user Foreign Key (user_id) REFERENCES users(id),
    created_at TIMESTAMP DEFAULT now(),
    updated_ad TIMESTAMP DEFAULT now()
);

CREATE TABLE login(
    id SERIAL PRIMARY KEY,
    user_id int,
    success BOOLEAN,
    created_at TIMESTAMP DEFAULT now(),
    updated_ad TIMESTAMP DEFAULT now()
)


