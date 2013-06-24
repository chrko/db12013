DROP TABLE IF EXISTS Baum;
CREATE TABLE IF NOT EXISTS Baum (
    id integer NOT NULL UNIQUE PRIMARY KEY ,
    parent integer REFERENCES Baum(id) ON DELETE RESTRICT,
    weight integer,
    CHECK(weight > 0 AND parent > 0)
);
