CREATE TABLE ex1_tiere (
    "Tier" character varying,
    "Familie" character varying,
    "Lebensraum" character varying,
    "Ernaehrung" character varying
);

INSERT INTO ex1_tiere VALUES ('Löwe', 'Katzen', 'Savanne', 'Karnivore'),
 ('Smatra-Tiger', 'Katzen', 'Regenwald', 'Karnivore'),
 ('Schabrackenhyäne', 'Hyänen', 'Savanne', 'Aasfresser'),
 ('Blaue Thai', 'Vogelspinnen', 'Regenwald', 'Karnivore'),
 ('Gopherschildkröte', 'Landschildkröten', 'Wüste', 'Herbivore'),
 ('Leistenkrokodil', 'Echte Krokodile', 'Regenwald', 'Karnivore'),
 ('Koala', 'Phascolarctidae', 'Steppe', 'Herbivore'),
 ('Rotes Riesenkänguru', 'Kängurus', 'Steppe', 'Herbivore'),
 ('Steppenzebra', 'Pferde', 'Savanne', 'Herbivore'),
 ('Andenkondor', 'Neuweltgeier', 'Gebirge', 'Aasfresser');

CREATE TABLE ex2_crew (
    cid character(4),
    pid character(4)
);
CREATE TABLE ex2_flug (
    "Flugnr" character(7),
    "Start" character(3),
    "Ziel" character(3),
    "Distanz" integer,
    "Datum" date,
    "Flugzeug" character(4),
    "Crew" character(4)
);
CREATE TABLE ex2_flughafen (
    "Code" character(4),
    "Land" character varying
);
CREATE TABLE ex2_flugzeug (
    fid character(4),
    "Name" character varying,
    "Modell" character(4)
);
CREATE TABLE ex2_modelle (
    "Modell" character(4),
    "Bezeichnung" character varying,
    "Sitze" integer,
    "Reichweite" integer
);
CREATE TABLE ex2_personal (
    pid character(4),
    "Name" character varying,
    "Rolle" character varying
);
CREATE TABLE ex2_zulassung (
    pid character(4),
    "Modell" character(4)
);