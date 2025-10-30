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
    token VARCHAR(100) NOT NULL UNIQUE,
    reset_password VARCHAR(100) NOT NULL UNIQUE,
    CONSTRAINT password_reset_user Foreign Key (user_id) REFERENCES users(id),
    created_at TIMESTAMP DEFAULT now(),
    updated_ad TIMESTAMP DEFAULT now()
);

CREATE TABLE login(
    id SERIAL PRIMARY KEY,
    user_id int,
    success BOOLEAN,
    token VARCHAR(100)
    created_at TIMESTAMP DEFAULT now(),
    updated_ad TIMESTAMP DEFAULT now(),
    CONSTRAINT login_user FOREIGN KEY (user_id) REFERENCES users(id)
)

insert into users (username, email, password) values
('Yoga', 'yoga@mail.com', '123'),('Dimas', 'dimas@mail.com', 123)

insert into login (user_id, token, success) values
(1, 'yoga_token_login', TRUE), (2, 'dimas_token_login', TRUE);