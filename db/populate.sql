INSERT INTO type (name) VALUES ('Water');
INSERT INTO type (name) VALUES ('Eletric');
INSERT INTO type (name) VALUES ('Grass');
INSERT INTO type (name) VALUES ('Fire');
INSERT INTO type (name) VALUES ('Psychic');
INSERT INTO type (name) VALUES ('Ghost');
INSERT INTO type (name) VALUES ('Dark');
INSERT INTO type (name) VALUES ('Fairy');
INSERT INTO type (name) VALUES ('Flying');
INSERT INTO type (name) VALUES ('Normal');
INSERT INTO type (name) VALUES ('Ice');
INSERT INTO type (name) VALUES ('Steel');
INSERT INTO type (name) VALUES ('Fighting');
INSERT INTO type (name) VALUES ('Dragon');
INSERT INTO type (name) VALUES ('Poison');
INSERT INTO type (name) VALUES ('Bug');
INSERT INTO type (name) VALUES ('Ground');
INSERT INTO type (name) VALUES ('Rock');

INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'Bulbasaur',
    (SELECT id FROM type WHERE name LIKE '%Grass%'),
    1
);
INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'Ivysaur',
    (SELECT id FROM type WHERE name LIKE '%Grass%'),
    2
);
INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'Venusaur',
    (SELECT id FROM type WHERE name LIKE '%Grass%'),
    3
);
INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'Charmander',
    (SELECT id FROM type WHERE name LIKE '%Fire%'),
    4
);
INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'Charmeleon',
    (SELECT id FROM type WHERE name LIKE '%Fire%'),
    5
);
INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'Charizard',
    (SELECT id FROM type WHERE name LIKE '%Fire%'),
    6
);
INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'Squirtle',
    (SELECT id FROM type WHERE name LIKE '%Water%'),
    7
);
INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'Wartortle',
    (SELECT id FROM type WHERE name LIKE '%Water%'),
    8
);
INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'Blastoise',
    (SELECT id FROM type WHERE name LIKE '%Water%'),
    9
);





