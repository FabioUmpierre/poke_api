CREATE TABLE IF NOT EXISTS Pokemon (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nationalDexNumber INTEGER NOT NULL UNIQUE,
    name TEXT NOT NULL UNIQUE,
    type1Id INTEGER NOT NULL,
    type2Id INTEGER NULL,
    FOREIGN KEY (type1Id) REFERENCES type (id),
    FOREIGN KEY (type2Id) REFERENCES type (id) 
);