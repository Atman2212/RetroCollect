CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    name TEXT,
    console TEXT
);
CREATE TABLE copies (
    id SERIAL PRIMARY KEY,
    status TEXT,
    date_added DATE,
    game_id INTEGER REFERENCES games(id)
);

SELECT games.name, games.console, copies.status
FROM copies
JOIN games ON copies.game_id = games.id;