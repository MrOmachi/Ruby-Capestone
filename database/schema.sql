CREATE TABLE books(
  id INTEGER GENERATED ALWAYS AS INDENTITY PRIMARY KEY,
  genre INTEGER REFERENCES genres(id),
  author INTEGER REFERENCES authors(id),
  label INTEGER REFERENCES labels(id),
  source INTEGER REFERENCES sources(id),
  publish_date DATE,
  archived BOOLEAN,
  publisher TEXT,
  cover_state TEXT,
);

CREATE TABLE labels(
  id INTEGER GENERATED ALWAYS AS INDENTITY PRIMARY KEY,
  title TEXT,
  color TEXT,
);