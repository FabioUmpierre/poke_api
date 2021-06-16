# disable default behavior of safe updates (allows update with LIKE)
SET SQL_SAFE_UPDATES = 0;

INSERT INTO type (name) VALUES 
	('Water'), 
    ('Eletric'),
    ('Grass'),
    ('Fire'),
	('Psychic'),
	('Ghost'),
	('Dark'),
	('Fairy'),
	('Flying'),
	('Normal'),
	('Ice'),
	('Steel'),
	('Fighting'),
	('Dragon'),
	('Poison'),
	('Bug'),
	('Ground'),
	('Rock');
	
INSERT INTO typeeffect (power, description) VALUES
     (2.0, 'Super Effective'),
     (1.0, 'Normal Damage'),
     (0.5, 'Ineffective'),
     (0.0, 'Not Affected');

INSERT INTO typematchup VALUES (
	(SELECT id FROM type t WHERE t.name LIKE '%water%'),
    (SELECT id FROM type ad WHERE ad.name LIKE '%fire%'),
    (SELECT id FROM typeeffect te WHERE te.power = 2)
), (
	(SELECT id FROM type t WHERE t.name LIKE '%water%'),
    (SELECT id FROM type ad WHERE ad.name LIKE '%Dragon%'),
    (SELECT id FROM typeeffect te WHERE te.power = 0.5)
), (
	(SELECT id FROM type t WHERE t.name LIKE '%normal%'),
    (SELECT id FROM type ad WHERE ad.name LIKE '%ghost%'),
    (SELECT id FROM typeeffect te WHERE te.power = 0)
);



INSERT INTO pokemon (nationalDexNumber, name, type1Id,type2Id) 
VALUES (
	 1, 'Bulbasaur', 
		(SELECT id FROM type t WHERE t.name LIKE '%Grass%'), 
        (SELECT id FROM type t WHERE t.name LIKE '%Poison%')
), (
	 2, 'Ivysaur', 
		(SELECT id FROM type t WHERE t.name LIKE '%Grass%'),
        (SELECT id FROM type t WHERE t.name LIKE '%Poison%')
),
(
	3, 'Venusaur', 
		(SELECT id FROM type t WHERE t.name LIKE '%Grass%'), 
        (SELECT id FROM type t WHERE t.name LIKE '%Poison%')
),
(
	4, 'Charmander', 
		(SELECT id FROM type t WHERE t.name LIKE '%Fire%'),
        NULL
),
(	
    5, 'Charmeleon', 
		(SELECT id FROM type t WHERE t.name LIKE '%Fire%'),
        NULL
),
(
	6, 'Charizard', 
		(SELECT id FROM type t WHERE t.name LIKE '%Fire%'), 
        (SELECT id FROM type t WHERE t.name LIKE '%Flying%')
),
(	
    7, 'Squirtle', 
		(SELECT id FROM type t WHERE t.name LIKE '%Water%'),
        NULL
),
(	
    8, 'Wartortle', 
		(SELECT id FROM type t WHERE t.name LIKE '%Water%'),
        NULL
),
(	
    9, 'Blastoise', 
		(SELECT id FROM type t WHERE t.name LIKE '%Water%'),
        NULL
);



