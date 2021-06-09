# DRY = DONT REPEAT YOURSELF

SELECT * FROM type;
SELECT * FROM type WHERE name LIKE 'water';
SELECT * FROM pokemon;
SELECT pokemon.nationalDexNumber, pokemon2.name, type.name, type.advantages2x FROM pokemon
	JOIN type ON pokemon.type1Id = type.id;


