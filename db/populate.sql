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
	'blastoise',
    (SELECT id FROM type WHERE name LIKE '%Water%'),
    9
);





