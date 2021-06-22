INSERT INTO pokemon (nationalDexNumber, name, type1Id,type2Id) 
VALUES (
	     1, 
        'Bulbasaur', 
		(SELECT id FROM type t WHERE t.name LIKE '%Grass%'), 
        (SELECT id FROM type t WHERE t.name LIKE '%Poison%')
), 
(
		 2, 
        'Ivysaur', 
		(SELECT id FROM type t WHERE t.name LIKE '%Grass%'),
        (SELECT id FROM type t WHERE t.name LIKE '%Poison%')
),
(
	     3, 
        'Venusaur', 
		(SELECT id FROM type t WHERE t.name LIKE '%Grass%'), 
        (SELECT id FROM type t WHERE t.name LIKE '%Poison%')
),
(
		4, 
        'Charmander', 
		(SELECT id FROM type t WHERE t.name LIKE '%Fire%'),
        NULL
),
(	
		5, 
		'Charmeleon', 
		(SELECT id FROM type t WHERE t.name LIKE '%Fire%'),
        NULL
),
(
		6, 
		'Charizard', 
		(SELECT id FROM type t WHERE t.name LIKE '%Fire%'), 
        (SELECT id FROM type t WHERE t.name LIKE '%Flying%')
),
(	
		7, 
		'Squirtle', 
		(SELECT id FROM type t WHERE t.name LIKE '%Water%'),
        NULL
),
(	
		8, 
		'Wartortle', 
		(SELECT id FROM type t WHERE t.name LIKE '%Water%'),
        NULL
),
(	
		9, 
		'Blastoise', 
		(SELECT id FROM type t WHERE t.name LIKE '%Water%'),
        NULL
);
