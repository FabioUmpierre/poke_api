SELECT * FROM type;
SELECT * FROM type WHERE name LIKE '%water%';
SELECT * FROM typematchup;

SELECT * FROM pokemon ORDER BY nationalDexNumber;

SELECT * FROM pokemon
JOIN type 
where pokemon.name LIKE "%Blastoise%";

SELECT 
	p.nationalDexNumber, p.name, 
    t1.name as type1Name,
    t2.name as type2Name 
FROM pokemon p
	JOIN type t1 ON p.type1Id = t1.id
    LEFT JOIN type t2 ON p.type2Id = t2.id;
    
SELECT * FROM pokemon p
	JOIN type t1 ON p.type1Id = t1.id
    LEFT JOIN type t2 ON p.type2Id = t2.id;
    
    
 select t.name as attackingTypeName,
     te.power as effectPower,
     t2.name as defendingTypeName,
     te.description as description
 from typematchup tm
	 JOIN type t ON tm.attackingTypeId = t.id
	 JOIN typeeffect te ON tm.typeEffectId = te.id
	 JOIN type t2 ON tm.defendingTypeId = t2.id;
