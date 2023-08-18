CREATE TABLE users (
  id    SERIAL PRIMARY KEY,
  name  TEXT,
  email TEXT,
  key   TEXT
);

CREATE TABLE stores (
  id     SERIAL PRIMARY KEY,
  name   TEXT,
  userId INTEGER,
  FOREIGN KEY(userId) REFERENCES users(id)
);

CREATE TABLE products (
  id      SERIAL PRIMARY KEY,
  name    TEXT,
  price   NUMERIC,
  storeId INTEGER,
  FOREIGN KEY(storeId) REFERENCES stores(id)
);

