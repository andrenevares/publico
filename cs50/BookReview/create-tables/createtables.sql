CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL UNIQUE,
    password VARCHAR NOT NULL
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    author VARCHAR NOT NULL,
    year VARCHAR NOT NULL,
    isbn VARCHAR NOT NULL UNIQUE
);


CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    header VARCHAR NOT NULL,
    content VARCHAR NOT NULL,
    rating INTEGER NOT NULL,
    book_id INTEGER REFERENCES books,
    user_id INTEGER REFERENCES users
);
