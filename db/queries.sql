# DRY = DONT REPEAT YOURSELF

SELECT * FROM type;
SELECT * FROM type WHERE name LIKE '%water%';
SELECT * FROM pokemon;
SELECT pokemon.nationalDexNumber, pokemon.name, type.name FROM pokemon
	JOIN type ON pokemon.type1Id = type.id;


