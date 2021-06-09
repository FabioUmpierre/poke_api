INSERT INTO type (name, advantages2x) VALUES ('Water', 'Eletric,Rock');
INSERT INTO type (name, advantages2x) VALUES ('Eletric', 'Water,Flying');

INSERT INTO pokemon (
	name,
    type1Id,
    nationalDexNumber
) VALUES (
	'squirtle',
    (SELECT id FROM type WHERE name LIKE '%water%'),
    7
);


